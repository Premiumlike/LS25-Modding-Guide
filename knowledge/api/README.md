# FS25 Lua API – knowledge from the game scripts (fs25-lua-api)

Facts mirrored from `github.com/MyGameSteamOfficial/fs25-lua-api` – **summaries in our own words and name/key lists only, no GIANTS code**.
Source state: commit 9478ee9, 2025-02-26 (older than the current patch – names may have changed). Status 📖 unless noted.

**Get the scripts yourself** (do not copy them into a repo):
```
git clone --depth 1 --filter=blob:none --sparse https://github.com/MyGameSteamOfficial/fs25-lua-api /tmp/fsapi
cd /tmp/fsapi && git sparse-checkout set --no-cone '/**/Vehicle.lua' '/**/Attachable.lua'     # or: git sparse-checkout disable (all, 13 MB)
```

## Layout
`vehicles/` (Vehicle.lua, `specializations/` – one file per vehicle capability, `configurations/`), `placeables/` (same idea for buildings), `gui/`,
`shop/` (StoreManager, StoreItemUtil), `economy/`, `missions/`, `ai/`, `objects/`, `animals/`, `handTools/`, `utils/` (ObjectChangeUtil, XML helpers),
`configurations/` (ConfigurationUtil). 886 files, ~12,300 functions, ~4,760 registered XML keys.

## Key mechanisms (own summary)
1. **A vehicle type is a set of specializations.** Each checks its requirements in `prerequisitesPresent` (see `specializations.md`), registers new
   functions, overwritable functions (`registerOverwrittenFunction` – mods hook in there with `superFunc`) and event listeners. Load order:
   `onPreLoad` → `onLoad` → `onPostLoad` → `onPreLoadFinished` → `onLoadFinished` → `onLoadEnd`; runtime `onPreUpdate`/`onUpdate`/`onPostUpdate`/
   `onUpdateTick`; network `onReadStream`/`onWriteStream` (on join) and `onReadUpdateStream`/`onWriteUpdateStream` (continuous); `onPreDelete`/`onDelete`.
2. **The XML format is a registered schema.** Keys are registered with a type (`XMLValueType.FLOAT`, `NODE_INDEX`, `VECTOR_N` …) and default; unknown
   keys produce a warning. `(?)` marks list elements, `<baseName>`/`<key>` a prefix filled in at runtime; savegame keys live under
   `vehicles.vehicle(?).<specialization>`. All keys: `xml-*.md`.
3. **Configurations** (`ConfigurationUtil`): `objectChange` toggles nodes – `visibilityActive/Inactive`, `translation…`, `rotation…`, `scale…`,
   `shaderParameter…`, `compoundChildActive/Inactive` (collision), `centerOfMassActive/Inactive`; `dependentConfiguration` sets another configuration.
4. **Shop specs** (`g_storeManager:addSpecType(name, icon, load, get, species, …, per-config values)`), list in `shop-specs.md`; many can be overridden under
   `storeData.specs.<name>`. Weight: sum of component masses or of the selected `componentConfiguration`; range via
   `storeData.specs.weight.config(name="component", index, value in kg)` or `#minValue/#maxValue`, `#ignore` hides it. `base.components#maxMass` → "additional weight".
5. **Attaching**: `inputAttacherJoint` with `jointType`, `distanceToGround lower/upper` (joint height lowered/raised → lift height), `upperRotationOffset`,
   `lowerRotLimitScale`. `bottomArm#categories` (or `#widths`) sets the lower-link width; the game loads the balls itself (`ballType` 1 plain/2 guide cone,
   `ballFilename`, `ballDefaultVisibility`) and, detached, places them at the last width of the list; ball size is not scaled (yet). Top ball sits on `topReferenceNode`.
6. **Console commands**: 99 with original descriptions in `console.md`.

## Files
- [XML keys: ai (6)](xml-ai.md)
- [XML keys: animals (71)](xml-animals.md)
- [XML keys: fence (17)](xml-fence.md)
- [XML keys: forestry (24)](xml-forestry.md)
- [XML keys: handTools (9)](xml-handTools.md)
- [XML keys: materials (49)](xml-materials.md)
- [XML keys: misc (94)](xml-misc.md)
- [XML keys: objects (135)](xml-objects.md)
- [XML keys: placeable-specializations (360)](xml-placeable-specializations.md)
- [XML keys: placeables (31)](xml-placeables.md)
- [XML keys: placement (3)](xml-placement.md)
- [XML keys: shop (79)](xml-shop.md)
- [XML keys: sounds (6)](xml-sounds.md)
- [XML keys: testing (1)](xml-testing.md)
- [XML keys: triggers (47)](xml-triggers.md)
- [XML keys: utils (57)](xml-utils.md)
- [XML keys: vehicle-specializations (3339)](xml-vehicle-specializations.md)
- [XML keys: vehicles (432)](xml-vehicles.md)
- [Functions: ai (448)](functions-ai.md)
- [Functions: animals (381)](functions-animals.md)
- [Functions: animation (13)](functions-animation.md)
- [Functions: collections (65)](functions-collections.md)
- [Functions: configurations (36)](functions-configurations.md)
- [Functions: debug (82)](functions-debug.md)
- [Functions: densityMaps (1)](functions-densityMaps.md)
- [Functions: economy (35)](functions-economy.md)
- [Functions: environment (4)](functions-environment.md)
- [Functions: events (16)](functions-events.md)
- [Functions: fence (30)](functions-fence.md)
- [Functions: field (26)](functions-field.md)
- [Functions: fillTypes (31)](functions-fillTypes.md)
- [Functions: forestry (68)](functions-forestry.md)
- [Functions: fruits (36)](functions-fruits.md)
- [Functions: graphics (24)](functions-graphics.md)
- [Functions: gui (1430)](functions-gui.md)
- [Functions: guidedTour (6)](functions-guidedTour.md)
- [Functions: handTools (322)](functions-handTools.md)
- [Functions: i3d (17)](functions-i3d.md)
- [Functions: input (1)](functions-input.md)
- [Functions: materials (75)](functions-materials.md)
- [Functions: misc (225)](functions-misc.md)
- [Functions: missions (190)](functions-missions.md)
- [Functions: objects (419)](functions-objects.md)
- [Functions: placeable-specializations (970)](functions-placeable-specializations.md)
- [Functions: placeables (178)](functions-placeables.md)
- [Functions: placement (21)](functions-placement.md)
- [Functions: player (254)](functions-player.md)
- [Functions: root (1)](functions-root.md)
- [Functions: ship (10)](functions-ship.md)
- [Functions: shop (105)](functions-shop.md)
- [Functions: sounds (69)](functions-sounds.md)
- [Functions: specialization (35)](functions-specialization.md)
- [Functions: testing (36)](functions-testing.md)
- [Functions: trainSystem (13)](functions-trainSystem.md)
- [Functions: triggers (118)](functions-triggers.md)
- [Functions: utils (29)](functions-utils.md)
- [Functions: vehicle-specializations (5590)](functions-vehicle-specializations.md)
- [Functions: vehicles (934)](functions-vehicles.md)
- [Vehicle specializations](specializations.md)
- [Console commands](console.md)
- [Shop specs (addSpecType)](shop-specs.md)
