# 4. Configurations (shop, workshop, vehicle)

[← Overview](../README.md)

## Own configuration types

- Register at script load, i.e. before the StoreManager reads vehicles: `g_vehicleConfigurationManager:addConfigurationType(name, title, xmlKey, VehicleConfigurationItem)`. Placeables: `g_placeableConfigurationManager`. ✅
- **Injecting entries** – two ways:
  1. **Write into the in-memory XML** before the game reads it: hook `ConfigurationUtil.getConfigurationsFromXML(manager, superFunc, xmlFile, key, baseDir, customEnv, isMod, storeItem)` (runs ~1,600 times while loading, also for placeables with their own manager) and **before** `superFunc` write `#name`, `#price`, `#saveId`, maybe `#isYesNoOption` on the container. Check the schema paths once and register them yourself if needed (`Vehicle.xmlSchema:register(XMLValueType…)`). ✅
  2. **Build items in code** after `superFunc`: `desc = manager:getConfigurations()[name]`, per entry `item = desc.itemClass.new(name)`, `item:setIndex(i)`, `item:loadFromXML(xmlFile, desc.configurationsKey, key(i), baseDir, customEnv)` (key does not exist → empty item), then set `item.name`, `item.isDefault`, `item.isSelectable`, `item.price`; put the list into `configurations[name]` and set `defaultConfigurationIds[name] = ConfigurationUtil.getDefaultConfigIdFromItems(items)`. 🔎 (AdjustSuite)
- Way 2 lets you change **prices and selectability later without a restart**: remember the store items, look them up with `g_storeManager:getItemByXMLFilename` and update `item.price` / `item.isSelectable`. 🔎
- The function builds **all** configuration types of a vehicle: `configurations[type] = { item1, item2 … }` with `item.index`, `item.configKey`, `item.saveId`, `item.isSelectable`, `item.price`.
- Yes/No display: the flag is stored per entry as `storeItem.configurations[name][i].isYesNoOption`. ✅
- The FS25 call form is 4 arguments: `addConfigurationType(name, title, xmlKey, VehicleConfigurationItem)`; selected index in `vehicle.configurations[name]` (1-based). 🔎 (interactiveControl)
- **Bit limit:** configuration ids are sent with `ConfigurationUtil.SEND_NUM_BITS` bits; CVT Addon raises it when the number of configuration types gets close to the limit. ❓ Check it if you add types. 🔎 (CVT Addon)
- A configuration with a `price` per entry changes the vehicle's shop price – guidanceSteering sells its GPS that way, injected into every drivable + motorized store item; read back in `onLoad` via `self.configurations[name]` and `g_storeManager:getItemByXMLFilename(self.configFileName).configurations[name][id]`. 🔎 ❓ (guidanceSteering, FS22 code – uses `StoreItemUtil.getConfigurationsFromXML` and `ConfigurationUtil.SELECTOR_MULTIOPTION`; FS25 reworked configurations)
- **Injection at XML level (any key, any vehicle):** hook `XMLFile.initInheritance` (prepended to remember `parentFile#xmlFilename`, appended to write). After the game opens an XML file, match `xmlFile.filename` (and the parent filename) and write typed values with `xmlFile:setBool/setInt/setFloat/setString(key, value)`. 🔎 (interactiveControl)
  - Target filenames may use `$pdlcdir$…`, resolved with `NetworkUtil.convertFromNetworkFilename`.
  - Can add whole blocks the vehicle never had, e.g. new `animations.animation(N)` entries for doors. Unnamed nodes are addressed by **index paths** like `0>0|9|3|0` (component, then child indices).
  - **Fragile:** index paths and hard-coded indices (`animation(5)`) break silently when a DLC update changes the XML or i3d – validate at load (`getAnimationExists`, node exists) and log. Merged meshes or wrong pivots cannot be fixed by XML.
  - ❓ A superset of the `getConfigurationsFromXML` hook above (wheels, colours, lights); timing for store items is unverified.

## Reading vehicle XML correctly

- **Index-0 fallback:** not every variant defines every value; the game falls back to index 0. Always read with a fallback to `(0)`.
- **Motor variant:** type `"motor"`, key `vehicle.motorized.motorConfigurations.motorConfiguration`. Variants can have `#isSelectable="false"` (e.g. Volvo FH16 and FH Electric share 5 motor variants, only the matching ones are selectable). Do not count non-selectable variants. ✅
- **Power source:** the consumer configuration belonging to a variant is `#consumerConfigurationIndex` (1-based, fallback 0) → `consumerConfigurations.consumerConfiguration(i)`, check `consumer(n)#fillType` **case-insensitively** (`DIESEL`, `METHANE`, `electricCharge`). Locomotives, boats, conveyor belts etc. have no recognisable consumers.
- Vehicles with `<parentFile>` inherit values (e.g. FH Electric).
- **`<configurationSets>`** (e.g. JD 8R): if `motor` is linked there, only the set list controls the dropdown.
- **Wheels and crawlers:** type `"wheel"`, key `vehicle.wheels.wheelConfigurations.wheelConfiguration(i)`, crawlers under `….crawlers.crawler(n)`, inheritance via `….wheels#baseConfig` (= saveId). **The game generates extra entries from base configurations with tyre dimensions** (`VehicleConfigurationItemWheel.generateConfigurations`): the base becomes non-selectable, generated items carry `baseConfigItem`. **Never** treat the list index as the XML index – go via `item.baseConfigItem.configKey` / `item.configKey`. ✅
- Many tractors have crawlers only as an **option** (NH T8 SmartTrax, JD 9R, Case Magnum, Claas Xerion, combines, forestry, Can-Am quads). "Some configuration has X" is not a vehicle property.
- **Store data:** `storeItem.specs.fuel.consumers` is built once and does not see later XML changes.
- **Configuration sets:** `storeItem.configurationSets[i].configurations` / `.name`; the set matching a vehicle = best match against `vehicle.configurations`. 🔎 (UniversalAutoload)
- **Per-vehicle data outside the vehicle XML** (no XML editing): an own XML keyed by the vehicle filename. Normalise `vehicle.configFileName` by stripping `g_modsDirectory` or any `g_dlcsDirectories[i].path` prefix → keys like `data/vehicles/…` or `<modOrDlcFolder>/….xml`, independent of the install path; check back with `g_storeManager:getItemByXMLFilename`. 🔎 (UniversalAutoload)
- **Decals:** `objectChange#node` is not resolved for injected entries – set visibility yourself in `onLoad` (`i3dMappings[name].nodeId`, `setVisibility`).

## Selected configuration on a vehicle

- `vehicle.configurations[type]` = id; the item: `ConfigurationUtil.getConfigItemByConfigId(vehicle.configFileName, type, id)`.
- A **workshop rebuild creates a new object**: the old one is saved (`getReloadXML` → `saveToXMLFile`) and reloaded; the new configuration is already set before saving. ✅
- Correcting a bought configuration on the server: `ConfigurationUtil.addBoughtConfiguration(manager, object, configName, configId)`. 🔎
- **Shop preview vehicles** have `propertyState == VehiclePropertyState.SHOP_CONFIG` (others: `OWNED`, `LEASED`, `MISSION`). Courseplay prepends `Vehicle.load` and removes its event listeners for such vehicles – useful when your spec must not run in the shop. 🔎 (Courseplay, UniversalAutoload)

## Shop configurator (`ShopConfigScreen`)

- **Context:** `setStoreItem(self, storeItem, vehicle, saleItem, …)` – `vehicle ~= nil` = workshop, `saleItem ~= nil` = used purchase, both nil = new purchase. ✅
- **`updateData(self, storeItem, …)` runs on every change.** Before `superFunc` you can correct `self.configurations[type]` and prices. **After** it you can hide rows: `row:setVisible(false)` + `invalidateLayout` on the list container. ✅
- `configItem.isSelectable = false` only works if set **before** `superFunc`; `updateButtons` is too late. ✅
- Dynamic rows while the screen is open (AdjustSuite): in `setStoreItem` / `update` (appended) find the option via `screen.configurationLayout`, `row:setVisible`, `option:setTexts(only selectable)`, then `layout:invalidateLayout()`. Reset to default: `screen.configurations[name] = default`; new price: `screen.totalPrice = economyManager:getBuyPrice(storeItem, configurations, saleItem)`, `screen.initialLeasingCosts = economyManager:getInitialLeasingPrice(totalPrice)`. 🔎
- **Pitfall:** calling `ShopConfigScreen.updateConfigOptionsData` afterwards breaks the configurator (error every frame: `shopIgnoreLastComponentPositions`). ✅
- **Displayed values:** the spec `getValueFunc`s (`power`, `maxSpeed`) feed only the shop **list**. The configurator uses `processStoreItemPowerOutput` (hp as number) and `processAttributeData` (texts after the preview vehicle loaded). The km/h value is a fixed value per vehicle/variant (`#maxSpeed` on the motor variant, else `storeData.specs.maxSpeed`), not the real top speed. ✅
- **Extra row in the configurator** (confirmed in game ✅): the power text reads e.g. "64 KW / 88 PS" – **the first number is kW**, hp follows, so match all numbers, not just the first. To add a row with the same look, clone the value row (direct child of `self.attributesLayout`) with `row:clone(layout)`, move it in `layout.elements` right behind the value row, `setText` on its text element and call `layout:invalidateLayout()`. Own icon: override `draw` of the cloned bitmap element and render an overlay from your own texture config (`g_overlayManager:createOverlay("prefix.slice", …)`) at the element's `absPosition`/`absSize` – no `setImageFilename`/UV handling needed. `processAttributeData` runs on every configuration change: delete your own rows first, otherwise they pile up.
- **Shop list cells:** `ShopItemsFrame.populateCellForItemInSection(self, superFunc, list, section, index, cell)`, `self.displayItems[index].saleItem`, cell attribute `priceTag`. Cells are **reused** – always set or hide your own elements. When drawing yourself in `draw`, respect the clip rectangle `draw(clipX1, clipY1, clipX2, clipY2)`, otherwise scrolled-out cells show above/below the list. ✅
- **Buy price:** `g_currentMission.economyManager:getBuyPrice(storeItem, configurations, saleItem)`.
- Shop hooks seen: `ShopConfigScreen.setStoreItem`, `updateButtons(storeItem, vehicle, saleItem)` (appended: swap `buyButton.onClickCallback` / `leaseButton.onClickCallback` for own dialogs, restore vanilla where not wanted), `inputEvent`, `onYesNoBuy` / `onYesNoLease` (prepended: act on purchase), `processAttributeData` (clone `self.attributeItem` into `self.attributesLayout` for an extra attribute row). Extra buttons: `buyButton:clone(parent)`, `setInputAction`, `parent:invalidateLayout()`. Colour/plate data: `g_shopConfigScreen.configurationData`, `.licensePlateData`. 🔎 (UsedPlus, UniversalAutoload)
- Own shop pack: `g_storeManager:addModStorePack(name, title, icon, modDir)`, `g_storeManager:getPackItems(name)`. 🔎 (UniversalAutoload)
- Prices: `StoreItemUtil.getDefaultPrice(storeItem, {})`, `StoreItemUtil.getCosts(storeItem, configurations)`. 🔎 (UsedPlus)
- Store list attributes: `g_storeManager:addSpecType(name, profile, loadFunc, getValueFunc, StoreSpecies.VEHICLE)`; replace an existing one's `getValueFunc` via `g_storeManager.specTypes[...]`. 🔎 (AdvancedDamageSystem) Shop filter data: `g_storeManager:getItems()`, `storeItem.showInStore`, `species`, `extraContentId` + `g_extraContentSystem:getIsItemIdUnlocked`, `g_brandManager:getBrandByIndex`. 🔎 (AdditionalGameSettings)

## Buying a vehicle in code

🔎 (UsedPlus)
- Do not build vehicles yourself – send the vanilla `BuyVehicleEvent.new(data)` with `BuyVehicleData.new()` and `setOwnerFarmId`, `setPrice` (0 if you booked the money yourself), `setStoreItem`, `setConfigurations`, `setConfigurationData` (colour/material – otherwise custom colours revert), `setLicensePlateData`, and for a vanilla used offer `setSaleItem(saleItem)` (see [9](09-used-vehicle-market.md)).
- Sent via `g_client:getServerConnection():sendEvent(...)` even in single player (`BuyVehicleEvent` expects a real connection). ❓ That path fails on a dedicated server, where `g_client` is nil.
- After the purchase: append `BuyVehicleData.onBought(self, vehicles, loadingState, args)` (check `VehicleLoadingState.OK`), or `FSBaseMission.onVehicleBought(self, vehicle, price, farmId)`, or `g_messageCenter:subscribe(BuyVehicleEvent, cb, target)` with `BuyVehicleEvent.STATE_SUCCESS`. 🔎 (UsedPlus, UniversalAutoload)
- New vehicle vs. loaded: `Vehicle.onLoadFinished(self, savegame)` with `savegame == nil`.
- Dialogs: `YesNoDialog.show(callback, target, text)` → `callback(target, yes)`, `InfoDialog.show(text)`.

## Leasing

- `VehiclePropertyState.OWNED` has the value **2** in FS25 – always compare with the constants. ✅
- Buy data: `BuyVehicleData.leaseVehicle` → `LEASED`, else `OWNED` (also `SHOP_CONFIG`, `MISSION`). On the vehicle: `vehicle.propertyState` / `getPropertyState()`, saved as `#propertyState`.
- Leasable: `StoreItemUtil.getIsLeasable(storeItem)` = `storeItem.allowLeasing` and `runningLeasingFactor` set. Initial price: `economyManager:getInitialLeasingPrice(price)`.
- **Costs:** deposit `EconomyManager.DEFAULT_LEASING_DEPOSIT_FACTOR` (2 %); per operating hour `DEFAULT_RUNNING_LEASING_FACTOR` (2.1 % of base price, booked per full hour via `Vehicle:setOperatingTime` → `economyManager:vehicleOperatingHourChanged`, also for helpers) ✅; once per game day `PER_DAY_LEASING_FACTOR` (1 %) **÷ days per month** (`g_currentMission.environment.daysPerPeriod`) – the factor is a monthly rate spread over the days (example: 761,850 € × 1 % ÷ 28 = 272 €/day). ✅
- **Changing the hourly rent:** override `EconomyManager.vehicleOperatingHourChanged` and, during `superFunc`, temporarily redirect `g_currentMission.addMoney` to book `MoneyType.LEASING_COSTS` × factor. `vehicle.operatingTime` still holds the old hour at that moment. ✅
  - **Chain correctly:** other mods replace the instance field `g_currentMission.addMoney` permanently (e.g. a helper-wage mod that drops vanilla `MoneyType.AI` bookings). Capture `local prev = g_currentMission.addMoney` **at the moment of the redirect**, pass non-matching calls to `prev`, and restore exactly `prev` – never a value cached at load and never `FSBaseMission.addMoney`, otherwise their wrapper disappears (wages charged twice). 🔎 (WorkerCosts) ❓
- **Changing the daily rent:** the booking function is unknown → redirect `g_currentMission.addMoney` on the instance and match `LEASING_COSTS` bookings by amount (base price × factor ÷ days per month) to a leased vehicle. ✅
- **Buying out** (model: FS25_LeaseToOwn): `g_currentMission:addMoney(-price, farmId, MoneyType.SHOP_VEHICLE_BUY, true, true)`, then `vehicle.propertyState = VehiclePropertyState.OWNED`, `g_currentMission:removeLeasedItem(vehicle)`, `g_currentMission:addOwnedItem(vehicle)`. In multiplayer via an event to the server (check `getHasPlayerPermission("farmManager", …)`). ✅ single player
- **Workshop with leased vehicles:** "Configure" is visible but greyed out – leased vehicles can only be painted, repaired and returned (tested without mods). ✅
- Shop lease button: `ShopConfigScreen.leaseButton`; disable it with `setDisabled(true)` in appended `updateButtons` / `updateData`.
- **Returning a leased vehicle** goes through `SellVehicleEvent` – ExtendedLeasing overrides `SellVehicleEvent.run` (installed in a `Mission00.load` prepend), calls the original, then on the server (`not connection:getIsServer()`) checks `getHasPlayerPermission(Farm.PERMISSION.SELL_VEHICLE, connection, farmId)` and `propertyState ~= OWNED`, refunds the deposit and charges washing. The vehicle is already removed at that point. 🔎 (ExtendedLeasing)
- UsedPlus does not use vanilla leasing: its "leases" are **owned** vehicles with a Lua flag plus a monthly charge; it also blocks selling leased vehicles from its sell buttons ❓. Mods that work with `propertyState` do not see them. 🔎 (UsedPlus)

## Money bookings

- `g_currentMission:addMoney(amount, farmId, MoneyType.X, addChange, forceShow)` on the server. Alternative: `g_farmManager:getFarmById(farmId):changeBalance(amount, MoneyType.X)` **plus** `g_currentMission:addMoneyChange(amount, farmId, MoneyType.X, true)` to show the change. Bookings made this way **bypass** a wrapper around `g_currentMission.addMoney`. 🔎 (ExtendedLeasing, UsedPlus)
- `addMoney` from nested dialog callbacks crashed ("attempt to index nil with id"); UsedPlus switched to `changeBalance` there. 🔎 (UsedPlus)
- **`MoneyType.VEHICLE_SELL` does not exist** (nil) – `changeBalance` with it silently did nothing. Types used: `SHOP_VEHICLE_BUY`, `LEASING_COSTS`, `VEHICLE_REPAIR`, `VEHICLE_RUNNING_COSTS`, `PURCHASE_LAND`, `OTHER`. 🔎 (UsedPlus)
- Own money type (row in the finance statistics): `MoneyType.register(category, statName, modName)` at file load, then raise `MoneyType.LAST_ID` by the number added; l10n key = `statName`. 🔎 (ExtendedLeasing)
- Balance: `farm.money` or `g_currentMission:getMoney(farmId)`, `farm:getBalance()`, `farm.loan`. Difficulty factor: `EconomyManager.COST_MULTIPLIER[difficulty]`. 🔎 (UsedPlus, FarmTablet)
- **Wrappers on `addMoney` stack.** Several mods replace `g_currentMission.addMoney` on the instance (a helper-wage mod installs it on **all** peers in `Mission00.loadMission00Finished`). Always forward to the value that was current when you wrapped, restore exactly that, and remember that `changeBalance` bookings pass none of these wrappers – to see them, hook `Farm.changeBalance(farm, amount, moneyType)` (FarmTablet does this for income statistics; ❓ may not see everything on MP clients). 🔎 (WorkerCosts, FarmTablet)
- **Never book own costs as `MoneyType.AI` (or `WORKER_WAGES`) or to farm 0 / `FarmManager.SPECTATOR_FARM_ID`:** WorkerCosts silently drops such negative bookings, and the engine rejects spectator/farm-0 changes ("Can't change money of spectator farm"). 🔎 (WorkerCosts)
- More `MoneyType` members and an overview of booking paths: [16](16-economy-missions-and-placeables.md).

## Vehicle list (pause menu) and workshop buttons

- Vehicle list: `g_inGameMenu.pageStatistics`, tab 2 (`subCategoryPaging:getState()`), list `g_inGameMenu.vehiclesList`, entry `list.dataSource.vehicles[list.selectedIndex].vehicle`. Own buttons: override `getMenuButtonInfo` on the instance, return a copy; `list:addIndexChangeObserver(target, fn)` → `setMenuButtonInfoDirty()`. ✅
- Replacing a workshop button's `onClickCallback` by direct assignment works; `setCallback` "broke the button". 🔎 (UsedPlus)
- Workshop repair taken over: append `WorkshopScreen.setVehicle`, swap `self.repairButton.onClickCallback` for an own dialog and keep the original for vehicles you do not handle; the condition bar is `WorkshopScreen.setStatusBarValue(bar, value)`, vehicles in `screen.vehicles`; garage list cells via `InGameMenuStatisticsFrame.populateCellForItemInSection` (list `vehiclesList`, cell attribute `"damage"`). 🔎 (AdvancedDamageSystem) Alternative: make vanilla repair impossible (`getCanBeRepaired` false, `getRepairPrice` 0) and open an own dialog near the vehicle. 🔎 (ExtendedVehicleMaintenance) See [6](06-consumption-wear-value.md).
- **Workshop button:** hook `WorkshopScreen.setVehicle` / `onOpen` (appended), vehicle in `screen.vehicle`; clone an existing button (`sellButton` …) with `button:clone(button.parent)` and set the key **with `button:setInputAction(name)`** – only setting `inputActionName` shows no key glyph and only the mouse works. ✅ The action must be free (workshop: X = MENU_EXTRA_1 paint, C = MENU_EXTRA_2 repair, space = configure; MENU_ACCEPT/Enter is free ✅) and bound (`g_inputBinding.nameActions[InputAction[name]]:getNumActiveBindings() > 0`). Key presses go through `ScreenElement:inputEvent` → `callButtonsWithAction`; additionally overriding `WorkshopScreen.inputEvent` is safer.
