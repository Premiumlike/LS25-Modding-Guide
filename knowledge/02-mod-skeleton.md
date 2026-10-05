# 2. Mod skeleton

[← Overview](../README.md)

## modDesc

- **`descVersion`:** ModHub currently requires **113** (patch 1.24, September 2026). Check before uploading whether it changed. ✅
- Scripts: `<extraSourceFiles><sourceFile filename="…"/>`. They load in file order – shared tables first.
- `<multiplayer supported="false"/>` until the mod is multiplayer-proof. Only zip mods run in multiplayer.

## Environment and hooks

- **Mod environment:** scripts run in their own environment. The game classes live in the metatable of `_G` (`getmetatable(_G).__index`). If you search for classes (e.g. all classes with `showVehicleName`), search both. ✅
- **Mod folder:** `g_currentModDirectory` / `g_currentModName` are only valid while your file is being loaded – store them in your own variables.
- **Hooks:**
  - `Utils.overwrittenFunction(old, new)` → `new(self, superFunc, …)`
  - `Utils.appendedFunction`, `Utils.prependedFunction`
  - Always guard your replacement with `pcall` and log an error only **once**, otherwise the log fills up every frame.
- **Lua 5.1 pitfall:** `...` is not allowed inside an inner function (e.g. `pcall(function() … end)`). Save it first: `local args = { ... }` and `select("#", ...)`.
- **Single entry file:** list one loader in `<extraSourceFiles>` and load the rest with `source(Utils.getFilename(rel, g_currentModDirectory))` in dependency order. 🔎 (AutoDrive, interactiveControl, EnhancedVehicle, manualAttach)
- **Lifecycle hooks seen:** `Mission00.load` (prepended: create the main object, `addModEventListener(obj)`), `Mission00.loadMission00Finished` (appended: managers, GUI), `Mission00.onStartMission` (appended), `FSBaseMission.delete` (appended: `removeModEventListener`, nil your globals). A mod event listener can have `loadMap`, `deleteMap`, `update(dt)`, `draw`, `mouseEvent`, `keyEvent`. `FSBaseMission.loadItemsFinished` does **not** exist in FS25. 🔎 (EnhancedVehicle, UsedPlus, manualAttach, PowerTools)
- Guard against the icon generator: skip your init if `g_iconGenerator ~= nil`. 🔎 (manualAttach)
- **Global hooks survive** unloading a savegame (the class tables stay). Guard them with `g_modIsLoaded[modName]` so a hook installed earlier does nothing when the mod is not active. 🔎 (manualAttach, Courseplay)
- **Other mods:** active = `g_modIsLoaded["FS25_X"]`, installed = `g_modManager:getModByName(name)`. Their classes are reachable as `FS25_X.ClassName` (mod environment named after the mod). Many mods also set a global (`g_…`). 🔎 (interactiveControl, PowerTools, DashboardLive, UsedPlus)
- The mod folder name is part of savegame keys – a renamed zip loses its data; some mods warn when `g_currentModName` is not the expected name. 🔎 (AutoDrive, UniversalAutoload)

## Own specialization

- `SpecializationUtil.registerOverwrittenFunction(vehicleType, "getFullName", …)`, events via `registerEventListener` (`onLoad`, `onPostLoad`, `onUpdate`, `onDraw`, `onReadStream` …).
- Adding it to all matching vehicle types: `g_specializationManager:addSpecialization(name, className, file)` and in `TypeManager.validateTypes` (prepended) `typeManager:addSpecialization(typeName, specName)` with your own filter. 🔎
  - Only act when `typeManager.typeName == "vehicle"`; loop `g_vehicleTypeManager:getTypes()` (or `.types`), filter with `SpecializationUtil.hasSpecialization(Motorized, typeEntry.specializations)` etc., add `modName .. ".specName"`, guard against double adds. Typical excludes: `Locomotive`, `ConveyorBelt`. 🔎 (AutoDrive, manualAttach, EnhancedVehicle)
  - Variants: `validateTypes` **appended** (UniversalAutoload), `TypeManager.finalizeTypes` prepended with `<specializations>` in the modDesc (Courseplay), or directly at file load (DashboardLive). Ordering against other mods differs ❓. 🔎
  - Placeables: `g_placeableSpecializationManager:addSpecialization`, `g_placeableTypeManager:addSpecialization(type, spec)`. 🔎 (AutoDrive)
- **Spec table name:** a mod spec lives in `self["spec_" .. modName .. ".specName"]`. Many mods create a short alias `self.spec_specName` in `onPreLoad`/`onLoad`; check first that the alias is not taken by another mod. 🔎 (manualAttach, DashboardLive, interactiveControl)
- **Switching off per vehicle:** if a vehicle type got your spec but the vehicle does not qualify, call `SpecializationUtil.removeEventListener(self, "onUpdate", MySpec)` on the instance in `onLoad`/`onPostLoad`. 🔎 (UniversalAutoload, interactiveControl)
- Statics: `prerequisitesPresent`, `initSpecialization`, `registerFunctions` (`SpecializationUtil.registerFunction`), `registerOverwrittenFunctions`, `registerEventListeners`, `registerEvents` (`SpecializationUtil.registerEvent`, raise with `SpecializationUtil.raiseEvent(vehicle, "onX", …)` – other mods can listen). 🔎 (AutoDrive, Courseplay)
- **Vehicle XML keys:** `Vehicle.xmlSchema:setXMLSpecializationType("MySpec")`, `schema:register(XMLValueType.FLOAT, path, desc, default)`, then `setXMLSpecializationType()`. Extend another spec's schema later with `schema:addDelayedRegistrationFunc("AnimatedVehicle:part", fn)`. Read nodes with `xmlFile:getValue(key, nil, self.components, self.i3dMappings)`, loop with `xmlFile:iterate(key, fn)`. 🔎 (AutoDrive, interactiveControl)
- Offering functions to other mods: `registerFunction`, or assign a function on the vehicle in `onLoad` (EnhancedVehicle offers `vehicle:functionEnable(name, bool)` to switch its features off). 🔎
- **Saving per vehicle:** `saveToXMLFile` / load in `onLoad(savegame)`. Register the schema paths for the specialization name **with and without the mod prefix** (`mySpec` and `FS25_MyMod.mySpec`). ✅
- **Savegame key layout:** `vehicles.vehicle(?).<modName>.<specName>#attr`, registered on `Vehicle.xmlSchemaSavegame` in `initSpecialization`. In `saveToXMLFile(xmlFile, key, usedModNames)` the `key` already ends in `<modName>.<specName>`; read in `onLoad`/`onPostLoad(savegame)` with `savegame.xmlFile:getValue(savegame.key .. "." .. modName .. ".specName#attr")`. Handle `savegame == nil` (new or shop vehicle) and `savegame.resetVehicles`. 🔎 (AutoDrive, Courseplay, UniversalAutoload, manualAttach, interactiveControl)
- Not running in the shop preview: see `VehiclePropertyState.SHOP_CONFIG` in [4](04-configurations-and-shop.md).
- **Never rename** configuration type names, `saveId`s, specialization names or saved attributes – they are stored in savegames.
- **Special characters:** the game font has no U+2212 "−", use "-". ✅

## Texts (l10n)

- Large amounts of text do not belong into the modDesc (advice from ModHub modders). Use `<l10n filenamePrefix="translations/translation">` with files `translation_de.xml`, `translation_en.xml` … in the format `<l10n><elements><e k="key" v="Text"/></elements></l10n>`. ✅
- Texts that are **identical in all languages** go only as `<text name="…"><en>…</en></text>` directly into the same `<l10n>` block of the modDesc. GIANTS does the same: if a language is missing, the game uses English. File entries and modDesc entries can be mixed. ✅
- Language codes: **`cz` = Czech**. `cs`/`ct` are *probably* simplified and traditional Chinese. ❓
- Get texts with `g_i18n:hasText(k)` / `g_i18n:getText(k)`, keep a fallback text in the script and log a missing key once.
- For texts the **game itself** looks up (tab titles, `$l10n_` in your own GUI XMLs), additionally set the text in the global `g_i18n` (`setText`).
- Several mods copy **all** their texts into the global table once (iterate the mod's `g_i18n.texts` into `getmetatable(_G).__index.g_i18n.texts`), e.g. in a `TypeManager.validateTypes` prepend. Needed for text keys that other mods or the AI messages resolve ([8](08-helpers-ai.md)). Read a mod text explicitly: `g_i18n.modEnvironments[modName]:getText(key)`. 🔎 (AutoDrive, interactiveControl, EnhancedVehicle)
- Don't add keys that shadow game keys (e.g. `configuration_chassisColor`, `fillType_oil`). 🔎 (UsedPlus)
- Money: `g_i18n:formatMoney(v, 0, true)`. Numbers: `g_i18n:formatNumber(v, decimals)`.
- A check script pays off: same keys in all languages, same placeholders (`%s`, `%d`, `%%`), no missing keys. Careful: in French "0 % d’état" is not a placeholder – do not allow spaces in your placeholder pattern. See [`tools/check_translations.py`](../tools/check_translations.py).

## In-game help pages

- modDesc: `<helpLines><category title><page title iconSliceId><paragraph><title text/><text text/>`. ✅
- Own page images:
  1. Load your own atlas as a texture config: `g_overlayManager:addTextureConfigFile(path, "myPrefix")`.
  2. Copy its slices into `g_overlayManager.textureConfigs.helpline.slices` (adjust `sliceId`).
- The game resolves the images only when the help is opened.
