# Functions – vehicles

Source: `github.com/MyGameSteamOfficial/fs25-lua-api` (commit 9478ee9, 2025-02-26 – older than the current patch). Extracted automatically: names, XML keys, types, defaults only – no code. Status 📖 (read from source, not verified in game).

## vehicles/AnimationValueBool.lua

`AnimationValueBool.new`, `AnimationValueBool:init`, `AnimationValueBool:load`, `AnimationValueBool:postInit`, `AnimationValueBool:reset`, `AnimationValueBool:update`

## vehicles/AnimationValueFloat.lua

`AnimationValueFloat.new`, `AnimationValueFloat:addCompareParameters`, `AnimationValueFloat:init`, `AnimationValueFloat:initValues`, `AnimationValueFloat:load`, `AnimationValueFloat:postInit`, `AnimationValueFloat:reset`, `AnimationValueFloat:setWarningInformation`, `AnimationValueFloat:update`

## vehicles/DashboardValueType.lua

`DashboardValueType.new`, `DashboardValueType:getFunctionValue`, `DashboardValueType:getInterpolationSpeed`, `DashboardValueType:getValue`, `DashboardValueType:loadFromXML`, `DashboardValueType:setAdditionalFunctions`, `DashboardValueType:setCenter`, `DashboardValueType:setFunction`, `DashboardValueType:setIdleValue`, `DashboardValueType:setInterpolationSpeed`, `DashboardValueType:setRange`, `DashboardValueType:setValue`, `DashboardValueType:setValueCompare`, `DashboardValueType:setValueFactor`, `DashboardValueType:setXMLKey`

## vehicles/LicensePlate.lua

`LicensePlate.new`, `LicensePlate.registerXMLPaths`, `LicensePlate:changeCharacter`, `LicensePlate:clone`, `LicensePlate:delete`, `LicensePlate:getColor`, `LicensePlate:getFontSize`, `LicensePlate:getFormattedString`, `LicensePlate:getRandomCharacters`, `LicensePlate:loadFromXML`, `LicensePlate:setColor`, `LicensePlate:setColorIndex`, `LicensePlate:setVariation`, `LicensePlate:updateData`, `LicensePlate:validateLicensePlateCharacters`

## vehicles/LicensePlateManager.lua

`LicensePlateManager.createLicensePlateXMLSchema`, `LicensePlateManager.loadLicensePlateDataFromXML`, `LicensePlateManager.new`, `LicensePlateManager.readLicensePlateData`, `LicensePlateManager.saveLicensePlateDataToXML`, `LicensePlateManager.writeLicensePlateData`, `LicensePlateManager:getAreLicensePlatesAvailable`, `LicensePlateManager:getAvailableColors`, `LicensePlateManager:getDefaultPlacementIndex`, `LicensePlateManager:getFont`, `LicensePlateManager:getLicensePlate`, `LicensePlateManager:getLicensePlateValues`, `LicensePlateManager:getRandomLicensePlateData`, `LicensePlateManager:initDataStructures`, `LicensePlateManager:licensePlateI3DFileLoaded`, `LicensePlateManager:loadLicensePlatesFromXML`, `LicensePlateManager:loadMapData`, `LicensePlateManager:unloadMapData`

## vehicles/Vehicle.lua

`Vehicle.actionEventToggleSelection`, `Vehicle.actionEventToggleSelectionReverse`, `Vehicle.calculateDailyUpkeep`, `Vehicle.calculateSellPrice`, `Vehicle.getSpecConfigValuesWeight`, `Vehicle.getSpecValueAdditionalWeight`, `Vehicle.getSpecValueCombinations`, `Vehicle.getSpecValueDailyUpkeep`, `Vehicle.getSpecValueOperatingTime`, `Vehicle.getSpecValueSlots`, `Vehicle.getSpecValueSpeedLimit`, `Vehicle.getSpecValueWeight`, `Vehicle.getSpecValueWorkingWidth`, `Vehicle.getSpecValueWorkingWidthConfig`, `Vehicle.init`, `Vehicle.loadSpecValueAdditionalWeight`, `Vehicle.loadSpecValueCombinations`, `Vehicle.loadSpecValueSpeedLimit`, `Vehicle.loadSpecValueWeight`, `Vehicle.loadSpecValueWorkingWidth`, `Vehicle.loadSpecValueWorkingWidthConfig`, `Vehicle.new`, `Vehicle.postInit`, `Vehicle.registerComponentXMLPaths`, `Vehicle.registerEvents`, `Vehicle.registerFunctions`, `Vehicle.registerInteractionFlag`, `Vehicle.registers`, `Vehicle:activate`, `Vehicle:addChildVehicles`, `Vehicle:addSubselection`, `Vehicle:addToPhysics`, `Vehicle:addVehicleToAIImplementList`, `Vehicle:clearDirtyMask`, `Vehicle:clearSubselections`, `Vehicle:createComponentJoint`, `Vehicle:createLoadingTask`, `Vehicle:createMapHotspot`, `Vehicle:dayChanged`, `Vehicle:deactivate`, `Vehicle:delete`, `Vehicle:deleteMapHotspot`, `Vehicle:doCheckSpeedLimit`, `Vehicle:doCollisionMaskCheck`, `Vehicle:draw`, `Vehicle:drawUIInfo`, `Vehicle:findRootVehicle`, `Vehicle:finishLoadingTask`, `Vehicle:getActionControllerDirection`, `Vehicle:getAdditionalComponentMass`, `Vehicle:getAdditionalSchemaText`, `Vehicle:getAreControlledActionsAccessible`, `Vehicle:getAreControlledActionsAllowed`, `Vehicle:getAreControlledActionsAvailable`, `Vehicle:getAvailableComponentMass`, `Vehicle:getBlockSelection`, `Vehicle:getBrand`, `Vehicle:getCanBeMounted`, `Vehicle:getCanBePickedUp`, `Vehicle:getCanBeReset`, `Vehicle:getCanBeSelected`, `Vehicle:getCanToggleSelectable`, `Vehicle:getChildVehicleHash`, `Vehicle:getChildVehicles`, `Vehicle:getComponentMass`, `Vehicle:getControlledActionIcons`, `Vehicle:getDailyUpkeep`, `Vehicle:getDeactivateOnLeave`, `Vehicle:getDefaultMass`, `Vehicle:getDistanceToNode`, `Vehicle:getFillLevelInformation`, `Vehicle:getFullName`, `Vehicle:getImageFilename`, `Vehicle:getInteractionHelp`, `Vehicle:getIsAIActive`, `Vehicle:getIsActive`, `Vehicle:getIsActiveForInput`, `Vehicle:getIsActiveForSound`, `Vehicle:getIsAutomaticShiftingAllowed`, `Vehicle:getIsInShowroom`, `Vehicle:getIsInUse`, `Vehicle:getIsLowered`, `Vehicle:getIsMapHotspotVisible`, `Vehicle:getIsNodeActive`, `Vehicle:getIsOnField`, `Vehicle:getIsOperating`, `Vehicle:getIsPowered`, `Vehicle:getIsReadyForAutomatedTrainTravel`, `Vehicle:getIsSelected`, `Vehicle:getIsSynchronized`, `Vehicle:getIsVehicleNode`, `Vehicle:getLastSpeed`, `Vehicle:getLimitedVehicleYPosition`, `Vehicle:getMapHotspot`, `Vehicle:getMaxComponentMassReached`, `Vehicle:getName`, `Vehicle:getNeedsSaving`, `Vehicle:getOperatingTime`, `Vehicle:getOverallCenterOfMass`, `Vehicle:getParentComponent`, `Vehicle:getPrice`, `Vehicle:getPropertyState`, `Vehicle:getRawSpeedLimit`, `Vehicle:getReloadXML`, `Vehicle:getRepaintPrice`, `Vehicle:getRepairPrice`, `Vehicle:getRequiresPower`, `Vehicle:getRootVehicle`, `Vehicle:getSelectedObject`, `Vehicle:getSelectedVehicle`, `Vehicle:getSellPrice`, `Vehicle:getShowInVehiclesOverview`, `Vehicle:getSpeedLimit`, `Vehicle:getTotalMass`, `Vehicle:getUniqueId`, `Vehicle:getUppercaseName`, `Vehicle:getUseTurnedOnSchema`, `Vehicle:getVehicleDamage`, `Vehicle:getVehicleWorldDirection`, `Vehicle:getVehicleWorldXRot`, `Vehicle:getWorkLoad`, `Vehicle:hasInputConflictWithSelection`, `Vehicle:i3dFileLoaded`, `Vehicle:interact`, `Vehicle:load`, `Vehicle:loadCallback`, `Vehicle:loadComponentFromXML`, `Vehicle:loadComponentJointFromXML`, `Vehicle:loadFinished`, `Vehicle:loadObjectChangeValuesFromXML`, `Vehicle:loadSchemaOverlay`, `Vehicle:loadSubSharedI3DFile`, `Vehicle:onFinishedLoading`, `Vehicle:onVehicleWakeUpCallback`, `Vehicle:onWaterRaycastCallback`, `Vehicle:periodChanged`, `Vehicle:playControlledActions`, `Vehicle:postReadStream`, `Vehicle:postWriteStream`, `Vehicle:raiseStateChange`, `Vehicle:readStream`, `Vehicle:readUpdateStream`, `Vehicle:register`, `Vehicle:registerActionEvents`, `Vehicle:registerSelectableObjects`, `Vehicle:removeActionEvent`, `Vehicle:removeActionEvents`, `Vehicle:removeFromPhysics`, `Vehicle:requestActionEventUpdate`, `Vehicle:saveStatsToXMLFile`, `Vehicle:saveToXMLFile`, `Vehicle:selectVehicle`, `Vehicle:setAbsolutePosition`, `Vehicle:setBroken`, `Vehicle:setComponentJointFrame`, `Vehicle:setComponentJointRotLimit`, `Vehicle:setComponentJointTransLimit`, `Vehicle:setConfigurations`, `Vehicle:setDefaultComponentPosition`, `Vehicle:setFilename`, `Vehicle:setLoadCallback`, `Vehicle:setLoadingState`, `Vehicle:setLoadingStep`, `Vehicle:setMassDirty`, `Vehicle:setObjectChangeValues`, `Vehicle:setOperatingTime`, `Vehicle:setOwnerFarmId`, `Vehicle:setRelativePosition`, `Vehicle:setSelectedObject`, `Vehicle:setSelectedVehicle`, `Vehicle:setType`, `Vehicle:setUniqueId`, `Vehicle:setVisibility`, `Vehicle:setWorldPosition`, `Vehicle:setWorldPositionQuaternion`, `Vehicle:showInfo`, `Vehicle:unselectVehicle`, `Vehicle:update`, `Vehicle:updateActionEvents`, `Vehicle:updateEnd`, `Vehicle:updateMapHotspot`, `Vehicle:updateMass`, `Vehicle:updateSelectableObjects`, `Vehicle:updateTick`, `Vehicle:updateVehicleChain`, `Vehicle:updateVehicleSpeed`, `Vehicle:updateWaterInfo`, `Vehicle:wakeUp`, `Vehicle:writeStream`, `Vehicle:writeUpdateStream`

## vehicles/VehicleActionController.lua

`VehicleActionController.new`, `VehicleActionController.registerXMLPaths`, `VehicleActionController:actionEvent`, `VehicleActionController:actionSequenceEvent`, `VehicleActionController:activate`, `VehicleActionController:addAction`, `VehicleActionController:continueActionSequence`, `VehicleActionController:deactivate`, `VehicleActionController:doAction`, `VehicleActionController:drawDebugRendering`, `VehicleActionController:getActionControllerDirection`, `VehicleActionController:getActionsByIndex`, `VehicleActionController:getAreControlledActionsAccessible`, `VehicleActionController:getAreControlledActionsAvailable`, `VehicleActionController:getControlledActionIcons`, `VehicleActionController:load`, `VehicleActionController:onAIEvent`, `VehicleActionController:playControlledActions`, `VehicleActionController:registerAction`, `VehicleActionController:registerActionEvents`, `VehicleActionController:removeAction`, `VehicleActionController:resetCurrentState`, `VehicleActionController:saveToXMLFile`, `VehicleActionController:startActionSequence`, `VehicleActionController:stopActionSequence`, `VehicleActionController:update`, `VehicleActionController:updateForAI`, `VehicleActionController:updateSortedActions`

## vehicles/VehicleActionControllerAction.lua

`VehicleActionControllerAction.new`, `VehicleActionControllerAction:actionEvent`, `VehicleActionControllerAction:addAIEventListener`, `VehicleActionControllerAction:doAction`, `VehicleActionControllerAction:getControlledActionIcons`, `VehicleActionControllerAction:getDebugText`, `VehicleActionControllerAction:getDoResetOnDeactivation`, `VehicleActionControllerAction:getIsFinished`, `VehicleActionControllerAction:getIsSaved`, `VehicleActionControllerAction:getLastDirection`, `VehicleActionControllerAction:getSourceVehicle`, `VehicleActionControllerAction:isAvailable`, `VehicleActionControllerAction:onAIEvent`, `VehicleActionControllerAction:registerActionEvents`, `VehicleActionControllerAction:remove`, `VehicleActionControllerAction:setActionIcons`, `VehicleActionControllerAction:setCallback`, `VehicleActionControllerAction:setDeactivateFunction`, `VehicleActionControllerAction:setFinishedFunctions`, `VehicleActionControllerAction:setIsAccessibleFunction`, `VehicleActionControllerAction:setIsAvailableFunction`, `VehicleActionControllerAction:setIsSaved`, `VehicleActionControllerAction:setResetOnDeactivation`, `VehicleActionControllerAction:update`, `VehicleActionControllerAction:updateForAI`, `VehicleActionControllerAction:updateParent`

## vehicles/VehicleAttachEvent.lua

`VehicleAttachEvent.emptyNew`, `VehicleAttachEvent.new`, `VehicleAttachEvent:readStream`, `VehicleAttachEvent:run`, `VehicleAttachEvent:writeStream`

## vehicles/VehicleAttachRequestEvent.lua

`VehicleAttachRequestEvent.emptyNew`, `VehicleAttachRequestEvent.new`, `VehicleAttachRequestEvent:readStream`, `VehicleAttachRequestEvent:run`, `VehicleAttachRequestEvent:writeStream`

## vehicles/VehicleBrokenEvent.lua

`VehicleBrokenEvent.emptyNew`, `VehicleBrokenEvent.new`, `VehicleBrokenEvent:readStream`, `VehicleBrokenEvent:run`, `VehicleBrokenEvent:writeStream`

## vehicles/VehicleBundleAttachEvent.lua

`VehicleBundleAttachEvent.emptyNew`, `VehicleBundleAttachEvent.new`, `VehicleBundleAttachEvent:readStream`, `VehicleBundleAttachEvent:run`, `VehicleBundleAttachEvent:writeStream`

## vehicles/VehicleCamera.lua

`VehicleCamera.consoleCommandCameraYDebug`, `VehicleCamera.consoleCommandLODDebug`, `VehicleCamera.new`, `VehicleCamera.registerCameraSavegameXMLPaths`, `VehicleCamera.registerCameraXMLPaths`, `VehicleCamera:actionEventLookLeftRight`, `VehicleCamera:actionEventLookUpDown`, `VehicleCamera:delete`, `VehicleCamera:getCollisionDistance`, `VehicleCamera:getTiltDirectionOffset`, `VehicleCamera:loadFromXML`, `VehicleCamera:onActivate`, `VehicleCamera:onActiveCameraSuspensionSettingChanged`, `VehicleCamera:onCameraCollisionDetectionSettingChanged`, `VehicleCamera:onDeactivate`, `VehicleCamera:onFovySettingChanged`, `VehicleCamera:onPostLoad`, `VehicleCamera:raycastCallback`, `VehicleCamera:resetCamera`, `VehicleCamera:saveToXMLFile`, `VehicleCamera:setCameraYDebugState`, `VehicleCamera:setLODDebugState`, `VehicleCamera:setSeparateCameraPose`, `VehicleCamera:touchEventLookLeftRight`, `VehicleCamera:touchEventLookUpDown`, `VehicleCamera:touchEventZoomInOut`, `VehicleCamera:update`, `VehicleCamera:updateRotateNodeRotation`, `VehicleCamera:zoomSmoothly`

## vehicles/VehicleCharacter.lua

`VehicleCharacter.new`, `VehicleCharacter.registerCharacterXMLPaths`, `VehicleCharacter:characterLoaded`, `VehicleCharacter:delete`, `VehicleCharacter:getAllowCharacterUpdate`, `VehicleCharacter:getIKChainTargets`, `VehicleCharacter:getParentComponent`, `VehicleCharacter:getPlayerStyle`, `VehicleCharacter:load`, `VehicleCharacter:loadCharacter`, `VehicleCharacter:setAllowCharacterUpdate`, `VehicleCharacter:setCharacterVisibility`, `VehicleCharacter:setDirty`, `VehicleCharacter:setIKChainPoseByTarget`, `VehicleCharacter:setIKChainTargets`, `VehicleCharacter:setSpineDirty`, `VehicleCharacter:unloadCharacter`, `VehicleCharacter:update`, `VehicleCharacter:updateIKChains`, `VehicleCharacter:updateVisibility`

## vehicles/VehicleDebug.lua

`VehicleDebug.consoleCommandAnalyze`, `VehicleDebug.consoleCommandAttacherJointConnections`, `VehicleDebug.consoleCommandCastShadow`, `VehicleDebug.consoleCommandCylinderedUpdate`, `VehicleDebug.consoleCommandDebugMaterial`, `VehicleDebug.consoleCommandDecalLayer`, `VehicleDebug.consoleCommandExportScenegraph`, `VehicleDebug.consoleCommandMergeGroupDebug`, `VehicleDebug.consoleCommandWetnessDebug`, `VehicleDebug.consoleCommandWheelDisplacement`, `VehicleDebug.consoleCommandWheelEffectsDebug`, `VehicleDebug.debugActionCallback`, `VehicleDebug.delete`, `VehicleDebug.drawAnimationDebug`, `VehicleDebug.drawBaseDebugRendering`, `VehicleDebug.drawDebug`, `VehicleDebug.drawDebugAIRendering`, `VehicleDebug.drawDebugAttacherJoints`, `VehicleDebug.drawDebugAttributeRendering`, `VehicleDebug.drawDebugRendering`, `VehicleDebug.drawDebugValues`, `VehicleDebug.drawDifferentialInfoRendering`, `VehicleDebug.drawMotorAccelerationGraph`, `VehicleDebug.drawMotorGraphs`, `VehicleDebug.drawMotorLoadGraph`, `VehicleDebug.drawMotorRPMGraph`, `VehicleDebug.drawSoundDebugValues`, `VehicleDebug.drawTransmissionDebug`, `VehicleDebug.drawTuningDebug`, `VehicleDebug.drawWheelInfoRendering`, `VehicleDebug.drawWheelSlipGraphs`, `VehicleDebug.moveLowerRotation`, `VehicleDebug.moveUpperRotation`, `VehicleDebug.registerActionEvents`, `VehicleDebug.setState`, `VehicleDebug.updateDebug`, `VehicleDebug.updateTuningDebugRendering`

## vehicles/VehicleDetachEvent.lua

`VehicleDetachEvent.emptyNew`, `VehicleDetachEvent.new`, `VehicleDetachEvent:readStream`, `VehicleDetachEvent:run`, `VehicleDetachEvent:writeStream`

## vehicles/VehicleEnterRequestEvent.lua

`VehicleEnterRequestEvent.emptyNew`, `VehicleEnterRequestEvent.new`, `VehicleEnterRequestEvent:readStream`, `VehicleEnterRequestEvent:run`, `VehicleEnterRequestEvent:writeStream`

## vehicles/VehicleEnterResponseEvent.lua

`VehicleEnterResponseEvent.emptyNew`, `VehicleEnterResponseEvent.new`, `VehicleEnterResponseEvent:readStream`, `VehicleEnterResponseEvent:run`, `VehicleEnterResponseEvent:writeStream`

## vehicles/VehicleLeaveEvent.lua

`VehicleLeaveEvent.emptyNew`, `VehicleLeaveEvent.new`, `VehicleLeaveEvent.sendEvent`, `VehicleLeaveEvent:readStream`, `VehicleLeaveEvent:run`, `VehicleLeaveEvent:writeStream`

## vehicles/VehicleLoadingData.lua

`VehicleLoadingData.new`, `VehicleLoadingData:applyPositionData`, `VehicleLoadingData:getConfigurations`, `VehicleLoadingData:getCustomParameter`, `VehicleLoadingData:load`, `VehicleLoadingData:setAddToPhysics`, `VehicleLoadingData:setBoughtConfigurations`, `VehicleLoadingData:setComponentPositionData`, `VehicleLoadingData:setConfigurationData`, `VehicleLoadingData:setConfigurations`, `VehicleLoadingData:setCustomParameter`, `VehicleLoadingData:setFilename`, `VehicleLoadingData:setForceServer`, `VehicleLoadingData:setIgnoreShopOffset`, `VehicleLoadingData:setIsRegistered`, `VehicleLoadingData:setIsSaved`, `VehicleLoadingData:setLoadingPlace`, `VehicleLoadingData:setOwnerFarmId`, `VehicleLoadingData:setPosition`, `VehicleLoadingData:setPropertyState`, `VehicleLoadingData:setRotation`, `VehicleLoadingData:setSaleItem`, `VehicleLoadingData:setSavegameData`, `VehicleLoadingData:setSpawnNode`, `VehicleLoadingData:setStoreItem`

## vehicles/VehicleLowerImplementEvent.lua

`VehicleLowerImplementEvent.emptyNew`, `VehicleLowerImplementEvent.new`, `VehicleLowerImplementEvent.sendEvent`, `VehicleLowerImplementEvent:readStream`, `VehicleLowerImplementEvent:run`, `VehicleLowerImplementEvent:writeStream`

## vehicles/VehicleMaterial.lua

`VehicleMaterial.new`, `VehicleMaterial.registerShortXMLPaths`, `VehicleMaterial.registerXMLPaths`, `VehicleMaterial:apply`, `VehicleMaterial:applyToMaterial`, `VehicleMaterial:applyToVehicle`, `VehicleMaterial:clone`, `VehicleMaterial:getBrightness`, `VehicleMaterial:getIsApplied`, `VehicleMaterial:loadFromXML`, `VehicleMaterial:loadShortFromXML`, `VehicleMaterial:setColor`, `VehicleMaterial:setTemplateName`

## vehicles/VehicleMaterialManager.lua

`VehicleMaterialManager.registerXMLPaths`, `VehicleMaterialManager:addModMaterialTemplatesToLoad`, `VehicleMaterialManager:getMaterialTemplateByName`, `VehicleMaterialManager:getMaterialTemplateColorAndTitleByName`, `VehicleMaterialManager:getMaterialTemplateColorByName`, `VehicleMaterialManager:getMaterialTemplateFinish`, `VehicleMaterialManager:getMaterialTemplateIndexByName`, `VehicleMaterialManager:getMaterialTemplateNameByIndex`, `VehicleMaterialManager:initDataStructures`, `VehicleMaterialManager:loadMapData`, `VehicleMaterialManager:loadMaterialTemplates`, `VehicleMaterialManager:loadMaterialTemplatesFromXML`

## vehicles/VehicleMotor.lua

`VehicleMotor.calculatePhysicalMaximumSpeed`, `VehicleMotor.new`, `VehicleMotor:applyTargetGear`, `VehicleMotor:calculatePhysicalMaximumBackwardSpeed`, `VehicleMotor:calculatePhysicalMaximumForwardSpeed`, `VehicleMotor:changeDirection`, `VehicleMotor:delete`, `VehicleMotor:findGearChangeTargetGearPrediction`, `VehicleMotor:getAccelerationLimit`, `VehicleMotor:getBestGear`, `VehicleMotor:getBestGearRatio`, `VehicleMotor:getBestStartGear`, `VehicleMotor:getBrakeForce`, `VehicleMotor:getCanMotorRun`, `VehicleMotor:getClutchPedal`, `VehicleMotor:getClutchRotSpeed`, `VehicleMotor:getCurMaxRpm`, `VehicleMotor:getDampingRateFullThrottle`, `VehicleMotor:getDampingRateZeroThrottleClutchDisengaged`, `VehicleMotor:getDampingRateZeroThrottleClutchEngaged`, `VehicleMotor:getDrivingDirection`, `VehicleMotor:getEqualizedMotorRpm`, `VehicleMotor:getGearGroupToDisplay`, `VehicleMotor:getGearInfoToDisplay`, `VehicleMotor:getGearRatio`, `VehicleMotor:getGearRatioMultiplier`, `VehicleMotor:getGearToDisplay`, `VehicleMotor:getIsGearChangeAllowed`, `VehicleMotor:getIsGearGroupChangeAllowed`, `VehicleMotor:getIsInNeutral`, `VehicleMotor:getLastModulatedMotorRpm`, `VehicleMotor:getLastMotorRpm`, `VehicleMotor:getLastRealMotorRpm`, `VehicleMotor:getManualClutchPedal`, `VehicleMotor:getMaxClutchTorque`, `VehicleMotor:getMaxRpm`, `VehicleMotor:getMaximumBackwardSpeed`, `VehicleMotor:getMaximumForwardSpeed`, `VehicleMotor:getMinMaxGearRatio`, `VehicleMotor:getMinRpm`, `VehicleMotor:getMotorAppliedTorque`, `VehicleMotor:getMotorAvailableTorque`, `VehicleMotor:getMotorExternalTorque`, `VehicleMotor:getMotorRotSpeed`, `VehicleMotor:getMotorRotationAccelerationLimit`, `VehicleMotor:getNonClampedMotorRpm`, `VehicleMotor:getPeakTorque`, `VehicleMotor:getPtoMotorRpmRatio`, `VehicleMotor:getRequiredMotorRpmRange`, `VehicleMotor:getRequiredRpmAtSpeedLimit`, `VehicleMotor:getRotInertia`, `VehicleMotor:getSmoothLoadPercentage`, `VehicleMotor:getSmoothedClutchPedal`, `VehicleMotor:getSpeedLimit`, `VehicleMotor:getStartInGearFactor`, `VehicleMotor:getTorque`, `VehicleMotor:getTorqueAndSpeedValues`, `VehicleMotor:getTorqueCurve`, `VehicleMotor:getTorqueCurveValue`, `VehicleMotor:getUseAutomaticGearShifting`, `VehicleMotor:getUseAutomaticGroupShifting`, `VehicleMotor:onManualClutchChanged`, `VehicleMotor:postLoad`, `VehicleMotor:readGearDataFromStream`, `VehicleMotor:selectGear`, `VehicleMotor:selectGroup`, `VehicleMotor:setAccelerationLimit`, `VehicleMotor:setAutoGearChangeTime`, `VehicleMotor:setDampingRateScale`, `VehicleMotor:setDirectionChange`, `VehicleMotor:setDirectionChangeMode`, `VehicleMotor:setEqualizedMotorRpm`, `VehicleMotor:setExternalTorqueVirtualMultiplicator`, `VehicleMotor:setGear`, `VehicleMotor:setGearChangeTime`, `VehicleMotor:setGearGroup`, `VehicleMotor:setGearGroups`, `VehicleMotor:setGearShiftMode`, `VehicleMotor:setLastRpm`, `VehicleMotor:setLowBrakeForce`, `VehicleMotor:setManualShift`, `VehicleMotor:setMotorRotationAccelerationLimit`, `VehicleMotor:setRotInertia`, `VehicleMotor:setRpmLimit`, `VehicleMotor:setSpeedLimit`, `VehicleMotor:setStartGearThreshold`, `VehicleMotor:setTransmissionDirection`, `VehicleMotor:shiftGear`, `VehicleMotor:shiftGroup`, `VehicleMotor:update`, `VehicleMotor:updateGear`, `VehicleMotor:updateSmoothLoadPercentage`, `VehicleMotor:updateStartGearValues`, `VehicleMotor:writeGearDataToStream`

## vehicles/VehicleSetIsReconfiguratingEvent.lua

`VehicleSetIsReconfiguratingEvent.emptyNew`, `VehicleSetIsReconfiguratingEvent.new`, `VehicleSetIsReconfiguratingEvent:readStream`, `VehicleSetIsReconfiguratingEvent:writeStream`

## vehicles/VehicleStateRecorder.lua

`VehicleStateRecorder.consoleCommand`, `VehicleStateRecorder.consoleCommandAnimation`, `VehicleStateRecorder.new`, `VehicleStateRecorder:finish`, `VehicleStateRecorder:recordNode`, `VehicleStateRecorder:recordVehicle`, `VehicleStateRecorder:update`

## vehicles/VehicleSystem.lua

`VehicleSystem.new`, `VehicleSystem:addEnterableVehicle`, `VehicleSystem:addInteractiveVehicle`, `VehicleSystem:addPendingVehicleLoad`, `VehicleSystem:addVehicle`, `VehicleSystem:canStartMission`, `VehicleSystem:consoleCommandAddDamageAmount`, `VehicleSystem:consoleCommandAddDirtAmount`, `VehicleSystem:consoleCommandAddPallet`, `VehicleSystem:consoleCommandAddWearAmount`, `VehicleSystem:consoleCommandAddWetnessAmount`, `VehicleSystem:consoleCommandExportVehicleSets`, `VehicleSystem:consoleCommandFillUnitAdd`, `VehicleSystem:consoleCommandLoadAllVehicles`, `VehicleSystem:consoleCommandLoadAllVehiclesNext`, `VehicleSystem:consoleCommandReloadVehicle`, `VehicleSystem:consoleCommandSetFuel`, `VehicleSystem:consoleCommandSetMotorTemperature`, `VehicleSystem:consoleCommandSetOperatingTime`, `VehicleSystem:consoleCommandShowVehicleDistance`, `VehicleSystem:consoleCommandVehicleRemoveAll`, `VehicleSystem:delete`, `VehicleSystem:deleteAll`, `VehicleSystem:draw`, `VehicleSystem:getNextEnterableVehicle`, `VehicleSystem:getVehicleByNodeId`, `VehicleSystem:getVehicleByUniqueId`, `VehicleSystem:load`, `VehicleSystem:loadFromXMLFile`, `VehicleSystem:loadVehicleFinished`, `VehicleSystem:loadVehicleFromXML`, `VehicleSystem:onVehicleBuyEvent`, `VehicleSystem:registerInputAttacherJoint`, `VehicleSystem:removeEnterableVehicle`, `VehicleSystem:removeInputAttacherJoint`, `VehicleSystem:removeInteractiveVehicle`, `VehicleSystem:removePendingVehicleLoad`, `VehicleSystem:removeVehicle`, `VehicleSystem:save`, `VehicleSystem:saveToXML`, `VehicleSystem:saveVehicleToXML`, `VehicleSystem:setEnteredVehicle`, `VehicleSystem:update`, `VehicleSystem:updateInputAttacherJoint`

## vehicles/VehicleTeleportEvent.lua

`VehicleTeleportEvent.emptyNew`, `VehicleTeleportEvent:run`

## vehicles/WheelsUtil.lua

`WheelsUtil.computeDifferentialRotSpeedNonMotor`, `WheelsUtil.getGroundType`, `WheelsUtil.getSmoothedAcceleratorAndBrakePedals`, `WheelsUtil.getTireFriction`, `WheelsUtil.getTireType`, `WheelsUtil.getTireTypeName`, `WheelsUtil.registerTireType`, `WheelsUtil.unregisterTireType`, `WheelsUtil.updateWheelsPhysics`

## vehicles/WorkAreaTypeManager.lua

`WorkAreaTypeManager.new`, `WorkAreaTypeManager:addWorkAreaType`, `WorkAreaTypeManager:getConfigurationDescByName`, `WorkAreaTypeManager:getWorkAreaTypeByIndex`, `WorkAreaTypeManager:getWorkAreaTypeIndexByName`, `WorkAreaTypeManager:getWorkAreaTypeIsAIArea`, `WorkAreaTypeManager:getWorkAreaTypeIsSteeringAssistArea`, `WorkAreaTypeManager:getWorkAreaTypeNameByIndex`, `WorkAreaTypeManager:initDataStructures`

## vehicles/ai/AICollisionTriggerHandler.lua

`AICollisionTriggerHandler.new`, `AICollisionTriggerHandler:generateTriggerPath`, `AICollisionTriggerHandler:init`, `AICollisionTriggerHandler:onVehicleCollisionDistanceCallback`, `AICollisionTriggerHandler:setCollisionDistanceCallback`, `AICollisionTriggerHandler:setIsBlockedCallback`, `AICollisionTriggerHandler:setStaticCollisionCallback`, `AICollisionTriggerHandler:update`, `AICollisionTriggerHandler:updateBlockedCallback`, `AICollisionTriggerHandler:updateStaticCollisionCallback`

## vehicles/ai/AIDriveStrategy.lua

`AIDriveStrategy.new`, `AIDriveStrategy:debugPrint`, `AIDriveStrategy:delete`, `AIDriveStrategy:getDriveData`, `AIDriveStrategy:setAIVehicle`, `AIDriveStrategy:update`, `AIDriveStrategy:updateDriving`

## vehicles/ai/AIDriveStrategyBaler.lua

`AIDriveStrategyBaler.new`, `AIDriveStrategyBaler:getDriveData`, `AIDriveStrategyBaler:setAIVehicle`, `AIDriveStrategyBaler:update`, `AIDriveStrategyBaler:updateDriving`

## vehicles/ai/AIDriveStrategyCombine.lua

`AIDriveStrategyCombine.new`, `AIDriveStrategyCombine:getDriveData`, `AIDriveStrategyCombine:setAIVehicle`, `AIDriveStrategyCombine:update`, `AIDriveStrategyCombine:updateDriving`

## vehicles/ai/AIDriveStrategyConveyor.lua

`AIDriveStrategyConveyor.new`, `AIDriveStrategyConveyor:getDriveData`, `AIDriveStrategyConveyor:setAIVehicle`, `AIDriveStrategyConveyor:update`

## vehicles/ai/AIDriveStrategyFieldCourse.lua

`AIDriveStrategyFieldCourse.loadFromXML`, `AIDriveStrategyFieldCourse.new`, `AIDriveStrategyFieldCourse.registerSavegameXMLPaths`, `AIDriveStrategyFieldCourse.saveToXML`, `AIDriveStrategyFieldCourse:delete`, `AIDriveStrategyFieldCourse:fillReconstructionData`, `AIDriveStrategyFieldCourse:getDriveData`, `AIDriveStrategyFieldCourse:onFieldCourseLoadedCallback`, `AIDriveStrategyFieldCourse:setAIVehicle`, `AIDriveStrategyFieldCourse:update`

## vehicles/ai/AIDriveStrategyStonePicker.lua

`AIDriveStrategyStonePicker.new`, `AIDriveStrategyStonePicker:getDriveData`, `AIDriveStrategyStonePicker:setAIVehicle`, `AIDriveStrategyStonePicker:update`, `AIDriveStrategyStonePicker:updateDriving`

## vehicles/ai/AIVehicleUtil.lua

`AIVehicleUtil.driveAlongCurvature`, `AIVehicleUtil.driveInDirection`, `AIVehicleUtil.driveToPoint`, `AIVehicleUtil.getAIAreaOfVehicle`, `AIVehicleUtil.getAIDensityHeightArea`, `AIVehicleUtil.getAIFruitArea`, `AIVehicleUtil.getAIToolReverserDirectionNode`, `AIVehicleUtil.getAreaDimensions`, `AIVehicleUtil.getAttachedImplementsAllowTurnBackward`, `AIVehicleUtil.getAttachedImplementsBlockTurnBackward`, `AIVehicleUtil.getAttachedImplementsMaxTurnRadius`, `AIVehicleUtil.getAverageDriveDirection`, `AIVehicleUtil.getDriveDirection`, `AIVehicleUtil.getIsAreaOwned`, `AIVehicleUtil.getMaxToolRadius`, `AIVehicleUtil.getValidityOfTurnDirections`, `AIVehicleUtil.updateInvertLeftRightMarkers`

## vehicles/ai/settings/AIUserSetting.lua

`AIUserSetting.new`

## vehicles/configurations/VehicleConfigurationItem.lua

`VehicleConfigurationItem.new`, `VehicleConfigurationItem.postLoad`, `VehicleConfigurationItem.registerSavegameXMLPaths`, `VehicleConfigurationItem.registerXMLPaths`, `VehicleConfigurationItem:getNeedsRenaming`, `VehicleConfigurationItem:loadFromSavegameXMLFile`, `VehicleConfigurationItem:loadFromXML`, `VehicleConfigurationItem:onLoad`, `VehicleConfigurationItem:onLoadFinished`, `VehicleConfigurationItem:onPostLoad`, `VehicleConfigurationItem:onPreLoad`, `VehicleConfigurationItem:onPrePostLoad`, `VehicleConfigurationItem:onSizeLoad`, `VehicleConfigurationItem:saveToXMLFile`, `VehicleConfigurationItem:setIndex`

## vehicles/configurations/VehicleConfigurationItemColor.lua

`VehicleConfigurationItemColor.getFallbackConfigId`, `VehicleConfigurationItemColor.getMaterialByColorConfiguration`, `VehicleConfigurationItemColor.new`, `VehicleConfigurationItemColor.postLoad`, `VehicleConfigurationItemColor.registerSavegameXMLPaths`, `VehicleConfigurationItemColor.registerXMLPaths`, `VehicleConfigurationItemColor:getColor`, `VehicleConfigurationItemColor:getColorAndMaterialFromVehicle`, `VehicleConfigurationItemColor:getMaterial`, `VehicleConfigurationItemColor:hasDataChanged`, `VehicleConfigurationItemColor:loadFromSavegameXMLFile`, `VehicleConfigurationItemColor:loadFromXML`, `VehicleConfigurationItemColor:onPostLoad`, `VehicleConfigurationItemColor:onSizeLoad`, `VehicleConfigurationItemColor:readFromStream`, `VehicleConfigurationItemColor:saveToXMLFile`, `VehicleConfigurationItemColor:updateMaterial`, `VehicleConfigurationItemColor:writeToStream`

## vehicles/configurations/VehicleConfigurationItemMotor.lua

`VehicleConfigurationItemMotor.new`, `VehicleConfigurationItemMotor.registerXMLPaths`, `VehicleConfigurationItemMotor:loadFromXML`

## vehicles/configurations/VehicleConfigurationItemTreeSapling.lua

`VehicleConfigurationItemTreeSapling.generateConfigurations`, `VehicleConfigurationItemTreeSapling.new`, `VehicleConfigurationItemTreeSapling.postLoad`, `VehicleConfigurationItemTreeSapling.registerXMLPaths`, `VehicleConfigurationItemTreeSapling:loadFromXML`

## vehicles/configurations/VehicleConfigurationItemVehicleType.lua

`VehicleConfigurationItemVehicleType.new`, `VehicleConfigurationItemVehicleType.registerXMLPaths`, `VehicleConfigurationItemVehicleType:loadFromXML`

## vehicles/configurations/VehicleConfigurationItemWheel.lua

`VehicleConfigurationItemWheel.generateConfigurations`, `VehicleConfigurationItemWheel.getFallbackConfigId`, `VehicleConfigurationItemWheel.new`, `VehicleConfigurationItemWheel.postLoad`, `VehicleConfigurationItemWheel.registerXMLPaths`, `VehicleConfigurationItemWheel:applyGeneratedConfiguration`, `VehicleConfigurationItemWheel:applyObjectChanges`, `VehicleConfigurationItemWheel:getNeedsRenaming`, `VehicleConfigurationItemWheel:loadFromXML`, `VehicleConfigurationItemWheel:onSizeLoad`

## vehicles/configurations/data/VehicleConfigurationDataAdditionalMass.lua

`VehicleConfigurationDataAdditionalMass.onLoad`, `VehicleConfigurationDataAdditionalMass.registerXMLPaths`

## vehicles/configurations/data/VehicleConfigurationDataAttacherJoint.lua

`VehicleConfigurationDataAttacherJoint.onPrePostLoad`, `VehicleConfigurationDataAttacherJoint.registerXMLPaths`

## vehicles/configurations/data/VehicleConfigurationDataDependentConfig.lua

`VehicleConfigurationDataDependentConfig.loadConfigItem`, `VehicleConfigurationDataDependentConfig.registerXMLPaths`

## vehicles/configurations/data/VehicleConfigurationDataMaterial.lua

`VehicleConfigurationDataMaterial.onLoadFinished`, `VehicleConfigurationDataMaterial.registerXMLPaths`

## vehicles/configurations/data/VehicleConfigurationDataObjectChange.lua

`VehicleConfigurationDataObjectChange.loadConfigItem`, `VehicleConfigurationDataObjectChange.onLoad`, `VehicleConfigurationDataObjectChange.onPostLoad`, `VehicleConfigurationDataObjectChange.registerXMLPaths`

## vehicles/configurations/data/VehicleConfigurationDataSize.lua

`VehicleConfigurationDataSize.onSizeLoad`, `VehicleConfigurationDataSize.registerXMLPaths`

## vehicles/wheels/Wheel.lua

`Wheel.new`, `Wheel.registerXMLPaths`, `Wheel:addToPhysics`, `Wheel:clientUpdate`, `Wheel:delete`, `Wheel:finalize`, `Wheel:getMass`, `Wheel:loadFromXML`, `Wheel:onPostDetach`, `Wheel:onPreAttach`, `Wheel:onUpdateEnd`, `Wheel:postLoad`, `Wheel:postUpdate`, `Wheel:readStream`, `Wheel:removeFromPhysics`, `Wheel:setBrakePedal`, `Wheel:setIsCareWheel`, `Wheel:setSteeringValues`, `Wheel:update`, `Wheel:updatePhysics`, `Wheel:updateTick`, `Wheel:writeStream`

## vehicles/wheels/WheelChock.lua

`WheelChock.new`, `WheelChock.registerXMLPaths`, `WheelChock:delete`, `WheelChock:loadFromXML`, `WheelChock:onI3DLoaded`, `WheelChock:update`

## vehicles/wheels/WheelDebug.lua

`WheelDebug.getDebugValueHeader`, `WheelDebug.new`, `WheelDebug:delete`, `WheelDebug:drawSlipGraphs`, `WheelDebug:fillDebugValues`

## vehicles/wheels/WheelDestruction.lua

`WheelDestruction.new`, `WheelDestruction.registerXMLPaths`, `WheelDestruction:destroyFruitArea`, `WheelDestruction:destroySnowArea`, `WheelDestruction:drawAreas`, `WheelDestruction:finalize`, `WheelDestruction:loadFromXML`, `WheelDestruction:setIsCareWheel`, `WheelDestruction:smoothHeightAtPosition`, `WheelDestruction:update`

## vehicles/wheels/WheelEffects.lua

`WheelEffects.new`, `WheelEffects.registerXMLPaths`, `WheelEffects:addWaterEffectsToPhysicsData`, `WheelEffects:delete`, `WheelEffects:finalize`, `WheelEffects:getDriveGroundParticleSystemsScale`, `WheelEffects:loadFromXML`, `WheelEffects:onUpdateEnd`, `WheelEffects:onWheelParticleSystemI3DLoaded`, `WheelEffects:onWheelWaterEffectI3DLoaded`, `WheelEffects:removeWaterEffects`, `WheelEffects:update`, `WheelEffects:updateTick`

## vehicles/wheels/WheelManager.lua

`WheelManager.new`, `WheelManager:getWheelRadiusAndWidthFromDimension`, `WheelManager:getWheelRadiusAndWidthFromFilename`, `WheelManager:initDataStructures`, `WheelManager:loadMapData`, `WheelManager:loadWheelsFromXML`

## vehicles/wheels/WheelPhysics.lua

`WheelPhysics.new`, `WheelPhysics.registerAdditionalWheelXMLPaths`, `WheelPhysics.registerXMLPaths`, `WheelPhysics:addToPhysics`, `WheelPhysics:clientUpdate`, `WheelPhysics:finalize`, `WheelPhysics:getGroundAttributes`, `WheelPhysics:getIsOnField`, `WheelPhysics:getSurfaceSoundAttributes`, `WheelPhysics:getVisualInfo`, `WheelPhysics:loadAdditionalWheel`, `WheelPhysics:loadFromXML`, `WheelPhysics:postUpdate`, `WheelPhysics:readStream`, `WheelPhysics:removeFromPhysics`, `WheelPhysics:serverUpdate`, `WheelPhysics:setDisplacementAllowed`, `WheelPhysics:setSteeringValues`, `WheelPhysics:setTorqueDirection`, `WheelPhysics:setWheelShapeWidth`, `WheelPhysics:updateBase`, `WheelPhysics:updateContact`, `WheelPhysics:updateFriction`, `WheelPhysics:updateNetInfo`, `WheelPhysics:updatePhysics`, `WheelPhysics:updateShapePosition`, `WheelPhysics:updateSink`, `WheelPhysics:updateSteeringAngle`, `WheelPhysics:updateTick`, `WheelPhysics:updateTireFriction`, `WheelPhysics:updateXDriveSpeed`, `WheelPhysics:waterRaycastCallback`, `WheelPhysics:writeStream`

## vehicles/wheels/WheelSteering.lua

`WheelSteering.new`, `WheelSteering.registerXMLPaths`, `WheelSteering:loadFromXML`, `WheelSteering:setSteeringValues`, `WheelSteering:update`

## vehicles/wheels/WheelVisual.lua

`WheelVisual.new`, `WheelVisual.registerXMLPaths`, `WheelVisual:addShallowWaterObstacle`, `WheelVisual:delete`, `WheelVisual:getAdditionalMass`, `WheelVisual:getIsTireInverted`, `WheelVisual:getShallowWaterParameters`, `WheelVisual:getWidthAndOffset`, `WheelVisual:loadFromXML`, `WheelVisual:postLoad`, `WheelVisual:removeShallowWaterObstacle`, `WheelVisual:setConnectedWheel`, `WheelVisual:update`

## vehicles/wheels/WheelVisualPart.lua

`WheelVisualPart.new`, `WheelVisualPart.registerXMLPaths`, `WheelVisualPart:delete`, `WheelVisualPart:getDefaultMaterialSlotName`, `WheelVisualPart:getHasShaderParameterRec`, `WheelVisualPart:getMass`, `WheelVisualPart:loadFromXML`, `WheelVisualPart:onPartI3DLoaded`, `WheelVisualPart:postLoad`, `WheelVisualPart:setNode`, `WheelVisualPart:setShaderParameterRec`

## vehicles/wheels/WheelVisualPartConnector.lua

`WheelVisualPartConnector.new`, `WheelVisualPartConnector.registerXMLPaths`, `WheelVisualPartConnector:loadFromXML`, `WheelVisualPartConnector:setNode`

## vehicles/wheels/WheelVisualPartTire.lua

`WheelVisualPartTire.new`, `WheelVisualPartTire.registerXMLPaths`, `WheelVisualPartTire:loadFromXML`, `WheelVisualPartTire:setNode`, `WheelVisualPartTire:update`

## vehicles/wheels/WheelXMLObject.lua

`WheelXMLObject.new`, `WheelXMLObject:cacheWheelMass`, `WheelXMLObject:checkDeprecatedXMLElements`, `WheelXMLObject:getLocalValue`, `WheelXMLObject:getValue`, `WheelXMLObject:getValueAlternative`, `WheelXMLObject:loadExternalXMLFile`, `WheelXMLObject:setExternalFilename`, `WheelXMLObject:setXMLLoadKey`, `WheelXMLObject:xmlWarning`
