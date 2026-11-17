# Functions – placeables

Source: `github.com/MyGameSteamOfficial/fs25-lua-api` (commit 9478ee9, 2025-02-26 – older than the current patch). Extracted automatically: names, XML keys, types, defaults only – no code. Status 📖 (read from source, not verified in game).

## placeables/BeehiveSystem.lua

`BeehiveSystem.new`, `BeehiveSystem:addBeehive`, `BeehiveSystem:addBeehivePalletSpawner`, `BeehiveSystem:consoleCommandBeehiveDebug`, `BeehiveSystem:delete`, `BeehiveSystem:getBeehiveInfluenceFactorAt`, `BeehiveSystem:getBeehives`, `BeehiveSystem:getFarmBeehivePalletSpawner`, `BeehiveSystem:getFarmHasBeehive`, `BeehiveSystem:onHourChanged`, `BeehiveSystem:removeBeehive`, `BeehiveSystem:removeBeehivePalletSpawner`, `BeehiveSystem:showNoSpawnerWarning`, `BeehiveSystem:update`, `BeehiveSystem:updateBeehivesOutput`, `BeehiveSystem:updateBeehivesState`, `BeehiveSystem:updateState`

## placeables/Placeable.lua

`Placeable.getSpecValueSlots`, `Placeable.init`, `Placeable.new`, `Placeable.postInit`, `Placeable.registerEvents`, `Placeable.registerFunctions`, `Placeable:addToPhysics`, `Placeable:canBeSold`, `Placeable:canBuy`, `Placeable:collectPickObjects`, `Placeable:createLoadingTask`, `Placeable:dayChanged`, `Placeable:delete`, `Placeable:draw`, `Placeable:finalizePlacement`, `Placeable:finishLoadingTask`, `Placeable:getCanBePlacedAt`, `Placeable:getCanBeRenamedByFarm`, `Placeable:getDailyUpkeep`, `Placeable:getDestructionMethod`, `Placeable:getImageFilename`, `Placeable:getIsSynchronized`, `Placeable:getName`, `Placeable:getNeedDayChanged`, `Placeable:getNeedHourChanged`, `Placeable:getNeedMinuteChanged`, `Placeable:getNeedWeatherChanged`, `Placeable:getNeedsSaving`, `Placeable:getPrice`, `Placeable:getPropertyState`, `Placeable:getSellAction`, `Placeable:getSellPrice`, `Placeable:getUniqueId`, `Placeable:hourChanged`, `Placeable:i3dFileLoaded`, `Placeable:load`, `Placeable:loadCallback`, `Placeable:minuteChanged`, `Placeable:onBuy`, `Placeable:onFarmlandStateChanged`, `Placeable:onFinishedLoading`, `Placeable:onLoadingError`, `Placeable:onSell`, `Placeable:performNodeDestruction`, `Placeable:periodChanged`, `Placeable:postReadStream`, `Placeable:postWriteStream`, `Placeable:previewNodeDestructionNodes`, `Placeable:readStream`, `Placeable:readUpdateStream`, `Placeable:register`, `Placeable:removeFromPhysics`, `Placeable:saveToXMLFile`, `Placeable:setConfigurations`, `Placeable:setFilename`, `Placeable:setLoadCallback`, `Placeable:setLoadingState`, `Placeable:setLoadingStep`, `Placeable:setName`, `Placeable:setOverlayColor`, `Placeable:setOverlayColorNodes`, `Placeable:setOwnerFarmId`, `Placeable:setPreviewPosition`, `Placeable:setPropertyState`, `Placeable:setType`, `Placeable:setUniqueId`, `Placeable:setVisibility`, `Placeable:update`, `Placeable:updateTick`, `Placeable:weatherChanged`, `Placeable:writeStream`, `Placeable:writeUpdateStream`

## placeables/PlaceableLoadingData.lua

`PlaceableLoadingData.new`, `PlaceableLoadingData:applyPositionData`, `PlaceableLoadingData:getConfigurations`, `PlaceableLoadingData:getCustomParameter`, `PlaceableLoadingData:load`, `PlaceableLoadingData:setBoughtConfigurations`, `PlaceableLoadingData:setConfigurationData`, `PlaceableLoadingData:setConfigurations`, `PlaceableLoadingData:setCustomParameter`, `PlaceableLoadingData:setFilename`, `PlaceableLoadingData:setForceServer`, `PlaceableLoadingData:setIsRegistered`, `PlaceableLoadingData:setIsSaved`, `PlaceableLoadingData:setOwnerFarmId`, `PlaceableLoadingData:setPosition`, `PlaceableLoadingData:setPropertyState`, `PlaceableLoadingData:setRotation`, `PlaceableLoadingData:setSavegameData`, `PlaceableLoadingData:setSpawnNode`, `PlaceableLoadingData:setStoreItem`

## placeables/PlaceableNameEvent.lua

`PlaceableNameEvent.emptyNew`, `PlaceableNameEvent.new`, `PlaceableNameEvent.sendEvent`, `PlaceableNameEvent:readStream`, `PlaceableNameEvent:run`, `PlaceableNameEvent:writeStream`

## placeables/PlaceablePreplacedInfoEvent.lua

`PlaceablePreplacedInfoEvent.emptyNew`, `PlaceablePreplacedInfoEvent.new`, `PlaceablePreplacedInfoEvent:readStream`, `PlaceablePreplacedInfoEvent:writeStream`

## placeables/PlaceableSystem.lua

`PlaceableSystem.new`, `PlaceableSystem:addBunkerSilo`, `PlaceableSystem:addFarmhouse`, `PlaceableSystem:addPendingPlaceableLoad`, `PlaceableSystem:addPlaceable`, `PlaceableSystem:addWeatherStation`, `PlaceableSystem:canStartMission`, `PlaceableSystem:consoleCommandDeleteAllPlaceables`, `PlaceableSystem:consoleCommandLoadAllPlaceables`, `PlaceableSystem:consoleCommandReloadAllPlaceables`, `PlaceableSystem:delete`, `PlaceableSystem:deleteAll`, `PlaceableSystem:getBunkerSilos`, `PlaceableSystem:getExistingPlaceableByXMLFilename`, `PlaceableSystem:getFarmhouse`, `PlaceableSystem:getHasWeatherStation`, `PlaceableSystem:loadPlaceableFinished`, `PlaceableSystem:loadPlaceableFromXML`, `PlaceableSystem:removeBunkerSilo`, `PlaceableSystem:removeFarmhouse`, `PlaceableSystem:removePendingPlaceableLoad`, `PlaceableSystem:removePlaceable`, `PlaceableSystem:removeWeatherStation`, `PlaceableSystem:save`, `PlaceableSystem:saveToXML`, `callback`

## placeables/configurations/PlaceableConfigurationItem.lua

`PlaceableConfigurationItem.new`, `PlaceableConfigurationItem.postLoad`, `PlaceableConfigurationItem.registerSavegameXMLPaths`, `PlaceableConfigurationItem.registerXMLPaths`, `PlaceableConfigurationItem:getNeedsRenaming`, `PlaceableConfigurationItem:loadFromSavegameXMLFile`, `PlaceableConfigurationItem:loadFromXML`, `PlaceableConfigurationItem:onLoad`, `PlaceableConfigurationItem:onLoadFinished`, `PlaceableConfigurationItem:onPostLoad`, `PlaceableConfigurationItem:onPreLoad`, `PlaceableConfigurationItem:onSizeLoad`, `PlaceableConfigurationItem:saveToXMLFile`, `PlaceableConfigurationItem:setIndex`

## placeables/configurations/PlaceableConfigurationItemColor.lua

`PlaceableConfigurationItemColor.getFallbackConfigId`, `PlaceableConfigurationItemColor.new`, `PlaceableConfigurationItemColor.postLoad`, `PlaceableConfigurationItemColor.registerSavegameXMLPaths`, `PlaceableConfigurationItemColor.registerXMLPaths`, `PlaceableConfigurationItemColor:getColor`, `PlaceableConfigurationItemColor:getColorAndMaterialFromPlaceable`, `PlaceableConfigurationItemColor:hasDataChanged`, `PlaceableConfigurationItemColor:loadFromSavegameXMLFile`, `PlaceableConfigurationItemColor:loadFromXML`, `PlaceableConfigurationItemColor:onPostLoad`, `PlaceableConfigurationItemColor:onSizeLoad`, `PlaceableConfigurationItemColor:readFromStream`, `PlaceableConfigurationItemColor:saveToXMLFile`, `PlaceableConfigurationItemColor:writeToStream`

## placeables/configurations/data/PlaceableConfigurationDataObjectChange.lua

`PlaceableConfigurationDataObjectChange.loadConfigItem`, `PlaceableConfigurationDataObjectChange.onLoad`, `PlaceableConfigurationDataObjectChange.onPostLoad`, `PlaceableConfigurationDataObjectChange.registerXMLPaths`
