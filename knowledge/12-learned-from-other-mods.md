# 12. Learned from other mods

[← Overview](../README.md)

We only describe techniques here, no code is copied. Check each mod's license before reusing anything.

## FS25_AdjustSuite (BLU3COW)

Source: <https://github.com/BLU3COW/FS25_AdjustSuite> (read version 1.0.0.4, October 2026). License: all rights reserved, personal use and credited reuse of documented parts. ~10,000 lines of Lua, multiplayer-capable.

Adds percentage steps as shop configurations: fill volume, fuel capacity, payload, ballast, motor power, working speed/width, pickup width, driving speed, brake power, discharge rate, plus placeables and productions. Settings in `modSettings/FS25_AdjustSuite.xml`.

Techniques worth knowing:
- **Configuration items built in code** with `isSelectable` and `price`, and updated later without restart → [4](04-configurations-and-shop.md).
- **Dynamic shop rows** (show/hide, only selectable texts, recalculated price) → [4](04-configurations-and-shop.md).
- `ConfigurationUtil.addBoughtConfiguration(manager, object, configName, configId)` to correct a bought configuration on the server.
- Specialization added to all matching vehicle types via `TypeManager.validateTypes` (prepended).
- Motor power: scales `#torqueScale` in the in-memory XML around `loadMotor` (instance override in `onPreLoad`). Driving speed: after loading, scales gear ratios, appends overdrive gears and sets `maxForwardSpeedOrigin`, then updates the cruise control. **Two mods doing this at the same time stack or reset each other** – treat such mods as conflicts.
- Settings sent on join via `FSBaseMission.onConnectionFinishedLoading`.
- Help lines in the F1 box via `g_currentMission:addExtraPrintText`.
- Late hooks for AutoDrive (retry in `update`), Precision Farming specializations via `g_specializationManager:getSpecializationObjectByName("FS25_precisionFarming.<name>")`, Courseplay kept in sync with changed working widths.

## Other references

| Mod | What we learned |
|---|---|
| FS25_UsedPlus | settings file layout, translation files mixed with modDesc texts, vehicle list columns, shop lease button, workshop button cloning |
| FS25_UsedSalesTimeLeft | drawing into shop cells, sending `timeLeft` in multiplayer |
| FS25_LeaseToOwn | buying out leased vehicles, leasing factors |
| Additional Game Settings | own settings tab |
| FS25_IncomeMod | help pages |
| FS22_VehicleSaleSystemCustomizer | changing `VehicleSaleSystem` constants |
