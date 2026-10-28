# 16. Economy, missions, placeables

[← Overview](../README.md)

Money types and booking paths, selling prices, contracts, storages and fill units. Vehicle prices, leasing and the `addMoney` redirect are in [4](04-configurations-and-shop.md). Everything here is 🔎 (read from other mods, not tested by us) unless marked.

## Money

- **`MoneyType` members seen in mods:** `OTHER`, `AI`, `VEHICLE_RUNNING_COSTS`, `VEHICLE_REPAIR`, `LEASING_COSTS`, `SHOP_VEHICLE_BUY`, `SHOP_VEHICLE_SELL`, `SHOP_VEHICLE_REPAIR`, `PURCHASE_FERTILIZER`, `PURCHASE_FUEL`, `PURCHASE_LAND`, `WASHINGCOSTS`, `BASECOSTS`, `REPAIR_VEHICLE`, `LAST_ID`. `VEHICLE_SELL` and `WORKER_WAGES` are referenced but were nil where checked. 🔎 (WorkerCosts, UsedPlus, MarketDynamics)
- Nil-check every member you are not sure of, and read it at call time – very early in loading the enum may not be complete. ❓ 🔎 (WorkerCosts)

| Path | Seen by `addMoney` wrappers | Notes |
|---|---|---|
| `g_currentMission:addMoney(amount, farmId, MoneyType.X, addChange, showChange)` | yes | server; vanilla helper wages pass `true` as 4th argument; mods pass `true, true`; meaning of the 5th ❓ |
| `g_farmManager:getFarmById(id):changeBalance(amount, MoneyType.X)` (+ `addMoneyChange` to show it) | **no** | bypasses every `addMoney` wrapper; visible only to a `Farm.changeBalance` hook |
| vanilla helper wages (`MoneyType.AI`) | yes | see [8](08-helpers-ai.md); helper-cost mods drop them |
| vanilla leasing (`MoneyType.LEASING_COSTS`) | yes | ✅ see [4](04-configurations-and-shop.md) |

- Changes for farm 0 or `FarmManager.SPECTATOR_FARM_ID` are rejected ("Can't change money of spectator farm"); running costs of NPC/spectator vehicles trigger that line every frame. 🔎 (WorkerCosts)
- Contract settlement and market payouts are booked as `MoneyType.OTHER`. 🔎 (MarketDynamics, WorkerCosts)

## Selling prices

- **Station price:** `SellingStation.getEffectiveFillTypePrice(self, fillTypeIndex)` – the price a station pays at sell time. MarketDynamics' author notes that stations cache their fill type infos at map load, so a hook on `EconomyManager.getPricePerLiter` does **not** change station prices (🔎, unverified). MarketDynamics replaces the result with one global price; ❓ multiplying the `superFunc` result keeps per-station differences (multipliers, great demands).
- Neutral base price: `g_currentMission.economyManager:getPricePerLiter(fillTypeIndex, 0)`; call it live so other economy mods hooking it are respected. 🔎 (MarketDynamics)
- Sales: `SellingStation.sellFillType(self, farmId, fillDelta, fillTypeIndex, fillPositionData, toolType, extraAttributes)` on the server; count `fillDelta` (the return value was "unreliable"); hooking `addFillLevelFromTool` as well counts twice. 🔎 (MarketDynamics)
- Listing stations: `g_currentMission.storageSystem:getUnloadingStations()`, `station.isSellingPoint`; `getEffectiveFillTypePrice` for a fill type the station does not accept can throw – check first. 🔎 (FarmTablet)
- Fill types: `g_fillTypeManager:getFillTypes()` (index 1 = `UNKNOWN`, skip it), `getFillTypeByName("WHEAT")`, `getFillTypeByIndex(i)` → `.name`, `.title` (localised), `.unitShort`, `.massPerLiter` (**t per litre**). Indices of mod fill types can change between sessions – save names next to indices and remap on load. 🔎 (MarketDynamics, RealisticHarvesting)

## Missions (contracts)

🔎 (ContractBoost – CC0, written for an early FS25 patch)
- Class constants: `MissionManager.MAX_MISSIONS`, `MissionManager.MAX_MISSIONS_PER_FARM`, `MissionManager.MISSION_GENERATION_INTERVAL` (ms). Apply changes after `MissionManager.loadMapData` (appended).
- Types: loop `g_missionManager.missionTypes` → `name`, `typeId`, `data`. Reward fields in `data`: `rewardPerHa` (field work), `rewardPerBale`, `rewardPerTree`, `rewardPerRock`; limit `data.maxNumInstances`. Store the original values and scale from them, so re-applying does not compound. `g_missionManager:getMissionTypeDataByName(name)` → `numInstances`, `maxNumInstances`.
- Type names: `baleMission`, `baleWrapMission`, `plowMission`, `cultivateMission`, `sowMission`, `harvestMission`, `hoeMission`, `weedMission`, `herbicideMission`, `fertilizeMission`, `mowMission`, `tedderMission`, `stonePickMission`, `deadwoodMission`, `treeTransportMission`, `destructibleRockMission`.
- Running missions: `g_missionManager.missions`; per mission `activeMissionId`, `farmId`, `type.name`, `workAreaTypes[workAreaType]`, `field.farmland.id`. Extra rows in the contract details: override `AbstractMission.getDetails` and add `{title = …, value = …}`.
- Allowed tools on a contract field: override `MissionManager:getIsMissionWorkAllowed(farmId, x, z, workAreaType)`; use the `WorkAreaType.*` globals rather than hard-coded numbers ❓.
- Field filters: `HarvestMission.isAvailableForField(self, superFunc, field)` (`self.fieldState.fruitTypeIndex`); `g_fieldManager:getFields()`, `g_fruitTypeManager:getFruitTypesByCategoryNames(...)`, `getWindrowFillTypeIndexByFruitTypeIndex`.
- Subclass steps can be skipped by calling `XxxMission:superClass().finishField(self)` (keeps the bales of a bale mission).
- **Contract vehicles:** spawn lists `g_missionManager.missionVehicles[typeName][size][i].vehicles[]` (`{filename = …}`, sizes `small`/`medium`/`large`); spawned through `AbstractMission.onSpawnedVehicle(self, vehicles, …)`; `propertyState` is `MISSION`. Exclude them from sell-value, wear or leasing logic ❓.
- Removing a mission: `AbstractMission.delete(mission)` then `g_missionManager:saveToXMLFile(missionInfo.missionsXMLLoad)` – ❓ whether the counters update is unverified.

## Placeables and storages

🔎 (AdjustStorageCapacity unless noted)
- Where storages live: silo `placeable.spec_silo.storages[]` (`Storage` objects); production `spec_productionPoint.productionPoint.storage`; husbandry output `spec_husbandry.storage`; feed trough `spec_husbandryFood` (no `Storage`: own `.capacity` / `.fillLevels`).
- Two capacity models in `Storage`: per fill type `storage.capacities[fillTypeIndex]`, or shared `storage.capacity` with `storage.supportedFillTypes[fillTypeIndex]`. Levels in `storage.fillLevels[ft]`. No engine setter for capacity – plain assignment; `storage:setFillLevel(level, ft)` clamps; then `storage:updateFillPlanes()` (troughs: `placeable:updateFillPlanes()`).
- Loading stations: `spec_silo.loadingStation`, `spec_husbandry.loadingStation`, `productionPoint.loadingStation`, `spec_buyingStation.buyingStation`; speed `loadTriggers[i].fillLitersPerMS`.
- **Timing rule:** set capacities in the spec's `onLoad(savegame)` – it runs **before** `PlaceableSilo:loadFromXMLFile` / `FillUnit:onPostLoad` load the fill levels, and those clamp to the capacity of that moment (saved fill lost otherwise). Use your spec's own `loadFromXMLFile` (runs after) only to heal excess fill and refresh fill planes.
- New placements have `uniqueId == nil` in `onLoad`; it is set by `onFinalizePlacement`.
- Placeable spec events used: `onLoad`, `onPostLoad`, `onFinalizePlacement`, `onDelete`, `onReadStream`, `onWriteStream`, `loadFromXMLFile`, `saveToXMLFile`, `onInfoTriggerEnter/Leave`; savegame keys via `registerSavegameXMLPaths(schema, basePath)` under `<modName>.<specName>`. Helpers `getOwnerFarmId()`, `getName()`, `spec_infoTrigger.infoTriggerNode`; proximity prompt via `g_currentMission.activatableObjectsSystem`.
- Other data seen 🔎 (FarmTablet): husbandry `getNumOfAnimals`, `getMaxNumOfAnimals`, `getTotalFood`, `getFoodCapacity`, `getHusbandryFillLevel(FillType.WATER)`, `getConditionInfos`; silos `getFillLevels()`; productions `productionChainManager:getProductionPointsForFarmId(id)`, `activeProductions`; farmlands `g_farmlandManager.farmlands` (`id`, `farmId`, `field`, `areaInHa`), `g_fieldManager.farmlandIdFieldMapping`, `field:getAreaHa()`.

## Farmlands and the big map

- 📖 (`economy/FarmlandManager.lua`, `Farmland.lua`): `g_farmlandManager:getFarmlandIdAtWorldPosition(x, z)` (0 = no farmland), `getFarmlandAtWorldPosition(x, z)`, `getFarmlandOwner(farmlandId)` (owner farm id, `FarmlandManager.NO_OWNER_FARM_ID` if none), `getFarmlandById(id)`, `getFarmlands()`, `getOwnedFarmlandIdsByFarmId(farmId)`, `getIsOwnedByFarmAtWorldPosition(farmId, x, z)`, `getPricePerHa()`. Farmland fields: `id`, `name`, `areaInHa`, `price`, `farmId`, `field`, `showOnFarmlandsScreen`.
- "Is this position on a field?": `vehicle:getIsOnField()` or `FSDensityMapUtil.getFieldDataAtWorldPosition(x, y, z)` → `isOnField, densityBits, groundType` 🔎 (AutoDrive).
- Own button in the farmland context box of the big map (ESC → map), next to Visit/Buy/Sell 🔎 (FS25_UsedPlus): wrap `InGameMenuMapFrame.onLoadMapFinished` (call the game first), append an id to `InGameMenuMapFrame.ACTIONS` and set `self.contextActions[id] = { title, callback, isActive }`; wrap `InGameMenuMapFrame.setMapInputContext(self, enterVehicleActive, resetVehicleActive, sellVehicleActive, visitPlaceActive, setMarkerActive, removeMarkerActive, buyFarmlandActive, sellFarmlandActive, manageActive)` and switch `isActive` after the game call. Selected farmland: `self.selectedFarmland`; close the box with `InGameMenuMapUtil.hideContextBox(self.contextBoxFarmland)`. Used by VEC v0.80.0 (service contract per farmland) – in-game test pending ❓.
- The farmland info box (`frame.contextBoxFarmland`) is **flat** ✅: direct children are the background `fs25_mapContextBoxBgFarmland`, image, separator, titles `fs25_mapContextFarmlandTitle` (area, value), values `fs25_mapContextFarmlandValue`, and the button list `contextButtonListFarmland`. The value texts are still empty inside `setMapInputContext`; the game fills them afterwards ✅. An extra row: clone a title/value pair (`clone(box, false, true)`), place it with `setAbsolutePosition` while the box draws, move the button list down and lengthen the background via `absSize[2]` ✅ (verified in game; row height 0.0278).
- Ground under a vehicle 📖 (`WheelPhysics`, `WheelsUtil.getGroundType`): per wheel `wheel.physics.contact` (`WheelContactType` NONE/GROUND/GROUND_HEIGHT/OBJECT), `densityType` (`FieldGroundType`, NONE = no field) and `groundDepth`. OBJECT contact (road meshes, concrete, hall floors) counts as ROAD and plays the asphalt sound; terrain without field and depth is HARD_TERRAIN (painted gravel/pavement), with depth SOFT_TERRAIN (grass, soil). Values only change while the wheel physics update runs ❓ (parked or freshly loaded vehicles may report NONE).

## Fill units (vehicles)

🔎 (AdjustStorageCapacity unless noted)
- `spec_fillUnit.fillUnits[i]`: `capacity`, `defaultCapacity`, `fillLevel`, `fillType`, `updateMass`, `fillMassNode`, `synchronizeFillLevel` (only these are streamed). Getters `getFillUnitFillLevel(i)`, `getFillUnitFillType(i)`, `getFillUnitCapacity(i)`.
- Changing capacity: set **both** `capacity` and `defaultCapacity` (shovels and buckets snap back to `defaultCapacity`); scale discharge `spec_dischargeable.dischargeNodes[i].emptySpeed` (l/ms); rebuild matching `spec_fillVolume.volumes[]` (recreate the fill plane, refill with `fillPlaneAdd`).
- Skip units another spec owns or re-derives: leveler, baler (and its buffer), bale loader, consumables, straw blower, tree planter, feller buncher.
- Mass: override `getAdditionalComponentMass` (fill level × `massPerLiter` on `fillMassNode`), then `vehicle:setMassDirty()`.
- `vehicle:addFillUnitFillLevel(farmId, idx, delta, fillType, ToolType.UNDEFINED, nil)` clamps, updates mass and planes; used negative to remove crop losses. 🔎 (AdjustStorageCapacity, RealisticHarvesting) Multiplayer clamp pitfall: [10](10-multiplayer.md).

## Time and environment

- `environment.currentDay`, `currentMonotonicDay`, `dayTime` (ms of day), `currentSeason`, `daysPerPeriod`, `missionInfo.plannedDaysPerPeriod`, `g_currentMission.time`, `timeScale`. 🔎 (WorkerCosts, MarketDynamics, FarmTablet) Real-time `dt` vs game time: [14](14-development-and-debugging.md).
