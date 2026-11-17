# Functions – objects

Source: `github.com/MyGameSteamOfficial/fs25-lua-api` (commit 9478ee9, 2025-02-26 – older than the current patch). Extracted automatically: names, XML keys, types, defaults only – no code. Status 📖 (read from source, not verified in game).

## objects/AnimatedMapObject.lua

`AnimatedMapObject.new`, `AnimatedMapObject:load`, `AnimatedMapObject:onCreate`

## objects/AnimatedObject.lua

`AnimatedObject.new`, `AnimatedObject.registerSavegameXMLPaths`, `AnimatedObject.registerXMLPaths`, `AnimatedObject:delete`, `AnimatedObject:hourChanged`, `AnimatedObject:load`, `AnimatedObject:loadFrameValues`, `AnimatedObject:loadFromXMLFile`, `AnimatedObject:readStream`, `AnimatedObject:readUpdateStream`, `AnimatedObject:setAnimTime`, `AnimatedObject:setFrameValues`, `AnimatedObject:triggerCallback`, `AnimatedObject:update`, `AnimatedObject:writeStream`, `AnimatedObject:writeUpdateStream`, `AnimatedObjectBuilder.new`, `AnimatedObjectBuilder.registerXMLPaths`, `AnimatedObjectBuilder:addSimplePart`, `AnimatedObjectBuilder:build`, `AnimatedObjectBuilder:setActions`, `AnimatedObjectBuilder:setDuration`, `AnimatedObjectBuilder:setOpeningTimes`, `AnimatedObjectBuilder:setSounds`, `AnimatedObjectBuilder:setTrigger`

## objects/AnimatedObjectActivatable.lua

`AnimatedObjectActivatable.new`, `AnimatedObjectActivatable:activate`, `AnimatedObjectActivatable:deactivate`, `AnimatedObjectActivatable:draw`, `AnimatedObjectActivatable:getDistance`, `AnimatedObjectActivatable:getIsActivatable`, `AnimatedObjectActivatable:onAnimationInputContinuous`, `AnimatedObjectActivatable:onAnimationInputToggle`, `AnimatedObjectActivatable:registerCustomInput`, `AnimatedObjectActivatable:removeCustomInput`, `AnimatedObjectActivatable:updateActionEventTexts`

## objects/Bale.lua

`Bale.createDummyBale`, `Bale.loadBaleAttributesFromXMLFile`, `Bale.loadFillTypesFromXML`, `Bale.loadVariationsFromXML`, `Bale.loadVisualMeshesFromXML`, `Bale.new`, `Bale.saveBaleAttributesToXMLFile`, `Bale.setBaleMeshVisibilityCut`, `Bale.setFillTypeTextures`, `Bale.setTexturesForNode`, `Bale.setVariationTextures`, `Bale.updateVisualMeshVisibility`, `Bale.updateVisualMeshWrappingState`, `Bale:applyBaleAttributes`, `Bale:autoLoad`, `Bale:createNode`, `Bale:delete`, `Bale:doDensityMapItemAreaUpdate`, `Bale:getAdditionalMountingDistance`, `Bale:getAllowComponentMassReduction`, `Bale:getAllowPickup`, `Bale:getAutoLoadIsAllowed`, `Bale:getAutoLoadIsSupported`, `Bale:getAutoLoadSize`, `Bale:getBaleAttributes`, `Bale:getBaleMatchesSize`, `Bale:getBaleSupportsBaleLoader`, `Bale:getCanBeOpened`, `Bale:getCanBeSold`, `Bale:getCanInteract`, `Bale:getCapacity`, `Bale:getDefaultMass`, `Bale:getFermentingPercentage`, `Bale:getFillLevel`, `Bale:getFillType`, `Bale:getFillTypeInfo`, `Bale:getInteractionPosition`, `Bale:getIsFermenting`, `Bale:getMass`, `Bale:getMeshNodes`, `Bale:getNeedsSaving`, `Bale:getSupportsTensionBelts`, `Bale:getSupportsWrapping`, `Bale:getTensionBeltNodeId`, `Bale:getValue`, `Bale:getVariationId`, `Bale:loadBaleAttributesFromXML`, `Bale:loadFromConfigXML`, `Bale:loadFromXMLFile`, `Bale:mount`, `Bale:mountDynamic`, `Bale:mountKinematic`, `Bale:onFermentationEnd`, `Bale:onFermentationUpdate`, `Bale:open`, `Bale:readStream`, `Bale:readUpdateStream`, `Bale:resetDetailVisibilityCut`, `Bale:saveToXMLFile`, `Bale:setBaleAIObstacle`, `Bale:setCanBeSold`, `Bale:setColor`, `Bale:setDetailVisibilityCutNode`, `Bale:setFillLevel`, `Bale:setFillType`, `Bale:setIsMissionBale`, `Bale:setReducedComponentMass`, `Bale:setVariationId`, `Bale:setVariationIndex`, `Bale:setWrapTextures`, `Bale:setWrappingState`, `Bale:showInfo`, `Bale:unmount`, `Bale:unmountDynamic`, `Bale:unmountKinematic`, `Bale:writeStream`, `Bale:writeUpdateStream`, `BaleActivatable.new`, `BaleActivatable:getDistance`, `BaleActivatable:getIsActivatable`, `BaleActivatable:run`

## objects/Basketball.lua

`Basketball.new`, `Basketball:createNode`, `Basketball:delete`, `Basketball:load`, `Basketball:onCreate`, `Basketball:readStream`, `Basketball:writeStream`

## objects/BgaSellStation.lua

`BgaSellStation.registerXMLPaths`

## objects/BunkerSilo.lua

`BunkerSilo.new`, `BunkerSilo.onChangedFillLevelCallback`, `BunkerSilo.registerSavegameXMLPaths`, `BunkerSilo.registerXMLPaths`, `BunkerSilo:clearSiloArea`, `BunkerSilo:delete`, `BunkerSilo:getBunkerAreaOffset`, `BunkerSilo:getCanCloseSilo`, `BunkerSilo:getCanInteract`, `BunkerSilo:getCanOpenSilo`, `BunkerSilo:getInteractionPosition`, `BunkerSilo:getIsCloserToFront`, `BunkerSilo:interactionTriggerCallback`, `BunkerSilo:load`, `BunkerSilo:loadFromXMLFile`, `BunkerSilo:onCreate`, `BunkerSilo:openSilo`, `BunkerSilo:readStream`, `BunkerSilo:readUpdateStream`, `BunkerSilo:saveToXMLFile`, `BunkerSilo:setState`, `BunkerSilo:switchFillTypeAtOffset`, `BunkerSilo:update`, `BunkerSilo:updateFillLevel`, `BunkerSilo:updateTick`, `BunkerSilo:writeStream`, `BunkerSilo:writeUpdateStream`

## objects/BunkerSiloCloseEvent.lua

`BunkerSiloCloseEvent.emptyNew`, `BunkerSiloCloseEvent.new`, `BunkerSiloCloseEvent:readStream`, `BunkerSiloCloseEvent:run`, `BunkerSiloCloseEvent:writeStream`

## objects/BunkerSiloOpenEvent.lua

`BunkerSiloOpenEvent.emptyNew`, `BunkerSiloOpenEvent.new`, `BunkerSiloOpenEvent:readStream`, `BunkerSiloOpenEvent:run`, `BunkerSiloOpenEvent:writeStream`

## objects/BuyingStation.lua

`BuyingStation.getSpecValueFillTypes`, `BuyingStation.loadSpecValueFillTypes`, `BuyingStation.registerXMLPaths`

## objects/DigitalDisplay.lua

`DigitalDisplay.registerXMLPaths`

## objects/DogBall.lua

`DogBall.new`, `DogBall:createNode`, `DogBall:delete`, `DogBall:load`, `DogBall:readStream`, `DogBall:reset`, `DogBall:writeStream`

## objects/ForestryLog.lua

`ForestryLog.new`, `ForestryLog:delete`, `ForestryLog:getAllowPickup`, `ForestryLog:getDefaultRigidBodyType`, `ForestryLog:getMeshNodes`, `ForestryLog:getSupportsTensionBelts`, `ForestryLog:loadAsyncFromXMLFile`, `ForestryLog:loadFromFilename`, `ForestryLog:mount`, `ForestryLog:mountDynamic`, `ForestryLog:mountKinematic`, `ForestryLog:onForestryLogLoaded`, `ForestryLog:readStream`, `ForestryLog:saveToXMLFile`, `ForestryLog:setForestryLogAIObstacle`, `ForestryLog:unmount`, `ForestryLog:unmountDynamic`, `ForestryLog:unmountKinematic`, `ForestryLog:writeStream`

## objects/HelpIcons.lua

`HelpIcons.new`, `HelpIcons:delete`, `HelpIcons:deleteHelpIcon`, `HelpIcons:onCreate`, `HelpIcons:showHelpIcons`, `HelpIcons:triggerCallback`

## objects/InlineBale.lua

`InlineBale.new`, `InlineBale:addBale`, `InlineBale:connectBale`, `InlineBale:connectPendingBale`, `InlineBale:createBaleJoint`, `InlineBale:delete`, `InlineBale:getBales`, `InlineBale:getCanBeOpened`, `InlineBale:getCanInteract`, `InlineBale:getInteractionPosition`, `InlineBale:getIsBaleAllowed`, `InlineBale:getNumberOfBales`, `InlineBale:getPendingBale`, `InlineBale:loadBaleConnector`, `InlineBale:loadFromConfigXML`, `InlineBale:loadFromXMLFile`, `InlineBale:onBaleDeleted`, `InlineBale:openBale`, `InlineBale:openBaleAtPosition`, `InlineBale:readBales`, `InlineBale:readStream`, `InlineBale:readUpdateStream`, `InlineBale:removeBaleConnector`, `InlineBale:replacePendingBale`, `InlineBale:saveToXMLFile`, `InlineBale:setBaleJointLimits`, `InlineBale:setCurrentWrapperInfo`, `InlineBale:setWrappingState`, `InlineBale:update`, `InlineBale:updateBaleJoints`, `InlineBale:updateTick`, `InlineBale:wakeUp`, `InlineBale:writeBales`, `InlineBale:writeStream`, `InlineBale:writeUpdateStream`, `InlineBaleActivatable.new`, `InlineBaleActivatable:getIsActivatable`, `InlineBaleActivatable:run`

## objects/InlineBaleSingle.lua

`InlineBaleSingle.new`, `InlineBaleSingle:getBaleSupportsBaleLoader`, `InlineBaleSingle:getCanBeOpened`, `InlineBaleSingle:getConnectedInlineBale`, `InlineBaleSingle:getHasConnector`, `InlineBaleSingle:removeConnector`, `InlineBaleSingle:setConnectedInlineBale`, `InlineBaleSingle:setConnector`, `InlineBaleSingle:setConnectorVisibility`, `InlineBaleSingle:setWrappingState`

## objects/LoadingStation.lua

`LoadingStation.registerXMLPaths`, `LoadingStation:raiseActive`, `LoadingStation:readStream`, `LoadingStation:removeFillLevel`, `LoadingStation:writeStream`

## objects/MountableObject.lua

`MountableObject:additionalMountingMassRaycastCallback`, `MountableObject:getAdditionalMountingMass`, `MountableObject:setWorldPositionQuaternion`, `MountableObject:updateDynamicMountJointForceLimit`

## objects/NightIllumination.lua

`NightIllumination:onCreate`

## objects/Nightlight2.lua

`Nightlight2:onCreate`

## objects/NightlightFlicker.lua

`NightlightFlicker.new`, `NightlightFlicker:onCreate`, `NightlightFlicker:onWeatherChanged`, `NightlightFlicker:update`

## objects/PackedBale.lua

`PackedBale.new`, `PackedBale:delete`, `PackedBale:getCanInteract`, `PackedBale:getInteractionPosition`, `PackedBale:loadBaleAttributesFromXML`, `PackedBale:unpack`, `PackedBaleActivatable.new`, `PackedBaleActivatable:getIsActivatable`, `PackedBaleActivatable:run`

## objects/PhysicsObject.lua

`PhysicsObject.new`, `PhysicsObject:addChildenToNodeObject`, `PhysicsObject:delete`, `PhysicsObject:getAllowsAutoDelete`, `PhysicsObject:getDefaultRigidBodyType`, `PhysicsObject:getUpdatePriority`, `PhysicsObject:loadOnCreate`, `PhysicsObject:onGhostAdd`, `PhysicsObject:onGhostRemove`, `PhysicsObject:readStream`, `PhysicsObject:readUpdateStream`, `PhysicsObject:setLocalPositionQuaternion`, `PhysicsObject:setNodeId`, `PhysicsObject:setWorldPositionQuaternion`, `PhysicsObject:testScope`, `PhysicsObject:update`, `PhysicsObject:updateMove`, `PhysicsObject:updateTick`, `PhysicsObject:wakeUp`, `PhysicsObject:writeStream`, `PhysicsObject:writeUpdateStream`

## objects/ProductionPoint.lua

`ProductionPoint.getSpecValueInputFillTypes`, `ProductionPoint.getSpecValueOutputFillTypes`, `ProductionPoint.loadSpecValueInputFillTypes`, `ProductionPoint.loadSpecValueOutputFillTypes`, `ProductionPoint.registerSavegameXMLPaths`, `ProductionPoint.registerXMLPaths`, `ProductionPoint:buyRequest`, `ProductionPoint:interactionTriggerCallback`, `ProductionPoint:loadFromXMLFile`, `ProductionPoint:openMenu`, `ProductionPoint:readStream`, `ProductionPoint:readUpdateStream`, `ProductionPoint:writeStream`, `ProductionPoint:writeUpdateStream`

## objects/ProductionPointActivatable.lua

`ProductionPointActivatable.new`, `ProductionPointActivatable:getDistance`, `ProductionPointActivatable:getIsActivatable`, `ProductionPointActivatable:run`, `ProductionPointActivatable:updateText`

## objects/ProductionPointOutputModeEvent.lua

`ProductionPointOutputModeEvent.emptyNew`, `ProductionPointOutputModeEvent.new`, `ProductionPointOutputModeEvent.sendEvent`, `ProductionPointOutputModeEvent:readStream`, `ProductionPointOutputModeEvent:run`, `ProductionPointOutputModeEvent:writeStream`

## objects/ProductionPointProductionStateEvent.lua

`ProductionPointProductionStateEvent.emptyNew`, `ProductionPointProductionStateEvent.new`, `ProductionPointProductionStateEvent.sendEvent`, `ProductionPointProductionStateEvent:readStream`, `ProductionPointProductionStateEvent:run`, `ProductionPointProductionStateEvent:writeStream`

## objects/ProductionPointProductionStatusEvent.lua

`ProductionPointProductionStatusEvent.emptyNew`, `ProductionPointProductionStatusEvent.new`, `ProductionPointProductionStatusEvent.sendEvent`, `ProductionPointProductionStatusEvent:readStream`, `ProductionPointProductionStatusEvent:run`, `ProductionPointProductionStatusEvent:writeStream`

## objects/Rotator.lua

`Rotator.new`, `Rotator:onCreate`, `Rotator:update`

## objects/SellingStation.lua

`SellingStation.getSpecValueFillTypes`, `SellingStation.loadSpecValueFillTypes`, `SellingStation.registerSavegameXMLPaths`, `SellingStation.registerXMLPaths`, `SellingStation:loadFromXMLFile`

## objects/SimParticleSystem.lua

`SimParticleSystem.new`, `SimParticleSystem:onCreate`

## objects/Storage.lua

`Storage.new`, `Storage.registerSavegameXMLPaths`, `Storage.registerXMLPaths`, `Storage:addFillLevelChangedListeners`, `Storage:addLoadingStation`, `Storage:addUnloadingStation`, `Storage:delete`, `Storage:draw`, `Storage:empty`, `Storage:farmDestroyed`, `Storage:getCapacity`, `Storage:getFillLevel`, `Storage:getFillLevels`, `Storage:getFreeCapacity`, `Storage:getIsFillTypeSupported`, `Storage:getSupportedFillTypes`, `Storage:hourChanged`, `Storage:load`, `Storage:loadFromXMLFile`, `Storage:readStream`, `Storage:readUpdateStream`, `Storage:removeFillLevelChangedListeners`, `Storage:removeLoadingStation`, `Storage:removeUnloadingStation`, `Storage:saveToXMLFile`, `Storage:setFillLevel`, `Storage:updateFillPlanes`, `Storage:writeStream`, `Storage:writeUpdateStream`

## objects/SunAdmirer.lua

`SunAdmirer.new`, `SunAdmirer:delete`, `SunAdmirer:onCreate`, `SunAdmirer:onWeatherChanged`

## objects/TourIconsMobile.lua

`TourIconsMobile.new`, `TourIconsMobile:activateNextIcon`, `TourIconsMobile:delete`, `TourIconsMobile:makeIconVisible`, `TourIconsMobile:onCreate`, `TourIconsMobile:reactToDialog`, `TourIconsMobile:showTourDialog`, `TourIconsMobile:update`

## objects/UnloadingStation.lua

`UnloadingStation.registerXMLPaths`, `UnloadingStation:readStream`, `UnloadingStation:validateUnloadTriggers`, `UnloadingStation:writeStream`

## objects/VehicleSellingPoint.lua

`VehicleSellingPoint.new`, `VehicleSellingPoint.registerXMLPaths`, `VehicleSellingPoint:delete`, `VehicleSellingPoint:determineCurrentVehicles`, `VehicleSellingPoint:getOwnerFarmId`, `VehicleSellingPoint:load`, `VehicleSellingPoint:openMenu`, `VehicleSellingPoint:playerFarmChanged`, `VehicleSellingPoint:sellAreaTriggerCallback`, `VehicleSellingPoint:setOwnerFarmId`, `VehicleSellingPoint:triggerCallback`, `VehicleSellingPoint:updateIconVisibility`, `VehicleSellingPointActivatable.new`, `VehicleSellingPointActivatable:getDistance`, `VehicleSellingPointActivatable:getIsActivatable`, `VehicleSellingPointActivatable:run`

## objects/WashingStation.lua

`WashingStation.registerXMLPaths`, `WashingStationActivatable.new`, `WashingStationActivatable:getDistance`, `WashingStationActivatable:getIsActivatable`, `WashingStationActivatable:run`

## objects/WashingStationEvent.lua

`WashingStationEvent.emptyNew`, `WashingStationEvent.new`, `WashingStationEvent:readStream`, `WashingStationEvent:run`, `WashingStationEvent:writeStream`

## objects/football/Football.lua

`Football.new`, `Football:delete`

## objects/football/FootballField.lua

`FootballField.new`, `FootballField.onCreate`, `FootballField:delete`, `FootballField:writeStream`

## objects/football/FootballFieldActivatable.lua

`FootballFieldResetActivatable:getDistance`
