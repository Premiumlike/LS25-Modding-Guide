# 15. Dashboards and vehicle data

[← Overview](../README.md)

Reading live values from a vehicle and showing them on in-cab dashboards. HUD drawing is in [7](07-hud-and-display.md).

## Vehicle data

- Speed: `getLastSpeed()` (km/h), `vehicle.lastSpeedReal` (m/ms, × 3600 = km/h), `lastMovedDistance` (m since the last frame), `movingDirection`, `getCruiseControlMaxSpeed()`. 🔎 (AutoDrive, EnhancedVehicle)
- State: `getIsMotorStarted()`, `getIsMotorInNeutral()`, `getIsEntered()`, `getIsControlled()`, `getIsVehicleControlledByPlayer()`, `getRootVehicle()`, `vehicle.typeDesc` / `typeName`. 🔎 (EnhancedVehicle)
- RPM: `spec_motorized:getMotorRpmReal()`; temperature `spec_motorized.motorTemperature.value` (°C, Fahrenheit setting `GameSettings.SETTING.USE_FAHRENHEIT`), fan `spec_motorized.motorFan.enabled`. 🔎 (EnhancedVehicle, DashboardLive)
- Consumption: `spec_motorized.lastFuelUsage`, `lastDefUsage`, `lastAirUsage` (see [6](06-consumption-wear-value.md) for spikes). 🔎
- **Server-only values:** `lastFuelUsage`, `lastDefUsage`, `lastAirUsage`, `motorTemperature`, `motorFan` are **not synced** to multiplayer clients by the game – both mods show them only if `vehicle.isServer` or sync them themselves (dirty flag, max once per second). With DashboardLive installed these fields become valid on clients because it writes the synced values back into `spec_motorized`. 🔎 (EnhancedVehicle, DashboardLive) → [10](10-multiplayer.md)
- Fill levels: loop `spec_fillUnit.fillUnits` (`fillType`, `fillLevel`, `capacity`), match `FillType.DIESEL` / `FillType.DEF` / `FillType.ELECTRICCHARGE` / `FillType.METHANE`; names via `g_fillTypeManager:getFillTypeNameByIndex`. Fuel units: `spec_motorized.propellantFillUnitIndices`. 🔎 (EnhancedVehicle, AutoDrive)
- Damage/wear: `getDamageAmount()`, `getWearTotalAmount()` (0–1), recursively over `spec_attacherJoints.attachedImplements[i].object`. Mass: `getTotalMass(true)` (own) / `getTotalMass()` (with implements, t). 🔎 (EnhancedVehicle)
- EnhancedVehicle calls these functions on spec tables (`spec_wearable:getDamageAmount()`) and it works – spec tables seem to fall back to the vehicle ❓. Call them on the vehicle to be safe.
- Odometer: no vanilla value – EnhancedVehicle sums `lastMovedDistance` on the server while the motor runs, saves it per vehicle and syncs only every 10 m. Units: `g_i18n:getDistance(km)`, `g_i18n:getMeasuringUnit()`. 🔎 (EnhancedVehicle)
- Differentials (server): `spec_motorized.differentials[i]` (`diffIndex1`, `diffIndex1IsWheel`, `torqueRatio`, `maxSpeedRatio`); switch with `updateDifferential(rootNode, diffIndex, torqueRatio, maxSpeedRatio)` (lock = max speed ratio 1). Which index is front/rear is a vehicle-dependent heuristic ❓. 🔎 (EnhancedVehicle)
- Vehicle shown in the HUD: `g_currentMission.hud.controlledVehicle`. 🔎 (DashboardLive)
- Motor getters: `getMotorLoadPercentage()`, `getMotorRpmPercentage()`, `getMotorRpm()`, `getMotorState()` vs `MotorState.ON`. Lights: `getLightsTypesMask()`, `spec_lights.lightsTypesMask`, beacon `spec_lights.beaconLightsActive`. 🔎 (AdvancedDamageSystem, SimpleInspector)
- **Rated power:** `Motorized.getSpecValuePower(storeItem, vehicle, configs, nil, true)` → min/max hp (works for encrypted DLC XMLs); kW × 1.35962 = hp. Implement power: `spec_powerConsumer.neededPtoPower` / `neededMaxPtoPower` / `neededMinPtoPower` (kW). 🔎 (RealisticHarvesting) ❓ Shop-spec power does not see a torque change made at load time.
- Fuel units: `getConsumerFillUnitIndex(FillType.DIESEL | ELECTRICCHARGE | METHANE)` → `getFillUnitFillLevel` / `getFillUnitCapacity`. 🔎 (SimpleInspector)
- Heading: `localDirectionToWorld(rootNode, 0, 0, 1)` + `MathUtil.getYRotationFromDirection`, flipped when `spec_drivable.reverserDirection == -1`. Speed `vehicle.lastSpeed * 3600` = km/h. 🔎 (SimpleInspector)
- Field check: `FSDensityMapUtil.getFieldDataAtWorldPosition(x, y, z)`; `g_farmlandManager:getFarmlandIdAtWorldPosition(x, z)` gives the **farmland** id, not the field number. 🔎 (SimpleInspector)

## Collecting data for an inspector

🔎 (SimpleInspector) – client side, from replicated vehicle state.
- Loop `g_currentMission.vehicleSystem.vehicles` (array). In MP filter by `vehicle.ownerFarmId` (or `getOwnerFarmId()`) vs `g_currentMission:getFarmId()`; farm header with `g_farmManager:getFarmById(id).name` and `Farm.COLORS[farm.color]`.
- Skip `typeName` `locomotive` / `conveyorBelt` / `pickupConveyorBelt`, `Rideable`, and anything with `spec_attachable` (implements appear under their tractor).
- Damage of tractor + implements via `getAttachedImplements()` → `implement.object`, plus `vehicle.isBroken`. Fill levels recursively (depth-limited) over implements, summed per fill type; per unit `capacity`, `showOnHud`, `fillType`, `fillLevelToDisplay`, `fillTypeToDisplay`, `parentUnitOnHud`, `updateMass`. With `missionInfo.trailerFillLimit` the usable capacity is limited by `maxComponentMass - getDefaultMass()` / `massPerLiter`.
- Helper status: [8](08-helpers-ai.md). Drawing: [7](07-hud-and-display.md).

## Offering data to other mods

- **Publish a handle:** `g_currentMission.<name> = api` (clear it on delete). `getfenv(0)["g_x"] = api` is also used, but whether `getfenv(0)` is shared or per mod is disputed between mods ❓ – `g_currentMission.<name>` works either way. 🔎 (FarmTablet, SimpleInspector, MarketDynamics, RealisticHarvesting)
- Example of a clean API: RealisticHarvesting's global `RHM_Api` – `isRHMActive(v)`, `getEngineLoad(v)` (%, can exceed 100), `getNormalizedEngineLoad(v)`, `getTargetEngineLoad(v)`, `getPowerBreakdown(v)`, `getEnginePowerHp(v)`, `getRecommendedSpeed(v)`, `isActivelyHarvesting(v)`; events via `RHM_Api.registerEventListener("onOverload" | "onCropChanged" | "onSettingsChanged", fn)`. On clients it serves values synced every 0.2–1 s. Its "engine load" is a **virtual power balance**, not the motor's load – on combines with it, read its API instead of `smoothedLoadPercentage`. Do not write its internal caches. 🔎 (RealisticHarvesting)
- Extension hooks: MarketDynamics offers `registerPriceModifier(name, fn)` on its global and calls each fn in `pcall`. 🔎 (MarketDynamics)
- **FS25_MasterHUD** coordinates HUD mods so they do not overlap: `g_currentMission.masterHUD:subscribe(name, {draw = …, isFullscreen = …})`. 🔎 ❓ (FarmTablet's optional bridge)
- A shared telemetry table `vehicle.FStelemetryAddonData` exists (CVT Addon fills `CVT_*` entries). 🔎

## Vanilla dashboard API (`Dashboard` specialization)

🔎 (DashboardLive)
- Listen to the vehicle event `onRegisterDashboardValueTypes` in your specialization. Per value: `DashboardValueType.new(specPrefix, name)` → `setXMLKey("vehicle.dashboard.<section>")` → `setValue(self, getter)` → optional `setAdditionalFunctions(loadAttributes)` → `self:registerDashboardValueType(valueType)`.
- `getter(vehicle, dashboard)` returns a number, bool or string. Attribute loader: `(vehicle, xmlFile, key, dashboard, components, i3dMappings, parentNode)` → true/false, stores extra attributes in `dashboard.*`.
- Register extra XML attributes in `initSpecialization` on `Vehicle.xmlSchema` (and `Dashboard.compoundsXMLSchema` for compounds); `Dashboard.registerDashboardXMLPaths(schema, basePath, valueTypes)`.
- Vehicle XML then uses `<dashboard valueType="…" displayType="EMITTER|TEXT|VISIBILITY|…" node="…"/>`.
- ❓ So a mod can offer its own values (e.g. engine load, a failure timer) to **any** dashboard XML without depending on DashboardLive.
- Force a refresh: `self:updateDashboards(spec_dashboard.dashboardsByValueType[...], dt, true)` (also `groupDashboards`, `tickDashboards`, `criticalDashboards`).
- More hooks: `loadDashboardGroupFromXML`, `getIsDashboardGroupActive` (overwritten functions), `Dashboard.loadDashboardsFromXML`, `Dashboard.TYPE_DATA[Dashboard.TYPES.EMITTER].loadFunc`; DashboardLive even adds a display type to `Dashboard.TYPES`.
- Overriding the default state function: `Dashboard.defaultDashboardStateFunc(vehicle, superFunc, dashboard, newValue, min, max, isActive)`. 🔎 (interactiveControl)

## DashboardLive interop

- DashboardLive reads plain fields named `forDBL_<cmd>` on a known spec table of supported mods (CVT addon, damage mods, realGPS); EnhancedVehicle values via its own state table. There is **no generic hook** for other mods yet. 🔎 (DashboardLive)
- Offering `forDBL_*` fields on your spec costs nothing; DashboardLive finds a spec under a short alias `self.spec_<name>` (mod specs are really `spec_<modName>.<specName>`, see [2](02-mod-skeleton.md)). ❓
- **CVT Addon's `forDBL_*` fields** on `vehicle.spec_CVTaddon` – types mix strings and numbers, always `tonumber()`: heat/damage flags `forDBL_warnheat`, `forDBL_critheat`, `forDBL_warndamage`, `forDBL_critdamage`, `forDBL_highpressure`, `forDBL_motorcoldlamp`; wear `forDBL_cvtwear` (0–100 %); drivetrain `forDBL_drivinglevel` (number, or "n" when not CVT), `forDBL_accramp`, `forDBL_brakescale`, `forDBL_cvtclutch`, `forDBL_handthrottle`, `forDBL_ipmactive`; pre-glow `forDBL_preglowing`, `forDBL_glowingstate`; type `forDBL_isvariotm`, `forDBL_ismanualtm`. Temperature is the game's `motorTemperature.value` with its own heating rates. 🔎 (CVT Addon)
- DashboardLive ships a fix for a vanilla stream desync in `AIAutomaticSteering.onWriteUpdateStream`. 🔎 (DashboardLive)
