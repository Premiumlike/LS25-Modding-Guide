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

## Reading vehicle XML correctly

- **Index-0 fallback:** not every variant defines every value; the game falls back to index 0. Always read with a fallback to `(0)`.
- **Motor variant:** type `"motor"`, key `vehicle.motorized.motorConfigurations.motorConfiguration`. Variants can have `#isSelectable="false"` (e.g. Volvo FH16 and FH Electric share 5 motor variants, only the matching ones are selectable). Do not count non-selectable variants. ✅
- **Power source:** the consumer configuration belonging to a variant is `#consumerConfigurationIndex` (1-based, fallback 0) → `consumerConfigurations.consumerConfiguration(i)`, check `consumer(n)#fillType` **case-insensitively** (`DIESEL`, `METHANE`, `electricCharge`). Locomotives, boats, conveyor belts etc. have no recognisable consumers.
- Vehicles with `<parentFile>` inherit values (e.g. FH Electric).
- **`<configurationSets>`** (e.g. JD 8R): if `motor` is linked there, only the set list controls the dropdown.
- **Wheels and crawlers:** type `"wheel"`, key `vehicle.wheels.wheelConfigurations.wheelConfiguration(i)`, crawlers under `….crawlers.crawler(n)`, inheritance via `….wheels#baseConfig` (= saveId). **The game generates extra entries from base configurations with tyre dimensions** (`VehicleConfigurationItemWheel.generateConfigurations`): the base becomes non-selectable, generated items carry `baseConfigItem`. **Never** treat the list index as the XML index – go via `item.baseConfigItem.configKey` / `item.configKey`. ✅
- Many tractors have crawlers only as an **option** (NH T8 SmartTrax, JD 9R, Case Magnum, Claas Xerion, combines, forestry, Can-Am quads). "Some configuration has X" is not a vehicle property.
- **Store data:** `storeItem.specs.fuel.consumers` is built once and does not see later XML changes.
- **Decals:** `objectChange#node` is not resolved for injected entries – set visibility yourself in `onLoad` (`i3dMappings[name].nodeId`, `setVisibility`).

## Selected configuration on a vehicle

- `vehicle.configurations[type]` = id; the item: `ConfigurationUtil.getConfigItemByConfigId(vehicle.configFileName, type, id)`.
- A **workshop rebuild creates a new object**: the old one is saved (`getReloadXML` → `saveToXMLFile`) and reloaded; the new configuration is already set before saving. ✅
- Correcting a bought configuration on the server: `ConfigurationUtil.addBoughtConfiguration(manager, object, configName, configId)`. 🔎

## Shop configurator (`ShopConfigScreen`)

- **Context:** `setStoreItem(self, storeItem, vehicle, saleItem, …)` – `vehicle ~= nil` = workshop, `saleItem ~= nil` = used purchase, both nil = new purchase. ✅
- **`updateData(self, storeItem, …)` runs on every change.** Before `superFunc` you can correct `self.configurations[type]` and prices. **After** it you can hide rows: `row:setVisible(false)` + `invalidateLayout` on the list container. ✅
- `configItem.isSelectable = false` only works if set **before** `superFunc`; `updateButtons` is too late. ✅
- Dynamic rows while the screen is open (AdjustSuite): in `setStoreItem` / `update` (appended) find the option via `screen.configurationLayout`, `row:setVisible`, `option:setTexts(only selectable)`, then `layout:invalidateLayout()`. Reset to default: `screen.configurations[name] = default`; new price: `screen.totalPrice = economyManager:getBuyPrice(storeItem, configurations, saleItem)`, `screen.initialLeasingCosts = economyManager:getInitialLeasingPrice(totalPrice)`. 🔎
- **Pitfall:** calling `ShopConfigScreen.updateConfigOptionsData` afterwards breaks the configurator (error every frame: `shopIgnoreLastComponentPositions`). ✅
- **Displayed values:** the spec `getValueFunc`s (`power`, `maxSpeed`) feed only the shop **list**. The configurator uses `processStoreItemPowerOutput` (hp as number) and `processAttributeData` (texts after the preview vehicle loaded). The km/h value is a fixed value per vehicle/variant (`#maxSpeed` on the motor variant, else `storeData.specs.maxSpeed`), not the real top speed. ✅
- **Shop list cells:** `ShopItemsFrame.populateCellForItemInSection(self, superFunc, list, section, index, cell)`, `self.displayItems[index].saleItem`, cell attribute `priceTag`. Cells are **reused** – always set or hide your own elements. When drawing yourself in `draw`, respect the clip rectangle `draw(clipX1, clipY1, clipX2, clipY2)`, otherwise scrolled-out cells show above/below the list. ✅
- **Buy price:** `g_currentMission.economyManager:getBuyPrice(storeItem, configurations, saleItem)`.
- Dialogs: `YesNoDialog.show(callback, target, text)` → `callback(target, yes)`, `InfoDialog.show(text)`.

## Leasing

- `VehiclePropertyState.OWNED` has the value **2** in FS25 – always compare with the constants. ✅
- Buy data: `BuyVehicleData.leaseVehicle` → `LEASED`, else `OWNED` (also `SHOP_CONFIG`, `MISSION`). On the vehicle: `vehicle.propertyState` / `getPropertyState()`, saved as `#propertyState`.
- Leasable: `StoreItemUtil.getIsLeasable(storeItem)` = `storeItem.allowLeasing` and `runningLeasingFactor` set. Initial price: `economyManager:getInitialLeasingPrice(price)`.
- **Costs:** deposit `EconomyManager.DEFAULT_LEASING_DEPOSIT_FACTOR` (2 %); per operating hour `DEFAULT_RUNNING_LEASING_FACTOR` (2.1 % of base price, booked per full hour via `Vehicle:setOperatingTime` → `economyManager:vehicleOperatingHourChanged`, also for helpers) ✅; once per game day `PER_DAY_LEASING_FACTOR` (1 %) **÷ days per month** (`g_currentMission.environment.daysPerPeriod`) – the factor is a monthly rate spread over the days (example: 761,850 € × 1 % ÷ 28 = 272 €/day). ✅
- **Changing the hourly rent:** override `EconomyManager.vehicleOperatingHourChanged` and, during `superFunc`, temporarily redirect `g_currentMission.addMoney` to book `MoneyType.LEASING_COSTS` × factor. `vehicle.operatingTime` still holds the old hour at that moment. ✅
- **Changing the daily rent:** the booking function is unknown → redirect `g_currentMission.addMoney` on the instance and match `LEASING_COSTS` bookings by amount (base price × factor ÷ days per month) to a leased vehicle. ✅
- **Buying out** (model: FS25_LeaseToOwn): `g_currentMission:addMoney(-price, farmId, MoneyType.SHOP_VEHICLE_BUY, true, true)`, then `vehicle.propertyState = VehiclePropertyState.OWNED`, `g_currentMission:removeLeasedItem(vehicle)`, `g_currentMission:addOwnedItem(vehicle)`. In multiplayer via an event to the server (check `getHasPlayerPermission("farmManager", …)`). ✅ single player
- **Workshop with leased vehicles:** "Configure" is visible but greyed out – leased vehicles can only be painted, repaired and returned (tested without mods). ✅
- Shop lease button: `ShopConfigScreen.leaseButton`; disable it with `setDisabled(true)` in appended `updateButtons` / `updateData`.

## Vehicle list (pause menu) and workshop buttons

- Vehicle list: `g_inGameMenu.pageStatistics`, tab 2 (`subCategoryPaging:getState()`), list `g_inGameMenu.vehiclesList`, entry `list.dataSource.vehicles[list.selectedIndex].vehicle`. Own buttons: override `getMenuButtonInfo` on the instance, return a copy; `list:addIndexChangeObserver(target, fn)` → `setMenuButtonInfoDirty()`. ✅
- **Workshop button:** hook `WorkshopScreen.setVehicle` / `onOpen` (appended), vehicle in `screen.vehicle`; clone an existing button (`sellButton` …) with `button:clone(button.parent)` and set the key **with `button:setInputAction(name)`** – only setting `inputActionName` shows no key glyph and only the mouse works. ✅ The action must be free (workshop: X = MENU_EXTRA_1 paint, C = MENU_EXTRA_2 repair, space = configure; MENU_ACCEPT/Enter is free ✅) and bound (`g_inputBinding.nameActions[InputAction[name]]:getNumActiveBindings() > 0`). Key presses go through `ScreenElement:inputEvent` → `callButtonsWithAction`; additionally overriding `WorkshopScreen.inputEvent` is safer.
