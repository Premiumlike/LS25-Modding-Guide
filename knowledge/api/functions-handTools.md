# Functions – handTools

Source: `github.com/MyGameSteamOfficial/fs25-lua-api` (commit 9478ee9, 2025-02-26 – older than the current patch). Extracted automatically: names, XML keys, types, defaults only – no code. Status 📖 (read from source, not verified in game).

## handTools/HandTool.lua

`HandTool.calculateSellPrice`, `HandTool.init`, `HandTool.new`, `HandTool.postInit`, `HandTool.registerEvents`, `HandTool.registerSavegameXMLPaths`, `HandTool.registerXMLPaths`, `HandTool:attachTool`, `HandTool:attachToolToCamera`, `HandTool:attachToolToHand`, `HandTool:clearActionEvents`, `HandTool:createLoadingTask`, `HandTool:delete`, `HandTool:detachTool`, `HandTool:finishLoadingTask`, `HandTool:getCarryingPlayer`, `HandTool:getIsCarried`, `HandTool:getIsHeld`, `HandTool:getIsSynchronized`, `HandTool:getNeedsSaving`, `HandTool:getPrice`, `HandTool:getSellPrice`, `HandTool:getUniqueId`, `HandTool:i3dFileLoaded`, `HandTool:loadFinished`, `HandTool:onFinishedLoading`, `HandTool:periodChanged`, `HandTool:postReadStream`, `HandTool:postWriteStream`, `HandTool:readStream`, `HandTool:readUpdateStream`, `HandTool:register`, `HandTool:saveToXMLFile`, `HandTool:setCarryingPlayer`, `HandTool:setFilename`, `HandTool:setLoadCallback`, `HandTool:setLoadingState`, `HandTool:setLoadingStep`, `HandTool:setType`, `HandTool:setUniqueId`, `HandTool:startHolding`, `HandTool:stopHolding`, `HandTool:update`, `HandTool:writeStream`, `HandTool:writeUpdateStream`

## handTools/HandToolHolder.lua

`HandToolHolder.new`, `HandToolHolder.registerSavegameXMLPaths`, `HandToolHolder.registerXMLPaths`, `HandToolHolder:delete`, `HandToolHolder:drawDebug`, `HandToolHolder:getCanPickupHandTool`, `HandToolHolder:getCanPickupHandToolFromMenu`, `HandToolHolder:getHandTool`, `HandToolHolder:getHolderName`, `HandToolHolder:getHolderNodePair`, `HandToolHolder:getSpawnedHandTool`, `HandToolHolder:getSpawnsHandTool`, `HandToolHolder:getUniqueId`, `HandToolHolder:load`, `HandToolHolder:loadFromXMLFile`, `HandToolHolder:onDropHandTool`, `HandToolHolder:onDummyHandToolI3DLoaded`, `HandToolHolder:onFinishedLoading`, `HandToolHolder:onPickupHandTool`, `HandToolHolder:onPlayerCallback`, `HandToolHolder:onSpawnedHandToolLoaded`, `HandToolHolder:readStream`, `HandToolHolder:register`, `HandToolHolder:saveToXMLFile`, `HandToolHolder:setHolderName`, `HandToolHolder:setOwnerFarmId`, `HandToolHolder:setPickupCallback`, `HandToolHolder:setPlayerInRange`, `HandToolHolder:setStoreCallback`, `HandToolHolder:setUniqueId`, `HandToolHolder:updateDummyHandTool`, `HandToolHolder:writeStream`

## handTools/HandToolHolderActivatable.lua

`HandToolHolderActivatable.new`, `HandToolHolderActivatable:getDistance`, `HandToolHolderActivatable:getIsActivatable`, `HandToolHolderActivatable:run`

## handTools/HandToolLoadingData.lua

`HandToolLoadingData.new`, `HandToolLoadingData:load`, `HandToolLoadingData:setFilename`, `HandToolLoadingData:setIsRegistered`, `HandToolLoadingData:setOwnerFarmId`, `HandToolLoadingData:setSavegameData`, `HandToolLoadingData:setStoreItem`

## handTools/HandToolSystem.lua

`HandToolSystem.new`, `HandToolSystem:addHandTool`, `HandToolSystem:addHandToolHolder`, `HandToolSystem:addPendingHandToolLoad`, `HandToolSystem:canStartMission`, `HandToolSystem:getHandToolByUniqueId`, `HandToolSystem:getHandToolHolderByUniqueId`, `HandToolSystem:loadHandToolFinished`, `HandToolSystem:loadHandToolFromXML`, `HandToolSystem:removeHandTool`, `HandToolSystem:removeHandToolHolder`, `HandToolSystem:removePendingHandToolLoad`, `HandToolSystem:save`, `HandToolSystem:saveHandToolToXML`, `HandToolSystem:saveToXML`

## handTools/HandToolUtil.lua

`HandToolUtil.addHandToolHolderTarget`, `HandToolUtil.linkAndTransformRelativeToParent`

## handTools/events/ChainsawCutEvent.lua

`ChainsawCutEvent.emptyNew`, `ChainsawCutEvent.new`, `ChainsawCutEvent:readStream`, `ChainsawCutEvent:run`, `ChainsawCutEvent:writeStream`

## handTools/events/FlashlightToggleLightEvent.lua

`FlashlightToggleLightEvent.emptyNew`, `FlashlightToggleLightEvent.new`, `FlashlightToggleLightEvent.sendEvent`, `FlashlightToggleLightEvent:readStream`, `FlashlightToggleLightEvent:run`, `FlashlightToggleLightEvent:writeStream`

## handTools/events/HandToolSetHolderEvent.lua

`HandToolSetHolderEvent.emptyNew`, `HandToolSetHolderEvent.new`, `HandToolSetHolderEvent.sendEvent`, `HandToolSetHolderEvent:readStream`, `HandToolSetHolderEvent:run`, `HandToolSetHolderEvent:writeStream`

## handTools/events/HandsPickUpFailedEvent.lua

`HandsPickUpFailedEvent.emptyNew`, `HandsPickUpFailedEvent.new`, `HandsPickUpFailedEvent:readStream`, `HandsPickUpFailedEvent:run`, `HandsPickUpFailedEvent:writeStream`

## handTools/events/HandsPickUpObjectEvent.lua

`HandsPickUpObjectEvent.emptyNew`, `HandsPickUpObjectEvent.new`, `HandsPickUpObjectEvent.sendEvent`, `HandsPickUpObjectEvent:readStream`, `HandsPickUpObjectEvent:run`, `HandsPickUpObjectEvent:writeStream`

## handTools/events/HandsThrowObjectEvent.lua

`HandsThrowObjectEvent.emptyNew`, `HandsThrowObjectEvent:readStream`, `HandsThrowObjectEvent:run`, `HandsThrowObjectEvent:writeStream`

## handTools/specializations/HandToolChainsaw.lua

`HandToolChainsaw.prerequisitesPresent`, `HandToolChainsaw.registerEventListeners`, `HandToolChainsaw.registerFunctions`, `HandToolChainsaw.registerXMLPaths`, `HandToolChainsaw:beginCutting`, `HandToolChainsaw:beginDelimbing`, `HandToolChainsaw:calculateCutPlane`, `HandToolChainsaw:getChainSpeedFactor`, `HandToolChainsaw:onCutAction`, `HandToolChainsaw:onDelete`, `HandToolChainsaw:onDraw`, `HandToolChainsaw:onHeldEnd`, `HandToolChainsaw:onHeldStart`, `HandToolChainsaw:onLoad`, `HandToolChainsaw:onPostLoad`, `HandToolChainsaw:onReadUpdateStream`, `HandToolChainsaw:onRegisterActionEvents`, `HandToolChainsaw:onRingLoadFinished`, `HandToolChainsaw:onRollAction`, `HandToolChainsaw:onUpdate`, `HandToolChainsaw:onWriteUpdateStream`, `HandToolChainsaw:setCurrentCutState`, `HandToolChainsaw:stopCutting`, `HandToolChainsaw:stopDelimbing`, `HandToolChainsaw:testIfCutAllowed`, `HandToolChainsaw:testIfCutValid`, `HandToolChainsaw:testIfTooLow`, `HandToolChainsaw:updateCutting`, `HandToolChainsaw:updateCuttingAnimation`, `HandToolChainsaw:updateRingSelector`, `HandToolChainsaw:updateSplitPlane`

## handTools/specializations/HandToolFlashlight.lua

`HandToolFlashlight.prerequisitesPresent`, `HandToolFlashlight.registerEventListeners`, `HandToolFlashlight.registerFunctions`, `HandToolFlashlight.registerXMLPaths`, `HandToolFlashlight:onDelete`, `HandToolFlashlight:onHeldEnd`, `HandToolFlashlight:onLoad`, `HandToolFlashlight:onUpdate`, `HandToolFlashlight:setFlashlightIsActive`, `HandToolFlashlight:updateTransform`

## handTools/specializations/HandToolHPWLance.lua

`HandToolHPWLance.prerequisitesPresent`, `HandToolHPWLance.registerEventListeners`, `HandToolHPWLance.registerFunctions`, `HandToolHPWLance.registerOverwrittenFunctions`, `HandToolHPWLance.registerXMLPaths`, `HandToolHPWLance:getCanBeDropped`, `HandToolHPWLance:onDebugDraw`, `HandToolHPWLance:onDelete`, `HandToolHPWLance:onHeldEnd`, `HandToolHPWLance:onLanceCallback`, `HandToolHPWLance:onLoad`, `HandToolHPWLance:onReadUpdateStream`, `HandToolHPWLance:onRegisterActionEvents`, `HandToolHPWLance:onUpdate`, `HandToolHPWLance:onWashAction`, `HandToolHPWLance:onWriteUpdateStream`, `HandToolHPWLance:setIsActivated`

## handTools/specializations/HandToolHands.lua

`HandToolHands.calculateItemMass`, `HandToolHands.prerequisitesPresent`, `HandToolHands.registerEventListeners`, `HandToolHands.registerFunctions`, `HandToolHands.registerOverwrittenFunctions`, `HandToolHands.registerXMLPaths`, `HandToolHands:consoleCommandToggleSuperStrength`, `HandToolHands:createItemJoint`, `HandToolHands:dropHeldItem`, `HandToolHands:findFootballCallback`, `HandToolHands:getCanBeDropped`, `HandToolHands:getCanPickUpNode`, `HandToolHands:getHasJoint`, `HandToolHands:getIsAwaitingJointCreation`, `HandToolHands:getIsHoldingItem`, `HandToolHands:getIsThrowingItem`, `HandToolHands:getKinematicNode`, `HandToolHands:levelHeldItem`, `HandToolHands:onCarryingPlayerChanged`, `HandToolHands:onDebugDraw`, `HandToolHands:onDelete`, `HandToolHands:onDraw`, `HandToolHands:onHeldEnd`, `HandToolHands:onHeldItemJointBroken`, `HandToolHands:onHeldStart`, `HandToolHands:onKinematicHelperLoaded`, `HandToolHands:onLevelAction`, `HandToolHands:onLoad`, `HandToolHands:onPickUpAction`, `HandToolHands:onPitchAction`, `HandToolHands:onReadUpdateStream`, `HandToolHands:onRegisterActionEvents`, `HandToolHands:onThrowAction`, `HandToolHands:onUpdate`, `HandToolHands:onWriteUpdateStream`, `HandToolHands:onYawAction`, `HandToolHands:orientRotationNodeToItem`, `HandToolHands:pickUpTarget`, `HandToolHands:pickupFailed`, `HandToolHands:rotateHeldItem`, `HandToolHands:shootBall`, `HandToolHands:throwHeldItemWithForceScalar`, `HandToolHands:updateKinematicNode`

## handTools/specializations/HandToolHorseBrush.lua

`HandToolHorseBrush.getHusbandryAndClusterFromNode`, `HandToolHorseBrush.prerequisitesPresent`, `HandToolHorseBrush.registerEventListeners`, `HandToolHorseBrush.registerXMLPaths`, `HandToolHorseBrush:onBrushAction`, `HandToolHorseBrush:onDelete`, `HandToolHorseBrush:onDraw`, `HandToolHorseBrush:onHeldStart`, `HandToolHorseBrush:onLoad`, `HandToolHorseBrush:onRegisterActionEvents`, `HandToolHorseBrush:onUpdate`

## handTools/specializations/HandToolMotorized.lua

`HandToolMotorized.prerequisitesPresent`, `HandToolMotorized.registerEventListeners`, `HandToolMotorized.registerFunctions`, `HandToolMotorized.registerXMLPaths`, `HandToolMotorized:getCurrentLoad`, `HandToolMotorized:getCurrentRPM`, `HandToolMotorized:getMaxRPM`, `HandToolMotorized:getMinRPM`, `HandToolMotorized:getRPMGainPerSecond`, `HandToolMotorized:getRPMLossPerSecond`, `HandToolMotorized:getTargetRPM`, `HandToolMotorized:getTimeToReachRPM`, `HandToolMotorized:onDebugDraw`, `HandToolMotorized:onDelete`, `HandToolMotorized:onHeldEnd`, `HandToolMotorized:onHeldStart`, `HandToolMotorized:onLoad`, `HandToolMotorized:onReadUpdateStream`, `HandToolMotorized:onUpdate`, `HandToolMotorized:onWriteUpdateStream`, `HandToolMotorized:setCurrentLoad`, `HandToolMotorized:setCurrentRPM`, `HandToolMotorized:setRPMGainPerSecond`, `HandToolMotorized:setRPMLossPerSecond`, `HandToolMotorized:setTargetRPM`, `HandToolMotorized:setTargetRPMToIdle`, `HandToolMotorized:setTargetRPMToMax`, `HandToolMotorized:updateRPM`, `HandToolMotorized:updateSounds`, `HandToolMotorized:updateVibrations`

## handTools/specializations/HandToolSprayCan.lua

`HandToolSprayCan.prerequisitesPresent`, `HandToolSprayCan.registerEventListeners`, `HandToolSprayCan.registerFunctions`, `HandToolSprayCan.registerSavegameXMLPaths`, `HandToolSprayCan.registerXMLPaths`, `HandToolSprayCan:activateSpraying`, `HandToolSprayCan:changeTreeMarkerType`, `HandToolSprayCan:getIsSprayingAllowed`, `HandToolSprayCan:onDelete`, `HandToolSprayCan:onDraw`, `HandToolSprayCan:onHeldStart`, `HandToolSprayCan:onLoad`, `HandToolSprayCan:onPostLoad`, `HandToolSprayCan:onReadStream`, `HandToolSprayCan:onReadUpdateStream`, `HandToolSprayCan:onRegisterActionEvents`, `HandToolSprayCan:onUpdate`, `HandToolSprayCan:onWriteStream`, `HandToolSprayCan:onWriteUpdateStream`, `HandToolSprayCan:processDelayedMarker`, `HandToolSprayCan:saveToXMLFile`, `HandToolSprayCan:setIsSpraying`, `HandToolSprayCan:tryToAddTreeMarker`

## handTools/specializations/HandToolStorable.lua

`HandToolStorable.prerequisitesPresent`, `HandToolStorable.registerEventListeners`, `HandToolStorable.registerFunctions`, `HandToolStorable.registerXMLPaths`, `HandToolStorable:getHolsterNodeByType`, `HandToolStorable:onLoad`

## handTools/specializations/HandToolTethered.lua

`HandToolTethered.prerequisitesPresent`, `HandToolTethered.registerEventListeners`, `HandToolTethered.registerFunctions`, `HandToolTethered.registerOverwrittenFunctions`, `HandToolTethered.registerXMLPaths`, `HandToolTethered:onCarryingPlayerEnteredVehicle`, `HandToolTethered:onCarryingPlayerLeftGame`, `HandToolTethered:onDelete`, `HandToolTethered:onLoad`, `HandToolTethered:onPreUpdate`, `HandToolTethered:returnToHolder`, `HandToolTethered:setAttachedHolder`, `HandToolTethered:setHolder`, `HandToolTethered:showRangeWarning`
