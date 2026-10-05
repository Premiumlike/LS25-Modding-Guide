# 11. Pitfalls (short list)

[← Overview](../README.md)

1. Reading only your own prefix in the log → errors elsewhere are missed. **Always search for `Error` and `LUA call stack`.**
2. The wrong mod version was tested → print a version line on load and check it.
3. Torque changed but nothing noticeable → `updateMotorProperties` missing ([5](05-motor-and-gearbox.md)).
4. Motor XML changed after `loadMotor` → no effect.
5. List index taken as XML index → generated tyre variants break it ([4](04-configurations-and-shop.md)).
6. "Some configuration has X" treated as a vehicle property → wrong for options (crawlers).
7. Non-selectable variants counted → electric truck treated as diesel.
8. "Unknown" treated as "allowed" → rather "no", and log it visibly.
9. Own file in the savegame without re-writing in `saveToXMLFile` → it disappears ([3](03-settings-and-menu.md)).
10. Large texts in the modDesc → use translation files.
11. `updateConfigOptionsData` called → configurator broken.
12. Expensive calculation in `getFullName` → cache it.
13. `Logging.info` instead of `print` → nothing in the log.
14. `...` inside an inner function (Lua 5.1) → save to a table first.
15. Multiplayer client reads/writes "its" savegame folder → it is a foreign local path ([10](10-multiplayer.md)).
16. Comparing `propertyState` with numbers → use `VehiclePropertyState.*`.
17. Iterating a frame's fields with a prefix and calling element methods → booleans and other non-tables share the prefix; check `type(x) == "table"`.

## Seen in other mods

🔎 = learned from another mod's code or change log, not hit by us.

18. `getIsAIActive()` true taken as "has an AI job" → AutoDrive drives without a job; `stopCurrentAIJob` does not stop it ([8](08-helpers-ai.md)). 🔎
19. Helper stopped with `AIMessageErrorOutOfFuel` / `AIMessageErrorVehicleBroken` → Courseplay/AutoDrive send the vehicle to refuel/repair. Use an own `AIMessage` ([8](08-helpers-ai.md)). 🔎
20. Override of `getCanMotorRun`, `getSellPrice` … without calling `superFunc` when not acting → breaks the other mods in the chain. 🔎
21. `self.spec_*` read inside an input callback → "not reliable"; DashboardLive reads via `g_currentMission.hud.controlledVehicle` ([13](13-input-and-player.md)). 🔎 ❓
22. Luau syntax (`continue`, `+=`, string interpolation) in a mod's source → our `luac5.1` check rejects it; whether the game accepts it is unverified ❓ ([14](14-development-and-debugging.md)). 🔎
23. Axis action with one binding or one text → needs two bindings (`-`/`+`) and `input_X_1`/`_2` ([13](13-input-and-player.md)). 🔎
24. HUD positions computed once → stale after a HUD scale change ([7](07-hud-and-display.md)). 🔎
25. Vehicles deleted while the mission iterates the vehicle list → defer deletion ([10](10-multiplayer.md)). 🔎
26. Non-ASCII characters (±, ×) in a GUI XML → "Failed to open xml file" ([3](03-settings-and-menu.md)). 🔎
27. `addMoney` in nested dialog callbacks → "attempt to index nil with id"; `MoneyType.VEHICLE_SELL` → nil, money silently lost ([4](04-configurations-and-shop.md)). 🔎
28. Price or amount taken from a client event → compute on the server ([10](10-multiplayer.md)). 🔎
29. `g_client` used in server code → nil on a dedicated server. 🔎
30. Remembered vehicle used after it was sold/reset → check `isDeleted` and `entityExists(rootNode)` ([13](13-input-and-player.md)). 🔎
31. Global hooks and console commands left behind after leaving a savegame → guard with `g_modIsLoaded`, `removeConsoleCommand` on delete ([2](02-mod-skeleton.md), [14](14-development-and-debugging.md)). 🔎
32. Detecting vanilla dialogs by their text → works only in the languages you check. 🔎
33. XML injection by index (`animation(5)`, node path `0>0|9|3`) → breaks silently on a DLC update; validate and log ([4](04-configurations-and-shop.md)). 🔎
34. Dialogs opened from hourly handlers while sleeping → game froze ([3](03-settings-and-menu.md)). 🔎

