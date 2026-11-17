# Functions – animals

Source: `github.com/MyGameSteamOfficial/fs25-lua-api` (commit 9478ee9, 2025-02-26 – older than the current patch). Extracted automatically: names, XML keys, types, defaults only – no code. Status 📖 (read from source, not verified in game).

## animals/AnimalLoadingTrigger.lua

`AnimalLoadingTrigger.new`, `AnimalLoadingTrigger.registerXMLPaths`, `AnimalLoadingTrigger:delete`, `AnimalLoadingTrigger:getAnimals`, `AnimalLoadingTrigger:load`, `AnimalLoadingTrigger:loadFromXML`, `AnimalLoadingTrigger:onCreate`, `AnimalLoadingTrigger:openAnimalMenu`, `AnimalLoadingTrigger:setLoadingTrailer`, `AnimalLoadingTrigger:triggerCallback`, `AnimalLoadingTrigger:updateActivatableObject`, `AnimalLoadingTriggerActivatable.new`, `AnimalLoadingTriggerActivatable:getDistance`, `AnimalLoadingTriggerActivatable:getIsActivatable`, `AnimalLoadingTriggerActivatable:run`

## animals/Dog.lua

`Dog.new`, `Dog.registerSavegameXMLPaths`, `Dog:delete`, `Dog:fetchItem`, `Dog:finalizePlacement`, `Dog:followEntity`, `Dog:getUpdatePriority`, `Dog:goToSpawn`, `Dog:hourChanged`, `Dog:idleStay`, `Dog:idleWander`, `Dog:isAbandoned`, `Dog:load`, `Dog:loadFromXMLFile`, `Dog:onFoodBowlFilled`, `Dog:onGhostAdd`, `Dog:onGhostRemove`, `Dog:onIndoorStateChanged`, `Dog:onPlayerLeave`, `Dog:pet`, `Dog:playerFarmChanged`, `Dog:playerInteractionTriggerCallback`, `Dog:readStream`, `Dog:readUpdateStream`, `Dog:resetSteeringParms`, `Dog:saveToXMLFile`, `Dog:setName`, `Dog:setVisibility`, `Dog:teleportToSpawn`, `Dog:testScope`, `Dog:update`, `Dog:updateTick`, `Dog:writeStream`, `Dog:writeUpdateStream`

## animals/DogPetActivatable.lua

`DogPetActivatable.new`, `DogPetActivatable:getDistance`, `DogPetActivatable:getIsActivatable`, `DogPetActivatable:run`

## animals/events/AnimalCleanEvent.lua

`AnimalCleanEvent.emptyNew`, `AnimalCleanEvent.new`, `AnimalCleanEvent:readStream`, `AnimalCleanEvent:run`, `AnimalCleanEvent:writeStream`

## animals/events/AnimalHusbandryNoMorePalletSpaceEvent.lua

`AnimalHusbandryNoMorePalletSpaceEvent.emptyNew`, `AnimalHusbandryNoMorePalletSpaceEvent.new`, `AnimalHusbandryNoMorePalletSpaceEvent:readStream`, `AnimalHusbandryNoMorePalletSpaceEvent:run`, `AnimalHusbandryNoMorePalletSpaceEvent:writeStream`

## animals/events/AnimalNameEvent.lua

`AnimalNameEvent.emptyNew`, `AnimalNameEvent.new`, `AnimalNameEvent.sendEvent`, `AnimalNameEvent:readStream`, `AnimalNameEvent:run`, `AnimalNameEvent:writeStream`

## animals/events/AnimalRidingEvent.lua

`AnimalRidingEvent.emptyNew`, `AnimalRidingEvent.new`, `AnimalRidingEvent:readStream`, `AnimalRidingEvent:run`, `AnimalRidingEvent:writeStream`

## animals/events/DogFetchItemEvent.lua

`DogFetchItemEvent.emptyNew`, `DogFetchItemEvent.new`, `DogFetchItemEvent:readStream`, `DogFetchItemEvent:run`, `DogFetchItemEvent:writeStream`

## animals/events/DogFollowEvent.lua

`DogFollowEvent.emptyNew`, `DogFollowEvent.new`, `DogFollowEvent:readStream`, `DogFollowEvent:run`, `DogFollowEvent:writeStream`

## animals/events/DogPetEvent.lua

`DogPetEvent.emptyNew`, `DogPetEvent.new`, `DogPetEvent:readStream`, `DogPetEvent:run`, `DogPetEvent:writeStream`

## animals/husbandry/placeables/PlaceableHusbandry.lua

`PlaceableHusbandry.prerequisitesPresent`, `PlaceableHusbandry.registerEventListeners`, `PlaceableHusbandry.registerEvents`, `PlaceableHusbandry.registerFunctions`, `PlaceableHusbandry.registerOverwrittenFunctions`, `PlaceableHusbandry.registerSavegameXMLPaths`, `PlaceableHusbandry.registerXMLPaths`, `PlaceableHusbandry:addHusbandryFillLevelFromTool`, `PlaceableHusbandry:canBuy`, `PlaceableHusbandry:collectPickObjects`, `PlaceableHusbandry:getAnimalDescription`, `PlaceableHusbandry:getAnimalInfos`, `PlaceableHusbandry:getCanBePlacedAt`, `PlaceableHusbandry:getConditionInfos`, `PlaceableHusbandry:getFoodInfos`, `PlaceableHusbandry:getGlobalProductionFactor`, `PlaceableHusbandry:getHusbandryCapacity`, `PlaceableHusbandry:getHusbandryFillLevel`, `PlaceableHusbandry:getHusbandryFreeCapacity`, `PlaceableHusbandry:getHusbandryIsFillTypeSupported`, `PlaceableHusbandry:getNeedHourChanged`, `PlaceableHusbandry:loadFromXMLFile`, `PlaceableHusbandry:onAddedStorageToLoadingStation`, `PlaceableHusbandry:onAddedStorageToUnloadingStation`, `PlaceableHusbandry:onBuy`, `PlaceableHusbandry:onDelete`, `PlaceableHusbandry:onFinalizePlacement`, `PlaceableHusbandry:onHourChanged`, `PlaceableHusbandry:onLoad`, `PlaceableHusbandry:onReadStream`, `PlaceableHusbandry:onReadUpdateStream`, `PlaceableHusbandry:onRemovedStorageFromLoadingStation`, `PlaceableHusbandry:onRemovedStorageFromUnloadingStation`, `PlaceableHusbandry:onWriteStream`, `PlaceableHusbandry:onWriteUpdateStream`, `PlaceableHusbandry:removeHusbandryFillLevel`, `PlaceableHusbandry:saveToXMLFile`, `PlaceableHusbandry:setOwnerFarmId`, `PlaceableHusbandry:updateFeeding`, `PlaceableHusbandry:updateOutput`, `PlaceableHusbandry:updateProduction`

## animals/husbandry/placeables/PlaceableHusbandryAnimals.lua

`PlaceableHusbandryAnimals.consoleCommandAddAnimals`, `PlaceableHusbandryAnimals.getSpecValueNumberAnimals`, `PlaceableHusbandryAnimals.initSpecialization`, `PlaceableHusbandryAnimals.loadSpecValueNumberAnimals`, `PlaceableHusbandryAnimals.prerequisitesPresent`, `PlaceableHusbandryAnimals.registerEventListeners`, `PlaceableHusbandryAnimals.registerEvents`, `PlaceableHusbandryAnimals.registerFunctions`, `PlaceableHusbandryAnimals.registerOverwrittenFunctions`, `PlaceableHusbandryAnimals.registerSavegameXMLPaths`, `PlaceableHusbandryAnimals.registerXMLPaths`, `PlaceableHusbandryAnimals:addAnimals`, `PlaceableHusbandryAnimals:addCluster`, `PlaceableHusbandryAnimals:canBeSold`, `PlaceableHusbandryAnimals:createHusbandry`, `PlaceableHusbandryAnimals:getAnimalCanBeRidden`, `PlaceableHusbandryAnimals:getAnimalDescription`, `PlaceableHusbandryAnimals:getAnimalInfos`, `PlaceableHusbandryAnimals:getAnimalSupportsRiding`, `PlaceableHusbandryAnimals:getAnimalTypeIndex`, `PlaceableHusbandryAnimals:getCluster`, `PlaceableHusbandryAnimals:getClusterById`, `PlaceableHusbandryAnimals:getClusterSystem`, `PlaceableHusbandryAnimals:getClusters`, `PlaceableHusbandryAnimals:getConditionInfos`, `PlaceableHusbandryAnimals:getIsInAnimalDeliveryArea`, `PlaceableHusbandryAnimals:getMaxNumOfAnimals`, `PlaceableHusbandryAnimals:getNeedDayChanged`, `PlaceableHusbandryAnimals:getNumOfAnimals`, `PlaceableHusbandryAnimals:getNumOfClusters`, `PlaceableHusbandryAnimals:getNumOfFreeAnimalSlots`, `PlaceableHusbandryAnimals:getSupportsAnimalSubType`, `PlaceableHusbandryAnimals:loadDeliveryArea`, `PlaceableHusbandryAnimals:loadFromXMLFile`, `PlaceableHusbandryAnimals:onDayChanged`, `PlaceableHusbandryAnimals:onDelete`, `PlaceableHusbandryAnimals:onExternalNavigationMeshLoaded`, `PlaceableHusbandryAnimals:onFinalizePlacement`, `PlaceableHusbandryAnimals:onLoad`, `PlaceableHusbandryAnimals:onLoadedRideable`, `PlaceableHusbandryAnimals:onMissionStarted`, `PlaceableHusbandryAnimals:onPeriodChanged`, `PlaceableHusbandryAnimals:onReadStream`, `PlaceableHusbandryAnimals:onUpdate`, `PlaceableHusbandryAnimals:onWriteStream`, `PlaceableHusbandryAnimals:renameAnimal`, `PlaceableHusbandryAnimals:saveToXMLFile`, `PlaceableHusbandryAnimals:startRiding`, `PlaceableHusbandryAnimals:updateInfo`, `PlaceableHusbandryAnimals:updateOutput`, `PlaceableHusbandryAnimals:updateVisualAnimals`, `PlaceableHusbandryAnimals:updatedClusters`

## animals/husbandry/placeables/PlaceableHusbandryFeedingRobot.lua

`PlaceableHusbandryFeedingRobot.prerequisitesPresent`, `PlaceableHusbandryFeedingRobot.registerEventListeners`, `PlaceableHusbandryFeedingRobot.registerFunctions`, `PlaceableHusbandryFeedingRobot.registerOverwrittenFunctions`, `PlaceableHusbandryFeedingRobot.registerSavegameXMLPaths`, `PlaceableHusbandryFeedingRobot.registerXMLPaths`, `PlaceableHusbandryFeedingRobot:collectPickObjects`, `PlaceableHusbandryFeedingRobot:loadFromXMLFile`, `PlaceableHusbandryFeedingRobot:onDelete`, `PlaceableHusbandryFeedingRobot:onFeedingRobotLoaded`, `PlaceableHusbandryFeedingRobot:onFinalizePlacement`, `PlaceableHusbandryFeedingRobot:onLoad`, `PlaceableHusbandryFeedingRobot:onPostLoad`, `PlaceableHusbandryFeedingRobot:onReadStream`, `PlaceableHusbandryFeedingRobot:onWriteStream`, `PlaceableHusbandryFeedingRobot:saveToXMLFile`, `PlaceableHusbandryFeedingRobot:setOwnerFarmId`, `PlaceableHusbandryFeedingRobot:updateFeeding`, `PlaceableHusbandryFeedingRobot:updateInfo`

## animals/husbandry/placeables/PlaceableHusbandryFence.lua

`PlaceableHusbandryFence.prerequisitesPresent`, `PlaceableHusbandryFence.registerEventListeners`, `PlaceableHusbandryFence.registerFunctions`, `PlaceableHusbandryFence.registerOverwrittenFunctions`, `PlaceableHusbandryFence.registerSavegameXMLPaths`, `PlaceableHusbandryFence.registerXMLPaths`, `PlaceableHusbandryFence:getCanBePlacedAt`, `PlaceableHusbandryFence:getFence`, `PlaceableHusbandryFence:getHasCustomizableFence`, `PlaceableHusbandryFence:loadFromXMLFile`, `PlaceableHusbandryFence:onDelete`, `PlaceableHusbandryFence:onFenceI3DLoaded`, `PlaceableHusbandryFence:onLoad`, `PlaceableHusbandryFence:onPreFinalizePlacement`, `PlaceableHusbandryFence:onReadStream`, `PlaceableHusbandryFence:onWriteStream`, `PlaceableHusbandryFence:setPreviewPosition`, `PlaceableHusbandryFence:updateHusbandryFence`

## animals/husbandry/placeables/PlaceableHusbandryFood.lua

`PlaceableHusbandryFood.getSpecValueAnimalFoodFillTypes`, `PlaceableHusbandryFood.initSpecialization`, `PlaceableHusbandryFood.loadSpecValueAnimalFoodFillTypes`, `PlaceableHusbandryFood.prerequisitesPresent`, `PlaceableHusbandryFood.registerEventListeners`, `PlaceableHusbandryFood.registerFunctions`, `PlaceableHusbandryFood.registerOverwrittenFunctions`, `PlaceableHusbandryFood.registerSavegameXMLPaths`, `PlaceableHusbandryFood.registerXMLPaths`, `PlaceableHusbandryFood:addFood`, `PlaceableHusbandryFood:collectPickObjects`, `PlaceableHusbandryFood:getAnimalDescription`, `PlaceableHusbandryFood:getFoodCapacity`, `PlaceableHusbandryFood:getFoodInfos`, `PlaceableHusbandryFood:getFreeFoodCapacity`, `PlaceableHusbandryFood:getTotalFood`, `PlaceableHusbandryFood:loadFromXMLFile`, `PlaceableHusbandryFood:onDelete`, `PlaceableHusbandryFood:onFinalizePlacement`, `PlaceableHusbandryFood:onHusbandryAnimalsCreated`, `PlaceableHusbandryFood:onHusbandryAnimalsUpdate`, `PlaceableHusbandryFood:onLoad`, `PlaceableHusbandryFood:onPostFinalizePlacement`, `PlaceableHusbandryFood:onPostLoad`, `PlaceableHusbandryFood:onReadStream`, `PlaceableHusbandryFood:onReadUpdateStream`, `PlaceableHusbandryFood:onWriteStream`, `PlaceableHusbandryFood:onWriteUpdateStream`, `PlaceableHusbandryFood:removeFood`, `PlaceableHusbandryFood:saveToXMLFile`, `PlaceableHusbandryFood:updateFeeding`, `PlaceableHusbandryFood:updateFillPlanes`, `PlaceableHusbandryFood:updateFoodPlaces`, `PlaceableHusbandryFood:updateInfo`

## animals/husbandry/placeables/PlaceableHusbandryLiquidManure.lua

`PlaceableHusbandryLiquidManure.prerequisitesPresent`, `PlaceableHusbandryLiquidManure.registerEventListeners`, `PlaceableHusbandryLiquidManure.registerOverwrittenFunctions`, `PlaceableHusbandryLiquidManure.registerXMLPaths`, `PlaceableHusbandryLiquidManure:getConditionInfos`, `PlaceableHusbandryLiquidManure:onFinalizePlacement`, `PlaceableHusbandryLiquidManure:onHusbandryAnimalsUpdate`, `PlaceableHusbandryLiquidManure:onLoad`, `PlaceableHusbandryLiquidManure:updateInfo`, `PlaceableHusbandryLiquidManure:updateOutput`, `PlaceableHusbandryLiquidManure:updateProduction`

## animals/husbandry/placeables/PlaceableHusbandryMeadow.lua

`PlaceableHusbandryMeadow.prerequisitesPresent`, `PlaceableHusbandryMeadow.registerEventListeners`, `PlaceableHusbandryMeadow.registerOverwrittenFunctions`, `PlaceableHusbandryMeadow.registerSavegameXMLPaths`, `PlaceableHusbandryMeadow.registerXMLPaths`, `PlaceableHusbandryMeadow:getFoodInfos`, `PlaceableHusbandryMeadow:loadFromXMLFile`, `PlaceableHusbandryMeadow:onLoad`, `PlaceableHusbandryMeadow:onReadStream`, `PlaceableHusbandryMeadow:onReadUpdateStream`, `PlaceableHusbandryMeadow:onWriteStream`, `PlaceableHusbandryMeadow:onWriteUpdateStream`, `PlaceableHusbandryMeadow:saveToXMLFile`, `PlaceableHusbandryMeadow:updateInfo`

## animals/husbandry/placeables/PlaceableHusbandryMilk.lua

`PlaceableHusbandryMilk.prerequisitesPresent`, `PlaceableHusbandryMilk.registerEventListeners`, `PlaceableHusbandryMilk.registerFunctions`, `PlaceableHusbandryMilk.registerOverwrittenFunctions`, `PlaceableHusbandryMilk.registerXMLPaths`, `PlaceableHusbandryMilk:getConditionInfos`, `PlaceableHusbandryMilk:onDelete`, `PlaceableHusbandryMilk:onFinalizePlacement`, `PlaceableHusbandryMilk:onHusbandryAnimalsUpdate`, `PlaceableHusbandryMilk:onLoad`, `PlaceableHusbandryMilk:onMilkingRobotLoaded`, `PlaceableHusbandryMilk:updateInfo`, `PlaceableHusbandryMilk:updateOutput`, `PlaceableHusbandryMilk:updateProduction`

## animals/husbandry/placeables/PlaceableHusbandryPallets.lua

`PlaceableHusbandryPallets.prerequisitesPresent`, `PlaceableHusbandryPallets.registerEventListeners`, `PlaceableHusbandryPallets.registerFunctions`, `PlaceableHusbandryPallets.registerOverwrittenFunctions`, `PlaceableHusbandryPallets.registerSavegameXMLPaths`, `PlaceableHusbandryPallets.registerXMLPaths`, `PlaceableHusbandryPallets:getAllPalletsCallback`, `PlaceableHusbandryPallets:getConditionInfos`, `PlaceableHusbandryPallets:getPalletCallback`, `PlaceableHusbandryPallets:loadFromXMLFile`, `PlaceableHusbandryPallets:onDelete`, `PlaceableHusbandryPallets:onFinalizePlacement`, `PlaceableHusbandryPallets:onHusbandryAnimalsUpdate`, `PlaceableHusbandryPallets:onLoad`, `PlaceableHusbandryPallets:onPalletTriggerCallback`, `PlaceableHusbandryPallets:onReadStream`, `PlaceableHusbandryPallets:onReadUpdateStream`, `PlaceableHusbandryPallets:onWriteStream`, `PlaceableHusbandryPallets:onWriteUpdateStream`, `PlaceableHusbandryPallets:saveToXMLFile`, `PlaceableHusbandryPallets:showPalletBlockedWarning`, `PlaceableHusbandryPallets:showSpawnerBlockedWarning`, `PlaceableHusbandryPallets:updateInfo`, `PlaceableHusbandryPallets:updateOutput`, `PlaceableHusbandryPallets:updatePalletInfo`, `PlaceableHusbandryPallets:updatePallets`

## animals/husbandry/placeables/PlaceableHusbandryStraw.lua

`PlaceableHusbandryStraw.prerequisitesPresent`, `PlaceableHusbandryStraw.registerEventListeners`, `PlaceableHusbandryStraw.registerFunctions`, `PlaceableHusbandryStraw.registerOverwrittenFunctions`, `PlaceableHusbandryStraw.registerXMLPaths`, `PlaceableHusbandryStraw:getConditionInfos`, `PlaceableHusbandryStraw:onDelete`, `PlaceableHusbandryStraw:onFinalizePlacement`, `PlaceableHusbandryStraw:onHusbandryAnimalsUpdate`, `PlaceableHusbandryStraw:onHusbandryFillLevelChanged`, `PlaceableHusbandryStraw:onLoad`, `PlaceableHusbandryStraw:onPostFinalizePlacement`, `PlaceableHusbandryStraw:onReadStream`, `PlaceableHusbandryStraw:updateInfo`, `PlaceableHusbandryStraw:updateOutput`, `PlaceableHusbandryStraw:updateProduction`, `PlaceableHusbandryStraw:updateStrawPlane`

## animals/husbandry/placeables/PlaceableHusbandryWater.lua

`PlaceableHusbandryWater.prerequisitesPresent`, `PlaceableHusbandryWater.registerEventListeners`, `PlaceableHusbandryWater.registerFunctions`, `PlaceableHusbandryWater.registerOverwrittenFunctions`, `PlaceableHusbandryWater.registerXMLPaths`, `PlaceableHusbandryWater:getConditionInfos`, `PlaceableHusbandryWater:onDelete`, `PlaceableHusbandryWater:onFinalizePlacement`, `PlaceableHusbandryWater:onHusbandryAnimalsCreated`, `PlaceableHusbandryWater:onHusbandryAnimalsUpdate`, `PlaceableHusbandryWater:onHusbandryFillLevelChanged`, `PlaceableHusbandryWater:onLoad`, `PlaceableHusbandryWater:onPostFinalizePlacement`, `PlaceableHusbandryWater:updateFeeding`, `PlaceableHusbandryWater:updateInfo`, `PlaceableHusbandryWater:updateWaterPlane`

## animals/husbandry/placeables/events/HusbandryCancelCreationEvent.lua

`HusbandryCancelCreationEvent.emptyNew`, `HusbandryCancelCreationEvent.new`, `HusbandryCancelCreationEvent:readStream`, `HusbandryCancelCreationEvent:run`, `HusbandryCancelCreationEvent:writeStream`

## animals/husbandry/placeables/events/HusbandryFenceCustomizeFinishEvent.lua

`HusbandryFenceCustomizeFinishEvent.emptyNew`, `HusbandryFenceCustomizeFinishEvent.new`, `HusbandryFenceCustomizeFinishEvent:readStream`, `HusbandryFenceCustomizeFinishEvent:run`, `HusbandryFenceCustomizeFinishEvent:writeStream`

## animals/husbandry/placeables/events/HusbandryFenceCustomizeStartEvent.lua

`HusbandryFenceCustomizeStartEvent.emptyNew`, `HusbandryFenceCustomizeStartEvent.new`, `HusbandryFenceCustomizeStartEvent:readStream`, `HusbandryFenceCustomizeStartEvent:run`, `HusbandryFenceCustomizeStartEvent:writeStream`

## animals/husbandry/placeables/events/HusbandryFenceUpdateEvent.lua

`HusbandryFenceUpdateEvent.emptyNew`, `HusbandryFenceUpdateEvent.new`, `HusbandryFenceUpdateEvent:readStream`, `HusbandryFenceUpdateEvent:run`, `HusbandryFenceUpdateEvent:writeStream`

## animals/husbandry/placeables/events/HusbandryFenceValidateEvent.lua

`HusbandryFenceValidateEvent.emptyNew`, `HusbandryFenceValidateEvent.new`, `HusbandryFenceValidateEvent:readStream`, `HusbandryFenceValidateEvent:run`, `HusbandryFenceValidateEvent:writeStream`

## animals/husbandry/placeables/events/HusbandryMeadowCreateEvent.lua

`HusbandryMeadowCreateEvent.emptyNew`, `HusbandryMeadowCreateEvent.new`, `HusbandryMeadowCreateEvent:readStream`, `HusbandryMeadowCreateEvent:run`, `HusbandryMeadowCreateEvent:writeStream`
