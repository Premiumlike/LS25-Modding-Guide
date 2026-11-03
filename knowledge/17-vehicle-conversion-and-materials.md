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
- Decals must not use the body vmask as glossmap (smeared) → `$data/shared/default_vmask.png`. ✅
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
- **Detail textures are world-space:** `detailDiffuse/Normal/Specular` are sampled triplanar from `localPosition` (1 tile = 1 m), independent of the UVs. Useful for even surface structure (e.g. tarp weave) on badly unwrapped old models. 📖 ❓ (result in game not confirmed yet)
- A colour configuration applies the whole material template, including detail maps. Keep own detail maps with `<material materialSlotName="…" materialTemplateUseColorOnly="true"/>`. 📖

## Configurations

- Yes/No options: `isYesNoOption="true"` on the container (cover, design2, trailer …); the first entry is "No". ✅
- **Hiding parts of a merged mesh:** each vertex has one bone. Add a `TransformGroup` at identity under the same parent, append it to `skinBindNodeIds`, move the part's vertices to that bone, then `objectChange` it. ✅
- **Removable cover:** put the `objectChange` on the cover's **parent** – the `toggleCover` animation resets the visibility of the cover node itself. ✅
- **Rim colour:** `<rimColorConfigurations useDefaultColors="true" price="…">` with `rimColorConfiguration materialTemplateName="…"` (`RIM_DEFAULT`, `RIM_CONFIGURATION_CHROME`, `RIM_CONFIGURATION_BLACK`, `SHARED_GREYLIGHT` …). ✅
- **Own hub colour selection:** in `<wheels>` `<hubMaterial useDesignColorIndex="4"/>` plus a `designColor4Configurations` block without material slot. `hubMaterial` accepts `materialTemplateName`, `useBaseColor`, `useRimColor`, `useDesignColorIndex` (1–16); `designColor` … `designColor16Configurations` exist. ✅
- **Look things up in the schema instead of guessing:** `<game install>/shared/xml/schema/vehicle.xsd` documents every vehicle XML path; also `wheel.xsd`, `wheelHub.xsd`, `materialTemplates.xsd`. 📖

## Useful base-game references

- `data/vehicles/rudolphSohn/dk280RP/` – tipper with cover and a good dirt mask; `data/vehicles/kroeger/pwo24/`; `data/vehicles/fendt/vario700/vario700.xml` (`rimColorConfigurations`).
- `data/shaders/vehicleShader.xml` (FS25) and the FS19 version (colorMask rule, channel layout).
