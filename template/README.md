# Mod template (FS25 script mod)

A small, working starting point with the patterns from [`knowledge/`](../knowledge):

| File | What it does |
|---|---|
| `modDesc.xml` | descVersion 113, scripts in load order, `<l10n filenamePrefix>` plus English-only texts |
| `scripts/mtLog.lua` | log with prefix, debug switch in `modSettings/FS25_ModTemplate.xml` (created on first start), version line |
| `scripts/mtSettings.lua` | settings per savegame with defaults, re-written after every game save, never touched on MP clients |
| `scripts/mtSync.lua` | multiplayer: settings to joining players, admin check, host/admin changes to everyone |
| `translations/` | one file per language, same keys |
| `tools/run_all.sh` | syntax, XML, translations and mock tests in one go |
| `tools/tests/mock_settings.lua` | example mock test without the game |

**Status:** the patterns are taken from a mod where they were tested in the game (incl. dedicated server). This template itself is only checked with the mock tests – test it in the game before you build on it.

## Getting started

1. Copy the folder, rename it to `FS25_YourMod`.
2. Search and replace the prefixes: `MT`/`mt` (Lua tables and files), `mymod_` (text keys), `ModTemplate`/`modTemplate` (file and XML names).
3. Add an icon `icon_mod.dds` (256×256, DXT5) – the modDesc expects it.
4. Add your settings in `mtSettings.lua` below "defaults" (booleans and whole numbers are saved and synced automatically).
5. Build your menu (see [knowledge/03](../knowledge/03-settings-and-menu.md)) and call `MTSync.onLocalChange()` after every change; grey everything out when `MTSync.canEdit()` is false.
6. Set `<multiplayer supported="true"/>` once you tested it.
7. Before every build: `sh tools/run_all.sh` (needs `lua5.1`, `luac5.1`, `xmllint`, `python3`).
