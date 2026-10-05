# 6. Fuel consumption, wear, value, repair

[← Overview](../README.md)

## Fuel consumption

- `spec_motorized.consumers[i].usage` (diesel/DEF: `FillType.DIESEL` / `FillType.DEF`). Remember the base value the first time, then set factor × base. ✅
- The game derives consumption from the engine load.
- `spec_motorized.lastFuelUsage` (l/h) has **single-frame spikes** (~216,000 l/h when a litre is deducted). Ignore values above 1,000 l/h. ✅
- The tank is reduced in **whole litres** – a tank difference over a few seconds is useless as a measurement. ✅

## Wear (`Wearable`)

- Technical wear: return value of `updateDamageAmount` × factor. ✅
- Paint: `getWearMultiplier` × factor. `updateWearAmount` is fixed in the paint nodes and cannot be overridden. ✅
- Paint state = average over `spec_wearable.wearableNodes[i].wearAmount`.
- `getDamageAmount()` / `setDamageAmount(x)`: condition = 1 − damage. The savegame stores 4 decimals – treat 0.998 as "broken". ✅
- `getDamageShowOnHud()` for parts of a combination (`rootVehicle.childVehicles`).
- More setters: `addDamageAmount(delta, true)`, `getWearTotalAmount()`, `addWearAmount(delta, true)`, `setWearAmount(0)`, `setOperatingTime(ms)`. 🔎 (UsedPlus)
- Other mods that add their own damage/reliability (e.g. UsedPlus) do **not** override `updateDamageAmount`, so a factor there still applies; their effects come on top. 🔎 (UsedPlus)

## Repair

- Price: `Wearable.calculateRepairPrice` = new price × damage^1.5 × 0.09. `getRepairPrice` / `getRepaintPrice` can be overridden. 📖
- The workshop "Repair" button *probably* appears only from about 1 € (0.9 % damage worked, ~0.3 % did not; targeting 2 € works). ❓/✅
- `repairVehicle(atSellingPoint)` is called by `WearableRepairEvent` – the safe point to detect a repair. ✅
- Static versions: `Wearable.calculateRepairPrice(price, damage)`, `Wearable.calculateRepaintPrice(price, wear)`. **UsedPlus replaces the workshop repair dialog** (detected by its text) and calls the static functions – an override of `getRepairPrice` is then ignored. 🔎 (UsedPlus)
- ExtendedLeasing calls `repairVehicle(nil)` when a leased vehicle is returned; ❓ whether that books the repair price is unverified. 🔎 (ExtendedLeasing)

## Sell value

- `Vehicle.calculateSellPrice(storeItem, age, operatingTime, price, repairPrice, repaintPrice)` = `price × (1 − hours^m / lifetime) × min(−0.1·ln(years) + 0.75; 0.85) − repair − paint`, at least 3 % (m = 1; 1.3 for implements without power value). `storeItem.lifetime` acts as an hour budget; `age` in months (`Environment.PERIODS_IN_YEAR`). 📖
- Implements without power value (exponent 1.3) are "used up" after ~150 h at lifetime 600 – reverse-calculate hours from the desired usage: `h = (usage × lifetime)^(1/exponent)`.
- Hook via `getSellPrice` of your specialization. Other mods overwrite `Vehicle.getSellPrice` globally (e.g. 0 for their own leases, a resale factor) – the results compose, order-dependent. 🔎 (UsedPlus)
- There is no vehicle upkeep in FS25.

## Operating hours

- `operatingTime` (ms) is correct only from the first `onUpdate`. ✅
