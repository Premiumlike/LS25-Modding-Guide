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
- ✅ Check the road vertex colours first. In the converted FS22 roads, R was 0 everywhere, so `mBlendedDiffuse` never shows.
  - The dirt at field entrances came from separate `dirtTracks` decal shapes (`decalShader`, `alphaBlending`), which look paler in FS25.
  - ✅ To make them follow the terrain like the roads, set them to terrain decals as well and put them on `decalLayer="2"`, above the road decals (layer 1).
  - ❓ To darken them, use `<CustomParameter name="colorTint" value="-0.07 -0.075 -0.055"/>`; in the FS25 `decalShader`, `colorTint` computes `saturate(diffuse + XYZ)`.

## Traffic
- 📖 FS22 traffic splines can be reused as they are. In the converted map they sat on the road surface within a few centimetres.
- The traffic root node needs the user attribute `xmlFile` pointing to `trafficSystem.xml`. The EU map also sets `onCreate = TrafficSystem.onCreate`.
- ✅ FS22 AI licence plate files are structured differently from FS25 ones (FS22: `licensePlateXX/…Front` transform group with `diffuse_decal` + `body`; FS25: `licensePlateXX/licensePlateFront` shape with child `diffuse_decal`). Using the FS22 file stopped all traffic; an FS25 AI plate file fixed it. FS22 player plates work.
- 📖 Density reference: the EU map uses `maxNumVehicles="15"` on 15.3 km of traffic splines, about 1 car per km. Asia (54.8 km) and US do not set the attribute. The schema (`trafficSystem.xsd`) allows at most 30.
- 📖 Traffic vehicles: `dumpTruck` and `cementTruck` in `$data/trafficVehicles` are US-style conventional (bonneted) trucks, `tipperTruck` is a European cab-over truck. The EU map's `trafficSystem.xml` still lists all three; leave out `dumpTruck` and `cementTruck` for a purely European look.
- Spline length can be measured from the `.i3d.shapes`: entity type 2 is a spline (name, align4, shapeId, form, count, then `count × float3` control points in local space).

## Trees
- ✅ FS22 trees use the old `collisionMask="16791586"`, which FS25 ignores, so the trees have no collision. With the base game values `collisionFilterGroup="0x830" collisionFilterMask="0xfe3ffb83"` they stop vehicles and can be felled (confirmed in game).
- The oak split type (7) is the same in FS22 and FS25. Other FS22 split type numbers were not checked.

## Forestry and rock contracts (new in FS25)
- 📖 FS25 maps list `deadwoodMission`, `treeTransportMission` and `destructibleRockMission` under `<missions>` in the map XML. Each one points to a spots i3d.
- Map templates often ship these commented out, with spots that belong to another map. Make your own spots for a converted map.
- Spots are empty transform groups:
  - Deadwood: the centre of a forest.
  - Tree transport: the origin sits at the edge of a flat, clear area next to a road, with `rotation="0 ry 0"`. Children `tree1…n` use `rotation="-90 -90 0"`, so they lie along local x. User attributes are `numRows`, `numTreesPerRow` and `sizeX`/`sizeY`/`sizeZ`. Point local z away from the road so the logs lie parallel to it.
  - Rocks: a clear, flat meadow.
- ❓ Spots can be found automatically:
  - Deadwood: tree density from all tree reference nodes, 200 m minimum spacing, excluding field polygons (`gameplay/fields`) and water.
  - Transport: 9–13 m from a road, height span < 0.8 m over 15 m, no tree < 9 m, no object < 18 m.
  - Rocks: 25–120 m from a road, flat.
  - ✅ Deadwood and tree transport contracts on such self-made spots work in game.
- ✅ Deadwood spots need a float user attribute `radius` (base game uses 75–95). Without it, the log warns "No radius defined for deadwood mission spot".
- 📖 Destructible map rocks (`onCreate = DestructibleMapObjectSystem.onCreateGroup`, `groupId`, `dropFillTypeName = STONE`) sit visibly on the terrain in the base maps. Check that template copies are not buried under the new terrain.

## Collectibles, pedestrians, licence plates
- 📖 FS25 collectibles (EU map golden apples):
  - Each collectible is a trigger shape (`static`, `trigger`, group `0x20000000`, mask `0x100000`, `nonRenderable`) with user attributes `name` and `onCreate = Collectible.onCreate`, plus a visual child.
  - The target is a group with `onCreate = CollectibleTarget.onCreate`, holding one child per collectible name. That child becomes visible once the collectible is found.
  - `collectibles.xml` links each `name` to its `target`.
  - FS22 used a visible shape with `triggerIndex` instead.
- 📖 The pedestrian system format did not change between FS22 and FS25: a `pedestrianSystem` group (`onCreate = PedestrianSystem.onCreate`, `xmlFile`) with splines (`density`, `groupName`, `width`). FS22 splines can be reused; take `pedestrianSystem.xml` from an FS25 base map.
- ✅ The `blender-i3d-importer` shapes reader returns triangle indices starting at 1. Subtract 1 when writing an inline `IndexedTriangleSet`, otherwise GIANTS Editor 10 crashes silently on import (the log ends with "non-binary indexed triangle sets").
- ✅ Inline geometry in an import i3d (`IndexedTriangleSet`, `NurbsCurve` with `<cv c=…/>`) imports fine in GIANTS Editor 10.
- ❓ FS22 licence plates:
  - Point the material shader to `$data/fs22support/shaders/vehicleShader.xml`. FS25 ships this FS22 vehicle shader, including the `colorMask` and `Decal` variations.
  - Copy the FS22 textures into the mod.
  - FS25 has the fonts `LICENSE_PLATE_FR/DE/PL/CZ/UK/US/AS`.
  - FS25 plate XMLs use `<material materialSlotName>` instead of FS22's `<color shaderParameter>`; whether the old element still works is unconfirmed.

- ✅ When you copy and rename an FS25 i3d, also update `<Shapes externalShapesFile=…>`, or every shape is missing ("Failed to open shapes file").
- ❌ `$data/fs22support/shaders/vehicleShader.xml` failed to compile for FS22 licence plates (variations `colorMask`/`Decal`: "cannot convert from float4 to float3"). Build the plates from an FS25 plate file instead (font `LICENSE_PLATE_FR` etc.).

## Map placeables
- ✅ Register the mod's own placeables in the modDesc under `<storeItems>` with mod-relative paths. In the map `placeables.xml`, reference them as `$moddir$ModName/...`. The map `storeItems.xml` only resolves `$data` paths.
- ✅ Farm buildings get a `uniqueId` in `placeables.xml`, as in the base maps.
- ✅ A material with `staticLight` caused "Graphics Pipeline State" errors. A plain material with `emissiveColor` works.

## Practical notes
- The GIANTS Editor crashed importing a whole FS22 map. Import only the needed group (e.g. the traffic system) saved as its own i3d.
- Raycasts in the GIANTS Editor do not hit temporarily static shapes, so editor scripts cannot fit terrain to roads by raycasting.
- After changing the DEM, delete the `*.terrain.*.cache` files next to the map i3d.

## Start fields of the player farm
- FS22 had no file for this: the crops were painted into the map's `densityMap_fruits.gdm`. FS25 sets start fields in `maps/config/fields.xml` (`<field fieldId>` with `<fruit type growthState>`, `<ground type angle>`, `<spray>`). State names are the `foliageState` names in capitals (`HARVESTREADY`, `HARVESTED`). 📖
- Read the FS22 state: convert `.gdm`/`.grle` to PNG with `grleconvert` (github.com/Paint-a-Farm/grleconvert). FS22 fruit pixel value = R + 256·G; fruit type = value & 31 (order of the `FoliageType` entries in the FoliageMultiLayer with `numTypeIndexChannels`), growth state = value >> 5 (FS22 wheat: 8 harvest ready, 9 withered, 10 cut). Ground type = value & 15 (2 cultivated, 11 harvest ready). Sample inside each FS25 field polygon (`polygonPoints`).
- ✅ The `fieldId` in `fields.xml` is the **farmland id**, not the field number (mapEU: farmlands 45/46 with `defaultFarmProperty` ↔ fieldId 45/46). With field numbers the start fields stayed empty.
- ✅ "pedestrian can't find the next spline to walk on": FS22 pedestrian loops whose start and end points coincide are stored as open splines (`form_closed` = 0). With no other spline near the end, FS25 pedestrians get stuck there. Closing these splines (flag bit 0) fixed it: no more errors in a 26-minute session.
- The `.i3d.shapes` encryption (I3DCipher) is an XOR key stream per 64-byte block: changing one plaintext byte changes only the same ciphertext byte. A spline entity (type 2) is name (int32 length + bytes, aligned to 4), shapeId, uint32 flags (bit 0 = closed), point count, points. So a spline in a huge map `.shapes` can be closed with a one-byte patch instead of rewriting the file. Decrypt entity by entity with the same chunking as the writer (count, then per entity type, size, data) to find the file offset.

## Enlarging a map to 4x (2 km -> 4 km) ❓ not yet tested in game
- The world origin is the map centre, so existing objects keep their coordinates; only terrain files grow. 📖
- Differences between the GIANTS template `maps` and `maps_4x` (📖 compared directly): DEM 2049 -> 4097 (unitsPerPixel stays 1);
  every density/info map doubles its edge (fruits/ground/height etc. 4096 -> 8192, farmlands/soilMap 1024 -> 2048,
  navigation/placement collision 2048 -> 4096, environment 512 -> 1024); weight maps 2048 -> 4096;
  `lodTextureSize` 4096; sun `depthMapResolution` 4096 and `lastShadowMapSplitBboxMin/Max` ±2048;
  `DisplacementLayer cellSize` 2 -> 4; border walls at ±2000; map XML `width/height` 4096.
- The template border walls are planes ±1024 m long centred on their origin, so `scale="2 1 2"` at ±2000 covers 4 km. 📖
- Padding: decode .gdm/.grle to PNG (grleconvert), put the old map in the centre, re-encode with `--i3d`. The grleconvert round trip is lossless by its own decoder, but the encoded file still needs the two fixes below before FS25 reads it correctly.
- Rename `$moddir$<modName>/` paths in vehicles.xml / placeables.xml when the copy gets a new mod name.
- Terrain continuation: a Laplace fill on a coarse grid plus noise with a ~1/f² height spectrum looks natural; flatter spectra look like grain.
- ✅ grleconvert pitfall: when encoding a `.gdm` it writes header byte 13 (number of type-index channels) as 0. For foliage multi-layers with `numTypeIndexChannels` (fruits 7, groundFoliage 5) FS25 then refuses the file ("GDM file has wrong number of channels after type index channel conversion (14 + 7 - 0 should be 14)") and every foliage type is missing. Set byte 13 to the layer's `numTypeIndexChannels` after encoding. GDM header: [8] log2(size)−5, [9] log2(chunk), [10] max bpp, [11] channels, [12] compression ranges, [13] type-index channels.
- ✅ grleconvert pitfall 2: chunks (32×32) with more than 4 distinct values are written as raw values with only as many bits as the largest value needs (3, 4 …). GIANTS files only use bit depth 0/1/2 with a palette, or the **full width of the compression range** (fruits 7+7, groundFoliage 5+5). FS25 misreads the narrow chunks: in mixed areas (decorative grass, field margins) strips without foliage appear, and the in-game map shows coloured crop pixels in horizontal bars there. Fix: rewrite every palette-less chunk to the full range width (lossless; verify that all pixels decode equal). Chunk layout: [bit depth][palette count][palette u16…][bitmap, bit depth·128 bytes, LSB first].
- ❓ Merging fields (not yet confirmed in game): a field is a node under `gameplay/fields` with `polygonPoints` (points relative to the field node, y = terrain height − node y), `nameIndicator` and `teleportIndicator`; its UserAttributes `polygonIndex`/`nameIndicatorIndex`/`teleportIndicatorIndex` are child indices. Keep one node per group, replace its points with the outline of the union including the strips between the fields (buffer out and back in with mitred joins), delete the other nodes and their UserAttributes. The in-game field number is the farmland id, so `infoLayer_farmlands`, `farmlands.xml` and `fields.xml` (`fieldId`) must be updated together. To change a few areas of a `.gdm` without re-encoding the whole file, rewrite only the affected 32×32 chunks with GIANTS-style encoding (palette for ≤ 4 values, otherwise full range width).
- ❓ The loading screen of a mod map is a crop of the map's `preview.dds` (`<map><iconFilename>`): full width, only roughly the bottom 41 % is visible above the info bar (estimated from one 2560×1440 screenshot). Put any marker (e.g. a "4x" badge) into that band.
- ❓ Start vehicles from a savegame: `maps/config/vehicles.xml` uses the same schema as the savegame's `vehicles.xml` (`savegame_vehicles.xsd`). Copy farm-1 vehicles with `defaultFarmProperty="true"`, keeping `component`, `configuration`, `licensePlates`, `fillUnit` and, for attached implements, `uniqueId` plus `attacherJoints/attachedImplement`; drop wear/dirt, other mods' data and configurations added by mods. Start field fertilisation: `<spray type="FERTILIZER" level="2"/>` (savegame `sprayLevel` runs 0–2).
- ✅ `overview.dds` covers **twice the map width**: the playable area is the central half of the image, the rest shows the surroundings beyond the border. For a 4x map (4096 m) a 4096 px overview therefore means 2 m/px over 8192 m. An overview that only covers the playable area appears doubled in size in game (field overlay only in the centre).

## Extending a river and a railway beyond the old map edge ❓ not yet tested in game
- FS22 maps often contain **background water planes** that run far beyond the map edge (where the background panorama used to be). They show the course the map author intended – a good guide for continuing the river after enlarging the map. They are not always flat (heights varied for the background effect), so replace them with a flat plane at water level. Swapping one shape inside a large map `.i3d.shapes` can be done by re-serialising just that entity and copying all others unchanged.
- The **train spline is a closed loop**; its return section usually runs outside the map. After enlarging the map, that section ends up inside the terrain (the train disappears into the meadow at the old edge). Route the return section behind the new map edge again, underground or outside the terrain. Track meshes and catenary meshes typically also run a little past the old edge and bend into the hidden return – they have to be cut back.
- Track cross-section of the FS22 French map (`railroadStraight50mGravel`): ballast bed 5.54 m wide, rails at ±0.71–0.89 m, rail top 0.126 m above the centreline; U repeats every ~24.3 m. Sweep this profile along a new centreline for extensions.
- Carving a river valley into a heightmap: copy the cross-section of the existing river (flat bed, cosine bank up to the water line, floodplain, valley side) and blend into the old terrain with a smooth minimum. Do **not** use hard `clip` limits on noise fields that drive width or slope – the kinks show up as arc-shaped ridges along the noise contours; use `tanh` instead. Clear decorative foliage below the water line, and give the water plane a generous margin when the shoreline is noisy.
- ❓ Extending a railway: cut the existing track mesh back at the last catenary pole before it bends into the hidden return (drop triangles whose centroid lies beyond the cut along the track direction), then sweep the cross-section of a straight template piece (two rings of vertices) along the new centreline, carrying all vertex channels (normals and tangents rotated into each frame, U continued with arc length and offset to match the last ring of the old mesh). Take the start height from the old mesh ring (rail head minus its local height), not from the train spline, which can sit a few centimetres higher. Catenary poles in the FS22 French map have their origin on the track centre with local +Z pointing against the spline direction, spaced ~40 m; the contact wire hangs ~5.9 m above the rail centre with ~0.5 m sag and ±0.28 m stagger.
- ❓ The train spline must stay a closed loop: route the return section outside the terrain and well below the edge height. Build it from a polyline with Chaikin-rounded corners – a cubic spline through a few far-apart points overshoots badly (also vertically).
- Decorating new riverbanks like the original: measure the existing river first (tree density per metre of bank, species mix, distance from the water line, rock size/sinking/cluster spacing, foliage states per distance band) and sample the same distributions along the new banks, using coherent noise so trees, rocks, reeds and flowers appear in groups rather than evenly scattered.
