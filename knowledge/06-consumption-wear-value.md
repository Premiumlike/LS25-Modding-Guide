# 6. Fuel consumption, wear, value, repair

[← Overview](../README.md)

## Fuel consumption

- `spec_motorized.consumers[i].usage` (diesel/DEF: `FillType.DIESEL` / `FillType.DEF`). Remember the base value the first time, then set factor × base. ✅
- The game derives consumption from the engine load.
- `spec_motorized.lastFuelUsage` (l/h) has **single-frame spikes** (~216,000 l/h when a litre is deducted). Ignore values above 1,000 l/h. ✅
- Consumer fields seen: `permanentConsumption`, `usage`, `fillUnitIndex`, `fillLevelToChange`; AdvancedDamageSystem re-implements `updateConsumers` while an effect is active. CVT Addon multiplies `lastFuelUsage` / `lastDefUsage` (the displayed value ❓) instead of `usage`. 🔎 (AdvancedDamageSystem, CVT Addon)
- The tank is reduced in **whole litres** – a tank difference over a few seconds is useless as a measurement. ✅

## Wear (`Wearable`)

- Technical wear: return value of `updateDamageAmount` × factor. ✅
- Paint: `getWearMultiplier` × factor. `updateWearAmount` is fixed in the paint nodes and cannot be overridden. ✅
- Paint state = average over `spec_wearable.wearableNodes[i].wearAmount`.
- `getDamageAmount()` / `setDamageAmount(x)`: condition = 1 − damage. The savegame stores 4 decimals – treat 0.998 as "broken". ✅
- `getDamageShowOnHud()` for parts of a combination (`rootVehicle.childVehicles`).
- More setters: `addDamageAmount(delta, true)`, `getWearTotalAmount()`, `addWearAmount(delta, true)`, `setWearAmount(0)`, `setOperatingTime(ms)`. 🔎 (UsedPlus)
- Other mods that add their own damage/reliability (e.g. UsedPlus) do **not** override `updateDamageAmount`, so a factor there still applies; their effects come on top. 🔎 (UsedPlus) **Exception: AdvancedDamageSystem** – see below.
- Paint per node: `spec_wearable.wearableNodes`, `setNodeWearAmount(nodeData, 0, true)` resets one node (a repaint without `repairVehicle`). 🔎 (AdvancedDamageSystem)
- After writing `spec_wearable` fields directly, raise `spec_wearable.dirtyFlag` for the sync. 🔎 (ExtendedVehicleMaintenance) Fields like `spec_wearable.wear` / `totalAmount` used by some mods are guessed and `pcall`-guarded there – do not rely on them. ❓
- Operating hours: `getOperatingTime()` (ms), `setOperatingTime(ms, isLoading)`, `getFormattedOperatingTime()`. 🔎 (AdvancedDamageSystem)

## Two approaches of damage mods

🔎 (AdvancedDamageSystem, ExtendedVehicleMaintenance) – compatibility details in [12](12-learned-from-other-mods.md).
- **Replace vanilla damage** (AdvancedDamageSystem): `updateDamageAmount` returns 0 and the server forces `setDamageAmount(0)` every update; condition lives in its own per-system model (`spec_AdvancedDamageSystem.conditionLevel`, `getConditionLevel()`). So `getDamageAmount()` reads **0** on such vehicles, and a factor on `updateDamageAmount` has nothing to scale. It also replaces `getSellPrice` without calling `superFunc`, takes over the workshop repair button (never calls `repairVehicle` for its services, uses `Wearable.calculateRepaintPrice` directly), and **blocks every `setOperatingTime` write** that is not its own or `isLoading` (it accumulates hours itself while the motor runs). Its HUD fakes `getDamageAmount` on the child vehicles around `SpeedMeterDisplay.draw` so the vanilla gauge shows its condition.
- **Add on top of vanilla** (ExtendedVehicleMaintenance): keeps `Wearable`; adds damage with `setDamageAmount(damage + x)` when maintenance is overdue and from a collision heuristic (speed drop vs. `getPhysicsVelocity(rootNode)`). Vanilla workshop repair is disabled for motorized vehicles (`getCanBeRepaired` false, `getRepairPrice` 0); its service ends with `repairVehicle()` plus direct field writes. Costs via `addMoney(-cost, farmId, MoneyType.VEHICLE_REPAIR, true, true)`.
- Others: CVT Addon adds `addDamageAmount(…, true)` from rpm × load on manual gearboxes and keeps its own CVT wear (0–100 %). 🔎 (CVT Addon)
- Wear inputs seen: indoor check via `g_currentMission.indoorMask` density map (`IndoorMask.INDOOR`), weather via `environment.weather:getCurrentWeatherType()` vs `WeatherType.RAIN/SNOW/HAIL`. 🔎 (AdvancedDamageSystem)

## Repair

- Price: `Wearable.calculateRepairPrice` = new price × damage^1.5 × 0.09. `getRepairPrice` / `getRepaintPrice` can be overridden. 📖
- The workshop "Repair" button *probably* appears only from about 1 € (0.9 % damage worked, ~0.3 % did not; targeting 2 € works). ❓/✅
- `repairVehicle(atSellingPoint)` is called by `WearableRepairEvent` – the safe point to detect a repair. ✅
- Static versions: `Wearable.calculateRepairPrice(price, damage)`, `Wearable.calculateRepaintPrice(price, wear)`. **UsedPlus replaces the workshop repair dialog** (detected by its text) and calls the static functions – an override of `getRepairPrice` is then ignored. 🔎 (UsedPlus)
- More overridable functions: `getCanBeRepaired`, `getRepairShopPrice`, `getRepairShopBasePrice` (may not exist – check `vehicleType.functions[name]`), `getDailyUpkeep` (❓ whether FS25 uses it). 🔎 (ExtendedVehicleMaintenance) An override of `getRepairPrice` is invisible to mods that call the static `Wearable.calculateRepairPrice` / `calculateRepaintPrice` (UsedPlus, AdvancedDamageSystem). 🔎
- ExtendedLeasing calls `repairVehicle(nil)` when a leased vehicle is returned; ❓ whether that books the repair price is unverified. 🔎 (ExtendedLeasing)

## Sell value

- `Vehicle.calculateSellPrice(storeItem, age, operatingTime, price, repairPrice, repaintPrice)` = `price × (1 − hours^m / lifetime) × min(−0.1·ln(years) + 0.75; 0.85) − repair − paint`, at least 3 % (m = 1; 1.3 for implements without power value). `storeItem.lifetime` acts as an hour budget; `age` in months (`Environment.PERIODS_IN_YEAR`). 📖
- Implements without power value (exponent 1.3) are "used up" after ~150 h at lifetime 600 – reverse-calculate hours from the desired usage: `h = (usage × lifetime)^(1/exponent)`.
- Hook via `getSellPrice` of your specialization. Other mods overwrite `Vehicle.getSellPrice` globally (e.g. 0 for their own leases, a resale factor) – the results compose, order-dependent. 🔎 (UsedPlus) AdvancedDamageSystem replaces it completely (price × condition − ¼ repaint − own repair price, clamped 3–80 %) **without** `superFunc` – mods below it in the chain are ignored. 🔎
- Static helpers: `Vehicle.calculateSellPrice(...)`, `StoreItemUtil.getDefaultPrice(storeItem, configurations)`. 🔎 (AdvancedDamageSystem)
- There is no vehicle upkeep in FS25.

## Operating hours

- `operatingTime` (ms) is correct only from the first `onUpdate`. ✅
