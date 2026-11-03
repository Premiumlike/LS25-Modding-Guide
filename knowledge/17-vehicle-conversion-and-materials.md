# 17. Vehicle conversion FS19 → FS25: models, materials, textures

[← Overview](../README.md)

Learned while converting an FS19 tipper trailer to FS25 (November 2026). Status markers as everywhere: ✅ confirmed in game · 📖 read from game files (shaders, XSD, base-game XML) · ❓ assumption.

## Workflow without Blender

- Open the FS19 i3d once in **GIANTS Editor 10** and save it → geometry is in the FS25 format (`.i3d.shapes` version 10). Everything else can be scripted. ✅
- **Reading `.i3d.shapes`:** the pure-Python reader of [blender-i3d-importer](https://github.com/nadine-brinkmann/blender-i3d-importer) (GPLv3) works without Blender (`i3d_shapes_reader`, `i3d_shapes_models`, `_cipher_keys`).
- **Writing `.i3d.shapes` v10** (own writer, verified by a byte-identical read→write roundtrip ✅). Shape entity layout:
  name (int32 length + bytes, pad to 4) · id · bounding volume (4 floats, not for type 5) · cornerCount, numSubsets, vertexCount, options · `vtxCompression` float (v ≥ 9) · subsets (4 × uint32 + one float UV density per present UV set) · **material slot names** (uint16 length + bytes, pad to 2, then to 4) · indices (uint16 if vertexCount ≤ 0x10000, else uint32; pad to 4) · positions · normals · tangents (4 floats) · UV sets · vertex colours · skinning (weights only if not single-weight, then index bytes) · generic data · remaining attachment bytes unchanged.
  File: header `[version, 0, seed, 0]`, then every chunk (count; per entity type, size, data) encrypted separately with a running block index.
- Check results without starting the game: rasterise the mesh to a 2D sketch (orthographic, colour per subset, optional texture overlay).
- Limits: reordering, hiding, recolouring and adding simple quads works; real modelling or new UVs need Blender.

## Materials

- **Washed-out colours:** every `vehicleShader` material needs `<Texture>` pointing to `$data/shared/white_diffuse.png`; remove the FS19 `diffuseColor`. ✅
- FS19 `_specular` and FS25 `_vmask` have the **same channel layout**: R scratches, G baked AO, B dirt. Renaming is enough. 📖✅
- **FS19 colorMask rule** (FS19 vehicleShader): `uv.y < 0` → paint zone `colorMat[floor(uv.x)]`, otherwise `DetailArray[floor(u) + floor(v)*8]` (fixed materials, e.g. 2 chrome, 5 rubber, 8 silver metallic, 14 wood, 21/22 red/orange reflector). Using only `floor(u)` gives wrong zones. 📖✅
- **Colour configurations need slot names in the `.i3d.shapes` file** (one per subset). Names only in the i3d XML give "Failed to find material by material slot name". Split each colorMask mesh into one subset per zone and write the slot names. ✅
- Official brand colours: `data/shared/brandMaterialTemplates.xml`; own templates in the modDesc `<materialTemplates>` with `parentTemplate` (`calibratedPaint`, `wood2`, `silverScratched` …). Detail templates: `data/shared/detailLibrary/materialTemplates.xml`. 📖
- Decals must not sample the body vmask with UV1 (smeared). Base-game way: `customShaderVariation="vmaskUV2"` with the body vmask as glossmap – the decal's **second UV set** points to the body texture under it, so decals get the same dirt as the wall. FS19 decals already have that UV2. Add `alphaBlendingClipThreshold 1` and detail maps (`metalPainted_diffuse/_specular`, `flat_normal`). ❓
- Base-game decal shapes use `castsShadows="false"`; with shadows the thin decal layer looks noisy. ❓
- FS19 reflectors (variation `reflector`) have UV1 spread across the whole texture (old DetailArray tile), so the body vmask gives random dirt there. A plain square mask gets stretched enormously by those UVs (big blotches; tiny UV2 areas turn fully brown). Measure world size vs UV size per triangle first: FS19 reflector UVs were uniformly scaled but partly rotated 90°, so per-region pre-stretching produced wood-grain streaks. A square own vmask (R=0, G=255, B=direction-less grain at real-world scale, uncompressed) works. Decals whose UV2 matches the body stay on the body vmask. ❓
- Bare metal (silver parts) needs much less dirt than paint – the same mask value reads as thick stuck mud on metal. Lower it (~30 %) only where the texture area is not shared with painted parts. ❓
- **A vehicleShader material without detail maps shows the engine's default detail texture** – a test pattern with numbers and crosshairs, plus glitter. Give every material its own `detailDiffuse/Normal/Specular`. 📖
- **Reflectors like the base game:** copy the `reflectorYellow/Orange/Red` templates from `detailLibrary/materialTemplates.xml` (colorScale, `clearCoatIntensity 0.25`, `clearCoatSmoothness 1.0`, detail maps `nonMetallic/reflector/reflector_diffuse/_specular` + `flat_normal`) – this gives the prismatic honeycomb look. Base-game trailers do not use the `reflector` shader variation. ❓
- Collision masks: FS19 `8397058`/`8194` → `collisionFilterGroup 0x10004`, `collisionFilterMask 0xfe3ffb83`; `1073741824` → `0x40000000 / 0x20000000`. ✅
- HD warning stickers: FS25 atlas `$data/shared/assets/assetLibraryStickers_diffuse` (4096², 16 × 8 cells of 256 px). ✅

## Textures: what FS25 shows that FS19 hid

- **Clear coat reveals normal-map compression blocks** of old textures as speckles in highlights. Fix: replace isolated deviating pixels in flat surroundings with the local median (e.g. 13 × 13 window, only where ≥ 70 % of the window is flat). ✅
- **Dirt formula** (FS25 vehicleShader, vmask B): `dirt = linearstep(1-d, 1.5-d, B)`, `dust = B * d` (`d` = dirt amount 0–1). Small B values already give visible dirt, **including the rough dirt normal and specular**. 📖✅ Consequences:
  - A thin dirt film everywhere makes the whole paint look grainy. Use spots with **B = 0** in between, like base-game trailers.
  - DXT1 quantises B per 4 × 4 block → mosaic. Store a hand-made dirt vmask uncompressed (BGRA8 with mipmaps). ✅
  - Distribute dirt by **world height** (rasterise vertex height into UV space): dirty at the bottom and chassis, almost clean at the top; base-game covers have B ≈ 0. ✅
  - Convert any copied grain/noise to **texels per metre** of the target model; mirrored tiling shows as a kaleidoscope once you threshold it – generate non-tiled noise instead.
- **Base-game dirt is hand-painted and instanced per panel:** e.g. on the Rudolph DK 280 RP all wall panels of one kind share one UV rectangle in the vmask (stored upside down), with dirt collecting at each panel's lower edge. Procedural noise does not reach that look; transferring such a panel rectangle onto your own panels (between the struts, cropped to real-world scale) gets much closer. ❓
- **Repeated dirt on instanced UVs:** old models often share one UV area between both sides and mirrored halves, so a hand-painted dirt pattern repeats (and mirrors). Without re-unwrapping: add a **second UV set used only by the vmask** (`customShaderVariation="vmaskUV2"` on every material using that texture): UV2 = frac(UV1) scaled into part of the vmask, and each instance gets its own area in the freed space. Give every visible wall face its own full-resolution area – squeezed areas look washed out. Against repetition, combine two source crops per panel with `max()` (keeps edges crisp; averaging blurs). The normal map stays on UV1. ❓
- **Detail textures are world-space:** `detailDiffuse/Normal/Specular` are sampled triplanar from `localPosition` (1 tile = 1 m), independent of the UVs. Useful for even surface structure (e.g. tarp weave) on badly unwrapped old models. 📖 ❓ (result in game not confirmed yet)
- A colour configuration applies the whole material template, including detail maps. Keep own detail maps with `<material materialSlotName="…" materialTemplateUseColorOnly="true"/>`. 📖

- **Keep the mod size close to comparable base-game vehicles.** FS25 itself uses **BC7** (DDS DX10, DXGI format 98, e.g. `dashboardSymbols_diffuse`). BC7 keeps a hand-made dirt channel nearly lossless (~1.6/255 mean error) at ¼ of the uncompressed size – use it instead of uncompressed masks. **Not for textures that need transparency:** a BC7 decal texture rendered with its alpha ignored (black rectangles, flickering overlapping decals) – keep decals as DXT5/BC3 with a classic DDS header. ✅
- Small FS19 stickers with text (type plates) cannot be upscaled meaningfully – redraw them (render text at 4× and downscale), place them in an **unused area** of the same decal texture and move the quad's four UVs there: more pixels without a bigger texture. ❓
- Before upscaling a texture, rasterise which UV areas the shapes actually use – old decal atlases often contain unused parts (e.g. warning symbols that already come from the game's sticker atlas).

## Configurations

- Yes/No options: `isYesNoOption="true"` on the container (cover, design2, trailer …); the first entry is "No". ✅
- **Hiding parts of a merged mesh:** each vertex has one bone. Add a `TransformGroup` at identity under the same parent, append it to `skinBindNodeIds`, move the part's vertices to that bone, then `objectChange` it. ✅
- **Removable cover:** put the `objectChange` on the cover's **parent** – the `toggleCover` animation resets the visibility of the cover node itself. ✅
- **Rim colour:** `<rimColorConfigurations useDefaultColors="true" price="…">` with `rimColorConfiguration materialTemplateName="…"` (`RIM_DEFAULT`, `RIM_CONFIGURATION_CHROME`, `RIM_CONFIGURATION_BLACK`, `SHARED_GREYLIGHT` …). ✅
- **Own hub colour selection:** in `<wheels>` `<hubMaterial useDesignColorIndex="4"/>` plus a `designColor4Configurations` block without material slot. `hubMaterial` accepts `materialTemplateName`, `useBaseColor`, `useRimColor`, `useDesignColorIndex` (1–16); `designColor` … `designColor16Configurations` exist. ✅
- **License plate:** replace an FS19 modelled plate by an empty `TransformGroup` at the plate centre (rotation `0 180 0` at the back) **in the same place in the scenegraph** (keeps all index paths valid) plus `<licensePlates><licensePlate node="…" position="BACK" preferedType="ELONGATED" placementArea="top right bottom left"/></licensePlates>` (base game: `0.1 0.27 0.1 0.27`). ❓
- **Plate lights** (`plateNumberLight01`): base-game orientation is `rotation="-90 0 -90"` on the left (−x) node and `-90 0 90` on the right (+x) – both shine inward. ❓
- **Drawbar springs:** base-game springs are a plain cylinder with end eyes – the coils are in the texture – stretched by a `movingPart` with `scaleZ="true"` towards a reference node. When swapping, measure the rest length (node → `referencePoint`) and only stretch the new mesh slightly, or the painted coils pull apart.Split old and new parts by **connected triangle groups**, not by a z cut (a z cut clips the turnbuckle eye and leaves bits of the old hooks). Turn the front hook so it lies **perpendicular** to the eye it hangs in (rotate normals/tangents too), move the hooks undeformed and stretch only the coil body, and shear so both hook tips sit on the node axis – base-game spring meshes are modelled slightly offset. Keep the source normal map for the coils; recolour through a material that uses it. ❓
- **Look things up in the schema instead of guessing:** `<game install>/shared/xml/schema/vehicle.xsd` documents every vehicle XML path; also `wheel.xsd`, `wheelHub.xsd`, `materialTemplates.xsd`. 📖

## Physics

- **Converted trailers creep slowly over the ground:** FS19 values are usually `solverIterationCount="10"` on all components, no `inertiaScale` on the light dolly/drawbar components and a `brakeForce` without load scaling. Base-game drawbar trailer (Rudolph DK 280 RP): `solverIterationCount` 15/25/25, `inertiaScale="6 6 6"` on the dolly, `"2 2 2"` on the drawbar, `<brakeForce force="0.7" maxForce="1.5" maxForceMass="18000"/>` (brake force grows with the load). 📖 (effect in game not confirmed yet)

## Reusing parts from FS22 mods (with the author's permission)

- FS22 `.i3d.shapes` are version 7; the same reader parses them and the v10 writer can re-emit them (add material slot names, `vtxCompression` 0, keep the 4-byte attachment tail). FS22 colorMask uses the same zone rule as FS19, so split by zone into subsets with FS25 materials. ❓
- Insert foreign subtrees **at the same child index** as the node they replace (wrap several in one group) so all other index paths stay valid; convert index paths used in the XML (`localHose`). Base-game Rudolph textures moved to `$data/vehicles/rudolphSohn/shared/` in FS25.
- When deleting `i3dMapping` lines with a regex, remember node paths contain `>` – `[^>]*` stops inside `node="2>3|10"`.

## Useful base-game references

- `data/vehicles/rudolphSohn/dk280RP/` – tipper with cover and a good dirt mask; `data/vehicles/kroeger/pwo24/`; `data/vehicles/fendt/vario700/vario700.xml` (`rimColorConfigurations`).
- `data/shaders/vehicleShader.xml` (FS25) and the FS19 version (colorMask rule, channel layout).
