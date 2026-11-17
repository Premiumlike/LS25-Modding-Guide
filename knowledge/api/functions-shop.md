# Functions – shop

Source: `github.com/MyGameSteamOfficial/fs25-lua-api` (commit 9478ee9, 2025-02-26 – older than the current patch). Extracted automatically: names, XML keys, types, defaults only – no code. Status 📖 (read from source, not verified in game).

## shop/BrandManager.lua

`BrandManager.new`, `BrandManager:addBrand`, `BrandManager:getBrandByIndex`, `BrandManager:getBrandByName`, `BrandManager:getBrandIconByIndex`, `BrandManager:getBrandIndexByName`, `BrandManager:initDataStructures`, `BrandManager:loadMapData`

## shop/BuyHandToolData.lua

`BuyHandToolData.new`, `BuyHandToolData:buy`, `BuyHandToolData:isValid`, `BuyHandToolData:readStream`, `BuyHandToolData:setIsFreeOfCharge`, `BuyHandToolData:setOwnerFarmId`, `BuyHandToolData:setPrice`, `BuyHandToolData:setStoreItem`, `BuyHandToolData:updatePrice`, `BuyHandToolData:writeStream`

## shop/BuyPlaceableData.lua

`BuyPlaceableData.new`, `BuyPlaceableData:buy`, `BuyPlaceableData:isValid`, `BuyPlaceableData:readStream`, `BuyPlaceableData:setConfigurationData`, `BuyPlaceableData:setConfigurations`, `BuyPlaceableData:setDisplacementCosts`, `BuyPlaceableData:setIsFreeOfCharge`, `BuyPlaceableData:setModifyTerrain`, `BuyPlaceableData:setOwnerFarmId`, `BuyPlaceableData:setPrice`, `BuyPlaceableData:setStoreItem`, `BuyPlaceableData:updatePrice`, `BuyPlaceableData:writeStream`

## shop/BuyVehicleData.lua

`BuyVehicleData.new`, `BuyVehicleData:buy`, `BuyVehicleData:getIsLimitedObjectPurchase`, `BuyVehicleData:isValid`, `BuyVehicleData:readStream`, `BuyVehicleData:setConfigurationData`, `BuyVehicleData:setConfigurations`, `BuyVehicleData:setIsFreeOfCharge`, `BuyVehicleData:setLeaseVehicle`, `BuyVehicleData:setLicensePlateData`, `BuyVehicleData:setOwnerFarmId`, `BuyVehicleData:setPrice`, `BuyVehicleData:setSaleItem`, `BuyVehicleData:setStoreItem`, `BuyVehicleData:updatePrice`, `BuyVehicleData:writeStream`

## shop/StoreItemUtil.lua

`StoreItemUtil.getBrandIndexFromXML`, `StoreItemUtil.getCanBeShownInConfigScreen`, `StoreItemUtil.getCosts`, `StoreItemUtil.getDailyUpkeep`, `StoreItemUtil.getDefaultConfigId`, `StoreItemUtil.getDefaultPrice`, `StoreItemUtil.getFunctionsFromXML`, `StoreItemUtil.getIsAnimal`, `StoreItemUtil.getIsConfigurable`, `StoreItemUtil.getIsHandTool`, `StoreItemUtil.getIsLeasable`, `StoreItemUtil.getIsObject`, `StoreItemUtil.getIsPlaceable`, `StoreItemUtil.getIsVehicle`, `StoreItemUtil.getSizeValues`, `StoreItemUtil.getSizeValuesFromXML`, `StoreItemUtil.getSizeValuesFromXMLByKey`, `StoreItemUtil.getSpecsFromXML`, `StoreItemUtil.getSubConfigurationIndex`, `StoreItemUtil.getSubConfigurationItems`, `StoreItemUtil.getVRamUsageFromXML`, `StoreItemUtil.loadSpecsFromXML`, `StoreItemUtil.registerConfigurationSetXMLPaths`

## shop/StoreManager.lua

`StoreManager.new`, `StoreManager.registerStoreDataXMLPaths`, `StoreManager:addCategory`, `StoreManager:addConstructionCategory`, `StoreManager:addConstructionTab`, `StoreManager:addItem`, `StoreManager:addModStoreItem`, `StoreManager:addModStorePack`, `StoreManager:addPack`, `StoreManager:addPackItem`, `StoreManager:addSpecType`, `StoreManager:consoleCommandReloadStoreItems`, `StoreManager:getCategoryByName`, `StoreManager:getConstructionCategories`, `StoreManager:getConstructionCategoryByName`, `StoreManager:getConstructionTabByName`, `StoreManager:getIsItemUnlocked`, `StoreManager:getItemByCustomEnvironment`, `StoreManager:getItemByIndex`, `StoreManager:getItemByXMLFilename`, `StoreManager:getItems`, `StoreManager:getItemsByCombinationData`, `StoreManager:getPackItems`, `StoreManager:getPacks`, `StoreManager:getSpecTypeByName`, `StoreManager:getSpecTypeByProfile`, `StoreManager:getSpecTypes`, `StoreManager:initDataStructures`, `StoreManager:loadCategoryFromXML`, `StoreManager:loadItem`, `StoreManager:loadItemsFromXML`, `StoreManager:loadMapData`, `StoreManager:removeItemByIndex`, `StoreManager:unloadMapData`
