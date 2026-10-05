# 12. Learned from other mods

[← Overview](../README.md)

We only describe techniques here, no code is copied. Check each mod's license before reusing anything. Everything except AdjustSuite was read from the source in October 2026 and is **not tested by us** (🔎); details live in the linked topic files.

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

## FS25_AutoDrive (Stephan-S)

Source: <https://github.com/Stephan-S/FS25_AutoDrive> (read 3.0.1.4). License: MIT. Route network driver (not an AI job).
- Overrides `getIsAIActive` but has **no AI job** – detection and clean stop on the server → [8](08-helpers-ai.md).
- Restarts the motor if `getCanMotorRun` allows; endless "got stuck" loop on a dead motor → [8](08-helpers-ai.md).
- May take over after `onAIJobFinished`; follows Courseplay's fuel/broken events → [8](08-helpers-ai.md).
- Spec added to all types in a loop over `g_vehicleTypeManager`; mod texts copied into the global `g_i18n` → [2](02-mod-skeleton.md).
- Broadcasts with `sendLocal` to raise vehicle events on all machines → [10](10-multiplayer.md).

## Courseplay_FS25

Source: <https://github.com/Courseplay/Courseplay_FS25>. License: GPL-3.0. Field work and unloading helpers.
- Real `AIJob` subclasses; `getIsCpActive`, `stopCurrentAIJob(nil)` works, some stop messages refused → [8](08-helpers-ai.md).
- Own `AIMessage` classes via `aiMessageManager:registerMessage` plus the multiplayer `getMessageIndex` fallback → [8](08-helpers-ai.md).
- Message → follow-up events (`onCpFuelEmpty`, `onCpBroken` …) → [8](08-helpers-ai.md).
- Skips shop preview vehicles (`SHOP_CONFIG`) → [4](04-configurations-and-shop.md); brake-to-stop trick → [5](05-motor-and-gearbox.md).
- Keeps the game from resuming a helper after loading → [8](08-helpers-ai.md).

## FS25_UsedPlus (Seamforge / XelaNull)

Source: <https://github.com/Seamforge/FS25_UsedPlus> (read 2.15.4.97). License: no license file; README allows study and copying patterns, no selling, keep credits. Finance, leasing, used-vehicle search, maintenance.
- Multiplayer blueprint: `sendToServer`, server validation, response event, full-state resync, join sync, bounded reads → [10](10-multiplayer.md).
- Buys through vanilla `BuyVehicleEvent`/`BuyVehicleData` incl. `setSaleItem` → [4](04-configurations-and-shop.md), [9](09-used-vehicle-market.md).
- Money pitfalls (`MoneyType.VEHICLE_SELL` nil, `addMoney` in nested callbacks) → [4](04-configurations-and-shop.md).
- Settings built in Lua into the vanilla settings page, own pause-menu page, dialog pitfalls → [3](03-settings-and-menu.md).
- Replaces the workshop repair dialog (static repair price) → [6](06-consumption-wear-value.md).
- Weaknesses (client-sent amounts, no permission check) – do not copy → [10](10-multiplayer.md).
- Earlier: settings file layout, translation files mixed with modDesc texts, vehicle list columns, shop lease button, workshop button cloning.

## FS25_ExtendedLeasing (Peppie84)

Source: <https://github.com/Peppie84/FS25_ExtendedLeasing> (read 1.1.0.0). License: GPL-3.0. Deposit refund and washing costs when returning a leased vehicle.
- Overrides `SellVehicleEvent.run` (installed in a `Mission00.load` prepend), permission `Farm.PERMISSION.SELL_VEHICLE` → [4](04-configurations-and-shop.md).
- Books via `farm:changeBalance` + `addMoneyChange` (not `addMoney`), own `MoneyType.register` → [4](04-configurations-and-shop.md).

## FS25_UniversalAutoload (loki79uk)

Source: <https://github.com/loki79uk/FS25_UniversalAutoload>. License: none stated (all rights reserved). Autoloading for trailers.
- Spec injected into every type with `TensionBelts`; switches itself off per vehicle with `removeEventListener` → [2](02-mod-skeleton.md).
- Per-vehicle config in `modSettings` keyed by the normalised vehicle XML filename (mod/DLC prefix stripped) → [4](04-configurations-and-shop.md).
- Triggers from an own i3d of unit cubes, scaled at runtime (`loadSharedI3DFile`, `addTrigger`). 🔎
- Shop hooks: extra button, attribute row, act on buy → [4](04-configurations-and-shop.md).
- Event `run` without re-broadcast – the pattern to avoid → [10](10-multiplayer.md).

## FS25_interactiveControl (Vertex Dezign)

Source: <https://github.com/TobiasF92/FS25_interactiveControl> (read 1.3.0.0). License: all rights reserved. Clickable doors, windows and buttons.
- **XML injection** via `XMLFile.initInheritance` incl. `$pdlcdir$` paths and index node paths – adds door animations to DLC vehicles; fragile → [4](04-configurations-and-shop.md).
- Click detection by projecting nodes to the screen (`project`) instead of raycasts → [13](13-input-and-player.md).
- Correct event relay with `noEventSend` and ghost object → [10](10-multiplayer.md).
- `Dashboard.defaultDashboardStateFunc` override → [15](15-dashboards-and-vehicle-data.md).

## FS25_EnhancedVehicle (Majo76)

Source: <https://github.com/ZhooL/FS25_EnhancedVehicle> (read 1.1.7.1). License: CC BY-NC-SA 4.0. HUD, diff locks, parking brake, track assistant.
- HUD by appending to `hud.drawControlledEntityHUD`, positions from `speedMeter.speedBg`, moves `fillLevelsDisplay` → [7](07-hud-and-display.md).
- Server-only motor values (`lastFuelUsage`, temperature), odometer with throttled sync → [15](15-dashboards-and-vehicle-data.md).
- Parking brake via `WheelsUtil` overrides, steering via `Drivable.updateVehiclePhysics` → [5](05-motor-and-gearbox.md).
- Axis actions with two bindings → [13](13-input-and-player.md).

## FS25_DashboardLive (Glowins Modschmiede)

Source: <https://github.com/jason0611/FS25_DashboardLive>. License: none stated (all rights reserved). Extra dashboard value types.
- Vanilla `DashboardValueType` API, `forDBL_*` convention for other mods → [15](15-dashboards-and-vehicle-data.md).
- Syncs server-only motor values to clients (1 s throttle) → [10](10-multiplayer.md).
- `self.spec_*` in input callbacks unreliable → [11](11-pitfalls.md).

## manualAttach (Wopster)

Source: <https://github.com/stijnwop/manualAttach> (read 1.1.1.0). License: GPL-3.0. Attach, PTO and hoses on foot.
- Attach/detach/PTO/hose override points and calls → [13](13-input-and-player.md).
- On-foot input inside `beginActionEventsModification(PlayerInputComponent.INPUT_CONTEXT_NAME)`, short/long press → [13](13-input-and-player.md).
- Player range trigger linked to `player.rootNode` → [13](13-input-and-player.md).
- Source written in Luau syntax ❓ → [14](14-development-and-debugging.md).

## FS25_PowerTools (w33zl)

Source: <https://github.com/w33zl/FS25_PowerTools> (read 1.1.0.0-dev). License: no license file; library headers CC BY-NC-SA 4.0. Developer menu and console commands.
- `rr` = restart straight into the same savegame, time scale 0, table dump → [14](14-development-and-debugging.md).
- Vanilla `consoleCommand*` methods called from Lua → [14](14-development-and-debugging.md).
- Debug build by file presence → [14](14-development-and-debugging.md).

## Other references

| Mod | What we learned |
|---|---|
| FS25_UsedSalesTimeLeft | drawing into shop cells, sending `timeLeft` in multiplayer |
| FS25_LeaseToOwn | buying out leased vehicles, leasing factors |
| Additional Game Settings | own settings tab |
| FS25_IncomeMod | help pages |
| FS22_VehicleSaleSystemCustomizer | changing `VehicleSaleSystem` constants |
