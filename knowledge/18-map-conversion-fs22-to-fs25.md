# 18. Map conversion FS22 → FS25 (roads, terrain, traffic, trees)

Learned while converting an FS22 base map to FS25 for private use.
Status markers: ✅ confirmed in game or in the GIANTS Editor, 📖 read from the FS25 base map files, ❓ assumption or not yet confirmed in game.

## Roads

### Roads as terrain decals
- ✅ A road shape without collision becomes a terrain decal with `terrainDecal="true" renderedInViewports="false" castsShadows="false"` and no `static` or collision attributes. Every vertex is projected onto the terrain.
- ✅ `renderedInViewports="false"` is required. Without it the road floats in game and vehicles drive through it.
- ✅ Overlay pieces such as junction patches use `decalLayer="1"`.
- ✅ The terrain under a decal road must match the original road surface exactly, or the road becomes bumpy. Read the FS22 road meshes from the `.i3d.shapes`, rasterise the triangles onto the 1 m DEM, and set the terrain to road surface − 0.01 m. Add a 3 m blend ring around the road.
- ❌ Raised details do not work as decals. Traffic islands with curbs and separate road-marking geometry get flattened and look wrong. Keep such roads as 3D meshes with collision.

### 3D roads with collision
- 📖 The FS25 EU map uses 3D meshes with collision for its main roads (`mainRoad_*`, `intersection*`). Only side roads and junction patches are terrain decals.
- 📖 Base game road collision is `collisionFilterGroup="0x601c" collisionFilterMask="0xfffffbff"`, bridges use `0x207c`. FS22 roads often use `0x3e`.
- ✅ With `0x3e`, FS25 traffic cars ignore the road mesh and sink to the terrain. This is most visible on ramps and at decal↔mesh transitions where the road sits above the terrain. Switching the road to `0x601c` fixed it. Both base values contain bit `0x2000`, which the traffic probably uses (❓).
- ✅ Terrain can poke through a 3D road between the 1 m grid points even when it matches at every grid point. The fix:
  - Evaluate the terrain the way the engine renders it (two triangles per cell, use the maximum of both diagonals if unsure) and compare it with the road surface every 10 cm.
  - Lower only the grid vertices that actually poke through, to 2 cm below the road.
  - Let the lowering fade out by 6 cm per metre outside the road.
- ✅ Lowering all terrain under a 3D road by a fixed amount creates visible edges at the road border.
- ✅ **Final recipe for terrain under 3D roads and at decal↔mesh seams** (confirmed perfect in game):
  1. Fit the terrain to road surface − 0.01 m under decal and 3D roads.
  2. Lower only the inner part of each 3D road by 12 cm. Leave the border and the seams alone.
  3. Apply the poke-through fix above.
  4. **Fit the seams by least squares:**
     - Seam points are boundary edges of the 3D road within 0.25 m of a decal road boundary edge, sampled every 0.2 m.
     - Unknowns are all grid vertices within 3 m of a seam point.
     - Seam equation: terrain (bilinear) at each seam point = edge height + 2 mm, weight 10.
     - Mesh equation: every third mesh surface sample 0.3–1.6 m behind the seam, terrain = surface − 8 mm, weight 3.
     - Add closeness to the start state (weight 0.05) and smoothness between neighbours (weight 0.5). Solve with `scipy.sparse.linalg.lsqr`.
  5. Run the poke-through fix again (2 mm extra, 5 mm clearance), skipping the 0.3 m strip right behind the seam. There the terrain may rise up to 9 mm above the road.
  - Computed result: average seam gap 0.5 cm, at most 3.3 cm (before: up to 26 cm). More rounds bring no further gain.
  - Traffic is not affected by the lowering once the road uses collision group `0x601c`.
  - Intermediate states tested in game: steps 1–3 alone left gaps and steps at the seams. With step 4 at edge − 4 mm, most seams looked clean and a few showed a very thin gap.
- ❌ Variants that looked worse in game:
  - Removing the lowering and running the poke-through fix on the unlowered terrain: steps at the seams.
  - Terrain at exact mesh height at the seam: shows through as lighter patches.
  - Blending only the decal side: a 1–2 cm step.

### Asphalt and verge vegetation
- ✅ Paint an asphalt terrain layer under all roads, otherwise tyres leave dirt tracks on the road. A per-pixel coverage threshold of 0.02 worked. Higher thresholds made the painted area too wide, lower thresholds left stripes.
- ✅ Remove grass on the road but keep the original verge vegetation up to the curb. Do not paint over field paths or bushes. A GIANTS Editor Lua script with `DensityMapModifier` and `DensityMapFilter` can copy the states from the FS22 density map.
- ✅ In the FS22 road meshes, vertex colour B is a wear blend (0 = centre, 1 = edge), not opacity.

### Road material (`vertexPaintShader`)
- 📖 Vertex colour R = opacity of `mBlendedDiffuse`, G = softness, B = snow, A = noise gradient (`alphaNoise` variations).
- FS22 used the `terrainFormat` variation without blended maps. In FS25, set `mBlendedDiffuse` and `mBlendedNormal`.
- ❓ For brown dirt patches at field entrances, use the terrain layer texture of the field paths (e.g. `dirt01` diffuse + normal) with `uvScale="0.5 0.5 0.5 0.5"` for a 2 m unit size. The Asia map's `asphaltStreetCleanBlend` looks too pale.

## Traffic
- 📖 FS22 traffic splines can be reused as they are. In the converted map they sat on the road surface within a few centimetres.
- The traffic root node needs the user attribute `xmlFile` pointing to `trafficSystem.xml`. The EU map also sets `onCreate = TrafficSystem.onCreate`.
- 📖 Density reference: the EU map uses `maxNumVehicles="15"` on 15.3 km of traffic splines, about 1 car per km. Asia (54.8 km) and US do not set the attribute. The schema (`trafficSystem.xsd`) allows at most 30.
- Spline length can be measured from the `.i3d.shapes`: entity type 2 is a spline (name, align4, shapeId, form, count, then `count × float3` control points in local space).

## Trees
- ❓ FS22 trees use the old `collisionMask="16791586"`, which FS25 ignores, so the trees have no collision. Use the base game values `collisionFilterGroup="0x830" collisionFilterMask="0xfe3ffb83"`.
- The oak split type (7) is the same in FS22 and FS25. Other FS22 split type numbers were not checked.

## Map placeables
- ✅ Register the mod's own placeables in the modDesc under `<storeItems>` with mod-relative paths. In the map `placeables.xml`, reference them as `$moddir$ModName/...`. The map `storeItems.xml` only resolves `$data` paths.
- ✅ Farm buildings get a `uniqueId` in `placeables.xml`, as in the base maps.
- ✅ A material with `staticLight` caused "Graphics Pipeline State" errors. A plain material with `emissiveColor` works.

## Practical notes
- The GIANTS Editor crashed importing a whole FS22 map. Import only the needed group (e.g. the traffic system) saved as its own i3d.
- Raycasts in the GIANTS Editor do not hit temporarily static shapes, so editor scripts cannot fit terrain to roads by raycasting.
- After changing the DEM, delete the `*.terrain.*.cache` files next to the map i3d.
