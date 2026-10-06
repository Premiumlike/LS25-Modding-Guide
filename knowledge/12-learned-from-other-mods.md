# 12. Learned from other mods

[← Overview](../README.md)

We only describe techniques here, no code is copied. Check each mod's license before reusing anything. Everything except AdjustSuite was read from the source (GitHub, or the ModHub zip for the ModHub-only mods) in October 2026 and is **not tested by us** (🔎); details live in the linked topic files. A table of what each mod overrides is at the end ([compatibility notes](#compatibility-notes)).

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

## FS25_AdvancedDamageSystem (id577, Squallqt)

Source: <https://github.com/id577/FS25_AdvancedDamageSystem> (read 0.9.2.4). License: GPL-3.0. Per-system condition, breakdowns, thermal model, battery, service and maintenance log; depends on FS25_Vehicle_Years.
- **Replaces vanilla damage:** `updateDamageAmount` returns 0, damage forced to 0, own condition → [6](06-consumption-wear-value.md).
- Replaces `getSellPrice` and `updateMotorTemperature` without `superFunc`, blocks foreign `setOperatingTime`, takes over the workshop repair button → [6](06-consumption-wear-value.md), [4](04-configurations-and-shop.md).
- Global hooks on `VehicleMotor.getTorqueCurveValue`, gearbox functions, `Drivable.updateVehiclePhysics`, `startMotor` (starter must be held) → [5](05-motor-and-gearbox.md).
- HUD component in `hud.displayComponents`, vanilla damage bar faked around `SpeedMeterDisplay.draw`, shop menu page → [7](07-hud-and-display.md), [3](03-settings-and-menu.md).
- Server-only simulation (round-robin), nine dirty flags with epsilon checks → [10](10-multiplayer.md).

## FS25_ExtendedVehicleMaintenance (SimuTools)

Source: <https://github.com/SimuTools/FS25_ExtendedVehicleMaintenance> (read 1.0.0.2). License: all rights reserved (viewing, testing, pull requests only). Maintenance intervals, service modes, failures, battery, collision damage.
- Keeps vanilla wear and **adds** damage (overdue maintenance, collision heuristic) → [6](06-consumption-wear-value.md).
- Disables vanilla workshop repair for motorized vehicles (`getCanBeRepaired` false, `getRepairPrice` 0) → [6](06-consumption-wear-value.md).
- Blocks starting/entering during service via `getCanMotorRun` + `getMotorNotAllowedWarning` (chained), but replaces `vehicle.startMotor` per instance → [5](05-motor-and-gearbox.md).
- Failures cap motor fields and later restore snapshots → [5](05-motor-and-gearbox.md). Redefines `TypeManager.finalizeTypes` → [2](02-mod-skeleton.md).

## FS25_CVT_Addon (s4t4n)

Source: <https://github.com/s4t4n/FS25_CVT_Addon_Dev> (read 2.1.0.0). License: all rights reserved. Shop configuration that turns vanilla CVTs into classic/modern/HST/electric/harvester variants with driving levels, pedal mode, pre-glow.
- Shop configuration via a `getConfigurationsFromXML` override, raises `ConfigurationUtil.SEND_NUM_BITS` → [4](04-configurations-and-shop.md).
- **No load-time motor changes**, but rewrites speed, ratios, rpm, load and brake values every tick on CVT vehicles → [5](05-motor-and-gearbox.md).
- `getCanMotorRun` start interlock, `getRequiredMotorRpmRange` override → [5](05-motor-and-gearbox.md).
- `forDBL_*` fields for DashboardLive → [15](15-dashboards-and-vehicle-data.md). Refuses to load under another folder name → [2](02-mod-skeleton.md).

## FS25_RealisticHarvesting (exekx)

Source: <https://github.com/exekx/FS25_RealisticHarvesting> (read 1.6.0.0). License: GPL-3.0. Combine speed control from a virtual power balance.
- "Engine load" is computed in hp from crop flow and header power, not from motor physics; rated hp from `Motorized.getSpecValuePower` → [15](15-dashboards-and-vehicle-data.md).
- Speed limit in two layers (`getSpeedLimit` + `motor:setSpeedLimit`) → [5](05-motor-and-gearbox.md).
- Public API `RHM_Api` with `onOverload` events → [15](15-dashboards-and-vehicle-data.md).
- Overrides `startThreshing` / `stopThreshing` without `superFunc`, `verifyCombine`, `getCanBeTurnedOn`, `addFillUnitFillLevel`. 🔎
- Clean dirty-flag throttling → [10](10-multiplayer.md); settings rows cloned into the ESC settings → [3](03-settings-and-menu.md).

## FS25_additionalGameSettings (Rockstar94FS)

Source: <https://github.com/Rockstar94FS/FS25_additionalGameSettings> (read 1.0.0.6). License: none stated (all rights reserved). Client-only comfort settings (HUD, camera, clock, lighting, easy motor start …) in an own settings tab.
- Own tab with shifted `SUB_CATEGORY` ids, `exposeControlsAsFields`, focus re-registration, `MENU_ACCEPT` fix, bottom-bar button pool → [3](03-settings-and-menu.md).
- Settings applied in stages (`loadMap` / map finished / mission loaded) → [3](03-settings-and-menu.md), [2](02-mod-skeleton.md).
- Easy motor start via `Drivable.actionEventAccelerate` (respects `getCanMotorRun`) → [13](13-input-and-player.md).
- Side-notification progress bar, UI-scale change message → [7](07-hud-and-display.md). Can auto-close the purchase/leasing `InfoDialog`s → [3](03-settings-and-menu.md).

## FS25_EasyDevelopmentControls (GtX-Andy)

Source: <https://github.com/GtX-Andy/FS25_EasyDevelopmentControls>. License: restrictive (no republishing, modifying or copying without permission). **The repository contains no Lua code** – only texts.
- Feature list (condition, hours, temperature, money, time, reload, teleport …) as a test-tool checklist; the APIs behind it are our guesses ❓ → [14](14-development-and-debugging.md).

## FS25_HideHelpTexts (rittermod)

Source: <https://github.com/rittermod/FS25_HideHelpTexts> (read 1.0.0.0). License: none stated (all rights reserved). Hides chosen F1 help entries.
- `InputDisplayManager.makeHelpElement` → `NO_HELP_ELEMENT`, `getDisplayActionEvents` → [13](13-input-and-player.md).
- `MessageDialog` with a `SmoothList` → [3](03-settings-and-menu.md).
- Runtime log-level console commands → [14](14-development-and-debugging.md).

## FS25_SimpleInspector (jtsage)

Source: <https://github.com/jtsage/FS25_SimpleInspector> (read 0.0.0.9). License: none stated (all rights reserved). Text overlay listing vehicles with speed, fuel, damage, fill and helper state.
- Rendering with `gui.gameInfo_*` slices, multi-colour text, scaling, position above the minimap, hide conditions → [7](07-hud-and-display.md).
- Vehicle data loop and filters → [15](15-dashboards-and-vehicle-data.md); helper detection across AI/AD/CP → [8](08-helpers-ai.md).
- Settings rows cloned into ESC › General with focus fix; per-savegame file in `modSettings` → [3](03-settings-and-menu.md).
- Client-only, no events, no API for other mods. 🔎

## FS25_FarmTablet (TisonK, Realistic-Farming)

Source: <https://github.com/Realistic-Farming/FS25_FarmTablet> (read 2.6.0.4). License: CC BY-NC-ND 4.0. An in-game tablet drawn as overlays with ~45 apps.
- Drawn via `g_currentMission:addDrawable`, overlays created once, clip rectangles, mouse capture → [7](07-hud-and-display.md).
- Farm, field, animal, silo, price and production data → [16](16-economy-missions-and-placeables.md); `Farm.changeBalance` hook for income → [4](04-configurations-and-shop.md).
- Handle published on `g_currentMission.<name>`, optional FS25_MasterHUD bridge → [15](15-dashboards-and-vehicle-data.md).
- `onFrameOpen` errors abort the ESC menu → [3](03-settings-and-menu.md).

## FS25_AdjustStorageCapacity (rittermod)

Source: <https://github.com/rittermod/FS25_AdjustStorageCapacity> (read 1.0.1.2). License: none; README "provided as-is for personal use". Capacities of silos, productions, husbandries and vehicle fill units.
- Storages, capacity models, `onLoad` timing rule, fill units and mass → [16](16-economy-missions-and-placeables.md).
- `validateTypes` appended on purpose; `registerOverwrittenFunction` instead of class hooks → [2](02-mod-skeleton.md).
- Client clamp fix (true fill level in the stream), request/response events, permission rules → [10](10-multiplayer.md).

## FS25_WorkerCosts (TisonK, Realistic-Farming)

Source: <https://github.com/Realistic-Farming/FS25_WorkerCosts> (read 2.2.3.45). License: `LICENSE` file CC BY-NC-ND 4.0 (README says MIT – treat as the stricter one). Own helper wages and roster.
- Replaces `g_currentMission.addMoney` on **all peers** to drop vanilla `MoneyType.AI` wages and every farm-0/spectator booking → [4](04-configurations-and-shop.md), [16](16-economy-missions-and-placeables.md).
- Listens to `AI_JOB_STARTED` / `AI_JOB_STOPPED` and classifies by `AIMessageType.ERROR` → [8](08-helpers-ai.md).
- Books its own wages as `MoneyType.OTHER` at the day change; never stops jobs. Saves only on real save events → [3](03-settings-and-menu.md).

## FS25_ContractBoost (GMNGjoy)

Source: <https://github.com/GMNGjoy/FS25_ContractBoost>. License: CC0 1.0. Contract limits, rewards, keeping bales, extra contract vehicles. Written for an early FS25 patch.
- `MissionManager` constants and mission type data → [16](16-economy-missions-and-placeables.md).
- Mission class overrides (`getDetails`, `getIsMissionWorkAllowed`, `finishField`, `onSpawnedVehicle`) → [16](16-economy-missions-and-placeables.md).
- Join sync via `Player.writeStream`, no server-side admin re-check ❓ → [10](10-multiplayer.md).
- Iterates tables without `pairs` ❓ → [14](14-development-and-debugging.md).

## FS25_MarketDynamics (TisonK, Realistic-Farming)

Source: <https://github.com/Realistic-Farming/FS25_MarketDynamics> (read 1.3.1.0). License: CC BY-NC-ND 4.0. Fluctuating crop prices, world events, futures contracts.
- Hooks `SellingStation.getEffectiveFillTypePrice` (not `EconomyManager`) and `sellFillType` → [16](16-economy-missions-and-placeables.md).
- Price modifier API for other mods → [15](15-dashboards-and-vehicle-data.md).
- Broadcasts factors, clients recompute; request/response join sync; user → farm → manager check → [10](10-multiplayer.md).
- In-game menu page from a `TabbedMenuFrameElement` → [3](03-settings-and-menu.md). Uses real-time `dt` as day timer ❓ → [14](14-development-and-debugging.md).

## guidanceSteering (Wopster)

Source: <https://github.com/stijnwop/guidanceSteering> (read 2.1.6.0, `develop`). **FS22 code – there is no FS25 version in the repository.** No license file; README: open for own use with credit, only the author publishes. Everything below is 🔎 ❓ for FS25.
- Steering takeover via `getIsVehicleControlledByPlayer` + `rotatedTime`, player axes from `Drivable.actionEvent*` → [5](05-motor-and-gearbox.md).
- Buyable GPS configuration with a price → [4](04-configurations-and-shop.md).
- Lines with `drawDebugLine` on terrain height every frame; join data appended to `SavegameSettingsEvent` → [10](10-multiplayer.md).
- Blocks helpers while steering → [8](08-helpers-ai.md).

## ModHub-only mods (read from the downloaded zip, no license file)

Read in October 2026, 🔎, not tested together with other mods.

### FS25_Configurable_Sales (JulLeBarge, 1.0.1.0)
- Sets all `VehicleSaleSystem` constants, including the multiplayer ones and `MINIMUM_ITEM_VALUE`.
  - It writes them on the class **and** on the instance `g_currentMission.vehicleSaleSystem`, in `loadMap` and again in an appended `FSBaseMission.onFinishedLoading`.
  - Its defaults differ from vanilla (hourly chance 0.20), so it always overrides. → [9](09-used-vehicle-market.md)
- Optional repricing: appended to `VehicleSaleSystem.addSale`. After every add it lowers the price of **all** generated offers whose discount is above a cap (it assumes a vanilla maximum discount of about 0.65 ❓).
- Settings in its own file in the savegame folder, injected into the settings frame via appended `InGameMenuSettingsFrame.updateGameSettings`. No MP events.

### FS25_MotorLoadHUD (Dr.Fajen, 1.1.0.0)
- Load, power, slip and gear range.
- Prepended and appended on the instance `g_currentMission.hud.drawControlledEntityHUD`; vehicle tracked via appended `hud.setControlledVehicle`. → [7](07-hud-and-display.md)
- "Above speedometer" position from `hud.speedMeter.speedBg` (`y + height`). It **moves the vanilla fill-level display** (`hud.fillLevelsDisplay.y` / `offsetY`) every frame and restores the remembered values on leaving.
- Load from `getMotorLoadPercentage()`, power from `motor:getTorqueCurveValue(rpm)` × rpm. These are readable on clients.
- Wheel slip is server-computed and delivered by a request/response event pair: the client asks every 100 ms, the value expires after 750 ms. → [10](10-multiplayer.md)

### FS25_FuelConsumptionHUD (Jansgi, 1.1.0.0)
- One text line (l/h or kW), bottom right above the speedometer. Only `addModEventListener` with `update` (every 100 ms) and `draw`, no hooks.
- Consumption mixed from three sources:
  1. `spec_motorized.lastFuelUsage` (server only)
  2. the consumer table, with a factor from `missionInfo.fuelUsage`
  3. **a fill-level-delta estimator**: tank level change over ≥ 1 s, median/trimmed mean over 7 samples, noise check, plausibility check against source 1
- The estimator works on multiplayer clients **without own network traffic**, because fill levels are synced. It is slow, and the synced resolution is unknown ❓. → [10](10-multiplayer.md), [15](15-dashboards-and-vehicle-data.md)

### FS25_AdvancedMaintenance (MechMoxer, 1.0.2.0)
- Adds its spec to every `Drivable`, non-`Locomotive` type directly when its source file runs.
- **Replaces** `getCanMotorRun` and `getMotorNotAllowedWarning` without `superFunc`. It re-checks propellant and `motor:getCanMotorRun()` itself, so specs registered before it are skipped.
- "Dead engine" is a new random roll on every call above about 29 % damage, so not persistent. The chance grows with damage × operating time.
- On a hit it stops the helper with `AIMessageErrorVehicleBroken`, which triggers Courseplay/AutoDrive follow-up actions ([8](08-helpers-ai.md)).

## Other references

| Mod | What we learned |
|---|---|
| FS25_UsedSalesTimeLeft | drawing into shop cells, sending `timeLeft` in multiplayer |
| FS25_LeaseToOwn | buying out leased vehicles, leasing factors |
| FS25_IncomeMod | help pages |
| FS22_VehicleSaleSystemCustomizer | changing `VehicleSaleSystem` constants |

## Compatibility notes

What the mods above override at points other mods commonly touch – for checking conflicts with your own mod. "chains" = calls `superFunc` when not acting, "replaces" = no `superFunc` (mods below it are ignored), "·" = not seen in what we read. All 🔎, read from the source, not tested together.

| Mod | `getCanMotorRun` | `startMotor` | `getSellPrice` | repair (`getRepairPrice` …) | `updateDamageAmount` | torque curve | `addMoney` |
|---|---|---|---|---|---|---|---|
| AdvancedDamageSystem | false on failure / in service | overridden (hold starter) | **replaces** | own workshop dialog, static repaint price | **returns 0** | `getTorqueCurveValue` hook (×) | · |
| ExtendedVehicleMaintenance | chains (service lock) | **per instance** | pass-through | `getRepairPrice` 0, `getCanBeRepaired` false (motorized) | · (adds via `setDamageAmount`) | · (caps `peakMotorPower`, `maxRpm`) | books `VEHICLE_REPAIR` |
| CVT Addon | start interlock | · | · | · | · (`addDamageAmount` on manual) | · (per-tick motor fields) | · |
| UsedPlus | stall/governor | · | global override (composes) | replaces workshop dialog, static price | · | · | uses `changeBalance` |
| AutoDrive | overridden | restarts if allowed | · | · | · | · | · |
| Courseplay | chains (fuel-save) | calls without asking ❓ | · | · | · | · | · |
| AdjustSuite | · | · | · | · | · | `#torqueScale` in XML, gear ratios | · |
| WorkerCosts | · | · | · | · | · | · | **instance wrapper** (drops `AI`, farm 0) |
| AdvancedMaintenance | **replaces** (random dead engine) | · | · | · | · (reads vanilla damage) | · | · |
| ExtendedLeasing | · | · | · | `repairVehicle(nil)` on return | · | · | uses `changeBalance` |

Other override points seen:
- `setOperatingTime` (blocked), `updateMotorTemperature` (replaced), `Drivable.updateVehiclePhysics`, `getSpeedLimit`, `setLightsTypesMask`, gearbox functions → AdvancedDamageSystem.
- `getRequiredMotorRpmRange` → CVT Addon. `getSpeedLimit`, `startThreshing`/`stopThreshing` (replaced), `addFillUnitFillLevel` → RealisticHarvesting.
- `Drivable.actionEventAccelerate`, static `InfoDialog.show` → Additional Game Settings. `SellingStation.getEffectiveFillTypePrice` (replaced) → MarketDynamics. `Farm.changeBalance` (wrapped, read-only) → FarmTablet.
- `getIsVehicleControlledByPlayer`, `Drivable.actionEventAccelerate/Brake/Steer`, `getCanStartAIVehicle` → guidanceSteering (FS22 code ❓); `getIsVehicleControlledByPlayer`, `getIsAIActive` → AutoDrive.
- `getAdditionalComponentMass`, fill unit capacities → AdjustStorageCapacity. `VehicleSaleSystem` constants (class + instance), appended `addSale` → Configurable_Sales. `hud.drawControlledEntityHUD` (instance), `hud.fillLevelsDisplay.y` → MotorLoadHUD. `getMotorNotAllowedWarning` (replaced) → AdvancedMaintenance. Mission classes → ContractBoost.
