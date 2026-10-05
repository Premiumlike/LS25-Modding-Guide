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
