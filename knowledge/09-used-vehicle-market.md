# 9. Used vehicle market (`VehicleSaleSystem`)

[← Overview](../README.md)

`VehicleSaleSystem.lua` is **not** in the public source repos – everything here comes from diagnostics in the game and from other mods.

## Data

- `g_currentMission.vehicleSaleSystem.items`. Per offer: `id` (1–255), `timeLeft` (h), `isGenerated`, `xmlFilename`, `boughtConfigurations`, `age`, `price`, `damage`, `wear`, `operatingTime`. ✅
- Functions (FS25, checked by diagnostics ✅): `addSale(entry)` (returns nil), `getSaleById(id)`, `onHourChanged`, `generateInitialSales`, `generateRandomVehicle`, `getFreeId`, `getItems`, `removeSale`, `removeSaleWithId`, `onVehicleBought`, `onVehicleWillSell`, `consoleCommandRefresh`, `sendAllToClient`, `loadFromXMLFile` / `saveToXMLFile`.
- Constants (same as FS22 ✅): `GENERATED_HOURLY_CHANCE` 0.15, duration 20–40 h, `MAX_GENERATED_ITEMS` 5, `MINIMUM_ITEM_VALUE` 10,000, `BUYPRICE_FACTOR` 1.1; MP: 20–40 h, `MULTIPLAYER_ACCEPT_CHANCE` 0.8, `MAX_MULTIPLAYER_ITEMS` 20.
- Generated offers have very few hours (~10–20 h), a discount of ~40–60 %, mostly empty `boughtConfigurations`, wheel as a table. ✅
- **Network:** `VehicleSaleAddEvent` does **not** transfer `timeLeft` – send it yourself (e.g. hourly, `streamWriteUInt16`). 🔎 (UsedSalesTimeLeft)

## Changing the market

- **Constants:** simply set the class field (`VehicleSaleSystem.MAX_GENERATED_ITEMS = 10`), remember the original values and write them back when your feature is switched off. 🔎 ✅
- **Own offer:** `vehicleSaleSystem:addSale({ xmlFilename, boughtConfigurations = { <configName> = { [<index>] = true } }, price, age (months), operatingTime (ms), damage, wear, timeLeft (h), isGenerated })`; the game assigns `id`. For the exact equipment of a vehicle convert all `vehicle.configurations` (number per name) to this format. Leaving out the wheel configuration on random offers avoids unfitting tyres. ✅
- **Sold vehicles:** `VehicleSaleSystem:onVehicleWillSell(vehicle)` is called on every sale, also in single player – but in single player **no** offer is created. Good hook to put sold vehicles on the market yourself. ✅ `SellVehicleEvent` (server): fields `vehicle, isDirectSell, isOwned, multiplier`, no price; `run` is called a second time without `vehicle` (answer). Overriding `SellVehicleEvent.run` also catches returns of leased vehicles. 🔎 (ExtendedLeasing)
- **New savegame:** `generateInitialSales` (3–4 start offers) runs **inside** `loadFromXMLFile` – a load guard around `loadFromXMLFile` must make an exception for it. ✅
- **Adjust offers, but not while loading:** `addSale` also runs in `loadFromXMLFile`; use a counter around `loadFromXMLFile` instead of hooking `onHourChanged` (the game may register `onHourChanged` as a function reference early, a later hook would not apply). ✅
- The game rolls some configurations itself for generated offers (wheel, rim colour, `cylindered` …) – **including configurations from mods**. Remove them in your `addSale` hook if you do not want that. ✅
- Purchase: `BuyVehicleData:setSaleItem`, price `economyManager:getBuyPrice(storeItem, configurations, saleItem)`. With `setSaleItem(saleItem)` on a `BuyVehicleEvent` **the game itself removes the offer** on the server – also when you buy an offer from your own dialog. A client cannot serialise the `saleItem` into an own event, so let the vanilla event carry it. 🔎 (UsedPlus) Details in [4](04-configurations-and-shop.md).
- Condition after spawning a used vehicle yourself: it starts at 0 damage → `addDamageAmount(damage, true)`, `setOperatingTime(hours * 3600000)`, wear via `Wearable`; dirt was applied with a short delay (`addTimer(ms, "method", target)`). 🔎 (UsedPlus)
- UsedPlus runs its own used-vehicle search and does **not** use `VehicleSaleSystem` for its offers (and hooks nothing in it). 🔎 (UsedPlus)
- Observe hours: `g_messageCenter:subscribe(MessageType.HOUR_CHANGED, fn, self)` and `unsubscribeAll(self)` in `deleteMap`.

## Showing something in a shop cell

- `cell:getAttribute("priceTag")` (discount tag) is the only known attribute. Cloning its text child (`elements[1]`) gives a text element with the game font; position it freely with a `draw` override (`cell.absPosition` / `absSize`) and render your own overlays next to it. ✅
- Cells are reused: hide first, then set again in every `populateCellForItemInSection`. Respect the clip rectangle. The selected offer is enlarged – elements at the right edge reach into the neighbour card.
- Choose your own look – do not rebuild the look of other mods.
