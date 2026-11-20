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
- **Statistics are not enough – transfer real sections instead.** Painting weights and foliage from distance tables gives the right averages but looks smooth and washed out ("clear-cut" look). Original GIANTS maps have metre-scale structure: terrain weights are dithered per pixel (mostly 0/255), rock streaks follow the bank edge, the river bed is rough, micro-relief of 2–10 m, dense rock rows at the water line, tree clusters with gaps. Better: split the new centreline into blocks (~50 m); for each block and each bank/track side pick a validated anchor on the original river/track (water-line point with normal towards land, or track centre) and map target (u, t) to anchor + u·tangent + t·normal. Transfer the height *deviation* from the original mean cross-section (added to the carved profile so the height still fits the surroundings), weights per pixel with nearest sampling (never bilinear, and pick one source per pixel between overlapping blocks instead of averaging – averaging blurs the dithering), decorative foliage types only, and tree/rock nodes with rotated orientation. Cross-fade blocks over ~20 m and mirror the original across the old edge for the first ~20 m so the seam is invisible.
- Validate anchors strictly: no roads/yards (other weight layers), no fields (use the field polygons from the i3d – many fields start empty in `densityMap_ground` and otherwise show up as brown rectangles on the bank), no props; for rivers check water/land on the expected sides. Railways in farmland usually have a field or road on one side, so validate and transfer each track side separately. Fold deep river-bed samples back towards the bank so they never reach the opposite shore of the template.
- Git Bash on Windows rewrites arguments starting with `/` into Windows paths (`/scene/node` → `C:/Program Files/Git/scene/node`); set `MSYS_NO_PATHCONV=1` or run through `cmd /c`.
- Do not carve a railway as a gorge with fixed embankment slopes – it looks forced into the landscape. Original GIANTS lines keep the terrain level with the sleepers for many metres to both sides (median flat out to 30 m). Keep the track close to the terrain, keep a flat shoulder next to the ballast, then blend into the old terrain with a smoothstep whose width grows with the height difference (e.g. 6 m + |Δh| / 0.16, i.e. no steeper than ~1:6). Where the terrain climbs faster than the allowed grade this produces a wide valley instead of a cutting. Limit transferred template relief to small amplitudes (soft clamp ~±1.5 m) so larger features of the template do not end in a visible edge.
- Avoid lines parallel to a new railway: template relief taken from an existing line contains ditches and ballast edges that run parallel to the track and turn into grooves at a fixed offset; a constant shoulder width or a constant-width smoothstep also leaves parallel creases. Do not transfer template relief along railways, vary shoulder and blend width with low-frequency noise along the line, use a quintic smootherstep (continuous curvature), and fade the trackside textures out very gradually (dithered over 50–60 m). Check from eye level – top-down hillshades hardly show such shallow grooves.
- When trees and rocks are placed from different template blocks they can end up on top of each other. Afterwards remove every tree whose trunk lies inside a rock footprint (rock local extent × scale, plus a small margin), checking existing rocks too, and verify in the final i3d.
- Blending the old map edge into an enlarged area: FS22 maps usually have a border wall inside the edge (here 50–80 m wide, up to 40 m high, falling towards the edge) and a coarser heightmap at the rim. Plain mirroring creates a crease exactly on the edge (the slope flips) and a second wall outside; odd mirroring digs a trench. Keep the existing outer terrain instead, remove the step at the edge with an exponentially decaying offset, continue the slope of the last couple of metres inside for a short distance (smoothed along the edge), and mirror only fine detail relative to the edge point (zero at the edge, clamped). Verify by measuring the slope jump across the edge all the way round.
- For direction-less land, transfer template patches on a 2D grid (random rotation per cell, smoothstep weights with a plateau so neighbours sum to one) instead of a strip mapping along a curve – strips repeat once you fold beyond the validated window and fan out at corners. Exclude orchards (tree rows) from templates. Where carved valleys meet the edge, also blend their side slopes at the edge, keeping the water channel and the track bed untouched.
- The outermost rows of an FS22 heightmap often deviate by 1–3 m from the surrounding slope (a thin wall or trench exactly on the edge – it even covered a railway track here). After enlarging, replace a narrow strip across the old edge (about 6 m inside to 5 m outside) row by row with a cubic Hermite curve that matches height and slope at both ends, and lift/lower objects standing in it.
- Foliage and terrain weights also have a uniform outermost band (here ~2 m of a single decoFoliage state); mirrored outward it shows as a line in the grass. Replace a band of about ±5 m around the old edge row by row with content from ~10 m further in/out (skip roads and fields).
- After mirroring or copying foliage near tracks, clear the track again (ground foliage within ~4.5 m, crop/grass foliage under the ballast) – mirrored bushes from beside the track otherwise end up on the rails. Large bare patches copied from template field margins can be filled with the value of the nearest vegetated pixel. Do not use the old train loop's hidden return section as a track reference after it has been replaced.

## New roads onto an enlarged map area ❓ not yet tested in game
- First check whether any road actually ends at the old edge: in many FS22 maps the traffic network is a closed loop inside the border wall (no spline end without a neighbour within 3 m). New roads are then branches; branching from existing T-crossings in their free direction keeps the network tidy.
- Find crossings via the crossing decals (`roadTCrossingStop`/`GiveWay`); arms = clusters of traffic-spline points on a 22–32 m ring around the centre, free direction = largest angular gap. Spline ends alone are blurred by the two lanes.
- Typical FS22 decal road cross-section (`roadsVP_mat`): 7 vertices per ring at ±4.0 (v 0.484/0.984), ±3.7 (v 0.503/0.966), 0 (v 0.734) plus a separate centre-line strip ±0.075 m raised 2 cm (v 0.034/0.044); vertex colour (0,1,B,1) with B = 1 at the edges; U along the road, 1 unit per 16.27 m, tangent = direction of increasing U. v 0.484 is on the right in driving direction.
- Turning a T-crossing decal into a 4-way crossing: copy the stem triangles (all corners local z ≤ −3.99) rotated 180° about Y (x, z → −x, −z) – do not mirror, otherwise the stop line ends up on the wrong lane. The main road strip already has identical edge strips on both sides.
- Vertical alignment: low-pass the terrain along the route (σ ≈ 35 m), then clamp the grade **sequentially** forward and backward (a vectorised clamp only propagates one sample per pass), round with a small Gaussian and clamp again; ramp the allowed grade up over ~30 m when leaving the crossing. Cut/fill with a flat carriageway plus a varying shoulder and a quintic transition whose width depends on the height difference at the shoulder edge (not per pixel) and varies with noise per side.
- Copy terrain weights and foliage beside the road pixel by pixel from straight interior road sections (reject windows with other roads, crossings, field polygons, water or paving/concrete layers); put the asphalt layer under the decal footprint and clear foliage there.
- If the map has no AI road splines, AI helpers use the navigation map; add traffic splines only once the new road connects somewhere (dead ends are risky for NPC traffic).
- FS22 maps place trees in two ways: as ReferenceNodes and as TransformGroups with LOD0/LOD1 shapes. When you modify terrain, adjust both, otherwise the second kind floats.
- Rasterise the asphalt weight under a new decal by pixel coverage (supersample, ≥ 50 %), not with a filled polygon plus dilation – that made the asphalt about 1–1.5 m too wide per side.
- A build pipeline must not read inputs from the mod folder it writes to; otherwise each run feeds back into the next (here: template masks picked up the new asphalt and the edge blending changed). Read everything from a fixed backup and compare checksums of intermediate results.
- Level crossing for a new road: place a copy of the existing crossing floor (long axis along the track, top = rail head) on the track centre, keep the road flat at rail-head height for ±8 m, leave the terrain beside the ballast untouched, and put the crossing signs on the right of each approach.
- Check the terrain gradient before routing: where the ground rises faster than the allowed road grade, a straight road turns into a canyon; follow valleys or contour lines instead.
- GRLE info layers (8 bit): 21-byte header ('GRLE', u16 version 1, u16 width/256, u16 0, u16 height/256, u8 0, u8 1, 3 zero bytes, u32 data length); data = value a, and if the next byte repeats a it is a run of 2 + sum of the following bytes (255 = continue). The SDK grleConverter only decodes, so a small encoder is needed to edit farmland maps.
- Splitting a field with a road: clip the polygon against the road line (half-plane clipping with a gap), keep the old field node and its attributes for one part, add a new field node with a copy of the UserAttribute block for the other, renumber that side in the farmland info layer and add the farmland to farmlands.xml (field number = farmland id).
- Height pins (crossing, level crossing) close together must allow at least the required grade between them, otherwise the limiter leaves a step at the pin.
- Level-crossing gates live in the train system placeable (a `railroadCrossingNN` group in trainSystem.i3d plus a `<railroadCrossing rootNode=…>` entry with gates, blockers, signals and sounds in trainSystem.xml). Append a copied group as the last child so the indices of callers and hotspots stay valid.
- Where the ground rises faster than the road may, flatten broadly (slope width from height difference over a small mean slope, e.g. 10 %, up to a few hundred metres) instead of cutting a canyon; check slopes numerically, exaggerated cross-sections are misleading.
- Paint rock layers pixel by pixel on steep new cut slopes (probability rising from ~30°), clear foliage there and place a few large rocks on the steepest spots.
- FS22 level-crossing floors look poor under the FS25 renderer even with identical data. Replacing them with the FS25 base-map wooden crossing planks works well: bake the asset's Rx(−90) into the vertices, place the plank deck flush with the rail head along the track, and keep the old floor slightly lower as an asphalt strip next to it. Take the crossing list from the train system (gate groups sit on the track centre at rail-head height).
- After transferring templates or painting rock layers, clear crop/grass foliage wherever rock weights dominate, otherwise grass hides the rock texture.
- Where a road runs above a field, leave the field at its height and turn the short strip between them into a rocky edge; between two halves of a split field, blend the edges broadly and gently instead.
- Level crossings: remove the FS22 floor slab entirely (it creates bumps and edges), flatten the terrain along the road at rail-head height, paint asphalt and clear foliage there, then put the plank deck on top. FS22 gate bases sit at ±4 m along the track; for an 8 m road move them out to about ±5.8 m.
- When a cut crosses a hill whose ground keeps rising sideways, grow the slope width until the ground at every distance is reached with the target slope, otherwise a wall appears — but not where a natural slope runs parallel to the road.
- After merging FS22 fields, the old boundary often survives as a thin meadow strip and grass texture inside the new polygon; clear decorative grass and grass weights inside field polygons.
