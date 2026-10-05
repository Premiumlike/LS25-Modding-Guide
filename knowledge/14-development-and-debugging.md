# 14. Development and debugging

[← Overview](../README.md)

See also [1](01-sources-and-tools.md) (log, mock tests) and the [workflow](../workflow.md).

## Console commands

- Register: `addConsoleCommand("name", "help text", "methodName", targetTable)`; the method receives the arguments as strings. Remove with `removeConsoleCommand("name")` on delete – otherwise ❓ "already exists" on the next savegame load. Short names like `rr` work. 🔎 (PowerTools, UniversalAutoload, UsedPlus)
- Run another console command from Lua: `executeConsoleCommand("cmd args")`. 🔎 (PowerTools)
- Many vanilla `consoleCommand*` methods can be called directly from Lua, without enabling the developer console: `g_currentMission:consoleCommandCheatMoney(delta)`, `g_currentMission.vehicleSystem:consoleCommandFillUnitAdd(fillUnitIndex, fillTypeName, amount)`, `g_baleManager:consoleCommandAddBale(...)`, `g_treePlantManager:consoleCommandLoadTree(...)`, `g_currentMission.hud:consoleCommandToggleVisibility()`. 🔎 (PowerTools)
- Useful own test commands (❓ not taken from a mod, check the source first): set damage (`addDamageAmount`, see [6](06-consumption-wear-value.md)), operating hours (`setOperatingTime`), fill level (`addFillUnitFillLevel(farmId, fillUnitIndex, delta, fillType, ToolType.UNDEFINED, nil)`). 🔎 (PowerTools for the fill call)
- Vehicle XML reload: `VehicleSystem.consoleCommandReloadVehicle` exists (interactiveControl re-applies its XML injections there). 🔎

## Fast test loop

- **Restart straight back into the same savegame:** `RestartManager:setStartScreen(RestartManager.START_SCREEN_MAIN)` and `doRestart(hardReset, "-autoStartSavegameId " .. g_careerScreen.currentSavegame.savegameIndex)`. Put it on a short console command (`rr`): edit the zip, `rr`, and you are back in the same save. 🔎 (PowerTools)
- Exit: `doExit()`. Quicksave: `g_currentMission:startSaveCurrentGame()`, result in `SavegameController.onSaveComplete(self, errorCode)` (compare with `Savegame.ERROR_OK`). 🔎 (PowerTools)
- **Time scale:** `g_currentMission:setTimeScale(0)` pauses game time (reproducible wear/consumption tests); high values test hourly/daily callbacks quickly. Read back `g_currentMission.missionInfo.timeScale`. Extra steps by replacing `Platform.gameplay.timeScaleSettings`. 🔎 (PowerTools)
- Spawn a vehicle or pallet: `VehicleLoadingData.new()`, `setFilename`, `setPosition(x, y, z)`, `setPropertyState(VehiclePropertyState.OWNED)`, `setOwnerFarmId(id)`, `load(callback)`; check `VehicleLoadingState.OK`. Ground height: `RaycastUtil.raycastClosest(...)` or `getTerrainHeightAtWorldPos(g_terrainNode, x, y, z)`. Server only. 🔎 (PowerTools)

## Looking into tables

- `DebugUtil.printTableRecursively(tbl, prefix, indent, depth)` – e.g. dump `spec_motorized` of the current vehicle. 🔎 (UniversalAutoload, PowerTools)
- PowerTools evaluates a path string with `loadstring` – ❓ `loadstring` is disabled since patch 1.24 (see [10](10-multiplayer.md)); walk the path with `string.gmatch` instead.
- **Call logger:** wrap any `target[fn]` with `Utils.overwrittenFunction` that prints its arguments and calls `superFunc` – good for discovering call order (e.g. motor functions). Remove it again for release. 🔎 (PowerTools)
- Function lookup across environments: the real globals are in `getmetatable(_G).__index` (see [2](02-mod-skeleton.md)); PowerTools notes `getfenv(0)` as "nerfed", while AutoDrive still writes texts via `getfenv(0).g_i18n` ❓.

## Debug drawing

- `drawDebugLine(...)` (lines, every frame), `renderText3D(x, y, z, rx, ry, rz, size, text)`, `DebugUtil.drawDebugCube(...)`. 🔎 (EnhancedVehicle, UniversalAutoload)
- Quick on-screen value: `g_currentMission:addExtraPrintText(text)` every frame (F1 box). 🔎

## Logging and builds

- `print`, `printWarning`, `printError`, `printCallstack()`, `Logging.warning`, `Logging.devError`, `Logging.xmlWarning(xmlFile, fmt, …)` for vehicle XML authoring errors. Remember: `Logging.info` does not reach `log.txt` ([1](01-sources-and-tools.md)). 🔎 (PowerTools, AutoDrive, interactiveControl)
- Writing `log.txt` from Lua with `io.open` reportedly no longer works (since game version 1.12). 🔎 (PowerTools)
- **Debug build by file presence:** debug output only if a certain file (e.g. a debug helper Lua) is in the zip; the release build excludes that file. Combine with auto-bumping the modDesc version in the build script. 🔎 (PowerTools)
- Builds of other modders: a zip script with a whitelist of extensions. 🔎 (manualAttach, PowerTools)
- Timing and memory: `getTimeSec()`, `gcinfo()`, `collectgarbage()`. 🔎 (PowerTools)
- Wrapping heavy update code or replaced physics functions in `pcall` keeps the game alive, but errors then only show in your own log – log them once. Courseplay wraps worker updates so an error prints a call stack instead of silently killing the helper. 🔎 (EnhancedVehicle, UniversalAutoload, Courseplay)

## Lua dialect

- manualAttach's source uses **Luau** syntax (`continue`, `+=`, backtick string interpolation, type annotations, `table.freeze` / `table.find` / `table.clear`) and zips the files unchanged. ❓ This suggests the FS25 runtime accepts Luau, but it is unverified (the build tool might transpile). `luac5.1 -p` rejects such files – stay with plain Lua 5.1 unless you test it in game. 🔎 (manualAttach)
- Not available in mods: `os.time()` / `os.date()` → use `g_currentMission.time`, `environment.currentDay/currentHour/currentPeriod`; no `goto`. 🔎 (UsedPlus)
