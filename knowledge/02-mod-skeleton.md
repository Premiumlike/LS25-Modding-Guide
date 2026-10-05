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

## Own specialization

- `SpecializationUtil.registerOverwrittenFunction(vehicleType, "getFullName", …)`, events via `registerEventListener` (`onLoad`, `onPostLoad`, `onUpdate`, `onDraw`, `onReadStream` …).
- Adding it to all matching vehicle types: `g_specializationManager:addSpecialization(name, className, file)` and in `TypeManager.validateTypes` (prepended) `typeManager:addSpecialization(typeName, specName)` with your own filter. 🔎
- **Saving per vehicle:** `saveToXMLFile` / load in `onLoad(savegame)`. Register the schema paths for the specialization name **with and without the mod prefix** (`mySpec` and `FS25_MyMod.mySpec`). ✅
- **Never rename** configuration type names, `saveId`s, specialization names or saved attributes – they are stored in savegames.
- **Special characters:** the game font has no U+2212 "−", use "-". ✅

## Texts (l10n)

- Large amounts of text do not belong into the modDesc (advice from ModHub modders). Use `<l10n filenamePrefix="translations/translation">` with files `translation_de.xml`, `translation_en.xml` … in the format `<l10n><elements><e k="key" v="Text"/></elements></l10n>`. ✅
- Texts that are **identical in all languages** go only as `<text name="…"><en>…</en></text>` directly into the same `<l10n>` block of the modDesc. GIANTS does the same: if a language is missing, the game uses English. File entries and modDesc entries can be mixed. ✅
- Language codes: **`cz` = Czech**. `cs`/`ct` are *probably* simplified and traditional Chinese. ❓
- Get texts with `g_i18n:hasText(k)` / `g_i18n:getText(k)`, keep a fallback text in the script and log a missing key once.
- For texts the **game itself** looks up (tab titles, `$l10n_` in your own GUI XMLs), additionally set the text in the global `g_i18n` (`setText`).
- Money: `g_i18n:formatMoney(v, 0, true)`. Numbers: `g_i18n:formatNumber(v, decimals)`.
- A check script pays off: same keys in all languages, same placeholders (`%s`, `%d`, `%%`), no missing keys. Careful: in French "0 % d’état" is not a placeholder – do not allow spaces in your placeholder pattern. See [`tools/check_translations.py`](../tools/check_translations.py).

## In-game help pages

- modDesc: `<helpLines><category title><page title iconSliceId><paragraph><title text/><text text/>`. ✅
- Own page images:
  1. Load your own atlas as a texture config: `g_overlayManager:addTextureConfigFile(path, "myPrefix")`.
  2. Copy its slices into `g_overlayManager.textureConfigs.helpline.slices` (adjust `sliceId`).
- The game resolves the images only when the help is opened.
