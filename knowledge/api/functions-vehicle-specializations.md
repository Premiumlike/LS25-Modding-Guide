# Functions – vehicle-specializations

Source: `github.com/MyGameSteamOfficial/fs25-lua-api` (commit 9478ee9, 2025-02-26 – older than the current patch). Extracted automatically: names, XML keys, types, defaults only – no code. Status 📖 (read from source, not verified in game).

## vehicles/specializations/AIAutomaticSteering.lua

`AIAutomaticSteering.actionEventSteering`, `AIAutomaticSteering.actionEventSteeringLines`, `AIAutomaticSteering.initSpecialization`, `AIAutomaticSteering.prerequisitesPresent`, `AIAutomaticSteering.registerEventListeners`, `AIAutomaticSteering.registerEvents`, `AIAutomaticSteering.registerFunctions`, `AIAutomaticSteering.registerOverwrittenFunctions`, `AIAutomaticSteering.updateActionEvents`, `AIAutomaticSteering:generateSteeringFieldCourse`, `AIAutomaticSteering:getAIAutomaticSteeringLookAheadDistance`, `AIAutomaticSteering:getAIAutomaticSteeringState`, `AIAutomaticSteering:getAttacherToolWorkingWidth`, `AIAutomaticSteering:getIsAIAutomaticSteeringAllowed`, `AIAutomaticSteering:getIsAutomaticSteeringAllowed`, `AIAutomaticSteering:getIsSideOffsetReversed`, `AIAutomaticSteering:onAIAutomaticSteeringLineEnd`, `AIAutomaticSteering:onAIModeChanged`, `AIAutomaticSteering:onAIModeSettingsChanged`, `AIAutomaticSteering:onActivate`, `AIAutomaticSteering:onDeactivate`, `AIAutomaticSteering:onDelete`, `AIAutomaticSteering:onLoad`, `AIAutomaticSteering:onPostLoad`, `AIAutomaticSteering:onReadStream`, `AIAutomaticSteering:onReadUpdateStream`, `AIAutomaticSteering:onRegisterActionEvents`, `AIAutomaticSteering:onRegisterDashboardValueTypes`, `AIAutomaticSteering:onStateChange`, `AIAutomaticSteering:onUpdate`, `AIAutomaticSteering:onUpdateTick`, `AIAutomaticSteering:onWriteStream`, `AIAutomaticSteering:onWriteUpdateStream`, `AIAutomaticSteering:saveToXMLFile`, `AIAutomaticSteering:setAIAutomaticSteeringCourse`, `AIAutomaticSteering:setAIAutomaticSteeringEnabled`, `AIAutomaticSteering:setSteeringInput`, `AIAutomaticSteering:updateVehiclePhysics`

## vehicles/specializations/AIConveyorBelt.lua

`AIConveyorBelt.actionEventChangeAngle`, `AIConveyorBelt.initSpecialization`, `AIConveyorBelt.prerequisitesPresent`, `AIConveyorBelt.registerEventListeners`, `AIConveyorBelt.registerFunctions`, `AIConveyorBelt.registerOverwrittenFunctions`, `AIConveyorBelt:getAINeedsTrafficCollisionBox`, `AIConveyorBelt:getCanBeSelected`, `AIConveyorBelt:getCanStartAIVehicle`, `AIConveyorBelt:getCanStartFieldWork`, `AIConveyorBelt:getDirectionAndSpeedToTargetAngle`, `AIConveyorBelt:getHasStartableAIJob`, `AIConveyorBelt:getStartableAIJob`, `AIConveyorBelt:onAIFieldWorkerStart`, `AIConveyorBelt:onLoad`, `AIConveyorBelt:onPostLoad`, `AIConveyorBelt:onReadStream`, `AIConveyorBelt:onRegisterActionEvents`, `AIConveyorBelt:onUpdate`, `AIConveyorBelt:onUpdateTick`, `AIConveyorBelt:onWriteStream`, `AIConveyorBelt:saveToXMLFile`, `AIConveyorBelt:setAIConveyorBeltAngle`

## vehicles/specializations/AIDischargeable.lua

`AIDischargeable:getDischargeNodeAutomaticDischarge`, `AIDischargeable:onDischargeStateChanged`

## vehicles/specializations/AIDrivable.lua

`AIDrivable.initSpecialization`, `AIDrivable.postInitSpecialization`, `AIDrivable.prerequisitesPresent`, `AIDrivable.registerAgentXMLPaths`, `AIDrivable.registerEventListeners`, `AIDrivable.registerEvents`, `AIDrivable.registerFunctions`, `AIDrivable.registerOverwrittenFunctions`, `AIDrivable:addAIAgentAttachment`, `AIDrivable:consoleCommandMove`, `AIDrivable:consoleCommandSetTurnRadius`, `AIDrivable:createAgent`, `AIDrivable:deleteAgent`, `AIDrivable:drawDebugAIAgent`, `AIDrivable:getAIAgentMaxBrakeAcceleration`, `AIDrivable:getAIAgentSize`, `AIDrivable:getAIAllowsBackwards`, `AIDrivable:getAIRootNode`, `AIDrivable:getAIRootNodeBoundingBox`, `AIDrivable:getAIRootNodeMaxZOffset`, `AIDrivable:getAITurningRadius`, `AIDrivable:getCanStartAIVehicle`, `AIDrivable:getIsAIPreparingToDrive`, `AIDrivable:getIsAIReadyToDrive`, `AIDrivable:loadAgentInfoFromXML`, `AIDrivable:onCruiseControlSpeedChanged`, `AIDrivable:onEnterVehicle`, `AIDrivable:onLeaveVehicle`, `AIDrivable:onLoad`, `AIDrivable:onPostLoad`, `AIDrivable:onUpdate`, `AIDrivable:prepareForAIDriving`, `AIDrivable:reachedAITarget`, `AIDrivable:setAIRootNodeDirty`, `AIDrivable:setAITarget`, `AIDrivable:startNewAIAgentAttachmentChain`, `AIDrivable:unsetAITarget`, `AIDrivable:updateAIAgentAttachmentOffsetData`, `AIDrivable:updateAIAgentAttachments`, `AIDrivable:updateAIAgentPoseData`

## vehicles/specializations/AIFieldWorker.lua

`AIFieldWorker.prerequisitesPresent`, `AIFieldWorker:aiContinue`, `AIFieldWorker:onReadStream`, `AIFieldWorker:onWriteStream`, `AIFieldWorker:saveToXMLFile`, `AIFieldWorker:updateAIFieldWorker`, `AIFieldWorker:updateAIFieldWorkerDriveStrategies`

## vehicles/specializations/AIImplement.lua

`AIImplement.initSpecialization`, `AIImplement.prerequisitesPresent`, `AIImplement.registerAICollisionTriggerXMLPaths`, `AIImplement.registerAIImplementBaseXMLPaths`, `AIImplement.registerAIImplementXMLPaths`, `AIImplement.registerEventListeners`, `AIImplement.registerEvents`, `AIImplement.registerFunctions`, `AIImplement.registerOverwrittenFunctions`, `AIImplement:addAIDensityHeightTypeRequirement`, `AIImplement:addAIFruitProhibitions`, `AIImplement:addAIFruitRequirement`, `AIImplement:addAIGroundTypeRequirements`, `AIImplement:addAITerrainDetailProhibitedRange`, `AIImplement:addAITerrainDetailRequiredRange`, `AIImplement:addVehicleToAIImplementList`, `AIImplement:aiImplementEndLine`, `AIImplement:aiImplementStartLine`, `AIImplement:calcAIMarkerAttacherJointOffset`, `AIImplement:checkMovingPartDirtyUpdateNode`, `AIImplement:clearAIDensityHeightTypeRequirements`, `AIImplement:clearAIFruitProhibitions`, `AIImplement:clearAIFruitRequirements`, `AIImplement:clearAITerrainDetailProhibitedRange`, `AIImplement:clearAITerrainDetailRequiredRange`, `AIImplement:compareFieldCropsQuery`, `AIImplement:createFieldCropsQuery`, `AIImplement:getAIAllowTurnBackward`, `AIImplement:getAIAreaOverlap`, `AIImplement:getAIBlockTurnBackward`, `AIImplement:getAIDensityHeightTypeRequirements`, `AIImplement:getAIFruitProhibitions`, `AIImplement:getAIFruitRequirements`, `AIImplement:getAIHasNoFullCoverageArea`, `AIImplement:getAIImplementCollisionTrigger`, `AIImplement:getAIImplementCollisionTriggers`, `AIImplement:getAIImplementSideOffset`, `AIImplement:getAIImplementUseVineSegment`, `AIImplement:getAIInvertMarkersOnTurn`, `AIImplement:getAIIsVineyardTool`, `AIImplement:getAILookAheadSize`, `AIImplement:getAILowerIfAnyIsLowered`, `AIImplement:getAIMarkerAttacherJointOffset`, `AIImplement:getAIMarkers`, `AIImplement:getAIMinTurningRadius`, `AIImplement:getAINeedsLowering`, `AIImplement:getAINeedsRootAlignment`, `AIImplement:getAISizeMarkers`, `AIImplement:getAITerrainDetailProhibitedRange`, `AIImplement:getAITerrainDetailRequiredRange`, `AIImplement:getAIToolReverserDirectionNode`, `AIImplement:getAITurnRadiusLimitation`, `AIImplement:getAllowTireTracks`, `AIImplement:getCanAIImplementContinueWork`, `AIImplement:getCanImplementBeUsedForAI`, `AIImplement:getCustomAIImplementBaseSetup`, `AIImplement:getDoConsumePtoPower`, `AIImplement:getFieldCropsQuery`, `AIImplement:getImplementAllowAutomaticSteering`, `AIImplement:getIsAIImplementInLine`, `AIImplement:loadAICollisionTriggerFromXML`, `AIImplement:loadAIImplementBaseSetupFromXML`, `AIImplement:onAIFieldCourseSettingsInitialized`, `AIImplement:onLoad`, `AIImplement:onPostLoad`, `AIImplement:setAIDensityHeightTypeRequirements`, `AIImplement:setAIFruitProhibitions`, `AIImplement:setAIFruitRequirements`, `AIImplement:setAIImplementVariableSideOffset`, `AIImplement:setAIMarkersInverted`, `AIImplement:updateAIMarkerWidth`, `AIImplement:updateFieldCropsQuery`

## vehicles/specializations/AIJobVehicle.lua

`AIJobVehicle.initSpecialization`, `AIJobVehicle.prerequisitesPresent`, `AIJobVehicle.registerEventListeners`, `AIJobVehicle.registerEvents`, `AIJobVehicle.registerFunctions`, `AIJobVehicle.registerOverwrittenFunctions`, `AIJobVehicle:getCanStartAIVehicle`, `AIJobVehicle:getCanToggleAIVehicle`, `AIJobVehicle:getDeactivateLightsOnLeave`, `AIJobVehicle:getIsAIActive`, `AIJobVehicle:getIsAIJobSupported`, `AIJobVehicle:getIsActive`, `AIJobVehicle:getIsInUse`, `AIJobVehicle:getShowAIToggleActionEvent`, `AIJobVehicle:onAIModeChanged`, `AIJobVehicle:onLoad`, `AIJobVehicle:onReadStream`, `AIJobVehicle:onWriteStream`, `AIJobVehicle:toggleAIVehicle`

## vehicles/specializations/AIModeSelection.lua

`AIModeSelection.actionEventToggleAIState`, `AIModeSelection.initSpecialization`, `AIModeSelection.prerequisitesPresent`, `AIModeSelection.readAIModeSettingsFromStream`, `AIModeSelection.registerEventListeners`, `AIModeSelection.registerEvents`, `AIModeSelection.registerFunctions`, `AIModeSelection.registerOverwrittenFunctions`, `AIModeSelection:aiModeSettingsChanged`, `AIModeSelection:applyReadAIModeSettingsFromStream`, `AIModeSelection:getAIModeFieldCourseSettings`, `AIModeSelection:getAIModeSelection`, `AIModeSelection:initializeLoadedAIModeUserSettings`, `AIModeSelection:onDraw`, `AIModeSelection:onLoad`, `AIModeSelection:onReadStream`, `AIModeSelection:onRegisterActionEvents`, `AIModeSelection:onStateChange`, `AIModeSelection:onUpdateTick`, `AIModeSelection:onWriteStream`, `AIModeSelection:saveToXMLFile`, `AIModeSelection:setAIModeFieldCourseSettings`, `AIModeSelection:setAIModeSelection`, `AIModeSelection:writeAIModeSettingsToStream`

## vehicles/specializations/AIVehicle.lua

`AIVehicle.initSpecialization`, `AIVehicle.prerequisitesPresent`, `AIVehicle.registerAgentAttachmentPaths`, `AIVehicle.registerEventListeners`, `AIVehicle.registerEvents`, `AIVehicle.registerFunctions`, `AIVehicle.registerOverwrittenFunctions`, `AIVehicle:collectAIAgentAttachments`, `AIVehicle:drawAIAgentAttachments`, `AIVehicle:getIsAIPreparingToDrive`, `AIVehicle:getIsAIReadyToDrive`, `AIVehicle:loadAIAgentAttachmentsFromXML`, `AIVehicle:onLoad`, `AIVehicle:onPostLoad`, `AIVehicle:raiseAIEvent`, `AIVehicle:registerAIAgentAttachment`, `AIVehicle:safeRaiseAIEvent`, `AIVehicle:validateAIAgentAttachments`

## vehicles/specializations/AIVehicleObstacle.lua

`AIVehicleObstacle.prerequisitesPresent`, `AIVehicleObstacle.registerEventListeners`

## vehicles/specializations/AdditionalToolConnections.lua

`AdditionalToolConnections.initSpecialization`, `AdditionalToolConnections.prerequisitesPresent`, `AdditionalToolConnections.registerEventListeners`, `AdditionalToolConnections.registerFunctions`, `AdditionalToolConnections.registerOverwrittenFunctions`, `AdditionalToolConnections:loadAttacherJointFromXML`, `AdditionalToolConnections:onPostAttach`, `AdditionalToolConnections:onPostLoad`, `AdditionalToolConnections:onPreDetach`

## vehicles/specializations/AnimatedVehicle.lua

`AnimatedVehicle.animPartSorter`, `AnimatedVehicle.animPartSorterReverse`, `AnimatedVehicle.findCurrentPartIndex`, `AnimatedVehicle.getDurationToEndOfPart`, `AnimatedVehicle.getMovedLimitedValue`, `AnimatedVehicle.getNextPartIsPlaying`, `AnimatedVehicle.initSpecialization`, `AnimatedVehicle.initializeAnimationPartAttribute`, `AnimatedVehicle.prerequisitesPresent`, `AnimatedVehicle.registerAnimationXMLPaths`, `AnimatedVehicle.registerEventListeners`, `AnimatedVehicle.registerEvents`, `AnimatedVehicle.registerFunctions`, `AnimatedVehicle.registerOverwrittenFunctions`, `AnimatedVehicle.setMovedLimitedValues3`, `AnimatedVehicle.setMovedLimitedValues4`, `AnimatedVehicle.setMovedLimitedValuesN`, `AnimatedVehicle.updateAnimation`, `AnimatedVehicle.updateAnimationByName`, `AnimatedVehicle.updateAnimationCurrentTime`, `AnimatedVehicle.updateAnimations`, `AnimatedVehicle:getAnimationByName`, `AnimatedVehicle:getAnimationDuration`, `AnimatedVehicle:getAnimationExists`, `AnimatedVehicle:getAnimationSpeed`, `AnimatedVehicle:getAnimationTime`, `AnimatedVehicle:getIsAnimationPlaying`, `AnimatedVehicle:getIsMovingPartActive`, `AnimatedVehicle:getIsMovingToolActive`, `AnimatedVehicle:getIsSpeedRotatingPartActive`, `AnimatedVehicle:getIsWorkAreaActive`, `AnimatedVehicle:getNumOfActiveAnimations`, `AnimatedVehicle:getRealAnimationTime`, `AnimatedVehicle:initializeAnimationPart`, `AnimatedVehicle:initializeAnimationParts`, `AnimatedVehicle:loadAnimation`, `AnimatedVehicle:loadAnimationPart`, `AnimatedVehicle:loadMovingPartFromXML`, `AnimatedVehicle:loadMovingToolFromXML`, `AnimatedVehicle:loadSpeedRotatingPartFromXML`, `AnimatedVehicle:loadStaticAnimationPart`, `AnimatedVehicle:loadStaticAnimationPartValues`, `AnimatedVehicle:loadWorkAreaFromXML`, `AnimatedVehicle:onDelete`, `AnimatedVehicle:onLoad`, `AnimatedVehicle:onPostLoad`, `AnimatedVehicle:onPreLoad`, `AnimatedVehicle:onRegisterAnimationValueTypes`, `AnimatedVehicle:onUpdate`, `AnimatedVehicle:playAnimation`, `AnimatedVehicle:postInitializeAnimationPart`, `AnimatedVehicle:registerAnimationValueType`, `AnimatedVehicle:resetAnimationPartValues`, `AnimatedVehicle:resetAnimationValues`, `AnimatedVehicle:setAnimationSpeed`, `AnimatedVehicle:setAnimationStopTime`, `AnimatedVehicle:setAnimationTime`, `AnimatedVehicle:setRealAnimationTime`, `AnimatedVehicle:stopAnimation`, `AnimatedVehicle:updateAnimationPart`

## vehicles/specializations/ArticulatedAxis.lua

`ArticulatedAxis.initSpecialization`, `ArticulatedAxis.prerequisitesPresent`, `ArticulatedAxis.registerEventListeners`, `ArticulatedAxis.registerOverwrittenFunctions`, `ArticulatedAxis:getSteeringRotTimeByCurvature`, `ArticulatedAxis:getTurningRadiusByRotTime`, `ArticulatedAxis:onDeactivate`, `ArticulatedAxis:onDelete`, `ArticulatedAxis:onLoad`, `ArticulatedAxis:onPostLoad`, `ArticulatedAxis:onUpdate`

## vehicles/specializations/Attachable.lua

`Attachable.initSpecialization`, `Attachable.prerequisitesPresent`, `Attachable.registerEventListeners`, `Attachable.registerEvents`, `Attachable.registerFunctions`, `Attachable.registerInputAttacherJointXMLPaths`, `Attachable.registerOverwrittenFunctions`, `Attachable.registerSupportXMLPaths`, `Attachable:actionControllerLowerImplementEvent`, `Attachable:addToPhysics`, `Attachable:attachableAddToolCameras`, `Attachable:attachableRemoveToolCameras`, `Attachable:findRootVehicle`, `Attachable:getActiveFarm`, `Attachable:getActiveInputAttacherJoint`, `Attachable:getActiveInputAttacherJointDescIndex`, `Attachable:getAllowMultipleAttachments`, `Attachable:getAllowsLowering`, `Attachable:getAreControlledActionsAllowed`, `Attachable:getAttachbleAirConsumerUsage`, `Attachable:getAttacherVehicle`, `Attachable:getBlockFoliageDestruction`, `Attachable:getBrakeForce`, `Attachable:getCanAIImplementContinueWork`, `Attachable:getCanBeReset`, `Attachable:getCanBeSelected`, `Attachable:getCanToggleTurnedOn`, `Attachable:getConnectionHoseConfigIndex`, `Attachable:getDeactivateOnLeave`, `Attachable:getInputAttacherJointByJointDescIndex`, `Attachable:getInputAttacherJointIndexByNode`, `Attachable:getInputAttacherJoints`, `Attachable:getIsActive`, `Attachable:getIsAdditionalAttachment`, `Attachable:getIsAttachedTo`, `Attachable:getIsAttacherJointHeightNodeActive`, `Attachable:getIsDashboardGroupActive`, `Attachable:getIsFoldAllowed`, `Attachable:getIsImplementChainLowered`, `Attachable:getIsInUse`, `Attachable:getIsInWorkPosition`, `Attachable:getIsInputAttacherActive`, `Attachable:getIsLightActive`, `Attachable:getIsLowered`, `Attachable:getIsMapHotspotVisible`, `Attachable:getIsOperating`, `Attachable:getIsPowered`, `Attachable:getIsReadyToFinishDetachProcess`, `Attachable:getIsSteeringAxleAllowed`, `Attachable:getIsSupportAnimationAllowed`, `Attachable:getIsSupportVehicle`, `Attachable:getLoweringActionEventState`, `Attachable:getOwnerConnection`, `Attachable:getPowerTakeOffConfigIndex`, `Attachable:getShowAttachableMapHotspot`, `Attachable:getSteeringAxleBaseVehicle`, `Attachable:getUpdatePriority`, `Attachable:isAttachAllowed`, `Attachable:isDetachAllowed`, `Attachable:loadAdditionalLightAttributesFromXML`, `Attachable:loadAttacherJointHeightNode`, `Attachable:loadDashboardGroupFromXML`, `Attachable:loadInputAttacherJoint`, `Attachable:loadSteeringAngleNodeFromXML`, `Attachable:loadSteeringAxleFromXML`, `Attachable:loadSupportAnimationFromXML`, `Attachable:mountDynamic`, `Attachable:onBottomArmBallsI3DLoaded`, `Attachable:onDeactivate`, `Attachable:onDelete`, `Attachable:onFoldStateChanged`, `Attachable:onLoad`, `Attachable:onLoadFinished`, `Attachable:onPostLoad`, `Attachable:onPreDelete`, `Attachable:onPreInitComponentPlacement`, `Attachable:onReadStream`, `Attachable:onRegisterAnimationValueTypes`, `Attachable:onRootVehicleChanged`, `Attachable:onSelect`, `Attachable:onStateChange`, `Attachable:onUnselect`, `Attachable:onUpdate`, `Attachable:onUpdateInterpolation`, `Attachable:onUpdateTick`, `Attachable:onWriteStream`, `Attachable:postAttach`, `Attachable:postDetach`, `Attachable:preAttach`, `Attachable:preDetach`, `Attachable:registerLoweringActionEvent`, `Attachable:removeFromPhysics`, `Attachable:resolveMultipleAttachments`, `Attachable:saveToXMLFile`, `Attachable:setIsAdditionalAttachment`, `Attachable:setIsSupportVehicle`, `Attachable:setLowered`, `Attachable:setLoweredAll`, `Attachable:setToolBottomArmWidthByIndex`, `Attachable:setWorldPositionQuaternion`, `Attachable:startDetachProcess`, `Attachable:updateInputAttacherJointGraphics`, `Attachable:updateSteeringAngleNode`

## vehicles/specializations/AttacherJointControl.lua

`AttacherJointControl.actionEventAttacherJointControl`, `AttacherJointControl.actionEventAttacherJointControlSetPoint`, `AttacherJointControl.initSpecialization`, `AttacherJointControl.prerequisitesPresent`, `AttacherJointControl.registerEventListeners`, `AttacherJointControl.registerFunctions`, `AttacherJointControl.registerOverwrittenFunctions`, `AttacherJointControl:controlAttacherJoint`, `AttacherJointControl:controlAttacherJointHeight`, `AttacherJointControl:controlAttacherJointTilt`, `AttacherJointControl:getCanBeSelected`, `AttacherJointControl:getControlAttacherJointDirection`, `AttacherJointControl:getIsAttacherJointControlDampingAllowed`, `AttacherJointControl:getLoweringActionEventState`, `AttacherJointControl:loadInputAttacherJoint`, `AttacherJointControl:onDelete`, `AttacherJointControl:onLoad`, `AttacherJointControl:onPostAttach`, `AttacherJointControl:onPreDetach`, `AttacherJointControl:onReadStream`, `AttacherJointControl:onReadUpdateStream`, `AttacherJointControl:onRegisterActionEvents`, `AttacherJointControl:onUpdate`, `AttacherJointControl:onWriteStream`, `AttacherJointControl:onWriteUpdateStream`, `AttacherJointControl:registerLoweringActionEvent`

## vehicles/specializations/AttacherJoints.lua

`AttacherJoints.actionEventAttach`, `AttacherJoints.actionEventDetach`, `AttacherJoints.actionEventLowerAllImplements`, `AttacherJoints.actionEventLowerImplement`, `AttacherJoints.consoleCommandBottomArmWidth`, `AttacherJoints.findVehicleInAttachRange`, `AttacherJoints.getAttacherJointCompatibility`, `AttacherJoints.getClosestLowerLinkCategoryIndex`, `AttacherJoints.initSpecialization`, `AttacherJoints.prerequisitesPresent`, `AttacherJoints.registerAttacherJointXMLPaths`, `AttacherJoints.registerEventListeners`, `AttacherJoints.registerEvents`, `AttacherJoints.registerFunctions`, `AttacherJoints.registerJointType`, `AttacherJoints.registerOverwrittenFunctions`, `AttacherJoints.updateActionEvents`, `AttacherJoints.updateAttacherJointLimits`, `AttacherJoints.updateAttacherJointRotationLimit`, `AttacherJoints.updateAttacherJointTranslationLimit`, `AttacherJoints.updateRequiredTopLightsState`, `AttacherJoints.updateVehiclesInAttachRange`, `AttacherJoints:activateAttachments`, `AttacherJoints:addChildVehicles`, `AttacherJoints:addToPhysics`, `AttacherJoints:addVehicleToAIImplementList`, `AttacherJoints:additionalAttachmentLoaded`, `AttacherJoints:attachAdditionalAttachment`, `AttacherJoints:attachImplementFromInfo`, `AttacherJoints:attachableAddToolCameras`, `AttacherJoints:attachableRemoveToolCameras`, `AttacherJoints:calculateAttacherJointMoveUpperLowerAlpha`, `AttacherJoints:callFunctionOnAllImplements`, `AttacherJoints:collectAIAgentAttachments`, `AttacherJoints:createAttachmentJoint`, `AttacherJoints:deactivateAttachments`, `AttacherJoints:deactivateAttachmentsLights`, `AttacherJoints:detachAdditionalAttachment`, `AttacherJoints:detachAttachedImplement`, `AttacherJoints:detachImplement`, `AttacherJoints:detachImplementByObject`, `AttacherJoints:detachingIsPossible`, `AttacherJoints:doGroundHeightNodeCheck`, `AttacherJoints:finishGroundHeightNodeCheck`, `AttacherJoints:getAdditionalComponentMass`, `AttacherJoints:getAirConsumerUsage`, `AttacherJoints:getAreControlledActionsAllowed`, `AttacherJoints:getAttachedImplements`, `AttacherJoints:getAttacherJointByJointDescIndex`, `AttacherJoints:getAttacherJointDescFromObject`, `AttacherJoints:getAttacherJointIndexByNode`, `AttacherJoints:getAttacherJointIndexFromImplementIndex`, `AttacherJoints:getAttacherJointIndexFromObject`, `AttacherJoints:getAttacherJoints`, `AttacherJoints:getCanSteerAttachable`, `AttacherJoints:getCanToggleAttach`, `AttacherJoints:getConnectionHoseConfigIndex`, `AttacherJoints:getDirectionSnapAngle`, `AttacherJoints:getFillLevelInformation`, `AttacherJoints:getImplementByJointDescIndex`, `AttacherJoints:getImplementByObject`, `AttacherJoints:getImplementFromAttacherJointIndex`, `AttacherJoints:getImplementIndexByJointDescIndex`, `AttacherJoints:getImplementIndexByObject`, `AttacherJoints:getIsAttacherJointHeightNodeActive`, `AttacherJoints:getIsAttachingAllowed`, `AttacherJoints:getIsAutomaticShiftingAllowed`, `AttacherJoints:getIsDashboardGroupActive`, `AttacherJoints:getIsFoldAllowed`, `AttacherJoints:getIsHardAttachAllowed`, `AttacherJoints:getIsReadyForAutomatedTrainTravel`, `AttacherJoints:getIsWheelFoliageDestructionAllowed`, `AttacherJoints:getJointMoveDown`, `AttacherJoints:getObjectFromImplementIndex`, `AttacherJoints:getPowerTakeOffConfigIndex`, `AttacherJoints:getRequiresPower`, `AttacherJoints:getSelectedImplement`, `AttacherJoints:getShowAttachControlBarAction`, `AttacherJoints:getTotalMass`, `AttacherJoints:groundHeightNodeCheckCallback`, `AttacherJoints:handleLowerImplementByAttacherJointIndex`, `AttacherJoints:handleLowerImplementEvent`, `AttacherJoints:hardAttachImplement`, `AttacherJoints:hardDetachImplement`, `AttacherJoints:isDetachAllowed`, `AttacherJoints:loadAttacherJointFromXML`, `AttacherJoints:loadAttacherJointHeightNode`, `AttacherJoints:loadAttachmentsFinished`, `AttacherJoints:loadDashboardGroupFromXML`, `AttacherJoints:onActivate`, `AttacherJoints:onAttacherJointsVehicleLoaded`, `AttacherJoints:onBeaconLightsVisibilityChanged`, `AttacherJoints:onBottomArmToolbarI3DLoaded`, `AttacherJoints:onBrake`, `AttacherJoints:onBrakeLightsVisibilityChanged`, `AttacherJoints:onDeactivate`, `AttacherJoints:onDelete`, `AttacherJoints:onLeaveVehicle`, `AttacherJoints:onLightsTypesMaskChanged`, `AttacherJoints:onLoad`, `AttacherJoints:onLoadFinished`, `AttacherJoints:onPostLoad`, `AttacherJoints:onPreDelete`, `AttacherJoints:onPreLoad`, `AttacherJoints:onReadStream`, `AttacherJoints:onRegisterActionEvents`, `AttacherJoints:onReverseDirectionChanged`, `AttacherJoints:onReverseLightsVisibilityChanged`, `AttacherJoints:onStateChange`, `AttacherJoints:onTurnLightStateChanged`, `AttacherJoints:onTurnedOff`, `AttacherJoints:onTurnedOn`, `AttacherJoints:onUpdate`, `AttacherJoints:onUpdateEnd`, `AttacherJoints:onUpdateInterpolation`, `AttacherJoints:onUpdateTick`, `AttacherJoints:onWriteStream`, `AttacherJoints:playAttachSound`, `AttacherJoints:playDetachSound`, `AttacherJoints:postAttachImplement`, `AttacherJoints:raiseActive`, `AttacherJoints:registerActionEvents`, `AttacherJoints:registerSelectableObjects`, `AttacherJoints:registerSelfLoweringActionEvent`, `AttacherJoints:removeActionEvents`, `AttacherJoints:removeFromPhysics`, `AttacherJoints:saveToXMLFile`, `AttacherJoints:setAIVehicleObstacleStateDirty`, `AttacherJoints:setAttacherJointBottomArmWidth`, `AttacherJoints:setJointMoveDown`, `AttacherJoints:setSelectedImplementByObject`, `AttacherJoints:startAttacherJointCombo`, `AttacherJoints:updateAttacherJointGraphics`, `AttacherJoints:updateAttacherJointRotation`, `AttacherJoints:updateAttacherJointRotationNodes`, `AttacherJoints:updateAttacherJointSettingsByObject`

## vehicles/specializations/AttacherJointsCompControl.lua

`AttacherJointsCompControl.initSpecialization`, `AttacherJointsCompControl.prerequisitesPresent`, `AttacherJointsCompControl.registerEventListeners`, `AttacherJointsCompControl.registerFunctions`, `AttacherJointsCompControl.registerOverwrittenFunctions`, `AttacherJointsCompControl:addDependentComponentJointData`, `AttacherJointsCompControl:addToPhysics`, `AttacherJointsCompControl:loadAttacherJointFromXML`, `AttacherJointsCompControl:onPreLoad`, `AttacherJointsCompControl:onStateChange`, `AttacherJointsCompControl:setDependentComponentJointBaseFactors`, `AttacherJointsCompControl:updateDebugValues`, `AttacherJointsCompControl:updateDependentComponentJointValues`

## vehicles/specializations/AutoLoadFork.lua

`AutoLoadFork.actionControllerEvent`, `AutoLoadFork.actionEventUnloadFork`, `AutoLoadFork.initSpecialization`, `AutoLoadFork.onDeleteMountedObject`, `AutoLoadFork.prerequisitesPresent`, `AutoLoadFork.registerEventListeners`, `AutoLoadFork.registerFunctions`, `AutoLoadFork.registerOverwrittenFunctions`, `AutoLoadFork:addToPhysics`, `AutoLoadFork:onAutoLoadForkTriggerCallback`, `AutoLoadFork:onDelete`, `AutoLoadFork:onLoad`, `AutoLoadFork:onPostLoad`, `AutoLoadFork:onRegisterActionEvents`, `AutoLoadFork:onRootVehicleChanged`, `AutoLoadFork:removeFromPhysics`, `AutoLoadFork:saveToXMLFile`

## vehicles/specializations/AutoLoadForwarder.lua

`AutoLoadForwarder.actionControllerEvent`, `AutoLoadForwarder.initSpecialization`, `AutoLoadForwarder.prerequisitesPresent`, `AutoLoadForwarder.registerEventListeners`, `AutoLoadForwarder.registerEvents`, `AutoLoadForwarder.registerFunctions`, `AutoLoadForwarder.registerOverwrittenFunctions`, `AutoLoadForwarder:addToPhysics`, `AutoLoadForwarder:addTreeToLoadPlaces`, `AutoLoadForwarder:getAreControlledActionsAllowed`, `AutoLoadForwarder:mountTreeToCrane`, `AutoLoadForwarder:onDelete`, `AutoLoadForwarder:onLoad`, `AutoLoadForwarder:onPostLoad`, `AutoLoadForwarder:onRootVehicleChanged`, `AutoLoadForwarder:onUpdate`, `AutoLoadForwarder:removeMountedObject`, `AutoLoadForwarder:saveToXMLFile`, `AutoLoadForwarder:sortLoadedTreeObjects`

## vehicles/specializations/AutoLoadable.lua

`AutoLoadable.prerequisitesPresent`, `AutoLoadable.registerEventListeners`, `AutoLoadable.registerFunctions`, `AutoLoadable:autoLoad`, `AutoLoadable:getAutoLoadBoundingBox`, `AutoLoadable:getAutoLoadIsAllowed`, `AutoLoadable:getAutoLoadIsSupported`, `AutoLoadable:getAutoLoadSize`, `AutoLoadable:onLoad`

## vehicles/specializations/AutoLoader.lua

`AutoLoader.actionControllerEvent`, `AutoLoader.initSpecialization`, `AutoLoader.onDeletePendingObject`, `AutoLoader.prerequisitesPresent`, `AutoLoader.registerEventListeners`, `AutoLoader.registerFunctions`, `AutoLoader.registerOverwrittenFunctions`, `AutoLoader:addToPhysics`, `AutoLoader:autoLoaderOverlapCallback`, `AutoLoader:autoLoaderPickupTriggerCallback`, `AutoLoader:getDynamicMountTimeToMount`, `AutoLoader:getIsAutoLoadingAllowed`, `AutoLoader:getIsValidAutoLoaderObject`, `AutoLoader:onDelete`, `AutoLoader:onDraw`, `AutoLoader:onLoad`, `AutoLoader:onRootVehicleChanged`, `AutoLoader:onUpdate`, `AutoLoader:removeFromPhysics`, `AutoLoader:saveToXMLFile`

## vehicles/specializations/AutoLoaderBales.lua

`AutoLoaderBales.initSpecialization`, `AutoLoaderBales.onBaleDeleted`, `AutoLoaderBales.onDeleteAutoLoaderBalesObject`, `AutoLoaderBales.prerequisitesPresent`, `AutoLoaderBales.registerEventListeners`, `AutoLoaderBales.registerFunctions`, `AutoLoaderBales.registerOverwrittenFunctions`, `AutoLoaderBales:autoLoaderBalesTriggerCallback`, `AutoLoaderBales:doAutoLoadBale`, `AutoLoaderBales:getAutoLoadBaleTypeFromBale`, `AutoLoaderBales:getIsBaleAutoLoadable`, `AutoLoaderBales:onDelete`, `AutoLoaderBales:onLoad`, `AutoLoaderBales:onLoadFinished`, `AutoLoaderBales:onUpdate`, `AutoLoaderBales:saveToXMLFile`

## vehicles/specializations/AutomaticArmControlForwarder.lua

`AutomaticArmControlForwarder.actionEvent`, `AutomaticArmControlForwarder.calculateMovingToolTargetMove`, `AutomaticArmControlForwarder.drawDebugCircleRange`, `AutomaticArmControlForwarder.initSpecialization`, `AutomaticArmControlForwarder.movingToolXAlignment`, `AutomaticArmControlForwarder.prerequisitesPresent`, `AutomaticArmControlForwarder.registerEventListeners`, `AutomaticArmControlForwarder.registerFunctions`, `AutomaticArmControlForwarder.registerOverwrittenFunctions`, `AutomaticArmControlForwarder.registerXMLPaths`, `AutomaticArmControlForwarder.updateActionEvents`, `AutomaticArmControlForwarder:doTreeArmAlignment`, `AutomaticArmControlForwarder:getAutomaticAlignmentAvailableTargetTree`, `AutomaticArmControlForwarder:getAutomaticAlignmentCurrentTarget`, `AutomaticArmControlForwarder:getAutomaticAlignmentTargetTree`, `AutomaticArmControlForwarder:getBestTreeToAutoAlign`, `AutomaticArmControlForwarder:getIsAutoTreeAlignmentAllowed`, `AutomaticArmControlForwarder:getIsAutomaticAlignmentActive`, `AutomaticArmControlForwarder:getIsAutomaticAlignmentFinished`, `AutomaticArmControlForwarder:onAutoLoadForwaderMountedTree`, `AutomaticArmControlForwarder:onDelete`, `AutomaticArmControlForwarder:onLoad`, `AutomaticArmControlForwarder:onPostLoad`, `AutomaticArmControlForwarder:onReadUpdateStream`, `AutomaticArmControlForwarder:onRegisterActionEvents`, `AutomaticArmControlForwarder:onTreeAutoTriggerCallback`, `AutomaticArmControlForwarder:onUpdate`, `AutomaticArmControlForwarder:onWriteUpdateStream`, `AutomaticArmControlForwarder:resetAutomaticAlignment`, `AutomaticArmControlForwarder:setTreeArmAlignmentInput`

## vehicles/specializations/AutomaticArmControlHarvester.lua

`AutomaticArmControlHarvester.actionControllerEvent`, `AutomaticArmControlHarvester.actionEvent`, `AutomaticArmControlHarvester.calculateMovingToolTargetMove`, `AutomaticArmControlHarvester.drawDebugCircleRange`, `AutomaticArmControlHarvester.initSpecialization`, `AutomaticArmControlHarvester.prepareAlignment`, `AutomaticArmControlHarvester.prerequisitesPresent`, `AutomaticArmControlHarvester.registerEventListeners`, `AutomaticArmControlHarvester.registerFunctions`, `AutomaticArmControlHarvester.registerOverwrittenFunctions`, `AutomaticArmControlHarvester.registerXMLPaths`, `AutomaticArmControlHarvester.updateActionEvents`, `AutomaticArmControlHarvester:doTreeArmAlignment`, `AutomaticArmControlHarvester:getAutoAlignHasValidTree`, `AutomaticArmControlHarvester:getAutoAlignTreeMarkerState`, `AutomaticArmControlHarvester:getAutomaticAlignmentCurrentTarget`, `AutomaticArmControlHarvester:getAutomaticAlignmentInvalidTreeReason`, `AutomaticArmControlHarvester:getBestTreeToAutoAlign`, `AutomaticArmControlHarvester:getIsAutoTreeAlignmentAllowed`, `AutomaticArmControlHarvester:getIsAutomaticAlignmentActive`, `AutomaticArmControlHarvester:getSupportsAutoTreeAlignment`, `AutomaticArmControlHarvester:getTreeAutomaticOverwrites`, `AutomaticArmControlHarvester:onDelete`, `AutomaticArmControlHarvester:onLoad`, `AutomaticArmControlHarvester:onPostLoad`, `AutomaticArmControlHarvester:onReadUpdateStream`, `AutomaticArmControlHarvester:onRegisterActionEvents`, `AutomaticArmControlHarvester:onRootVehicleChanged`, `AutomaticArmControlHarvester:onTreeAutoOverlapCallback`, `AutomaticArmControlHarvester:onUpdate`, `AutomaticArmControlHarvester:onWriteUpdateStream`, `AutomaticArmControlHarvester:setTreeArmAlignmentInput`

## vehicles/specializations/BaleCounter.lua

`BaleCounter.actionEventResetCounter`, `BaleCounter.externalActionEventRegister`, `BaleCounter.externalActionEventUpdate`, `BaleCounter.initSpecialization`, `BaleCounter.prerequisitesPresent`, `BaleCounter.registerEventListeners`, `BaleCounter.registerFunctions`, `BaleCounter.registerOverwrittenFunctions`, `BaleCounter:doBaleCounterReset`, `BaleCounter:dropBale`, `BaleCounter:onLoad`, `BaleCounter:onReadStream`, `BaleCounter:onRegisterActionEvents`, `BaleCounter:onRegisterDashboardValueTypes`, `BaleCounter:onRegisterExternalActionEvents`, `BaleCounter:onWriteStream`, `BaleCounter:saveToXMLFile`

## vehicles/specializations/BaleGrab.lua

`BaleGrab.getSpecValueMaxSize`, `BaleGrab.getSpecValueMaxSizeRound`, `BaleGrab.getSpecValueMaxSizeSquare`, `BaleGrab.initSpecialization`, `BaleGrab.loadSpecValueMaxSize`, `BaleGrab.loadSpecValueMaxSizeRound`, `BaleGrab.loadSpecValueMaxSizeSquare`, `BaleGrab.onPendingObjectDelete`, `BaleGrab.onPendingObjectMountStateChanged`, `BaleGrab.prerequisitesPresent`, `BaleGrab.registerEventListeners`, `BaleGrab.registerFunctions`, `BaleGrab.registerOverwrittenFunctions`, `BaleGrab:addDynamicMountedObject`, `BaleGrab:baleGrabTriggerCallback`, `BaleGrab:getIsBaleGrabClosed`, `BaleGrab:getMovingToolMoveValue`, `BaleGrab:mountBaleGrabObject`, `BaleGrab:onDelete`, `BaleGrab:onLoad`, `BaleGrab:onPostLoad`, `BaleGrab:onUpdateTick`, `BaleGrab:removeDynamicMountedObject`, `BaleGrab:unmountBaleGrabObject`, `BaleGrab:updateDebugValues`

## vehicles/specializations/BaleLoader.lua

`BaleLoader.actionControllerEvent`, `BaleLoader.actionEventAbortEmpty`, `BaleLoader.actionEventEmpty`, `BaleLoader.actionEventWorkTransport`, `BaleLoader.getAllowsStartUnloading`, `BaleLoader.getBaleInRange`, `BaleLoader.getSpecValueBaleSize`, `BaleLoader.getSpecValueBaleSizeRound`, `BaleLoader.getSpecValueBaleSizeSquare`, `BaleLoader.initSpecialization`, `BaleLoader.loadSpecValueBaleSize`, `BaleLoader.loadSpecValueBaleSizeRound`, `BaleLoader.loadSpecValueBaleSizeSquare`, `BaleLoader.moveToTransportPosition`, `BaleLoader.moveToWorkPosition`, `BaleLoader.onBaleUnloadTriggerDeleted`, `BaleLoader.prerequisitesPresent`, `BaleLoader.registerAnimationXMLPaths`, `BaleLoader.registerEventListeners`, `BaleLoader.registerFunctions`, `BaleLoader.registerOverwrittenFunctions`, `BaleLoader.rotatePlatform`, `BaleLoader.updateBalePlacesAnimations`, `BaleLoader:addBaleUnloadTrigger`, `BaleLoader:addToPhysics`, `BaleLoader:baleGrabberTriggerCallback`, `BaleLoader:baleLoaderMoveTriggerCallback`, `BaleLoader:createBaleToBaleJoint`, `BaleLoader:createBaleToBaleJoints`, `BaleLoader:doStateChange`, `BaleLoader:getAllowDynamicMountFillLevelInfo`, `BaleLoader:getAreControlledActionsAllowed`, `BaleLoader:getBaleGrabberDropBaleAnimName`, `BaleLoader:getBaleTypeByBale`, `BaleLoader:getCanBeSelected`, `BaleLoader:getConsumingLoad`, `BaleLoader:getCurrentFoldingAnimation`, `BaleLoader:getDoConsumePtoPower`, `BaleLoader:getIsAIPreparingToDrive`, `BaleLoader:getIsAIReadyToDrive`, `BaleLoader:getIsAutomaticBaleUnloadingAllowed`, `BaleLoader:getIsAutomaticBaleUnloadingInProgress`, `BaleLoader:getIsBaleGrabbingAllowed`, `BaleLoader:getIsBaleLoaderFoldingPlaying`, `BaleLoader:getIsFoldAllowed`, `BaleLoader:getIsPowerTakeOffActive`, `BaleLoader:getLoadedBales`, `BaleLoader:loadBaleLoaderAnimationsFromXML`, `BaleLoader:loadBalePlacesFromXML`, `BaleLoader:loadBaleTypeFromXML`, `BaleLoader:mountBale`, `BaleLoader:mountDynamicBale`, `BaleLoader:onActivate`, `BaleLoader:onBaleMoverBaleRemoved`, `BaleLoader:onBalerUnloadingStarted`, `BaleLoader:onDeactivate`, `BaleLoader:onDelete`, `BaleLoader:onDraw`, `BaleLoader:onFillUnitFillLevelChanged`, `BaleLoader:onFoldStateChanged`, `BaleLoader:onLoad`, `BaleLoader:onLoadFinished`, `BaleLoader:onPostLoad`, `BaleLoader:onReadStream`, `BaleLoader:onReadUpdateStream`, `BaleLoader:onRegisterActionEvents`, `BaleLoader:onRegisterAnimationValueTypes`, `BaleLoader:onRootVehicleChanged`, `BaleLoader:onUpdate`, `BaleLoader:onUpdateTick`, `BaleLoader:onWriteStream`, `BaleLoader:onWriteUpdateStream`, `BaleLoader:pickupBale`, `BaleLoader:playBaleLoaderFoldingAnimation`, `BaleLoader:removeBaleUnloadTrigger`, `BaleLoader:removeFromPhysics`, `BaleLoader:saveToXMLFile`, `BaleLoader:setBaleLoaderBaleType`, `BaleLoader:setBalePairCollision`, `BaleLoader:startAutomaticBaleUnloading`, `BaleLoader:unmountBale`, `BaleLoader:unmountDynamicBale`, `BaleLoader:updateFoldingAnimation`

## vehicles/specializations/BaleWrapper.lua

`BaleWrapper.actionEventDrop`, `BaleWrapper.actionEventEmpty`, `BaleWrapper.actionEventToggleAutomaticDrop`, `BaleWrapper.externalActionEventAutomaticUnloadRegister`, `BaleWrapper.externalActionEventAutomaticUnloadUpdate`, `BaleWrapper.externalActionEventUnloadRegister`, `BaleWrapper.externalActionEventUnloadUpdate`, `BaleWrapper.externalActionEventWarningsRegister`, `BaleWrapper.externalActionEventWarningsUpdate`, `BaleWrapper.getBaleInRange`, `BaleWrapper.getSpecValueBaleSize`, `BaleWrapper.getSpecValueBaleSizeRound`, `BaleWrapper.getSpecValueBaleSizeSquare`, `BaleWrapper.initSpecialization`, `BaleWrapper.loadSpecValueBaleSize`, `BaleWrapper.loadSpecValueBaleSizeRound`, `BaleWrapper.loadSpecValueBaleSizeSquare`, `BaleWrapper.prerequisitesPresent`, `BaleWrapper.registerEventListeners`, `BaleWrapper.registerFunctions`, `BaleWrapper.registerOverwrittenFunctions`, `BaleWrapper.registerWrapperAnimationXMLPaths`, `BaleWrapper.registerWrapperFoilAnimationXMLPaths`, `BaleWrapper.registerWrapperXMLPaths`, `BaleWrapper.updateActionEvents`, `BaleWrapper:addToPhysics`, `BaleWrapper:allowsGrabbingBale`, `BaleWrapper:baleGrabberTriggerCallback`, `BaleWrapper:doStateChange`, `BaleWrapper:getCanBeSelected`, `BaleWrapper:getIsBaleDropAllowed`, `BaleWrapper:getIsBaleWrappable`, `BaleWrapper:getIsBaleWrappingAllowed`, `BaleWrapper:getIsFoldAllowed`, `BaleWrapper:getMatchingBaleTypeIndex`, `BaleWrapper:getShowConsumableEmptyWarning`, `BaleWrapper:loadWrapperAnimCurveFromXML`, `BaleWrapper:loadWrapperAnimNodesFromXML`, `BaleWrapper:loadWrapperAnimationNodesFromXML`, `BaleWrapper:loadWrapperAnimationsFromXML`, `BaleWrapper:loadWrapperFoilAnimationFromXML`, `BaleWrapper:loadWrapperFromXML`, `BaleWrapper:loadWrapperStateCurveFromXML`, `BaleWrapper:loadWrapperWrapNodesFromXML`, `BaleWrapper:onBaleWrapperBlockOverlapCallback`, `BaleWrapper:onBaleWrapperDropOverlapCallback`, `BaleWrapper:onConsumableVariationChanged`, `BaleWrapper:onDeactivate`, `BaleWrapper:onDelete`, `BaleWrapper:onDraw`, `BaleWrapper:onFoldStateChanged`, `BaleWrapper:onLoad`, `BaleWrapper:onLoadFinished`, `BaleWrapper:onPostLoad`, `BaleWrapper:onReadStream`, `BaleWrapper:onRegisterActionEvents`, `BaleWrapper:onRegisterExternalActionEvents`, `BaleWrapper:onUpdate`, `BaleWrapper:onUpdateTick`, `BaleWrapper:onWriteStream`, `BaleWrapper:pickupWrapperBale`, `BaleWrapper:playMoveToWrapper`, `BaleWrapper:removeFromPhysics`, `BaleWrapper:saveToXMLFile`, `BaleWrapper:setBaleWrapperAutomaticDrop`, `BaleWrapper:setBaleWrapperDropAnimation`, `BaleWrapper:setBaleWrapperType`, `BaleWrapper:updateWrapNodes`, `BaleWrapper:updateWrappingState`

## vehicles/specializations/Baler.lua

`Baler.actionEventToggleAutomaticDrop`, `Baler.actionEventToggleSize`, `Baler.actionEventUnloading`, `Baler.externalActionEventAutomaticUnloadRegister`, `Baler.externalActionEventAutomaticUnloadUpdate`, `Baler.externalActionEventBaleTypeRegister`, `Baler.externalActionEventBaleTypeUpdate`, `Baler.externalActionEventUnloadRegister`, `Baler.externalActionEventUnloadUpdate`, `Baler.getDefaultSpeedLimit`, `Baler.getSpecValueBaleSize`, `Baler.getSpecValueBaleSizeRound`, `Baler.getSpecValueBaleSizeSquare`, `Baler.initSpecialization`, `Baler.loadSpecValueBaleSize`, `Baler.loadSpecValueBaleSizeRound`, `Baler.loadSpecValueBaleSizeSquare`, `Baler.prerequisitesPresent`, `Baler.registerBalerXMLPaths`, `Baler.registerEventListeners`, `Baler.registerEvents`, `Baler.registerFunctions`, `Baler.registerOverwrittenFunctions`, `Baler.updateActionEvents`, `Baler:actionControllerBaleUnloadEvent`, `Baler:addToPhysics`, `Baler:createBale`, `Baler:createDummyBale`, `Baler:deleteDummyBale`, `Baler:doCheckSpeedLimit`, `Baler:dropBale`, `Baler:dropBaleFromPlatform`, `Baler:finishBale`, `Baler:getAlarmTriggerIsActive`, `Baler:getAllowDynamicMountFillLevelInfo`, `Baler:getBalerBaleOwnerFarmId`, `Baler:getCanBeSelected`, `Baler:getCanBeTurnedOn`, `Baler:getCanUnloadUnfinishedBale`, `Baler:getConsumingLoad`, `Baler:getIsAttachedTo`, `Baler:getIsBaleUnloading`, `Baler:getIsFoldAllowed`, `Baler:getIsSpeedRotatingPartActive`, `Baler:getIsWorkAreaActive`, `Baler:getRequiresPower`, `Baler:getShowConsumableEmptyWarning`, `Baler:getTimeFromLevel`, `Baler:handleUnloadingBaleEvent`, `Baler:isUnloadingAllowed`, `Baler:loadAlarmTrigger`, `Baler:loadSpeedRotatingPartFromXML`, `Baler:moveBale`, `Baler:moveBales`, `Baler:onChangedFillType`, `Baler:onConsumableVariationChanged`, `Baler:onDelete`, `Baler:onEndWorkAreaProcessing`, `Baler:onFillUnitFillLevelChanged`, `Baler:onLoad`, `Baler:onLoadFinished`, `Baler:onPostLoad`, `Baler:onReadStream`, `Baler:onReadUpdateStream`, `Baler:onRegisterActionEvents`, `Baler:onRegisterExternalActionEvents`, `Baler:onRootVehicleChanged`, `Baler:onStartWorkAreaProcessing`, `Baler:onTurnedOff`, `Baler:onTurnedOn`, `Baler:onUpdate`, `Baler:onUpdateTick`, `Baler:onWriteStream`, `Baler:onWriteUpdateStream`, `Baler:processBalerArea`, `Baler:removeFromPhysics`, `Baler:saveToXMLFile`, `Baler:setBaleTime`, `Baler:setBaleTypeIndex`, `Baler:setBalerAutomaticDrop`, `Baler:setIsUnloadingBale`, `Baler:updateDummyBale`

## vehicles/specializations/BalerStationary.lua

`BalerStationary.prerequisitesPresent`, `BalerStationary.registerEventListeners`

## vehicles/specializations/BaseMaterial.lua

`BaseMaterial.initSpecialization`, `BaseMaterial.prerequisitesPresent`, `BaseMaterial.registerEventListeners`, `BaseMaterial.registerFunctions`, `BaseMaterial:onLoad`

## vehicles/specializations/BigBag.lua

`BigBag.initSpecialization`, `BigBag.prerequisitesPresent`, `BigBag.registerEventListeners`, `BigBag.registerFunctions`, `BigBag.registerOverwrittenFunctions`, `BigBag:getInfoBoxTitle`, `BigBag:onFillUnitFillLevelChanged`, `BigBag:onLoad`, `BigBag:onUpdate`

## vehicles/specializations/BunkerSiloCompacter.lua

`BunkerSiloCompacter.getDefaultSpeedLimit`, `BunkerSiloCompacter.initSpecialization`, `BunkerSiloCompacter.prerequisitesPresent`, `BunkerSiloCompacter.registerEventListeners`, `BunkerSiloCompacter.registerFunctions`, `BunkerSiloCompacter.registerOverwrittenFunctions`, `BunkerSiloCompacter:doCheckSpeedLimit`, `BunkerSiloCompacter:getBunkerSiloCompacterScale`, `BunkerSiloCompacter:loadBunkerSiloCompactorFromXML`, `BunkerSiloCompacter:onDelete`, `BunkerSiloCompacter:onLoad`, `BunkerSiloCompacter:onUpdate`

## vehicles/specializations/BunkerSiloInteractor.lua

`BunkerSiloInteractor.prerequisitesPresent`, `BunkerSiloInteractor.registerEventListeners`, `BunkerSiloInteractor.registerFunctions`, `BunkerSiloInteractor:notifiyBunkerSilo`, `BunkerSiloInteractor:onLoad`, `BunkerSiloInteractor:setBunkerSiloInteractorCallback`

## vehicles/specializations/CCTDrivable.lua

`CCTDrivable.initSpecialization`, `CCTDrivable.prerequisitesPresent`, `CCTDrivable.registerEventListeners`, `CCTDrivable.registerFunctions`, `CCTDrivable.registerOverwrittenFunctions`, `CCTDrivable:getCCTCollisionMask`, `CCTDrivable:getCCTWorldTranslation`, `CCTDrivable:getIsCCTOnGround`, `CCTDrivable:moveCCT`, `CCTDrivable:onDelete`, `CCTDrivable:onLoad`, `CCTDrivable:setWorldPosition`, `CCTDrivable:setWorldPositionQuaternion`

## vehicles/specializations/ChainRollers.lua

`ChainRollers.initSpecialization`, `ChainRollers.prerequisitesPresent`, `ChainRollers.registerEventListeners`, `ChainRollers.registerFunctions`, `ChainRollers.registerOverwrittenFunctions`, `ChainRollers:loadChainRollerFromXML`, `ChainRollers:loadExtraDependentParts`, `ChainRollers:onLoad`, `ChainRollers:onLoadFinished`, `ChainRollers:onPostUpdate`, `ChainRollers:updateChainRoller`, `ChainRollers:updateExtraDependentParts`

## vehicles/specializations/Combine.lua

`Combine.actionEventToggleChopper`, `Combine.initSpecialization`, `Combine.prerequisitesPresent`, `Combine.registerEventListeners`, `Combine.registerEvents`, `Combine.registerFunctions`, `Combine.registerOverwrittenFunctions`, `Combine.updateToggleStrawText`, `Combine:addCutterArea`, `Combine:addCutterToCombine`, `Combine:getAreControlledActionsAllowed`, `Combine:getCanBeSelected`, `Combine:getCanBeTurnedOn`, `Combine:getCombineFillLevelPercentage`, `Combine:getCombineLastValidFillType`, `Combine:getCombineLoadPercentage`, `Combine:getDirtMultiplier`, `Combine:getDischargeFillType`, `Combine:getFillLevelDependentSpeed`, `Combine:getImplementAllowAutomaticSteering`, `Combine:getIsCutterCompatible`, `Combine:getIsFoldAllowed`, `Combine:getIsRandomlyMovingPartActive`, `Combine:getIsThreshingDuringRain`, `Combine:getIsTurnedOnAnimationActive`, `Combine:getTurnedOnNotAllowedWarning`, `Combine:getWearMultiplier`, `Combine:loadCombineEffects`, `Combine:loadCombineRotationNodes`, `Combine:loadCombineSamples`, `Combine:loadCombineSetup`, `Combine:loadRandomlyMovingPartFromXML`, `Combine:loadTurnedOnAnimationFromXML`, `Combine:loadWorkAreaFromXML`, `Combine:onChangedFillType`, `Combine:onDeactivate`, `Combine:onDelete`, `Combine:onDraw`, `Combine:onEndWorkAreaProcessing`, `Combine:onEnterVehicle`, `Combine:onFillUnitFillLevelChanged`, `Combine:onFoldStateChanged`, `Combine:onLeaveVehicle`, `Combine:onLoad`, `Combine:onPostAttachImplement`, `Combine:onPostDetachImplement`, `Combine:onPostLoad`, `Combine:onReadStream`, `Combine:onReadUpdateStream`, `Combine:onRegisterActionEvents`, `Combine:onRegisterDashboardValueTypes`, `Combine:onStartWorkAreaProcessing`, `Combine:onTurnedOff`, `Combine:onTurnedOn`, `Combine:onUpdate`, `Combine:onUpdateTick`, `Combine:onWriteStream`, `Combine:onWriteUpdateStream`, `Combine:processCombineChopperArea`, `Combine:processCombineSwathArea`, `Combine:removeCutterFromCombine`, `Combine:saveToXMLFile`, `Combine:setChopperPSEnabled`, `Combine:setCombineIsFilling`, `Combine:setIsSwathActive`, `Combine:setStrawPSEnabled`, `Combine:setWorkedHectars`, `Combine:startThreshing`, `Combine:stopThreshing`, `Combine:verifyCombine`

## vehicles/specializations/ConnectedAttributes.lua

`ConnectedAttributes.initSpecialization`, `ConnectedAttributes.prerequisitesPresent`, `ConnectedAttributes.registerEventListeners`, `ConnectedAttributes.registerFunctions`, `ConnectedAttributes.registerOverwrittenFunctions`, `ConnectedAttributes.updateAttribute`, `ConnectedAttributes:loadExtraDependentParts`, `ConnectedAttributes:onFinishAnimation`, `ConnectedAttributes:onLoad`, `ConnectedAttributes:onLoadFinished`, `ConnectedAttributes:onPlayAnimation`, `ConnectedAttributes:onUpdate`, `ConnectedAttributes:onUpdateAnimation`, `ConnectedAttributes:onUpdateEnd`, `ConnectedAttributes:updateDebugValues`, `ConnectedAttributes:updateExtraDependentParts`

## vehicles/specializations/ConnectionHoses.lua

`ConnectionHoses.consoleCommandTestSockets`, `ConnectionHoses.initSpecialization`, `ConnectionHoses.prerequisitesPresent`, `ConnectionHoses.registerConnectionHoseXMLPaths`, `ConnectionHoses.registerCustomHoseNodesXMLPaths`, `ConnectionHoses.registerCustomHoseTargetNodesXMLPaths`, `ConnectionHoses.registerEventListeners`, `ConnectionHoses.registerFunctions`, `ConnectionHoses.registerHoseNodesXMLPaths`, `ConnectionHoses.registerHoseTargetNodesXMLPaths`, `ConnectionHoses.registerOverwrittenFunctions`, `ConnectionHoses:addHoseTargetNodes`, `ConnectionHoses:addHoseToDelayedMountings`, `ConnectionHoses:connectCustomHoseNode`, `ConnectionHoses:connectCustomHosesToAttacherVehicle`, `ConnectionHoses:connectHose`, `ConnectionHoses:connectHoseToSkipNode`, `ConnectionHoses:connectHosesToAttacherVehicle`, `ConnectionHoses:disconnectCustomHoseNode`, `ConnectionHoses:disconnectHose`, `ConnectionHoses:getCenterPointAngle`, `ConnectionHoses:getCenterPointAngleRegulation`, `ConnectionHoses:getClonedSkipHoseNode`, `ConnectionHoses:getConnectionHoseConfigIndex`, `ConnectionHoses:getConnectionHosesByInputAttacherJoint`, `ConnectionHoses:getConnectionTarget`, `ConnectionHoses:getIsConnectionHoseUsed`, `ConnectionHoses:getIsConnectionTargetUsed`, `ConnectionHoses:getIsSkipNodeAvailable`, `ConnectionHoses:iterateConnectionTargets`, `ConnectionHoses:loadConnectionHosesFromXML`, `ConnectionHoses:loadCustomHosesFromXML`, `ConnectionHoses:loadExtraDependentParts`, `ConnectionHoses:loadHoseNode`, `ConnectionHoses:loadHoseSkipNode`, `ConnectionHoses:loadHoseTargetNode`, `ConnectionHoses:loadToolConnectorHoseNode`, `ConnectionHoses:onDelete`, `ConnectionHoses:onLoadFinished`, `ConnectionHoses:onPostAttach`, `ConnectionHoses:onPostLoad`, `ConnectionHoses:onPreDetach`, `ConnectionHoses:onPreLoad`, `ConnectionHoses:onUpdateEnd`, `ConnectionHoses:onUpdateInterpolation`, `ConnectionHoses:retryHoseSkipNodeConnections`, `ConnectionHoses:updateAttachedConnectionHoses`, `ConnectionHoses:updateConnectionHose`, `ConnectionHoses:updateCustomHoseNode`, `ConnectionHoses:updateExtraDependentParts`, `ConnectionHoses:updateToolConnectionHose`

## vehicles/specializations/Consumable.lua

`Consumable.initSpecialization`, `Consumable.prerequisitesPresent`, `Consumable.registerEventListeners`, `Consumable.registerEvents`, `Consumable.registerFunctions`, `Consumable.registerOverwrittenFunctions`, `Consumable.updateActivatable`, `Consumable:addFillUnitFillLevel`, `Consumable:collectPalletTensionBeltNodes`, `Consumable:getConsumableIsAvailable`, `Consumable:getConsumableVariationIndexByFillUnitIndex`, `Consumable:getCustomFillTriggerSpeedFactor`, `Consumable:getFillUnitFreeCapacity`, `Consumable:getShowConsumableEmptyWarning`, `Consumable:onAddedFillUnitTrigger`, `Consumable:onDirtyMaskCleared`, `Consumable:onDraw`, `Consumable:onFillUnitFillLevelChanged`, `Consumable:onFillUnitIsFillingStateChanged`, `Consumable:onLoad`, `Consumable:onPostLoad`, `Consumable:onReadStream`, `Consumable:onReadUpdateStream`, `Consumable:onRemovedFillUnitTrigger`, `Consumable:onUpdate`, `Consumable:onWriteStream`, `Consumable:onWriteUpdateStream`, `Consumable:saveToXMLFile`, `Consumable:setConsumableSlotVariationIndex`, `Consumable:updateConsumable`

## vehicles/specializations/ConveyorBelt.lua

`ConveyorBelt.getHasConveyorBeltLoop`, `ConveyorBelt.initSpecialization`, `ConveyorBelt.prerequisitesPresent`, `ConveyorBelt.registerEventListeners`, `ConveyorBelt.registerFunctions`, `ConveyorBelt.registerOverwrittenFunctions`, `ConveyorBelt:getConveyorBeltFillLevel`, `ConveyorBelt:getConveyorBeltTargetObject`, `ConveyorBelt:getDischargeNodeEmptyFactor`, `ConveyorBelt:getFillUnitAllowsFillType`, `ConveyorBelt:getFillUnitFreeCapacity`, `ConveyorBelt:getIsEnterable`, `ConveyorBelt:getLoadTriggerMaxFillSpeed`, `ConveyorBelt:handleDischarge`, `ConveyorBelt:handleDischargeOnEmpty`, `ConveyorBelt:onDelete`, `ConveyorBelt:onFillUnitFillLevelChanged`, `ConveyorBelt:onLoad`, `ConveyorBelt:onMovingToolChanged`, `ConveyorBelt:onPostLoad`, `ConveyorBelt:onReadUpdateStream`, `ConveyorBelt:onUpdateTick`, `ConveyorBelt:onWriteUpdateStream`, `ConveyorBelt:updateDebugValues`

## vehicles/specializations/Cover.lua

`Cover.actionEventToggleCover`, `Cover.initSpecialization`, `Cover.prerequisitesPresent`, `Cover.registerEventListeners`, `Cover.registerFunctions`, `Cover.registerOverwrittenFunctions`, `Cover.updateActionText`, `Cover:aiFinishLoading`, `Cover:aiPrepareLoading`, `Cover:finishedAIDischarge`, `Cover:getCanBeSelected`, `Cover:getCoverByFillUnitIndex`, `Cover:getFillUnitSupportsToolType`, `Cover:getIsNextCoverStateAllowed`, `Cover:getIsNextCoverStateAllowedWarning`, `Cover:getIsPipeStateChangeAllowed`, `Cover:loadCoverFromXML`, `Cover:loadPipeNodes`, `Cover:onFillUnitTriggerChanged`, `Cover:onLoad`, `Cover:onOpenBackDoor`, `Cover:onPostLoad`, `Cover:onReadStream`, `Cover:onRegisterActionEvents`, `Cover:onRemovedFillUnitTrigger`, `Cover:onStartTipping`, `Cover:onUpdate`, `Cover:onWriteStream`, `Cover:playCoverAnimation`, `Cover:saveToXMLFile`, `Cover:setCoverState`, `Cover:setFillUnitInTriggerRange`

## vehicles/specializations/CrabSteering.lua

`CrabSteering.actionEventSetCrabSteeringMode`, `CrabSteering.actionEventToggleCrabSteeringModes`, `CrabSteering.initSpecialization`, `CrabSteering.prerequisitesPresent`, `CrabSteering.registerEventListeners`, `CrabSteering.registerFunctions`, `CrabSteering.registerOverwrittenFunctions`, `CrabSteering.registerSteeringModeXMLPaths`, `CrabSteering:getAIAutomaticSteeringLookAheadDistance`, `CrabSteering:getCanBeSelected`, `CrabSteering:getCanToggleCrabSteering`, `CrabSteering:loadCrabSteeringModeFromXML`, `CrabSteering:loadWheelFromXML`, `CrabSteering:loadWheelsFromXML`, `CrabSteering:onLoad`, `CrabSteering:onPostLoad`, `CrabSteering:onReadStream`, `CrabSteering:onReadUpdateStream`, `CrabSteering:onRegisterActionEvents`, `CrabSteering:onRegisterDashboardValueTypes`, `CrabSteering:onUpdateTick`, `CrabSteering:onWriteStream`, `CrabSteering:onWriteUpdateStream`, `CrabSteering:saveToXMLFile`, `CrabSteering:setCrabSteering`, `CrabSteering:startFieldWorker`, `CrabSteering:updateArticulatedAxisRotation`, `CrabSteering:updateSteeringAngle`, `CrabSteering:updateSteeringWheel`

## vehicles/specializations/Crawlers.lua

`Crawlers.getShallowWaterParameters`, `Crawlers.initSpecialization`, `Crawlers.prerequisitesPresent`, `Crawlers.registerEventListeners`, `Crawlers.registerFunctions`, `Crawlers.registerOverwrittenFunctions`, `Crawlers:getCrawlerWheelMovedDistance`, `Crawlers:loadCrawlerFromConfigFile`, `Crawlers:loadCrawlerFromXML`, `Crawlers:onCrawlerI3DLoaded`, `Crawlers:onDelete`, `Crawlers:onLoad`, `Crawlers:onLoadFinished`, `Crawlers:onUpdate`, `Crawlers:onWheelConfigurationChanged`, `Crawlers:updateCrawler`, `Crawlers:validateWashableNode`

## vehicles/specializations/CropRowAdjustedNodes.lua

`CropRowAdjustedNodes.initSpecialization`, `CropRowAdjustedNodes.prerequisitesPresent`, `CropRowAdjustedNodes.registerEventListeners`, `CropRowAdjustedNodes.registerFunctions`, `CropRowAdjustedNodes:getIsCropRowAdjustedNodeActive`, `CropRowAdjustedNodes:loadCropRowAdjustedNodeFromXML`, `CropRowAdjustedNodes:onLoad`, `CropRowAdjustedNodes:onUpdate`, `CropRowAdjustedNodes:updateCropRowAdjustedNode`

## vehicles/specializations/Cultivator.lua

`Cultivator.getDefaultSpeedLimit`, `Cultivator.initSpecialization`, `Cultivator.prerequisitesPresent`, `Cultivator.registerEventListeners`, `Cultivator.registerFunctions`, `Cultivator.registerOverwrittenFunctions`, `Cultivator:doCheckSpeedLimit`, `Cultivator:getAIImplementUseVineSegment`, `Cultivator:getCultivatorLimitToField`, `Cultivator:getDirtMultiplier`, `Cultivator:getIsWorkAreaActive`, `Cultivator:getUseCultivatorAIRequirements`, `Cultivator:getWearMultiplier`, `Cultivator:loadWorkAreaFromXML`, `Cultivator:loadWorkModeFromXML`, `Cultivator:onDeactivate`, `Cultivator:onDelete`, `Cultivator:onEndWorkAreaProcessing`, `Cultivator:onLoad`, `Cultivator:onPostAttach`, `Cultivator:onStartWorkAreaProcessing`, `Cultivator:onStateChange`, `Cultivator:onWorkModeChanged`, `Cultivator:processCultivatorArea`, `Cultivator:processVineCultivatorArea`, `Cultivator:updateCultivatorAIRequirements`

## vehicles/specializations/Cutter.lua

`Cutter.getDefaultSpeedLimit`, `Cutter.initSpecialization`, `Cutter.prerequisitesPresent`, `Cutter.registerEventListeners`, `Cutter.registerFunctions`, `Cutter.registerOverwrittenFunctions`, `Cutter:doCheckSpeedLimit`, `Cutter:getAllowCutterAIFruitRequirements`, `Cutter:getCombine`, `Cutter:getConsumingLoad`, `Cutter:getCutterLoad`, `Cutter:getCutterStoneMultiplier`, `Cutter:getCutterTiltDelta`, `Cutter:getCutterTiltIsActive`, `Cutter:getCutterTiltIsAvailable`, `Cutter:getDefaultAllowComponentMassReduction`, `Cutter:getDirtMultiplier`, `Cutter:getFruitExtraObjectTypeData`, `Cutter:getIsGroundReferenceNodeThreshold`, `Cutter:getIsRandomlyMovingPartActive`, `Cutter:getIsSpeedRotatingPartActive`, `Cutter:getIsWorkAreaActive`, `Cutter:getWearMultiplier`, `Cutter:isAttachAllowed`, `Cutter:loadCutterTiltFromXML`, `Cutter:loadInputAttacherJoint`, `Cutter:loadRandomlyMovingPartFromXML`, `Cutter:loadSpeedRotatingPartFromXML`, `Cutter:loadWorkAreaFromXML`, `Cutter:onAIFieldCourseSettingsInitialized`, `Cutter:onAIImplementStart`, `Cutter:onDelete`, `Cutter:onEndWorkAreaProcessing`, `Cutter:onLoad`, `Cutter:onPostLoad`, `Cutter:onReadStream`, `Cutter:onReadUpdateStream`, `Cutter:onStartWorkAreaProcessing`, `Cutter:onTurnedOff`, `Cutter:onTurnedOn`, `Cutter:onUpdate`, `Cutter:onUpdateTick`, `Cutter:onWriteStream`, `Cutter:onWriteUpdateStream`, `Cutter:processCutterArea`, `Cutter:processHaulmDropArea`, `Cutter:processPickupCutterArea`, `Cutter:readCutterFromStream`, `Cutter:saveToXMLFile`, `Cutter:setCutterCutHeight`, `Cutter:tiltRaycastDetectionCallbackLeft`, `Cutter:tiltRaycastDetectionCallbackRight`, `Cutter:updateDebugValues`, `Cutter:writeCutterToStream`

## vehicles/specializations/Cylindered.lua

`Cylindered.actionEventInput`, `Cylindered.getMovingToolDashboardState`, `Cylindered.getMovingToolState`, `Cylindered.initSpecialization`, `Cylindered.limitInterpolator`, `Cylindered.movingToolDashboardAttributes`, `Cylindered.prerequisitesPresent`, `Cylindered.registerCopyLocalDirectionXMLPaths`, `Cylindered.registerDependentAnimationXMLPaths`, `Cylindered.registerDependentComponentJointXMLPaths`, `Cylindered.registerDependentMovingToolXMLPaths`, `Cylindered.registerEasyArmControlXMLPaths`, `Cylindered.registerEventListeners`, `Cylindered.registerEvents`, `Cylindered.registerFunctions`, `Cylindered.registerMovingPartXMLPaths`, `Cylindered.registerMovingToolXMLPaths`, `Cylindered.registerOverwrittenFunctions`, `Cylindered.registerSoundXMLPaths`, `Cylindered.setAbsoluteToolRotation`, `Cylindered.setAbsoluteToolTranslation`, `Cylindered.setDirty`, `Cylindered.setToolAnimation`, `Cylindered.setToolRotation`, `Cylindered.setToolTranslation`, `Cylindered.updateAttacherJoints`, `Cylindered.updateComponentJoints`, `Cylindered.updateMovingPart`, `Cylindered.updateRotationBasedLimits`, `Cylindered.updateWheels`, `Cylindered:allowLoadMovingToolStates`, `Cylindered:checkMovingPartDirtyUpdateNode`, `Cylindered:getAdditionalSchemaText`, `Cylindered:getConsumingLoad`, `Cylindered:getDischargeNodeEmptyFactor`, `Cylindered:getDoConsumePtoPower`, `Cylindered:getIsDynamicMountGrabOpened`, `Cylindered:getIsMovingPartActive`, `Cylindered:getIsMovingToolActive`, `Cylindered:getMovingPartByNode`, `Cylindered:getMovingToolByNode`, `Cylindered:getMovingToolMoveValue`, `Cylindered:getShovelNodeIsActive`, `Cylindered:getTranslatingPartByNode`, `Cylindered:getWearMultiplier`, `Cylindered:isDetachAllowed`, `Cylindered:loadActionSoundsFromXML`, `Cylindered:loadCopyLocalDirectionParts`, `Cylindered:loadDependentAnimations`, `Cylindered:loadDependentAttacherJoints`, `Cylindered:loadDependentComponentJoints`, `Cylindered:loadDependentMovingTools`, `Cylindered:loadDependentParts`, `Cylindered:loadDependentTranslatingParts`, `Cylindered:loadDependentWheels`, `Cylindered:loadDischargeNode`, `Cylindered:loadDynamicMountGrabFromXML`, `Cylindered:loadEasyArmControlFromXML`, `Cylindered:loadExtraDependentParts`, `Cylindered:loadMovingPartFromXML`, `Cylindered:loadMovingPartsFromXML`, `Cylindered:loadMovingToolFromXML`, `Cylindered:loadMovingToolsFromXML`, `Cylindered:loadObjectChangeValuesFromXML`, `Cylindered:loadRotationBasedLimits`, `Cylindered:loadShovelNode`, `Cylindered:onAIImplementStart`, `Cylindered:onAnimationPartChanged`, `Cylindered:onDeactivate`, `Cylindered:onDelete`, `Cylindered:onDraw`, `Cylindered:onLoad`, `Cylindered:onLoadFinished`, `Cylindered:onMovingPartSoundEvent`, `Cylindered:onPostAttach`, `Cylindered:onPostLoad`, `Cylindered:onPostUpdate`, `Cylindered:onPostUpdateTick`, `Cylindered:onReadStream`, `Cylindered:onReadUpdateStream`, `Cylindered:onRegisterActionEvents`, `Cylindered:onRegisterAnimationValueTypes`, `Cylindered:onRegisterDashboardValueTypes`, `Cylindered:onSelect`, `Cylindered:onUnselect`, `Cylindered:onUpdate`, `Cylindered:onUpdateEnd`, `Cylindered:onUpdateTick`, `Cylindered:onVehicleSettingChanged`, `Cylindered:onWriteStream`, `Cylindered:onWriteUpdateStream`, `Cylindered:resolveDependentPartData`, `Cylindered:saveToXMLFile`, `Cylindered:setComponentJointFrame`, `Cylindered:setDelayedData`, `Cylindered:setEasyControlForcedTransMove`, `Cylindered:setIsEasyControlActive`, `Cylindered:setMovingPartReferenceNode`, `Cylindered:setMovingToolDirty`, `Cylindered:setObjectChangeValues`, `Cylindered:updateControlGroups`, `Cylindered:updateCylinderedInitial`, `Cylindered:updateDelayedTool`, `Cylindered:updateDependentAnimations`, `Cylindered:updateDependentToolLimits`, `Cylindered:updateDirtyMovingParts`, `Cylindered:updateEasyControl`, `Cylindered:updateExtraDependentParts`, `Cylindered:updateMovingPartByNode`, `Cylindered:updateMovingToolSoundEvents`

## vehicles/specializations/CylinderedFoldable.lua

`CylinderedFoldable.initSpecialization`, `CylinderedFoldable.prerequisitesPresent`, `CylinderedFoldable.registerEventListeners`, `CylinderedFoldable:onLoad`, `CylinderedFoldable:onPreInitComponentPlacement`, `CylinderedFoldable:onReadStream`, `CylinderedFoldable:onWriteStream`

## vehicles/specializations/Dashboard.lua

`Dashboard.addDelayedRegistrationFunc`, `Dashboard.getDashboardColor`, `Dashboard.initSpecialization`, `Dashboard.prerequisitesPresent`, `Dashboard.registerDashboardXMLPaths`, `Dashboard.registerDisplayType`, `Dashboard.registerEventListeners`, `Dashboard.registerEvents`, `Dashboard.registerFunctions`, `Dashboard.warningAttributes`, `Dashboard:defaultDashboardStateFunc`, `Dashboard:getDashboardGroupByName`, `Dashboard:getDashboardValue`, `Dashboard:getIsDashboardGroupActive`, `Dashboard:loadDashboardCompoundFromXML`, `Dashboard:loadDashboardFromXML`, `Dashboard:loadDashboardGroupFromXML`, `Dashboard:loadDashboardsFromXML`, `Dashboard:onDashboardCompoundLoaded`, `Dashboard:onDelete`, `Dashboard:onLoad`, `Dashboard:onPostLoad`, `Dashboard:onUpdate`, `Dashboard:onUpdateEnd`, `Dashboard:onUpdateTick`, `Dashboard:registerDashboardValueType`, `Dashboard:setDashboardsDirty`, `Dashboard:updateDashboards`

## vehicles/specializations/Dischargeable.lua

`Dischargeable.actionEventToggleDischargeToGround`, `Dischargeable.actionEventToggleDischarging`, `Dischargeable.dashboardDischargeAttributes`, `Dischargeable.initSpecialization`, `Dischargeable.prerequisitesPresent`, `Dischargeable.registerEventListeners`, `Dischargeable.registerEvents`, `Dischargeable.registerFunctions`, `Dischargeable.registerOverwrittenFunctions`, `Dischargeable.registerXMLPaths`, `Dischargeable.updateActionEvents`, `Dischargeable:discharge`, `Dischargeable:dischargeActivationTriggerCallback`, `Dischargeable:dischargeToGround`, `Dischargeable:dischargeToObject`, `Dischargeable:dischargeTriggerCallback`, `Dischargeable:finishDischargeRaycast`, `Dischargeable:getAllowLoadTriggerActivation`, `Dischargeable:getCanBeSelected`, `Dischargeable:getCanDischargeAtPosition`, `Dischargeable:getCanDischargeToGround`, `Dischargeable:getCanDischargeToLand`, `Dischargeable:getCanDischargeToObject`, `Dischargeable:getCanToggleDischargeToGround`, `Dischargeable:getCanToggleDischargeToObject`, `Dischargeable:getCurrentDischargeNode`, `Dischargeable:getCurrentDischargeNodeIndex`, `Dischargeable:getCurrentDischargeObject`, `Dischargeable:getDischargeFillType`, `Dischargeable:getDischargeNodeAutomaticDischarge`, `Dischargeable:getDischargeNodeByIndex`, `Dischargeable:getDischargeNodeByNode`, `Dischargeable:getDischargeNodeEmptyFactor`, `Dischargeable:getDischargeNotAllowedWarning`, `Dischargeable:getDischargeState`, `Dischargeable:getDischargeTargetObject`, `Dischargeable:getDoConsumePtoPower`, `Dischargeable:getIsDischargeNodeActive`, `Dischargeable:getIsPowerTakeOffActive`, `Dischargeable:getRequiresTipOcclusionArea`, `Dischargeable:handleDischarge`, `Dischargeable:handleDischargeNodeChanged`, `Dischargeable:handleDischargeOnEmpty`, `Dischargeable:handleDischargeRaycast`, `Dischargeable:handleFoundDischargeObject`, `Dischargeable:loadDischargeNode`, `Dischargeable:onDeactivate`, `Dischargeable:onDelete`, `Dischargeable:onDeleteActivationTriggerObject`, `Dischargeable:onDeleteDischargeTriggerObject`, `Dischargeable:onFillUnitFillLevelChanged`, `Dischargeable:onLoad`, `Dischargeable:onPostLoad`, `Dischargeable:onReadStream`, `Dischargeable:onReadUpdateStream`, `Dischargeable:onRegisterActionEvents`, `Dischargeable:onRegisterDashboardValueTypes`, `Dischargeable:onStateChange`, `Dischargeable:onUpdate`, `Dischargeable:onUpdateTick`, `Dischargeable:onWriteStream`, `Dischargeable:onWriteUpdateStream`, `Dischargeable:raycastCallbackDischargeNode`, `Dischargeable:saveToXMLFile`, `Dischargeable:setCurrentDischargeNodeIndex`, `Dischargeable:setDischargeEffectActive`, `Dischargeable:setDischargeEffectDistance`, `Dischargeable:setDischargeState`, `Dischargeable:setForcedFillTypeIndex`, `Dischargeable:setManualDischargeState`, `Dischargeable:updateDebugValues`, `Dischargeable:updateDischargeInfo`, `Dischargeable:updateDischargeSound`, `Dischargeable:updateRaycast`

## vehicles/specializations/Drivable.lua

`Drivable.actionEventAccelerate`, `Drivable.actionEventBrake`, `Drivable.actionEventCruiseControlState`, `Drivable.actionEventCruiseControlValue`, `Drivable.actionEventSteer`, `Drivable.initSpecialization`, `Drivable.prerequisitesPresent`, `Drivable.registerEventListeners`, `Drivable.registerEvents`, `Drivable.registerFunctions`, `Drivable.registerOverwrittenFunctions`, `Drivable:brakeToStop`, `Drivable:getAcDecelerationAxis`, `Drivable:getAccelerationAxis`, `Drivable:getAxisForward`, `Drivable:getCruiseControlAxis`, `Drivable:getCruiseControlDisplayInfo`, `Drivable:getCruiseControlMaxSpeed`, `Drivable:getCruiseControlSpeed`, `Drivable:getCruiseControlState`, `Drivable:getDashboardCombinedPedalLeft`, `Drivable:getDashboardCombinedPedalRight`, `Drivable:getDashboardSteeringAxis`, `Drivable:getDecelerationAxis`, `Drivable:getDrivingDirection`, `Drivable:getIsDrivingBackward`, `Drivable:getIsDrivingForward`, `Drivable:getIsManualDirectionChangeAllowed`, `Drivable:getIsPlayerVehicleControlAllowed`, `Drivable:getIsVehicleControlledByPlayer`, `Drivable:getMapHotspotRotation`, `Drivable:getReverserDirection`, `Drivable:getSteeringDirection`, `Drivable:onDelete`, `Drivable:onLeaveVehicle`, `Drivable:onLoad`, `Drivable:onReadStream`, `Drivable:onReadUpdateStream`, `Drivable:onRegisterActionEvents`, `Drivable:onRegisterDashboardValueTypes`, `Drivable:onSetBroken`, `Drivable:onUpdate`, `Drivable:onWriteStream`, `Drivable:onWriteUpdateStream`, `Drivable:registerPlayerVehicleControlAllowedFunction`, `Drivable:saveToXMLFile`, `Drivable:setAccelerationPedalInput`, `Drivable:setBrakePedalInput`, `Drivable:setCruiseControlMaxSpeed`, `Drivable:setCruiseControlState`, `Drivable:setReverserDirection`, `Drivable:setSteeringInput`, `Drivable:setTargetSpeedAndDirection`, `Drivable:setTransmissionDirection`, `Drivable:stopMotor`, `Drivable:updateSteeringAngle`, `Drivable:updateSteeringWheel`, `Drivable:updateVehiclePhysics`

## vehicles/specializations/DynamicMountAttacher.lua

`DynamicMountAttacher.initSpecialization`, `DynamicMountAttacher.prerequisitesPresent`, `DynamicMountAttacher.registerEventListeners`, `DynamicMountAttacher.registerFunctions`, `DynamicMountAttacher.registerOverwrittenFunctions`, `DynamicMountAttacher:addDynamicMountedObject`, `DynamicMountAttacher:dynamicMountTriggerCallback`, `DynamicMountAttacher:forceDynamicMountPendingObjects`, `DynamicMountAttacher:forceUnmountDynamicMountedObjects`, `DynamicMountAttacher:getAdditionalComponentMass`, `DynamicMountAttacher:getAllowDynamicMountFillLevelInfo`, `DynamicMountAttacher:getAllowDynamicMountObjects`, `DynamicMountAttacher:getDynamicMountAttacherSettingsByNode`, `DynamicMountAttacher:getDynamicMountTimeToMount`, `DynamicMountAttacher:getFillLevelInformation`, `DynamicMountAttacher:getHasDynamicMountedObjects`, `DynamicMountAttacher:getIsAttachedTo`, `DynamicMountAttacher:getIsDynamicMountGrabOpened`, `DynamicMountAttacher:getIsFoldAllowed`, `DynamicMountAttacher:loadDynamicMountGrabFromXML`, `DynamicMountAttacher:loadExtraDependentParts`, `DynamicMountAttacher:lockDynamicMountedObject`, `DynamicMountAttacher:onDelete`, `DynamicMountAttacher:onLoad`, `DynamicMountAttacher:onPreAttachImplement`, `DynamicMountAttacher:onReadUpdateStream`, `DynamicMountAttacher:onUpdateTick`, `DynamicMountAttacher:onWriteUpdateStream`, `DynamicMountAttacher:readDynamicMountObjectsFromStream`, `DynamicMountAttacher:removeDynamicMountedObject`, `DynamicMountAttacher:setDynamicMountAnimationState`, `DynamicMountAttacher:updateDebugValues`, `DynamicMountAttacher:updateExtraDependentParts`, `DynamicMountAttacher:writeDynamicMountObjectsToStream`

## vehicles/specializations/DynamicallyLoadedParts.lua

`DynamicallyLoadedParts.initSpecialization`, `DynamicallyLoadedParts.prerequisitesPresent`, `DynamicallyLoadedParts.registerEventListeners`, `DynamicallyLoadedParts.registerFunctions`, `DynamicallyLoadedParts:onDelete`, `DynamicallyLoadedParts:onDynamicallyPartI3DLoaded`, `DynamicallyLoadedParts:onLoad`

## vehicles/specializations/Enterable.lua

`Enterable.actionEventCameraSwitch`, `Enterable.actionEventLeave`, `Enterable.actionEventResetHeadTracking`, `Enterable.initSpecialization`, `Enterable.prerequisitesPresent`, `Enterable.registerEventListeners`, `Enterable.registerEvents`, `Enterable.registerFunctions`, `Enterable.registerOverwrittenFunctions`, `Enterable:addToolCameras`, `Enterable:deleteVehicleCharacter`, `Enterable:doLeaveVehicle`, `Enterable:getActiveCamera`, `Enterable:getActiveFarm`, `Enterable:getAllowCharacterVisibilityUpdate`, `Enterable:getCanToggleAttach`, `Enterable:getCanToggleSelectable`, `Enterable:getControllerName`, `Enterable:getCurrentPlayerStyle`, `Enterable:getDisableVehicleCharacterOnLeave`, `Enterable:getDistanceToNode`, `Enterable:getExitNode`, `Enterable:getFormattedOperatingTime`, `Enterable:getInteractionHelp`, `Enterable:getIsActive`, `Enterable:getIsActiveForInput`, `Enterable:getIsAdditionalCharacterActive`, `Enterable:getIsControlled`, `Enterable:getIsDashboardGroupActive`, `Enterable:getIsEnterable`, `Enterable:getIsEnterableFromMenu`, `Enterable:getIsEntered`, `Enterable:getIsInUse`, `Enterable:getIsMapHotspotVisible`, `Enterable:getIsTabbable`, `Enterable:getUserPlayerStyle`, `Enterable:getVehicleCharacter`, `Enterable:interact`, `Enterable:loadAdditionalCharacterFromXML`, `Enterable:loadCamerasFromXML`, `Enterable:loadCharacterTargetNodeModifier`, `Enterable:loadDashboardGroupFromXML`, `Enterable:loadExtraDependentParts`, `Enterable:mountDynamic`, `Enterable:onDelete`, `Enterable:onDrawUIInfo`, `Enterable:onLoad`, `Enterable:onLoadFinished`, `Enterable:onPlayerEnterVehicle`, `Enterable:onPlayerLeaveVehicle`, `Enterable:onPlayerStyleChanged`, `Enterable:onPostLoad`, `Enterable:onPostUpdate`, `Enterable:onPreRegisterActionEvents`, `Enterable:onPreUpdate`, `Enterable:onReadStream`, `Enterable:onRegisterActionEvents`, `Enterable:onRegisterDashboardValueTypes`, `Enterable:onSetBroken`, `Enterable:onUpdate`, `Enterable:onWriteStream`, `Enterable:removeToolCameras`, `Enterable:resetCharacterTargetNodeStateDefaults`, `Enterable:restoreVehicleCharacter`, `Enterable:saveStatsToXMLFile`, `Enterable:saveToXMLFile`, `Enterable:setActiveCameraIndex`, `Enterable:setCharacterTargetNodeStateDirty`, `Enterable:setIsTabbable`, `Enterable:setMirrorVisible`, `Enterable:setRandomVehicleCharacter`, `Enterable:setVehicleCharacter`, `Enterable:updateCharacterTargetNodeModifier`, `Enterable:updateExtraDependentParts`, `Enterable:vehicleCharacterLoaded`

## vehicles/specializations/EnterablePassenger.lua

`EnterablePassenger.actionEventCameraSwitch`, `EnterablePassenger.actionEventLeave`, `EnterablePassenger.actionEventSwitchSeat`, `EnterablePassenger.consoleCommandDebugPassengerSeat`, `EnterablePassenger.initSpecialization`, `EnterablePassenger.prerequisitesPresent`, `EnterablePassenger.registerEventListeners`, `EnterablePassenger.registerFunctions`, `EnterablePassenger.registerOverwrittenFunctions`, `EnterablePassenger.registerXMLPaths`, `EnterablePassenger.updateActionEvents`, `EnterablePassenger.vehiclePassengerCharacterLoaded`, `EnterablePassenger:copyEnterableActiveCameraIndex`, `EnterablePassenger:enablePassengerActiveCamera`, `EnterablePassenger:enterVehiclePassengerSeat`, `EnterablePassenger:getCanUsePassengerSeats`, `EnterablePassenger:getClosestSeatIndex`, `EnterablePassenger:getDeactivateOnLeave`, `EnterablePassenger:getDistanceToNode`, `EnterablePassenger:getExitNode`, `EnterablePassenger:getFirstAvailablePassengerSeat`, `EnterablePassenger:getInteractionHelp`, `EnterablePassenger:getIsEnterable`, `EnterablePassenger:getIsInUse`, `EnterablePassenger:getIsPassengerSeatAvailable`, `EnterablePassenger:getIsPassengerSeatIndexAvailable`, `EnterablePassenger:getPassengerSeatIndexByPlayer`, `EnterablePassenger:getPlayerNameBySeatIndex`, `EnterablePassenger:interact`, `EnterablePassenger:leaveLocalPassengerSeat`, `EnterablePassenger:leavePassengerSeat`, `EnterablePassenger:onDelete`, `EnterablePassenger:onDrawUIInfo`, `EnterablePassenger:onEnterVehicle`, `EnterablePassenger:onLeaveVehicle`, `EnterablePassenger:onLoad`, `EnterablePassenger:onPassengerPlayerStyleChanged`, `EnterablePassenger:onPostUpdate`, `EnterablePassenger:onPreRegisterActionEvents`, `EnterablePassenger:onReadStream`, `EnterablePassenger:onRegisterActionEvents`, `EnterablePassenger:onSetBroken`, `EnterablePassenger:onWriteStream`, `EnterablePassenger:setPassengerActiveCameraIndex`, `EnterablePassenger:setPassengerSeatCharacter`, `EnterablePassenger:updatePassengerSeatCharacter`

## vehicles/specializations/ExternalVehicleControl.lua

`ExternalVehicleControl.initSpecialization`, `ExternalVehicleControl.onExternalVehicleControlTriggerCallback`, `ExternalVehicleControl.prerequisitesPresent`, `ExternalVehicleControl.registerEventListeners`, `ExternalVehicleControl.registerEvents`, `ExternalVehicleControl.registerFunctions`, `ExternalVehicleControl.registerOverwrittenFunctions`, `ExternalVehicleControl:onDelete`, `ExternalVehicleControl:onLoadFinished`, `ExternalVehicleControl:onUpdateTick`, `ExternalVehicleControl:registerExternalActionEvent`, `ExternalVehicleControlActivatable.new`, `ExternalVehicleControlActivatable:getDistance`, `ExternalVehicleControlActivatable:getIsActivatable`, `ExternalVehicleControlActivatable:registerCustomInput`, `ExternalVehicleControlActivatable:removeCustomInput`, `ExternalVehicleControlActivatable:run`, `ExternalVehicleControlActivatable:updateText`

## vehicles/specializations/FellerBuncher.lua

`FellerBuncher.actionEventCutTree`, `FellerBuncher.actionEventReleaseTrees`, `FellerBuncher.getSpecValueMaxTreeSize`, `FellerBuncher.initSpecialization`, `FellerBuncher.loadSpecValueMaxTreeSize`, `FellerBuncher.prerequisitesPresent`, `FellerBuncher.registerEventListeners`, `FellerBuncher.registerFunctions`, `FellerBuncher.registerOverwrittenFunctions`, `FellerBuncher.updateActionEvents`, `FellerBuncher:cutTree`, `FellerBuncher:doMountProcess`, `FellerBuncher:fellerBuncherSplitShapeCallback`, `FellerBuncher:getAutoAlignHasValidTree`, `FellerBuncher:getCanToggleTurnedOn`, `FellerBuncher:getFellerBuncherCanCutSplitShape`, `FellerBuncher:getIsFellerBuncherReadyForCut`, `FellerBuncher:getNumLoadedTrees`, `FellerBuncher:getSupportsAutoTreeAlignment`, `FellerBuncher:mountTreeInRange`, `FellerBuncher:onDelete`, `FellerBuncher:onFellerBuncherTreeShapeCut`, `FellerBuncher:onFellerBuncherTreeShapeMounted`, `FellerBuncher:onFellerBuncherTreesChanged`, `FellerBuncher:onFinishAnimation`, `FellerBuncher:onLoad`, `FellerBuncher:onReadStream`, `FellerBuncher:onReadUpdateStream`, `FellerBuncher:onRegisterActionEvents`, `FellerBuncher:onTurnedOff`, `FellerBuncher:onTurnedOn`, `FellerBuncher:onUpdateTick`, `FellerBuncher:onWriteStream`, `FellerBuncher:onWriteUpdateStream`, `FellerBuncher:registerLoweringActionEvent`, `FellerBuncher:releaseMainArmTree`, `FellerBuncher:releaseMountedTrees`, `FellerBuncher:releaseNextTreeSlot`, `FellerBuncher:setFellerBuncherGrabState`

## vehicles/specializations/FertilizingCultivator.lua

`FertilizingCultivator.initSpecialization`, `FertilizingCultivator.prerequisitesPresent`, `FertilizingCultivator.registerEventListeners`, `FertilizingCultivator.registerOverwrittenFunctions`, `FertilizingCultivator:onLoad`, `FertilizingCultivator:processCultivatorArea`, `FertilizingCultivator:setSprayerAITerrainDetailProhibitedRange`

## vehicles/specializations/FertilizingSowingMachine.lua

`FertilizingSowingMachine.initSpecialization`, `FertilizingSowingMachine.prerequisitesPresent`, `FertilizingSowingMachine.registerEventListeners`, `FertilizingSowingMachine.registerOverwrittenFunctions`, `FertilizingSowingMachine:getAreEffectsVisible`, `FertilizingSowingMachine:getUseSprayerAIRequirements`, `FertilizingSowingMachine:onLoad`, `FertilizingSowingMachine:processSowingMachineArea`

## vehicles/specializations/FillTriggerVehicle.lua

`FillTriggerVehicle.initSpecialization`, `FillTriggerVehicle.prerequisitesPresent`, `FillTriggerVehicle.registerEventListeners`, `FillTriggerVehicle.registerOverwrittenFunctions`, `FillTriggerVehicle:getDrawFirstFillText`, `FillTriggerVehicle:onDelete`, `FillTriggerVehicle:onLoad`, `FillTriggerVehicle:onWriteStream`

## vehicles/specializations/FillUnit.lua

`FillActivatable.new`, `FillActivatable:activate`, `FillActivatable:deactivate`, `FillActivatable:draw`, `FillActivatable:getIsActivatable`, `FillActivatable:run`, `FillActivatable:setFillType`, `FillActivatable:updateActivateText`, `FillUnit.actionEventConsoleFillUnitDec`, `FillUnit.actionEventConsoleFillUnitInc`, `FillUnit.actionEventConsoleFillUnitNext`, `FillUnit.actionEventUnload`, `FillUnit.addFillTypeSources`, `FillUnit.getCapacityFromXml`, `FillUnit.getFillTypeNamesFromXML`, `FillUnit.getSpecValueCapacity`, `FillUnit.getSpecValueFillTypes`, `FillUnit.getSpecValueStartFillUnitMassByMassData`, `FillUnit.initSpecialization`, `FillUnit.loadSpecValueCapacity`, `FillUnit.loadSpecValueFillTypes`, `FillUnit.loadSpecValueFillUnitMassData`, `FillUnit.prerequisitesPresent`, `FillUnit.registerEventListeners`, `FillUnit.registerEvents`, `FillUnit.registerFunctions`, `FillUnit.registerOverwrittenFunctions`, `FillUnit.registerUnitDisplaySchema`, `FillUnit.updateUnloadActionDisplay`, `FillUnit:addExactFillRootAimToUpdate`, `FillUnit:addFillUnitFillLevel`, `FillUnit:addFillUnitTrigger`, `FillUnit:debugGetSupportedFillTypesPerFillUnit`, `FillUnit:emptyAllFillUnits`, `FillUnit:getAdditionalComponentMass`, `FillUnit:getAlarmTriggerIsActive`, `FillUnit:getAllowLoadTriggerActivation`, `FillUnit:getCanBeTurnedOn`, `FillUnit:getDoConsumePtoPower`, `FillUnit:getDrawFirstFillText`, `FillUnit:getFillLevelInformation`, `FillUnit:getFillTypeChangeThreshold`, `FillUnit:getFillUnitAllowsFillType`, `FillUnit:getFillUnitAutoAimTargetNode`, `FillUnit:getFillUnitByIndex`, `FillUnit:getFillUnitCanBeFilled`, `FillUnit:getFillUnitCapacity`, `FillUnit:getFillUnitExactFillRootNode`, `FillUnit:getFillUnitExists`, `FillUnit:getFillUnitExtraDistanceFromNode`, `FillUnit:getFillUnitFillLevel`, `FillUnit:getFillUnitFillLevelPercentage`, `FillUnit:getFillUnitFillType`, `FillUnit:getFillUnitFirstSupportedFillType`, `FillUnit:getFillUnitForcedMaterialFillType`, `FillUnit:getFillUnitFreeCapacity`, `FillUnit:getFillUnitFromNode`, `FillUnit:getFillUnitHasMountedPalletsToUnload`, `FillUnit:getFillUnitIndexFromNode`, `FillUnit:getFillUnitLastValidFillType`, `FillUnit:getFillUnitMountedPalletsToUnload`, `FillUnit:getFillUnitRootNode`, `FillUnit:getFillUnitSupportedFillTypes`, `FillUnit:getFillUnitSupportedToolTypes`, `FillUnit:getFillUnitSupportsFillType`, `FillUnit:getFillUnitSupportsToolType`, `FillUnit:getFillUnitSupportsToolTypeAndFillType`, `FillUnit:getFillUnitUnloadPalletFilename`, `FillUnit:getFillUnits`, `FillUnit:getFirstValidFillUnitToFill`, `FillUnit:getIsFillAllowedFromFarm`, `FillUnit:getIsFillUnitActive`, `FillUnit:getIsFoldAllowed`, `FillUnit:getIsLevelerPickupNodeActive`, `FillUnit:getIsMovingToolActive`, `FillUnit:getIsPowerTakeOffActive`, `FillUnit:getIsReadyForAutomatedTrainTravel`, `FillUnit:loadAlarmTrigger`, `FillUnit:loadFillPlane`, `FillUnit:loadFillTypeMaterials`, `FillUnit:loadFillUnitFromXML`, `FillUnit:loadFillUnitUnloadingFromXML`, `FillUnit:loadLevelerNodeFromXML`, `FillUnit:loadMeasurementNode`, `FillUnit:loadMovingToolFromXML`, `FillUnit:onDeactivate`, `FillUnit:onDelete`, `FillUnit:onDischargeTargetObjectChanged`, `FillUnit:onDraw`, `FillUnit:onLoad`, `FillUnit:onPostLoad`, `FillUnit:onPostUpdate`, `FillUnit:onReadStream`, `FillUnit:onReadUpdateStream`, `FillUnit:onRegisterActionEvents`, `FillUnit:onUpdateTick`, `FillUnit:onWriteStream`, `FillUnit:onWriteUpdateStream`, `FillUnit:removeFillUnitTrigger`, `FillUnit:saveStatsToXMLFile`, `FillUnit:saveToXMLFile`, `FillUnit:setAlarmTriggerState`, `FillUnit:setFillPlaneForcedFillType`, `FillUnit:setFillSoundIsPlaying`, `FillUnit:setFillUnitCapacity`, `FillUnit:setFillUnitCapacityToDisplay`, `FillUnit:setFillUnitFillLevelToDisplay`, `FillUnit:setFillUnitFillType`, `FillUnit:setFillUnitFillTypeToDisplay`, `FillUnit:setFillUnitForcedMaterialFillType`, `FillUnit:setFillUnitInTriggerRange`, `FillUnit:setFillUnitIsFilling`, `FillUnit:setFillUnitLastValidFillType`, `FillUnit:showInfo`, `FillUnit:unloadFillUnits`, `FillUnit:updateAlarmTriggers`, `FillUnit:updateFillTypeMaterials`, `FillUnit:updateFillUnitAutoAimTarget`, `FillUnit:updateFillUnitFillPlane`, `FillUnit:updateFillUnitTriggers`, `FillUnit:updateMeasurementNodes`

## vehicles/specializations/FillVolume.lua

`FillVolume.initSpecialization`, `FillVolume.prerequisitesPresent`, `FillVolume.registerEventListeners`, `FillVolume.registerFunctions`, `FillVolume.registerInfoNodeXMLPaths`, `FillVolume.registerOverwrittenFunctions`, `FillVolume:getFillVolumeIndicesByFillUnitIndex`, `FillVolume:getFillVolumeLoadInfo`, `FillVolume:getFillVolumeUVScrollSpeed`, `FillVolume:getFillVolumeUnloadInfo`, `FillVolume:loadExtraDependentParts`, `FillVolume:loadFillVolume`, `FillVolume:loadFillVolumeHeightNode`, `FillVolume:loadFillVolumeInfo`, `FillVolume:onDelete`, `FillVolume:onFillUnitFillLevelChanged`, `FillVolume:onLoad`, `FillVolume:onReadUpdateStream`, `FillVolume:onUpdate`, `FillVolume:onWriteUpdateStream`, `FillVolume:setFillVolumeForcedFillType`, `FillVolume:setFillVolumeForcedFillTypeByFillUnitIndex`, `FillVolume:setMovingToolDirty`, `FillVolume:updateDebugValues`, `FillVolume:updateExtraDependentParts`

## vehicles/specializations/Foldable.lua

`Foldable.actionEventFold`, `Foldable.actionEventFoldAll`, `Foldable.actionEventFoldMiddle`, `Foldable.externalActionEventRegister`, `Foldable.externalActionEventUpdate`, `Foldable.getIsVehicleControlAllowed`, `Foldable.initSpecialization`, `Foldable.prerequisitesPresent`, `Foldable.registerEventListeners`, `Foldable.registerEvents`, `Foldable.registerFoldingXMLPaths`, `Foldable.registerFunctions`, `Foldable.registerOverwrittenFunctions`, `Foldable.setAnimTime`, `Foldable.updateActionEventFold`, `Foldable.updateActionEventFoldMiddle`, `Foldable:actionControllerFoldEvent`, `Foldable:actionControllerLowerEvent`, `Foldable:actionControllerLowerEventAIStart`, `Foldable:allowLoadMovingToolStates`, `Foldable:getAllowDynamicMountObjects`, `Foldable:getAllowsLowering`, `Foldable:getBrakeForce`, `Foldable:getCanAIImplementContinueWork`, `Foldable:getCanBeSelected`, `Foldable:getCanBeTurnedOn`, `Foldable:getCanChangePickupState`, `Foldable:getCanToggleCrabSteering`, `Foldable:getCrabSteeringModeAvailable`, `Foldable:getCutterTiltIsActive`, `Foldable:getFillUnitSupportsToolType`, `Foldable:getFoldAnimTime`, `Foldable:getIsAIPreparingToDrive`, `Foldable:getIsAIReadyToDrive`, `Foldable:getIsAdditionalCharacterActive`, `Foldable:getIsAttacherJointHeightNodeActive`, `Foldable:getIsFoldAllowed`, `Foldable:getIsFoldMiddleAllowed`, `Foldable:getIsGroundAdjustedNodeActive`, `Foldable:getIsInWorkPosition`, `Foldable:getIsInputAttacherActive`, `Foldable:getIsLevelerPickupNodeActive`, `Foldable:getIsLowered`, `Foldable:getIsMovingPartActive`, `Foldable:getIsMovingToolActive`, `Foldable:getIsNextCoverStateAllowed`, `Foldable:getIsNextCoverStateAllowedWarning`, `Foldable:getIsPreprunerNodeActive`, `Foldable:getIsSpeedRotatingPartActive`, `Foldable:getIsSprayTypeActive`, `Foldable:getIsSteeringAxleAllowed`, `Foldable:getIsSupportAnimationAllowed`, `Foldable:getIsSuspensionNodeActive`, `Foldable:getIsTurnedOnAnimationActive`, `Foldable:getIsUnfolded`, `Foldable:getIsVersatileYRotActive`, `Foldable:getIsWheelChockAllowed`, `Foldable:getIsWoodHarvesterTiltStateAllowed`, `Foldable:getIsWorkAreaActive`, `Foldable:getRequiresPower`, `Foldable:getShovelNodeIsActive`, `Foldable:getSlopeCompensationAngleScale`, `Foldable:getToggledFoldDirection`, `Foldable:getToggledFoldMiddleDirection`, `Foldable:getTurnedOnNotAllowedWarning`, `Foldable:isAttachAllowed`, `Foldable:isDetachAllowed`, `Foldable:loadAdditionalCharacterFromXML`, `Foldable:loadAttacherJointHeightNode`, `Foldable:loadCrabSteeringModeFromXML`, `Foldable:loadCutterTiltFromXML`, `Foldable:loadFillUnitFromXML`, `Foldable:loadFoldingPartFromXML`, `Foldable:loadGroundAdjustedNodeFromXML`, `Foldable:loadGroundReferenceNode`, `Foldable:loadInputAttacherJoint`, `Foldable:loadLevelerNodeFromXML`, `Foldable:loadMovingPartFromXML`, `Foldable:loadMovingToolFromXML`, `Foldable:loadPickupFromXML`, `Foldable:loadPreprunerNodeFromXML`, `Foldable:loadShovelNode`, `Foldable:loadSlopeCompensationNodeFromXML`, `Foldable:loadSpeedRotatingPartFromXML`, `Foldable:loadSprayTypeFromXML`, `Foldable:loadSteeringAngleNodeFromXML`, `Foldable:loadSteeringAxleFromXML`, `Foldable:loadSupportAnimationFromXML`, `Foldable:loadSuspensionNodeFromXML`, `Foldable:loadTurnedOnAnimationFromXML`, `Foldable:loadWheelFromXML`, `Foldable:loadWoodHarvesterHeaderTiltFromXML`, `Foldable:loadWorkAreaFromXML`, `Foldable:onDeactivate`, `Foldable:onLoad`, `Foldable:onLoadWheelChockFromXML`, `Foldable:onPostAttach`, `Foldable:onPostLoad`, `Foldable:onPreAttachImplement`, `Foldable:onPreDetach`, `Foldable:onPreDetachImplement`, `Foldable:onReadStream`, `Foldable:onRegisterActionEvents`, `Foldable:onRegisterExternalActionEvents`, `Foldable:onRegistered`, `Foldable:onRootVehicleChanged`, `Foldable:onSetLoweredAll`, `Foldable:onUpdate`, `Foldable:onUpdateTick`, `Foldable:onWriteStream`, `Foldable:registerLoweringActionEvent`, `Foldable:registerSelfLoweringActionEvent`, `Foldable:saveToXMLFile`, `Foldable:setFoldDirection`, `Foldable:setFoldMiddleState`, `Foldable:setFoldState`, `Foldable:updateGroundReferenceNode`, `Foldable:updateSteeringAngleNode`

## vehicles/specializations/FoldableSteps.lua

`FoldableSteps.actionEventFold`, `FoldableSteps.actionEventFoldNeg`, `FoldableSteps.actionEventFoldPos`, `FoldableSteps.externalActionEventFoldNegRegister`, `FoldableSteps.externalActionEventFoldNegUpdate`, `FoldableSteps.externalActionEventFoldPosRegister`, `FoldableSteps.externalActionEventFoldPosUpdate`, `FoldableSteps.externalActionEventFoldRegister`, `FoldableSteps.externalActionEventFoldUpdate`, `FoldableSteps.initSpecialization`, `FoldableSteps.prerequisitesPresent`, `FoldableSteps.registerEventListeners`, `FoldableSteps.registerFunctions`, `FoldableSteps.registerOverwrittenFunctions`, `FoldableSteps.updateActionEvents`, `FoldableSteps.updateFoldStateChangeAllowed`, `FoldableSteps:getAllowHudInfoTrigger`, `FoldableSteps:getCanBeTurnedOn`, `FoldableSteps:getFillUnitSupportsToolType`, `FoldableSteps:getRequiresPower`, `FoldableSteps:getTurnedOnNotAllowedWarning`, `FoldableSteps:onLoad`, `FoldableSteps:onPostLoad`, `FoldableSteps:onReadStream`, `FoldableSteps:onRegisterActionEvents`, `FoldableSteps:onRegisterExternalActionEvents`, `FoldableSteps:onUpdateTick`, `FoldableSteps:onWriteStream`, `FoldableSteps:saveToXMLFile`, `FoldableSteps:setFoldableStepsFoldState`

## vehicles/specializations/FoliageBending.lua

`FoliageBending.initSpecialization`, `FoliageBending.postInitSpecialization`, `FoliageBending.prerequisitesPresent`, `FoliageBending.registerEventListeners`, `FoliageBending.registerFunctions`, `FoliageBending:activateBendingNodes`, `FoliageBending:deactivateBendingNodes`, `FoliageBending:getFoliageBendingNodeByIndex`, `FoliageBending:loadBendingNodeFromXML`, `FoliageBending:loadBendingNodeModifierFromXML`, `FoliageBending:onActivate`, `FoliageBending:onDeactivate`, `FoliageBending:onDelete`, `FoliageBending:onPostLoad`, `FoliageBending:updateFoliageBendingAttributes`

## vehicles/specializations/ForageWagon.lua

`ForageWagon.getDefaultSpeedLimit`, `ForageWagon.initSpecialization`, `ForageWagon.prerequisitesPresent`, `ForageWagon.registerEventListeners`, `ForageWagon.registerFunctions`, `ForageWagon.registerOverwrittenFunctions`, `ForageWagon:doCheckSpeedLimit`, `ForageWagon:fillForageWagon`, `ForageWagon:getConsumingLoad`, `ForageWagon:getFillVolumeUVScrollSpeed`, `ForageWagon:getIsSpeedRotatingPartActive`, `ForageWagon:getIsWorkAreaActive`, `ForageWagon:loadSpeedRotatingPartFromXML`, `ForageWagon:onDeactivate`, `ForageWagon:onDelete`, `ForageWagon:onEndWorkAreaProcessing`, `ForageWagon:onFillUnitFillLevelChanged`, `ForageWagon:onLoad`, `ForageWagon:onReadStream`, `ForageWagon:onReadUpdateStream`, `ForageWagon:onStartWorkAreaProcessing`, `ForageWagon:onTurnedOff`, `ForageWagon:onUpdateTick`, `ForageWagon:onWriteStream`, `ForageWagon:onWriteUpdateStream`, `ForageWagon:processForageWagonArea`, `ForageWagon:setFillEffectActive`

## vehicles/specializations/FrontloaderAttacher.lua

`FrontloaderAttacher.initSpecialization`, `FrontloaderAttacher.prerequisitesPresent`, `FrontloaderAttacher.registerEventListeners`, `FrontloaderAttacher:onLoad`, `FrontloaderAttacher:onPreAttachImplement`, `FrontloaderAttacher:onPreDetachImplement`

## vehicles/specializations/FruitExtraObjects.lua

`FruitExtraObjects.initSpecialization`, `FruitExtraObjects.prerequisitesPresent`, `FruitExtraObjects.registerEventListeners`, `FruitExtraObjects.registerFunctions`, `FruitExtraObjects.registerOverwrittenFunctions`, `FruitExtraObjects.registerXMLPaths`, `FruitExtraObjects:getFruitExtraObjectTypeData`, `FruitExtraObjects:loadFruitExtraObjectFromXML`, `FruitExtraObjects:onDynamicMountTypeChanged`, `FruitExtraObjects:onPostDetach`, `FruitExtraObjects:onPostLoad`, `FruitExtraObjects:onPreAttach`, `FruitExtraObjects:saveToXMLFile`, `FruitExtraObjects:updateFruitExtraObjects`

## vehicles/specializations/FruitPreparer.lua

`FruitPreparer.getDefaultSpeedLimit`, `FruitPreparer.initSpecialization`, `FruitPreparer.prerequisitesPresent`, `FruitPreparer.registerEventListeners`, `FruitPreparer.registerFunctions`, `FruitPreparer.registerOverwrittenFunctions`, `FruitPreparer:doCheckSpeedLimit`, `FruitPreparer:getAllowCutterAIFruitRequirements`, `FruitPreparer:getDirtMultiplier`, `FruitPreparer:getDoGroundManipulation`, `FruitPreparer:getIsRandomlyMovingPartActive`, `FruitPreparer:getWearMultiplier`, `FruitPreparer:loadRandomlyMovingPartFromXML`, `FruitPreparer:loadWorkAreaFromXML`, `FruitPreparer:onAIFieldCourseSettingsInitialized`, `FruitPreparer:onDelete`, `FruitPreparer:onEndWorkAreaProcessing`, `FruitPreparer:onLoad`, `FruitPreparer:onReadUpdateStream`, `FruitPreparer:onTurnedOff`, `FruitPreparer:onTurnedOn`, `FruitPreparer:onWriteUpdateStream`, `FruitPreparer:processFruitPreparerArea`

## vehicles/specializations/GroundAdjustedNodes.lua

`GroundAdjustedNodes.initSpecialization`, `GroundAdjustedNodes.prerequisitesPresent`, `GroundAdjustedNodes.registerAdjustNodeXMLPaths`, `GroundAdjustedNodes.registerEventListeners`, `GroundAdjustedNodes.registerFunctions`, `GroundAdjustedNodes:getIsGroundAdjustedNodeActive`, `GroundAdjustedNodes:initGroundAdjustedAdjustNode`, `GroundAdjustedNodes:loadGroundAdjustedAdjustNodeFromXML`, `GroundAdjustedNodes:loadGroundAdjustedNodeFromXML`, `GroundAdjustedNodes:loadGroundAdjustedRaycastNodeFromXML`, `GroundAdjustedNodes:onLoad`, `GroundAdjustedNodes:onLoadFinished`, `GroundAdjustedNodes:onRegisterAnimationValueTypes`, `GroundAdjustedNodes:onUpdate`, `GroundAdjustedNodes:updateGroundAdjustedNode`, `GroundAdjustedNodes:updateGroundAdjustedRaycasts`

## vehicles/specializations/GroundReference.lua

`GroundReference.initSpecialization`, `GroundReference.prerequisitesPresent`, `GroundReference.registerEventListeners`, `GroundReference.registerEvents`, `GroundReference.registerFunctions`, `GroundReference.registerOverwrittenFunctions`, `GroundReference:getGroundReferenceNodeForwardSpeed`, `GroundReference:getGroundReferenceNodeFromIndex`, `GroundReference:getIsGroundReferenceNodeActive`, `GroundReference:getIsGroundReferenceNodeThreshold`, `GroundReference:getIsSpeedRotatingPartActive`, `GroundReference:getPowerMultiplier`, `GroundReference:loadGroundReferenceNode`, `GroundReference:loadSpeedRotatingPartFromXML`, `GroundReference:onLoad`, `GroundReference:onReadUpdateStream`, `GroundReference:onUpdateTick`, `GroundReference:onWriteUpdateStream`, `GroundReference:updateGroundReferenceNode`

## vehicles/specializations/HUDInfoTrigger.lua

`HUDInfoTrigger.initSpecialization`, `HUDInfoTrigger.onHudInfoTriggerCallback`, `HUDInfoTrigger.prerequisitesPresent`, `HUDInfoTrigger.registerEventListeners`, `HUDInfoTrigger.registerFunctions`, `HUDInfoTrigger.registerOverwrittenFunctions`, `HUDInfoTrigger:getAllowHudInfoTrigger`, `HUDInfoTrigger:getIsPlayerInHudInfoTrigger`, `HUDInfoTrigger:onDelete`, `HUDInfoTrigger:onLoad`, `HUDInfoTrigger:onUpdate`

## vehicles/specializations/HandToolHolders.lua

`HandToolHolders.registerEventListeners`, `HandToolHolders.registerEvents`, `HandToolHolders.registerFunctions`, `HandToolHolders.registerOverwrittenFunctions`, `HandToolHolders:onDelete`, `HandToolHolders:onHandToolHolderFinished`, `HandToolHolders:onLoad`, `HandToolHolders:onReadStream`, `HandToolHolders:onWriteStream`, `HandToolHolders:saveToXMLFile`, `HandToolHolders:setOwnerFarmId`

## vehicles/specializations/HeadlandAnimation.lua

`HeadlandAnimation.initSpecialization`, `HeadlandAnimation.prerequisitesPresent`, `HeadlandAnimation.registerEventListeners`, `HeadlandAnimation.registerFunctions`, `HeadlandAnimation.registerOverwrittenFunctions`, `HeadlandAnimation:onLoad`, `HeadlandAnimation:onUpdate`

## vehicles/specializations/HighPressureWasher.lua

`HighPressureWasher.initSpecialization`, `HighPressureWasher.prerequisitesPresent`, `HighPressureWasher.registerEventListeners`, `HighPressureWasher:onDelete`, `HighPressureWasher:onLoad`

## vehicles/specializations/Honk.lua

`Honk.actionEventHonk`, `Honk.initSpecialization`, `Honk.prerequisitesPresent`, `Honk.registerEventListeners`, `Honk.registerFunctions`, `Honk:getIsHonkAvailable`, `Honk:onDelete`, `Honk:onLeaveVehicle`, `Honk:onLoad`, `Honk:onRegisterActionEvents`, `Honk:onUpdate`, `Honk:playHonk`, `Honk:setHonkInput`

## vehicles/specializations/HookLiftContainer.lua

`HookLiftContainer.initSpecialization`, `HookLiftContainer.prerequisitesPresent`, `HookLiftContainer.registerEventListeners`, `HookLiftContainer.registerOverwrittenFunctions`, `HookLiftContainer:getCanDischargeToGround`, `HookLiftContainer:getCanDischargeToObject`, `HookLiftContainer:isDetachAllowed`, `HookLiftContainer:onLoad`, `HookLiftContainer:onStartTipping`, `HookLiftContainer:onStopTipping`

## vehicles/specializations/HookLiftTrailer.lua

`HookLiftTrailer.initSpecialization`, `HookLiftTrailer.prerequisitesPresent`, `HookLiftTrailer.registerEventListeners`, `HookLiftTrailer.registerFunctions`, `HookLiftTrailer.registerOverwrittenFunctions`, `HookLiftTrailer:getCanDetachContainer`, `HookLiftTrailer:getDoConsumePtoPower`, `HookLiftTrailer:getIsFoldAllowed`, `HookLiftTrailer:getIsTippingAllowed`, `HookLiftTrailer:getPtoRpm`, `HookLiftTrailer:isDetachAllowed`, `HookLiftTrailer:onLoad`, `HookLiftTrailer:onPostAttachImplement`, `HookLiftTrailer:onPostLoad`, `HookLiftTrailer:onPreDetachImplement`, `HookLiftTrailer:onUpdateTick`, `HookLiftTrailer:startTipping`, `HookLiftTrailer:stopTipping`

## vehicles/specializations/HydraulicHammer.lua

`HydraulicHammer.initSpecialization`, `HydraulicHammer.prerequisitesPresent`, `HydraulicHammer.registerEventListeners`, `HydraulicHammer.registerFunctions`, `HydraulicHammer.registerOverwrittenFunctions`, `HydraulicHammer:getConsumingLoad`, `HydraulicHammer:getDirtMultiplier`, `HydraulicHammer:getWearMultiplier`, `HydraulicHammer:hydraulicHammerRaycastCallback`, `HydraulicHammer:onDeactivate`, `HydraulicHammer:onDelete`, `HydraulicHammer:onLoad`, `HydraulicHammer:onTurnedOff`, `HydraulicHammer:onTurnedOn`, `HydraulicHammer:onUpdate`

## vehicles/specializations/IKChains.lua

`IKChains.initSpecialization`, `IKChains.prerequisitesPresent`, `IKChains.registerEventListeners`, `IKChains:onLoad`, `IKChains:onUpdate`

## vehicles/specializations/InlineWrapper.lua

`InlineWrapper.getSpecValueBaleSize`, `InlineWrapper.getSpecValueBaleSizeRound`, `InlineWrapper.getSpecValueBaleSizeSquare`, `InlineWrapper.initSpecialization`, `InlineWrapper.loadSpecValueBaleSize`, `InlineWrapper.loadSpecValueBaleSizeRound`, `InlineWrapper.loadSpecValueBaleSizeSquare`, `InlineWrapper.prerequisitesPresent`, `InlineWrapper.pushOffInlineBaleEvent`, `InlineWrapper.registerEventListeners`, `InlineWrapper.registerFunctions`, `InlineWrapper.registerOverwrittenFunctions`, `InlineWrapper:getAllowBalePushing`, `InlineWrapper:getBrakeForce`, `InlineWrapper:getCanInteract`, `InlineWrapper:getCanPushOff`, `InlineWrapper:getCurrentInlineBale`, `InlineWrapper:getIsActive`, `InlineWrapper:getIsFoldAllowed`, `InlineWrapper:getIsInlineBalingAllowed`, `InlineWrapper:getShowConsumableEmptyWarning`, `InlineWrapper:getWrapperBaleType`, `InlineWrapper:inlineBaleTriggerCallback`, `InlineWrapper:inlineWrapTriggerCallback`, `InlineWrapper:onConsumableVariationChanged`, `InlineWrapper:onDelete`, `InlineWrapper:onDraw`, `InlineWrapper:onEnterVehicle`, `InlineWrapper:onLeaveVehicle`, `InlineWrapper:onLoad`, `InlineWrapper:onPostLoad`, `InlineWrapper:onReadStream`, `InlineWrapper:onReadUpdateStream`, `InlineWrapper:onRegisterActionEvents`, `InlineWrapper:onUpdate`, `InlineWrapper:onUpdateTick`, `InlineWrapper:onWriteStream`, `InlineWrapper:onWriteUpdateStream`, `InlineWrapper:pushOffInlineBale`, `InlineWrapper:readInlineBales`, `InlineWrapper:setCurrentInlineBale`, `InlineWrapper:updateInlineSteeringWheels`, `InlineWrapper:updateRoundBaleWrappingNode`, `InlineWrapper:updateSquareBaleWrappingNode`, `InlineWrapper:updateWrapperRailings`, `InlineWrapper:updateWrappingNodes`, `InlineWrapper:writeInlineBales`, `InlineWrapperActivatable.new`, `InlineWrapperActivatable:getIsActivatable`, `InlineWrapperActivatable:run`

## vehicles/specializations/JigglingParts.lua

`JigglingParts.initSpecialization`, `JigglingParts.prerequisitesPresent`, `JigglingParts.registerEventListeners`, `JigglingParts.registerFunctions`, `JigglingParts:isJigglingPartActive`, `JigglingParts:loadJigglingPartsFromXML`, `JigglingParts:onLoad`, `JigglingParts:onUpdate`, `JigglingParts:updateJigglingPart`

## vehicles/specializations/Leveler.lua

`Leveler.initSpecialization`, `Leveler.onLevelerRaycastCallback`, `Leveler.prerequisitesPresent`, `Leveler.registerEventListeners`, `Leveler.registerFunctions`, `Leveler.registerOverwrittenFunctions`, `Leveler:getIsAttacherJointControlDampingAllowed`, `Leveler:getIsLevelerPickupNodeActive`, `Leveler:loadLevelerNodeFromXML`, `Leveler:onDelete`, `Leveler:onLoad`, `Leveler:onReadUpdateStream`, `Leveler:onUpdate`, `Leveler:onWriteUpdateStream`

## vehicles/specializations/LicensePlates.lua

`LicensePlates.getSpecValuePlateText`, `LicensePlates.initSpecialization`, `LicensePlates.loadSpecValuePlateText`, `LicensePlates.prerequisitesPresent`, `LicensePlates.registerEventListeners`, `LicensePlates.registerFunctions`, `LicensePlates:getHasLicensePlates`, `LicensePlates:getLicensePlateDialogSettings`, `LicensePlates:getLicensePlatesData`, `LicensePlates:getLicensePlatesDataIsEqual`, `LicensePlates:onDelete`, `LicensePlates:onLoad`, `LicensePlates:onPostLoad`, `LicensePlates:onReadStream`, `LicensePlates:onWriteStream`, `LicensePlates:saveToXMLFile`, `LicensePlates:setLicensePlatesData`

## vehicles/specializations/Lights.lua

`Lights.actionEventToggleBeaconLights`, `Lights.actionEventToggleHighBeamLight`, `Lights.actionEventToggleLightFront`, `Lights.actionEventToggleLights`, `Lights.actionEventToggleLightsBack`, `Lights.actionEventToggleTurnLightHazard`, `Lights.actionEventToggleTurnLightLeft`, `Lights.actionEventToggleTurnLightRight`, `Lights.actionEventToggleWorkLightBack`, `Lights.actionEventToggleWorkLightFront`, `Lights.consoleCommandProfile`, `Lights.consoleCommandTopLights`, `Lights.dashboardLightAttributes`, `Lights.dashboardLightState`, `Lights.externalActionEventRegister`, `Lights.externalActionEventUpdate`, `Lights.initSpecialization`, `Lights.prerequisitesPresent`, `Lights.registerEventListeners`, `Lights.registerEvents`, `Lights.registerFunctions`, `Lights.registerOverwrittenFunctions`, `Lights.registerRealLightSetupXMLPath`, `Lights:applyAdditionalActiveLightType`, `Lights:deactivateBeaconLights`, `Lights:deactivateLights`, `Lights:getBeaconLightsVisibility`, `Lights:getCanToggleLight`, `Lights:getDeactivateLightsOnLeave`, `Lights:getInteriorLightBrightness`, `Lights:getIsActiveForInteriorLights`, `Lights:getIsActiveForLights`, `Lights:getIsDashboardGroupActive`, `Lights:getIsLightActive`, `Lights:getLightsTypesMask`, `Lights:getRealLightFromNode`, `Lights:getStaticLightFromNode`, `Lights:getTurnLightState`, `Lights:getUseHighProfile`, `Lights:lightsWeatherChanged`, `Lights:loadAdditionalLightAttributesFromXML`, `Lights:loadDashboardGroupFromXML`, `Lights:loadRealLightSetup`, `Lights:loadSharedLight`, `Lights:onAIDriveableActive`, `Lights:onAIDriveableEnd`, `Lights:onAIFieldWorkerActive`, `Lights:onAIFieldWorkerEnd`, `Lights:onAIFieldWorkerStart`, `Lights:onAIJobVehicleBlock`, `Lights:onAIJobVehicleContinue`, `Lights:onAutomatedTrainTravelActive`, `Lights:onDeactivate`, `Lights:onDelete`, `Lights:onEnterVehicle`, `Lights:onLeaveVehicle`, `Lights:onLightsProfileChanged`, `Lights:onLightsRealBeaconLightChanged`, `Lights:onLoad`, `Lights:onLoadFinished`, `Lights:onPostAttach`, `Lights:onPostDetach`, `Lights:onReadStream`, `Lights:onRegisterActionEvents`, `Lights:onRegisterDashboardValueTypes`, `Lights:onRegisterExternalActionEvents`, `Lights:onRequiresTopLightsChanged`, `Lights:onStartMotor`, `Lights:onStartReverseDirectionChange`, `Lights:onStopMotor`, `Lights:onUpdate`, `Lights:onUpdateTick`, `Lights:onVehiclePhysicsUpdate`, `Lights:onWriteStream`, `Lights:setBeaconLightsVisibility`, `Lights:setBrakeLightsVisibility`, `Lights:setInteriorLightsVisibility`, `Lights:setLightsTypesMask`, `Lights:setNextLightsState`, `Lights:setReverseLightsVisibility`, `Lights:setTopLightsVisibility`, `Lights:setTurnLightState`, `Lights:updateAutomaticLights`

## vehicles/specializations/LivestockTrailer.lua

`LivestockTrailer.getSpecValueNumberAnimals`, `LivestockTrailer.getSpecValueNumberAnimalsCow`, `LivestockTrailer.getSpecValueNumberAnimalsHorse`, `LivestockTrailer.getSpecValueNumberAnimalsPig`, `LivestockTrailer.getSpecValueNumberAnimalsSheep`, `LivestockTrailer.initSpecialization`, `LivestockTrailer.loadSpecValueNumberAnimals`, `LivestockTrailer.loadSpecValueNumberAnimalsCow`, `LivestockTrailer.loadSpecValueNumberAnimalsHorse`, `LivestockTrailer.loadSpecValueNumberAnimalsPig`, `LivestockTrailer.loadSpecValueNumberAnimalsSheep`, `LivestockTrailer.prerequisitesPresent`, `LivestockTrailer.registerEventListeners`, `LivestockTrailer.registerFunctions`, `LivestockTrailer.registerOverwrittenFunctions`, `LivestockTrailer:addAnimals`, `LivestockTrailer:addCluster`, `LivestockTrailer:clearAnimals`, `LivestockTrailer:dayChanged`, `LivestockTrailer:getAdditionalComponentMass`, `LivestockTrailer:getAnimalUnloadPlaces`, `LivestockTrailer:getClusterById`, `LivestockTrailer:getClusterSystem`, `LivestockTrailer:getClusters`, `LivestockTrailer:getCurrentAnimalType`, `LivestockTrailer:getLoadingTrigger`, `LivestockTrailer:getMaxNumOfAnimals`, `LivestockTrailer:getNumOfAnimals`, `LivestockTrailer:getNumOfFreeAnimalSlots`, `LivestockTrailer:getRideablesInTrigger`, `LivestockTrailer:getSellPrice`, `LivestockTrailer:getSupportsAnimalSubType`, `LivestockTrailer:getSupportsAnimalType`, `LivestockTrailer:onAnimalLoadTriggerCallback`, `LivestockTrailer:onAnimalLoaded`, `LivestockTrailer:onAnimalRideableDeleted`, `LivestockTrailer:onDelete`, `LivestockTrailer:onLoad`, `LivestockTrailer:onLoadFinished`, `LivestockTrailer:onReadStream`, `LivestockTrailer:onWriteStream`, `LivestockTrailer:periodChanged`, `LivestockTrailer:saveToXMLFile`, `LivestockTrailer:setAnimalScreenController`, `LivestockTrailer:setLoadingTrigger`, `LivestockTrailer:updateAnimals`, `LivestockTrailer:updatedClusters`

## vehicles/specializations/Locomotive.lua

`Locomotive.getBrakeAcceleration`, `Locomotive.initSpecialization`, `Locomotive.prerequisitesPresent`, `Locomotive.registerEventListeners`, `Locomotive.registerEvents`, `Locomotive.registerFunctions`, `Locomotive.registerOverwrittenFunctions`, `Locomotive:alignToSplineTime`, `Locomotive:getAreSurfaceSoundsActive`, `Locomotive:getCanBeReset`, `Locomotive:getDistanceToRequestedPosition`, `Locomotive:getDownhillForce`, `Locomotive:getFullName`, `Locomotive:getIsEnterable`, `Locomotive:getIsMapHotspotVisible`, `Locomotive:getIsMotorStarted`, `Locomotive:getIsReadyForAutomatedTrainTravel`, `Locomotive:getStopMotorOnLeave`, `Locomotive:getTraveledDistanceStatsActive`, `Locomotive:notifyPlayerFarmChanged`, `Locomotive:onDelete`, `Locomotive:onEnterVehicle`, `Locomotive:onLeaveVehicle`, `Locomotive:onLoad`, `Locomotive:onReadStream`, `Locomotive:onUpdate`, `Locomotive:onWriteStream`, `Locomotive:setLocomotiveState`, `Locomotive:setRequestedSplinePosition`, `Locomotive:setTrainSystem`, `Locomotive:startAutomatedTrainTravel`, `Locomotive:updateVehiclePhysics`

## vehicles/specializations/LogGrab.lua

`LogGrab.actionEventClawAnimation`, `LogGrab.initSpecialization`, `LogGrab.prerequisitesPresent`, `LogGrab.registerEventListeners`, `LogGrab.registerEvents`, `LogGrab.registerFunctions`, `LogGrab.registerLogGrabXMLPaths`, `LogGrab.registerOverwrittenFunctions`, `LogGrab.updateActionEvents`, `LogGrab:addNodeObjectMapping`, `LogGrab:getGrabCanMountSplitShape`, `LogGrab:getIsLogGrabClawStateChangeAllowed`, `LogGrab:getMovingToolMoveValue`, `LogGrab:loadLogGrabFromXML`, `LogGrab:logGrabTriggerCallback`, `LogGrab:mountSplitShape`, `LogGrab:onCutTree`, `LogGrab:onDelete`, `LogGrab:onDelimbTree`, `LogGrab:onFoldStateChanged`, `LogGrab:onFoldTimeChanged`, `LogGrab:onLoad`, `LogGrab:onLogGrabMountedTreesChanged`, `LogGrab:onPostLoad`, `LogGrab:onReadStream`, `LogGrab:onRegisterActionEvents`, `LogGrab:onTurnedOff`, `LogGrab:onTurnedOn`, `LogGrab:onUpdateTick`, `LogGrab:onWriteStream`, `LogGrab:removeNodeObjectMapping`, `LogGrab:saveToXMLFile`, `LogGrab:setComponentJointFrame`, `LogGrab:setLogGrabClawState`, `LogGrab:unmountSplitShape`, `LogGrab:updateDebugValues`, `LogGrab:updateLogGrabClawState`

## vehicles/specializations/ManureBarrel.lua

`ManureBarrel.initSpecialization`, `ManureBarrel.prerequisitesPresent`, `ManureBarrel.registerEventListeners`, `ManureBarrel.registerOverwrittenFunctions`, `ManureBarrel:getAreEffectsVisible`, `ManureBarrel:getIsWorkAreaActive`, `ManureBarrel:onLoad`, `ManureBarrel:onPostAttachImplement`, `ManureBarrel:onPostDetachImplement`

## vehicles/specializations/MixerWagon.lua

`MixerWagon.initSpecialization`, `MixerWagon.prerequisitesPresent`, `MixerWagon.registerEventListeners`, `MixerWagon.registerFunctions`, `MixerWagon.registerOverwrittenFunctions`, `MixerWagon:addFillUnitFillLevel`, `MixerWagon:getConsumingLoad`, `MixerWagon:getDischargeFillType`, `MixerWagon:getDoConsumePtoPower`, `MixerWagon:getFillUnitAllowsFillType`, `MixerWagon:getIsBaleAutoLoadable`, `MixerWagon:getIsPowerTakeOffActive`, `MixerWagon:mixerWagonBaleTriggerCallback`, `MixerWagon:onDelete`, `MixerWagon:onFillUnitFillLevelChanged`, `MixerWagon:onLoad`, `MixerWagon:onMixerWagonBaleDeleted`, `MixerWagon:onPostLoad`, `MixerWagon:onReadStream`, `MixerWagon:onReadUpdateStream`, `MixerWagon:onTurnedOff`, `MixerWagon:onTurnedOn`, `MixerWagon:onUpdate`, `MixerWagon:onWriteStream`, `MixerWagon:onWriteUpdateStream`, `MixerWagon:saveToXMLFile`, `MixerWagon:updateDebugValues`

## vehicles/specializations/Motorbike.lua

`Motorbike.initSpecialization`, `Motorbike.prerequisitesPresent`, `Motorbike.registerEventListeners`, `Motorbike.registerFunctions`, `Motorbike.registerOverwrittenFunctions`, `Motorbike:onLeaveVehicle`, `Motorbike:onLoad`, `Motorbike:onPostLoad`, `Motorbike:onUpdate`

## vehicles/specializations/Motorized.lua

`Motorized.actionEventClutch`, `Motorized.actionEventDirectionChange`, `Motorized.actionEventSelectGear`, `Motorized.actionEventSelectGroup`, `Motorized.actionEventSetMotorStateIgnition`, `Motorized.actionEventSetMotorStateOff`, `Motorized.actionEventSetMotorStateOn`, `Motorized.actionEventShiftGear`, `Motorized.actionEventShiftGroup`, `Motorized.actionEventToggleMotorState`, `Motorized.getSpecValueFuel`, `Motorized.getSpecValueFuelDiesel`, `Motorized.getSpecValueFuelElectricCharge`, `Motorized.getSpecValueFuelMethane`, `Motorized.getSpecValueMaxSpeed`, `Motorized.getSpecValuePower`, `Motorized.getSpecValueTransmission`, `Motorized.initSpecialization`, `Motorized.loadSpecValueFuel`, `Motorized.loadSpecValueMaxSpeed`, `Motorized.loadSpecValuePower`, `Motorized.loadSpecValueTransmission`, `Motorized.prerequisitesPresent`, `Motorized.registerConsumerXMLPaths`, `Motorized.registerDifferentialXMLPaths`, `Motorized.registerEventListeners`, `Motorized.registerEvents`, `Motorized.registerFunctions`, `Motorized.registerMotorXMLPaths`, `Motorized.registerOverwrittenFunctions`, `Motorized.registerSoundXMLPaths`, `Motorized.tryStartMotor`, `Motorized.updateActionEvents`, `Motorized:addToPhysics`, `Motorized:controlVehicle`, `Motorized:generateShiftAnimation`, `Motorized:getAirConsumerUsage`, `Motorized:getBrakeForce`, `Motorized:getCanBeSelected`, `Motorized:getCanMotorRun`, `Motorized:getConsumerFillUnitIndex`, `Motorized:getDeactivateLightsOnLeave`, `Motorized:getDeactivateOnLeave`, `Motorized:getDirectionChangeMode`, `Motorized:getGearInfoToDisplay`, `Motorized:getGearShiftMode`, `Motorized:getIsActiveForInteriorLights`, `Motorized:getIsActiveForWipers`, `Motorized:getIsDashboardGroupActive`, `Motorized:getIsManualDirectionChangeAllowed`, `Motorized:getIsMotorInNeutral`, `Motorized:getIsMotorStarted`, `Motorized:getIsOperating`, `Motorized:getIsPowered`, `Motorized:getMotor`, `Motorized:getMotorBlowOffValveState`, `Motorized:getMotorBrakeTime`, `Motorized:getMotorDifferentialSpeed`, `Motorized:getMotorLoadPercentage`, `Motorized:getMotorNotAllowedWarning`, `Motorized:getMotorRpmPercentage`, `Motorized:getMotorRpmReal`, `Motorized:getMotorStartTime`, `Motorized:getMotorType`, `Motorized:getName`, `Motorized:getStopMotorOnLeave`, `Motorized:getTraveledDistanceStatsActive`, `Motorized:getUsageCausesDamage`, `Motorized:loadConsumerConfiguration`, `Motorized:loadDashboardGroupFromXML`, `Motorized:loadDifferentials`, `Motorized:loadExhaustEffects`, `Motorized:loadGearGroups`, `Motorized:loadGears`, `Motorized:loadMotor`, `Motorized:loadSounds`, `Motorized:onAIJobFinished`, `Motorized:onAIJobStarted`, `Motorized:onClutchCreaking`, `Motorized:onDelete`, `Motorized:onExhaustEffectI3DLoaded`, `Motorized:onFillUnitFillLevelChanged`, `Motorized:onGearChanged`, `Motorized:onGearDirectionChanged`, `Motorized:onGearGroupChanged`, `Motorized:onLoad`, `Motorized:onPostLoad`, `Motorized:onReadStream`, `Motorized:onReadUpdateStream`, `Motorized:onRegisterActionEvents`, `Motorized:onRegisterDashboardValueTypes`, `Motorized:onReverseDirectionChanged`, `Motorized:onSetBroken`, `Motorized:onStateChange`, `Motorized:onUpdate`, `Motorized:onUpdateTick`, `Motorized:onVehicleSettingChanged`, `Motorized:onWriteStream`, `Motorized:onWriteUpdateStream`, `Motorized:removeFromPhysics`, `Motorized:setGearLeversState`, `Motorized:setTransmissionDirection`, `Motorized:startMotor`, `Motorized:stopMotor`, `Motorized:stopVehicle`, `Motorized:updateConsumers`, `Motorized:updateMotorProperties`, `Motorized:updateMotorTemperature`

## vehicles/specializations/Mountable.lua

`Mountable.initSpecialization`, `Mountable.prerequisitesPresent`, `Mountable.registerEventListeners`, `Mountable.registerEvents`, `Mountable.registerFunctions`, `Mountable.registerOverwrittenFunctions`, `Mountable:addMountStateChangeListener`, `Mountable:additionalMountingMassRaycastCallback`, `Mountable:findRootVehicle`, `Mountable:getAdditionalComponentMass`, `Mountable:getAdditionalMountingDistance`, `Mountable:getAdditionalMountingMass`, `Mountable:getAllowComponentMassReduction`, `Mountable:getDefaultAllowComponentMassReduction`, `Mountable:getDynamicMountObject`, `Mountable:getIsActive`, `Mountable:getIsMapHotspotVisible`, `Mountable:getMountObject`, `Mountable:getMountableLockPositions`, `Mountable:getOwnerConnection`, `Mountable:getSupportsMountDynamic`, `Mountable:getSupportsMountKinematic`, `Mountable:mount`, `Mountable:mountDynamic`, `Mountable:mountKinematic`, `Mountable:mountableTriggerCallback`, `Mountable:onDelete`, `Mountable:onDynamicMountJointBreak`, `Mountable:onEnterVehicle`, `Mountable:onLoad`, `Mountable:onPreAttach`, `Mountable:onReadStream`, `Mountable:onUpdate`, `Mountable:onWriteStream`, `Mountable:removeMountStateChangeListener`, `Mountable:setDynamicMountType`, `Mountable:setReducedComponentMass`, `Mountable:setWorldPositionQuaternion`, `Mountable:unmount`, `Mountable:unmountDynamic`, `Mountable:unmountKinematic`, `Mountable:updateDynamicMountJointForceLimit`

## vehicles/specializations/Mower.lua

`Mower.actionEventToggleDrop`, `Mower.getDefaultSpeedLimit`, `Mower.initSpecialization`, `Mower.prerequisitesPresent`, `Mower.registerEventListeners`, `Mower.registerFunctions`, `Mower.registerOverwrittenFunctions`, `Mower.updateActionEventToggleDrop`, `Mower:doCheckSpeedLimit`, `Mower:getCanBeSelected`, `Mower:getDirtMultiplier`, `Mower:getDropArea`, `Mower:getFruitExtraObjectTypeData`, `Mower:getMowerLoadPercentage`, `Mower:getWearMultiplier`, `Mower:loadWorkAreaFromXML`, `Mower:onAIFieldCourseSettingsInitialized`, `Mower:onDelete`, `Mower:onEndWorkAreaProcessing`, `Mower:onLoad`, `Mower:onPostLoad`, `Mower:onReadStream`, `Mower:onReadUpdateStream`, `Mower:onRegisterActionEvents`, `Mower:onStartWorkAreaProcessing`, `Mower:onTurnedOff`, `Mower:onTurnedOn`, `Mower:onUpdate`, `Mower:onWriteStream`, `Mower:onWriteUpdateStream`, `Mower:processDropArea`, `Mower:processMowerArea`, `Mower:setCutSoundEnabled`, `Mower:setDropEffectEnabled`, `Mower:setUseMowerWindrowDropAreas`

## vehicles/specializations/Mulcher.lua

`Mulcher.getDefaultSpeedLimit`, `Mulcher.initSpecialization`, `Mulcher.prerequisitesPresent`, `Mulcher.registerEventListeners`, `Mulcher.registerFunctions`, `Mulcher.registerOverwrittenFunctions`, `Mulcher:doCheckSpeedLimit`, `Mulcher:getAIImplementUseVineSegment`, `Mulcher:getDirtMultiplier`, `Mulcher:getDoGroundManipulation`, `Mulcher:getWearMultiplier`, `Mulcher:loadWorkAreaFromXML`, `Mulcher:onAIFieldCourseSettingsInitialized`, `Mulcher:onDeactivate`, `Mulcher:onDelete`, `Mulcher:onEndWorkAreaProcessing`, `Mulcher:onLoad`, `Mulcher:onPostLoad`, `Mulcher:onReadStream`, `Mulcher:onReadUpdateStream`, `Mulcher:onStartWorkAreaProcessing`, `Mulcher:onUpdateTick`, `Mulcher:onWriteStream`, `Mulcher:onWriteUpdateStream`, `Mulcher:processMulcherArea`

## vehicles/specializations/MultipleItemPurchase.lua

`MultipleItemPurchase.initSpecialization`, `MultipleItemPurchase.prerequisitesPresent`, `MultipleItemPurchase.registerEventListeners`, `MultipleItemPurchase.registerFunctions`, `MultipleItemPurchase.registerOverwrittenFunctions`, `MultipleItemPurchase:addToPhysics`, `MultipleItemPurchase:getFillUnitCapacity`, `MultipleItemPurchase:getTotalMass`, `MultipleItemPurchase:loadItemAtPosition`, `MultipleItemPurchase:onDelete`, `MultipleItemPurchase:onFinishLoadingVehicle`, `MultipleItemPurchase:onLoad`, `MultipleItemPurchase:onPreLoadFinished`, `MultipleItemPurchase:onUpdate`, `MultipleItemPurchase:removeFromPhysics`, `MultipleItemPurchase:setVisibility`

## vehicles/specializations/Pallet.lua

`Pallet.initSpecialization`, `Pallet.prerequisitesPresent`, `Pallet.registerEventListeners`, `Pallet.registerFunctions`, `Pallet.registerOverwrittenFunctions`, `Pallet:autoLoad`, `Pallet:collectPalletTensionBeltNodes`, `Pallet:getAutoLoadSize`, `Pallet:getCanBeReset`, `Pallet:getInfoBoxTitle`, `Pallet:getIsMapHotspotVisible`, `Pallet:getMeshNodes`, `Pallet:getShowInVehiclesOverview`, `Pallet:loadComponentFromXML`, `Pallet:onDelete`, `Pallet:onFillUnitFillLevelChanged`, `Pallet:onLoad`, `Pallet:onPostLoad`, `Pallet:onPreLoad`, `Pallet:saveToXMLFile`, `Pallet:setPalletTensionBeltNodesDirty`

## vehicles/specializations/PalletFiller.lua

`PalletFiller.actionEventBuyPallets`, `PalletFiller.actionEventLowerPlatformLoad`, `PalletFiller.actionEventLowerPlatformUnload`, `PalletFiller.initSpecialization`, `PalletFiller.onCreatePalletFinished`, `PalletFiller.onObjectDeleted`, `PalletFiller.prerequisitesPresent`, `PalletFiller.registerEventListeners`, `PalletFiller.registerFunctions`, `PalletFiller.registerOverwrittenFunctions`, `PalletFiller.updateActionEventTexts`, `PalletFiller.updatePalletFillerDeflectorState`, `PalletFiller:buyPalletFillerPallets`, `PalletFiller:getCanAIImplementContinueWork`, `PalletFiller:getCanBuyPalletFillerPallets`, `PalletFiller:getCanChangePalletFillerState`, `PalletFiller:getCanToggleDischargeToGround`, `PalletFiller:getCanToggleDischargeToObject`, `PalletFiller:getFillLevelInformation`, `PalletFiller:getIsFoldAllowed`, `PalletFiller:getPalletFillerFillStep`, `PalletFiller:getPalletFillerMovementDirection`, `PalletFiller:loadPalletFillerPallet`, `PalletFiller:onDelete`, `PalletFiller:onFinishAnimation`, `PalletFiller:onFoldTimeChanged`, `PalletFiller:onLoad`, `PalletFiller:onLoadFinished`, `PalletFiller:onReadStream`, `PalletFiller:onReadUpdateStream`, `PalletFiller:onRegisterActionEvents`, `PalletFiller:onUpdate`, `PalletFiller:onUpdateTick`, `PalletFiller:onWriteStream`, `PalletFiller:onWriteUpdateStream`, `PalletFiller:removeFromPhysics`, `PalletFiller:saveToXMLFile`, `PalletFiller:setPalletFillerDeflectorState`, `PalletFiller:setPalletFillerState`, `PalletFiller:unloadPalletFillerPallet`, `PalletFiller:verifyCombine`

## vehicles/specializations/Pickup.lua

`Pickup.actionEventTogglePickup`, `Pickup.initSpecialization`, `Pickup.prerequisitesPresent`, `Pickup.registerEventListeners`, `Pickup.registerFunctions`, `Pickup.registerOverwrittenFunctions`, `Pickup.updateActionEvents`, `Pickup:actionControllerLowerPickupEvent`, `Pickup:allowPickingUp`, `Pickup:getCanChangePickupState`, `Pickup:getCanDischargeToGround`, `Pickup:getCanDischargeToObject`, `Pickup:getDirtMultiplier`, `Pickup:getIsLowered`, `Pickup:getWearMultiplier`, `Pickup:loadPickupFromXML`, `Pickup:onFoldTimeChanged`, `Pickup:onLoad`, `Pickup:onPostLoad`, `Pickup:onReadStream`, `Pickup:onRootVehicleChanged`, `Pickup:onSetLoweredAll`, `Pickup:onWriteStream`, `Pickup:registerLoweringActionEvent`, `Pickup:registerSelfLoweringActionEvent`, `Pickup:setPickupState`

## vehicles/specializations/Pipe.lua

`Pipe.actionControllerPipeEvent`, `Pipe.actionEventToggleDischargeToGround`, `Pipe.actionEventTogglePipe`, `Pipe.initSpecialization`, `Pipe.prerequisitesPresent`, `Pipe.registerEventListeners`, `Pipe.registerFunctions`, `Pipe.registerOverwrittenFunctions`, `Pipe.registers`, `Pipe:getCanBeSelected`, `Pipe:getCanBeTurnedOn`, `Pipe:getCanToggleDischargeToGround`, `Pipe:getCanToggleDischargeToObject`, `Pipe:getCurrentPipeState`, `Pipe:getIsAIPreparingToDrive`, `Pipe:getIsAIReadyToDrive`, `Pipe:getIsDischargeNodeActive`, `Pipe:getIsFoldAllowed`, `Pipe:getIsMovingToolActive`, `Pipe:getIsNextCoverStateAllowed`, `Pipe:getIsPipeStateChangeAllowed`, `Pipe:getPipeDischargeNodeIndex`, `Pipe:getRequiresPower`, `Pipe:getTurnedOnNotAllowedWarning`, `Pipe:handleDischarge`, `Pipe:handleDischargeRaycast`, `Pipe:loadCoverFromXML`, `Pipe:loadMovingToolFromXML`, `Pipe:loadPipeNodes`, `Pipe:loadUnloadingTriggers`, `Pipe:onAIImplementPrepareForTransport`, `Pipe:onDelete`, `Pipe:onDeletePipeObject`, `Pipe:onDischargeStateChanged`, `Pipe:onLoad`, `Pipe:onMovingToolChanged`, `Pipe:onPostLoad`, `Pipe:onReadStream`, `Pipe:onReadUpdateStream`, `Pipe:onRegisterActionEvents`, `Pipe:onRootVehicleChanged`, `Pipe:onUpdate`, `Pipe:onUpdateTick`, `Pipe:onWriteStream`, `Pipe:onWriteUpdateStream`, `Pipe:saveToXMLFile`, `Pipe:setPipeDischargeToGround`, `Pipe:setPipeState`, `Pipe:unloadingTriggerCallback`, `Pipe:updateActionEventText`, `Pipe:updateBendingRegulationNodes`, `Pipe:updateNearestObjectInTriggers`, `Pipe:updatePipeNodes`

## vehicles/specializations/Plow.lua

`Plow.actionControllerRotateBackEvent`, `Plow.actionControllerRotateEvent`, `Plow.actionEventLimitToField`, `Plow.actionEventTurn`, `Plow.getDefaultSpeedLimit`, `Plow.initSpecialization`, `Plow.prerequisitesPresent`, `Plow.registerEventListeners`, `Plow.registerFunctions`, `Plow.registerOverwrittenFunctions`, `Plow.registerXMLPaths`, `Plow:doCheckSpeedLimit`, `Plow:getAIInvertMarkersOnTurn`, `Plow:getAllowsLowering`, `Plow:getCanAIImplementContinueWork`, `Plow:getCanBeSelected`, `Plow:getCanTogglePlowRotation`, `Plow:getDirtMultiplier`, `Plow:getIsAIPreparingToDrive`, `Plow:getIsAIReadyToDrive`, `Plow:getIsFoldAllowed`, `Plow:getIsFoldMiddleAllowed`, `Plow:getIsPlowRotationAllowed`, `Plow:getIsSpeedRotatingPartActive`, `Plow:getIsWorkAreaActive`, `Plow:getPlowForceLimitToField`, `Plow:getPlowLimitToField`, `Plow:getSpeedRotatingPartDirection`, `Plow:getWearMultiplier`, `Plow:isDetachAllowed`, `Plow:loadSpeedRotatingPartFromXML`, `Plow:loadWorkAreaFromXML`, `Plow:onAIFieldCourseSettingsInitialized`, `Plow:onAIImplementEnd`, `Plow:onAIImplementEndTurn`, `Plow:onAIImplementSideOffsetChanged`, `Plow:onAIImplementStartTurn`, `Plow:onAIImplementTurnProgress`, `Plow:onDeactivate`, `Plow:onDelete`, `Plow:onEndWorkAreaProcessing`, `Plow:onFinishAnimation`, `Plow:onFoldTimeChanged`, `Plow:onLoad`, `Plow:onPostAttach`, `Plow:onPostLoad`, `Plow:onPreDetach`, `Plow:onReadStream`, `Plow:onRegisterActionEvents`, `Plow:onRootVehicleChanged`, `Plow:onStartAnimation`, `Plow:onStartWorkAreaProcessing`, `Plow:onUpdate`, `Plow:onWriteStream`, `Plow:processPlowArea`, `Plow:saveToXMLFile`, `Plow:setPlowAIRequirements`, `Plow:setPlowLimitToField`, `Plow:setRotationCenter`, `Plow:setRotationMax`

## vehicles/specializations/PlowPacker.lua

`PlowPacker.actionEventPackerDeactivate`, `PlowPacker.initSpecialization`, `PlowPacker.prerequisitesPresent`, `PlowPacker.registerEventListeners`, `PlowPacker.registerFunctions`, `PlowPacker.registerOverwrittenFunctions`, `PlowPacker.updateActionEventText`, `PlowPacker:getIsPackerAllowed`, `PlowPacker:getUseCultivatorAIRequirements`, `PlowPacker:onLoad`, `PlowPacker:onPostLoad`, `PlowPacker:onReadStream`, `PlowPacker:onRegisterActionEvents`, `PlowPacker:onSetLowered`, `PlowPacker:onUpdate`, `PlowPacker:onUpdateTick`, `PlowPacker:onWriteStream`, `PlowPacker:processCultivatorArea`, `PlowPacker:saveToXMLFile`, `PlowPacker:setFoldState`, `PlowPacker:setPackerState`, `PlowPacker:setPlowAIRequirements`, `PlowPacker:setRotationMax`

## vehicles/specializations/PowerConsumer.lua

`PowerConsumer.getMaxPtoRpm`, `PowerConsumer.getSpecValueNeededPower`, `PowerConsumer.getTotalConsumedPtoTorque`, `PowerConsumer.initSpecialization`, `PowerConsumer.loadSpecValueNeededPower`, `PowerConsumer.prerequisitesPresent`, `PowerConsumer.registerEventListeners`, `PowerConsumer.registerFunctions`, `PowerConsumer.registerOverwrittenFunctions`, `PowerConsumer.registerPowerConsumerXMLPaths`, `PowerConsumer:consoleSetPowerConsumer`, `PowerConsumer:getCanBeTurnedOn`, `PowerConsumer:getCanBeTurnedOnAll`, `PowerConsumer:getConsumedPtoTorque`, `PowerConsumer:getConsumingLoad`, `PowerConsumer:getDoConsumePtoPower`, `PowerConsumer:getPowerMultiplier`, `PowerConsumer:getPtoRpm`, `PowerConsumer:getRawSpeedLimit`, `PowerConsumer:getTurnedOnNotAllowedWarning`, `PowerConsumer:loadPowerSetup`, `PowerConsumer:loadWorkModeFromXML`, `PowerConsumer:onLoad`, `PowerConsumer:onStateChange`, `PowerConsumer:onTurnedOn`, `PowerConsumer:onUpdate`, `PowerConsumer:onWorkModeChanged`

## vehicles/specializations/PowerTakeOffs.lua

`PowerTakeOffs.consoleCommandDebug`, `PowerTakeOffs.consoleCommandTestConnection`, `PowerTakeOffs.initSpecialization`, `PowerTakeOffs.prerequisitesPresent`, `PowerTakeOffs.registerEventListeners`, `PowerTakeOffs.registerFunctions`, `PowerTakeOffs.registerInputXMLPaths`, `PowerTakeOffs.registerOutputXMLPaths`, `PowerTakeOffs.registerOverwrittenFunctions`, `PowerTakeOffs.registerXMLPaths`, `PowerTakeOffs:attachPowerTakeOff`, `PowerTakeOffs:attachTypedPowerTakeOff`, `PowerTakeOffs:checkPowerTakeOffCollision`, `PowerTakeOffs:detachPowerTakeOff`, `PowerTakeOffs:detachTypedPowerTakeOff`, `PowerTakeOffs:getInputPowerTakeOffs`, `PowerTakeOffs:getInputPowerTakeOffsByJointDescIndexAndName`, `PowerTakeOffs:getIsPowerTakeOffActive`, `PowerTakeOffs:getOutputPowerTakeOffs`, `PowerTakeOffs:getOutputPowerTakeOffsByJointDescIndex`, `PowerTakeOffs:getPowerTakeOffConfigIndex`, `PowerTakeOffs:loadBasicPowerTakeOff`, `PowerTakeOffs:loadDoubleJointPowerTakeOff`, `PowerTakeOffs:loadExtraDependentParts`, `PowerTakeOffs:loadInputPowerTakeOff`, `PowerTakeOffs:loadLocalPowerTakeOff`, `PowerTakeOffs:loadOutputPowerTakeOff`, `PowerTakeOffs:loadPowerTakeOffFromConfigFile`, `PowerTakeOffs:loadPowerTakeOffsFromXML`, `PowerTakeOffs:loadSingleJointPowerTakeOff`, `PowerTakeOffs:onDelete`, `PowerTakeOffs:onLoad`, `PowerTakeOffs:onPostAttachImplement`, `PowerTakeOffs:onPostLoad`, `PowerTakeOffs:onPowerTakeOffI3DLoaded`, `PowerTakeOffs:onPreAttachImplement`, `PowerTakeOffs:onPreDetachImplement`, `PowerTakeOffs:onPreLoad`, `PowerTakeOffs:onUpdateEnd`, `PowerTakeOffs:onUpdateInterpolation`, `PowerTakeOffs:parkPowerTakeOff`, `PowerTakeOffs:placeLocalPowerTakeOff`, `PowerTakeOffs:updateAttachedPowerTakeOffs`, `PowerTakeOffs:updateDistanceOfTypedPowerTakeOff`, `PowerTakeOffs:updateDoubleJointPowerTakeOff`, `PowerTakeOffs:updateExtraDependentParts`, `PowerTakeOffs:updatePowerTakeOff`, `PowerTakeOffs:updatePowerTakeOffLength`, `PowerTakeOffs:updateSingleJointPowerTakeOff`, `PowerTakeOffs:validatePowerTakeOffAttachment`

## vehicles/specializations/ProtectedBundleVehicle.lua

`ProtectedBundleVehicle.initSpecialization`, `ProtectedBundleVehicle.prerequisitesPresent`, `ProtectedBundleVehicle.registerEventListeners`, `ProtectedBundleVehicle.registerOverwrittenFunctions`, `ProtectedBundleVehicle:getReloadXML`, `ProtectedBundleVehicle:onLoad`, `ProtectedBundleVehicle:onPostDetach`

## vehicles/specializations/PushHandTool.lua

`PushHandTool.actionEventToggleDriveMode`, `PushHandTool.driveModeVehicleCharacterLoaded`, `PushHandTool.initSpecialization`, `PushHandTool.prerequisitesPresent`, `PushHandTool.registerEventListeners`, `PushHandTool.registerFunctions`, `PushHandTool.registerOverwrittenFunctions`, `PushHandTool:customVehicleCharacterLoaded`, `PushHandTool:deleteVehicleCharacter`, `PushHandTool:getAllowCharacterVisibilityUpdate`, `PushHandTool:getIsFoldAllowed`, `PushHandTool:getRaycastPosition`, `PushHandTool:onCameraChanged`, `PushHandTool:onDelete`, `PushHandTool:onEnterVehicle`, `PushHandTool:onLoad`, `PushHandTool:onPostLoad`, `PushHandTool:onReadStream`, `PushHandTool:onReadUpdateStream`, `PushHandTool:onRegisterActionEvents`, `PushHandTool:onUpdate`, `PushHandTool:onVehicleCharacterChanged`, `PushHandTool:onWriteStream`, `PushHandTool:onWriteUpdateStream`, `PushHandTool:playerRaycastCallback`, `PushHandTool:postAnimationUpdate`, `PushHandTool:saveToXMLFile`, `PushHandTool:setActiveCameraIndex`, `PushHandTool:setPushHandToolDriveMode`, `PushHandTool:setVehicleCharacter`

## vehicles/specializations/RandomlyMovingParts.lua

`RandomlyMovingParts.initSpecialization`, `RandomlyMovingParts.prerequisitesPresent`, `RandomlyMovingParts.registerEventListeners`, `RandomlyMovingParts.registerFunctions`, `RandomlyMovingParts:getIsRandomlyMovingPartActive`, `RandomlyMovingParts:loadRandomlyMovingPartFromXML`, `RandomlyMovingParts:onLoad`, `RandomlyMovingParts:onUpdate`, `RandomlyMovingParts:updateRandomlyMovingPart`

## vehicles/specializations/ReceivingHopper.lua

`ReceivingHopper.actionEventToggleBoxCreation`, `ReceivingHopper.initSpecialization`, `ReceivingHopper.prerequisitesPresent`, `ReceivingHopper.registerEventListeners`, `ReceivingHopper.registerFunctions`, `ReceivingHopper.registerOverwrittenFunctions`, `ReceivingHopper.updateActionEvents`, `ReceivingHopper:collisionTestCallback`, `ReceivingHopper:createBox`, `ReceivingHopper:getCanBeSelected`, `ReceivingHopper:getCanSpawnNextBox`, `ReceivingHopper:handleDischargeRaycast`, `ReceivingHopper:onCreateBoxFinished`, `ReceivingHopper:onFillUnitFillLevelChanged`, `ReceivingHopper:onLoad`, `ReceivingHopper:onRegisterActionEvents`, `ReceivingHopper:onUpdateTick`, `ReceivingHopper:saveToXMLFile`, `ReceivingHopper:setCreateBoxes`

## vehicles/specializations/ReverseDriving.lua

`ReverseDriving.actionEventToggleReverseDriving`, `ReverseDriving.initSpecialization`, `ReverseDriving.postInitSpecialization`, `ReverseDriving.prerequisitesPresent`, `ReverseDriving.registerEventListeners`, `ReverseDriving.registerEvents`, `ReverseDriving.registerFunctions`, `ReverseDriving.registerOverwrittenFunctions`, `ReverseDriving:getAIDirectionNode`, `ReverseDriving:getAIImplementCollisionTrigger`, `ReverseDriving:getAIRootNode`, `ReverseDriving:getAllowCharacterVisibilityUpdate`, `ReverseDriving:getCanBeSelected`, `ReverseDriving:getCanStartAIVehicle`, `ReverseDriving:getIsDashboardGroupActive`, `ReverseDriving:getIsLightActive`, `ReverseDriving:getIsReverseDrivingAllowed`, `ReverseDriving:getSteeringDirection`, `ReverseDriving:loadAdditionalLightAttributesFromXML`, `ReverseDriving:loadDashboardGroupFromXML`, `ReverseDriving:onLoad`, `ReverseDriving:onPostLoad`, `ReverseDriving:onReadStream`, `ReverseDriving:onRegisterActionEvents`, `ReverseDriving:onUpdate`, `ReverseDriving:onVehicleCharacterChanged`, `ReverseDriving:onWriteStream`, `ReverseDriving:reverseDirectionChanged`, `ReverseDriving:saveToXMLFile`, `ReverseDriving:setIsReverseDriving`, `ReverseDriving:updateSteeringWheel`

## vehicles/specializations/Rideable.lua

`Rideable.actionEventAccelerate`, `Rideable.actionEventBrake`, `Rideable.actionEventJump`, `Rideable.actionEventSteer`, `Rideable.initSpecialization`, `Rideable.prerequisitesPresent`, `Rideable.registerEventListeners`, `Rideable.registerFunctions`, `Rideable.registerOverwrittenFunctions`, `Rideable:calculateLegsDistance`, `Rideable:dayChanged`, `Rideable:deleteVehicleCharacter`, `Rideable:endFade`, `Rideable:getCanBeReset`, `Rideable:getCanBeSold`, `Rideable:getCluster`, `Rideable:getCurrentGait`, `Rideable:getFullName`, `Rideable:getHoofSurfaceSound`, `Rideable:getImageFilename`, `Rideable:getInteractionHelp`, `Rideable:getIsRideableJumpAllowed`, `Rideable:getMapHotspotRotation`, `Rideable:getName`, `Rideable:getPosition`, `Rideable:getRotation`, `Rideable:getShowInVehiclesOverview`, `Rideable:groundRaycastCallback`, `Rideable:jump`, `Rideable:onDelete`, `Rideable:onDraw`, `Rideable:onEnterVehicle`, `Rideable:onLeaveVehicle`, `Rideable:onLoad`, `Rideable:onLoadFinished`, `Rideable:onReadPositionUpdateStream`, `Rideable:onReadStream`, `Rideable:onReadUpdateStream`, `Rideable:onRegisterActionEvents`, `Rideable:onSetBroken`, `Rideable:onUpdate`, `Rideable:onUpdateInterpolation`, `Rideable:onVehicleCharacterChanged`, `Rideable:onWritePositionUpdateStream`, `Rideable:onWriteStream`, `Rideable:onWriteUpdateStream`, `Rideable:periodChanged`, `Rideable:resetInputs`, `Rideable:saveToXMLFile`, `Rideable:setCluster`, `Rideable:setCurrentGait`, `Rideable:setEquipmentVisibility`, `Rideable:setPlayerToEnter`, `Rideable:setRideableSteer`, `Rideable:setWorldPosition`, `Rideable:setWorldPositionQuat`, `Rideable:setWorldPositionQuaternion`, `Rideable:showInfo`, `Rideable:testCCTMove`, `Rideable:unlinkReins`, `Rideable:updateAnimation`, `Rideable:updateDebugValues`, `Rideable:updateDirt`, `Rideable:updateFootsteps`, `Rideable:updateInputText`, `Rideable:updateKinematic`, `Rideable:updateRiding`, `Rideable:updateSound`, `Rideable:updateVehicleSpeed`

## vehicles/specializations/RidgeFormer.lua

`RidgeFormer.initSpecialization`, `RidgeFormer.prerequisitesPresent`, `RidgeFormer.registerEventListeners`, `RidgeFormer.registerFunctions`, `RidgeFormer.registerOverwrittenFunctions`, `RidgeFormer:doCheckSpeedLimit`, `RidgeFormer:getDirtMultiplier`, `RidgeFormer:getWearMultiplier`, `RidgeFormer:onDeactivate`, `RidgeFormer:onDelete`, `RidgeFormer:onEndWorkAreaProcessing`, `RidgeFormer:onLoad`, `RidgeFormer:onStartWorkAreaProcessing`, `RidgeFormer:processRidgeFormerArea`

## vehicles/specializations/RidgeMarker.lua

`RidgeMarker.actionEventToggleRidgeMarkers`, `RidgeMarker.initSpecialization`, `RidgeMarker.prerequisitesPresent`, `RidgeMarker.registerEventListeners`, `RidgeMarker.registerFunctions`, `RidgeMarker.registerOverwrittenFunctions`, `RidgeMarker.registerRidgeMarkerAreaXMLPaths`, `RidgeMarker.registerRidgeMarkerXMLPaths`, `RidgeMarker.updateActionEvents`, `RidgeMarker:canFoldRidgeMarker`, `RidgeMarker:getCanBeSelected`, `RidgeMarker:getIsSpeedRotatingPartActive`, `RidgeMarker:getIsWorkAreaActive`, `RidgeMarker:loadRidgeMarker`, `RidgeMarker:loadSpeedRotatingPartFromXML`, `RidgeMarker:loadWorkAreaFromXML`, `RidgeMarker:onAIImplementStart`, `RidgeMarker:onFoldStateChanged`, `RidgeMarker:onLoad`, `RidgeMarker:onPostLoad`, `RidgeMarker:onReadStream`, `RidgeMarker:onRegisterActionEvents`, `RidgeMarker:onSetLowered`, `RidgeMarker:onUpdateTick`, `RidgeMarker:onWriteStream`, `RidgeMarker:processRidgeMarkerArea`, `RidgeMarker:saveToXMLFile`, `RidgeMarker:setRidgeMarkerState`

## vehicles/specializations/Roller.lua

`Roller.getDefaultSpeedLimit`, `Roller.initSpecialization`, `Roller.prerequisitesPresent`, `Roller.registerEventListeners`, `Roller.registerFunctions`, `Roller.registerOverwrittenFunctions`, `Roller.registerRollerXMLPaths`, `Roller:doCheckSpeedLimit`, `Roller:getDirtMultiplier`, `Roller:getDoGroundManipulation`, `Roller:getIsWorkAreaActive`, `Roller:getWearMultiplier`, `Roller:onDeactivate`, `Roller:onDelete`, `Roller:onEndWorkAreaProcessing`, `Roller:onLoad`, `Roller:onPostAttach`, `Roller:onStartWorkAreaProcessing`, `Roller:processRollerArea`, `Roller:updateRollerAIRequirements`

## vehicles/specializations/Ropes.lua

`Ropes.initSpecialization`, `Ropes.prerequisitesPresent`, `Ropes.registerEventListeners`, `Ropes.registerFunctions`, `Ropes:loadAdjusterNode`, `Ropes:onLoad`, `Ropes:onLoadFinished`, `Ropes:onPostUpdate`, `Ropes:onUpdate`, `Ropes:updateAdjusterNodes`, `Ropes:updateRopes`

## vehicles/specializations/SaltSpreader.lua

`SaltSpreader.getDefaultSpeedLimit`, `SaltSpreader.initSpecialization`, `SaltSpreader.prerequisitesPresent`, `SaltSpreader.registerEventListeners`, `SaltSpreader.registerFunctions`, `SaltSpreader.registerOverwrittenFunctions`, `SaltSpreader:doCheckSpeedLimit`, `SaltSpreader:getAreControlledActionsAllowed`, `SaltSpreader:getCanBeTurnedOn`, `SaltSpreader:getDirtMultiplier`, `SaltSpreader:getTurnedOnNotAllowedWarning`, `SaltSpreader:getVariableWorkWidthUsage`, `SaltSpreader:getWearMultiplier`, `SaltSpreader:onDelete`, `SaltSpreader:onLoad`, `SaltSpreader:onTurnedOff`, `SaltSpreader:onTurnedOn`, `SaltSpreader:onUpdateTick`, `SaltSpreader:processSaltSpreaderArea`

## vehicles/specializations/SeedTreater.lua

`SeedTreater.initSpecialization`, `SeedTreater.prerequisitesPresent`, `SeedTreater.registerEventListeners`, `SeedTreater.registerFunctions`, `SeedTreater.registerOverwrittenFunctions`, `SeedTreater:discharge`, `SeedTreater:getDischargeFillType`, `SeedTreater:getDischargeNodeEmptyFactor`, `SeedTreater:onLoad`, `SeedTreater:onUpdate`

## vehicles/specializations/SemiTrailerFront.lua

`SemiTrailerFront.prerequisitesPresent`, `SemiTrailerFront.registerEventListeners`, `SemiTrailerFront.registerOverwrittenFunctions`, `SemiTrailerFront:isDetachAllowed`, `SemiTrailerFront:onLoad`, `SemiTrailerFront:onPostAttach`, `SemiTrailerFront:onPostAttachImplement`, `SemiTrailerFront:onPreDetach`, `SemiTrailerFront:onPreDetachImplement`, `SemiTrailerFront:onUpdate`

## vehicles/specializations/ShallowWaterObstacles.lua

`ShallowWaterObstacles.getShallowWaterParameters`, `ShallowWaterObstacles.initSpecialization`, `ShallowWaterObstacles.prerequisitesPresent`, `ShallowWaterObstacles.registerEventListeners`, `ShallowWaterObstacles.registerFunctions`, `ShallowWaterObstacles:loadObstacleNodeFromXML`, `ShallowWaterObstacles:onDelete`, `ShallowWaterObstacles:onLoadFinished`, `ShallowWaterObstacles:onPostLoad`

## vehicles/specializations/Shovel.lua

`Shovel.initSpecialization`, `Shovel.prerequisitesPresent`, `Shovel.registerEventListeners`, `Shovel.registerFunctions`, `Shovel.registerOverwrittenFunctions`, `Shovel:doCheckSpeedLimit`, `Shovel:getCanShovelAtPosition`, `Shovel:getCanToggleDischargeToGround`, `Shovel:getCanToggleDischargeToObject`, `Shovel:getDischargeNodeEmptyFactor`, `Shovel:getIsDischargeNodeActive`, `Shovel:getIsShovelEffectState`, `Shovel:getShovelNodeIsActive`, `Shovel:getShovelTipFactor`, `Shovel:getWearMultiplier`, `Shovel:handleDischarge`, `Shovel:handleDischargeOnEmpty`, `Shovel:handleDischargeRaycast`, `Shovel:loadShovelNode`, `Shovel:onDelete`, `Shovel:onFillUnitFillLevelChanged`, `Shovel:onLoad`, `Shovel:onReadStream`, `Shovel:onReadUpdateStream`, `Shovel:onUpdateTick`, `Shovel:onWriteStream`, `Shovel:onWriteUpdateStream`, `Shovel:updateDebugValues`

## vehicles/specializations/SlopeCompensation.lua

`SlopeCompensation.initSpecialization`, `SlopeCompensation.prerequisitesPresent`, `SlopeCompensation.registerEventListeners`, `SlopeCompensation.registerFunctions`, `SlopeCompensation.registerXMLPaths`, `SlopeCompensation:getSlopeCompensationAngle`, `SlopeCompensation:getSlopeCompensationAngleScale`, `SlopeCompensation:loadSlopeCompensationNodeFromXML`, `SlopeCompensation:loadSlopeCompensationWheels`, `SlopeCompensation:onLoad`, `SlopeCompensation:onLoadFinished`, `SlopeCompensation:onRegisterAnimationValueTypes`, `SlopeCompensation:onUpdate`, `SlopeCompensation:onUpdateTick`, `SlopeCompensation:saveToXMLFile`, `SlopeCompensation:setSlopeCompensationNodeAngle`, `SlopeCompensation:updateDebugValues`

## vehicles/specializations/SmartAttach.lua

`SmartAttach.initSpecialization`, `SmartAttach.prerequisitesPresent`, `SmartAttach.registerEventListeners`, `SmartAttach.registerFunctions`, `SmartAttach:doSmartAttach`, `SmartAttach:getCanBeSmartAttached`, `SmartAttach:onDelete`, `SmartAttach:onLoad`, `SmartAttach:onPreAttach`, `SmartAttach:smartAttachCallback`, `SmartAttachActivatable.new`, `SmartAttachActivatable:getIsActivatable`, `SmartAttachActivatable:run`, `SmartAttachEvent.emptyNew`, `SmartAttachEvent.new`, `SmartAttachEvent.sendEvent`, `SmartAttachEvent:readStream`, `SmartAttachEvent:run`, `SmartAttachEvent:writeStream`

## vehicles/specializations/SowingMachine.lua

`SowingMachine.actionEventToggleSeedType`, `SowingMachine.actionEventToggleSeedTypeBack`, `SowingMachine.getDefaultSpeedLimit`, `SowingMachine.getSpecValueSeedFillTypes`, `SowingMachine.initSpecialization`, `SowingMachine.loadSpecValueSeedFillTypes`, `SowingMachine.prerequisitesPresent`, `SowingMachine.registerEventListeners`, `SowingMachine.registerFunctions`, `SowingMachine.registerOverwrittenFunctions`, `SowingMachine.updateAiParameters`, `SowingMachine.updateChooseSeedActionEvent`, `SowingMachine:addFillUnitFillLevel`, `SowingMachine:changeSeedIndex`, `SowingMachine:doCheckSpeedLimit`, `SowingMachine:getAllowFillFromAir`, `SowingMachine:getAreControlledActionsAllowed`, `SowingMachine:getCanAIImplementContinueWork`, `SowingMachine:getCanBeSelected`, `SowingMachine:getCanBeTurnedOn`, `SowingMachine:getCanPlantOutsideSeason`, `SowingMachine:getCanToggleTurnedOn`, `SowingMachine:getCurrentSeedTypeIcon`, `SowingMachine:getDirectionSnapAngle`, `SowingMachine:getDirtMultiplier`, `SowingMachine:getDrawFirstFillText`, `SowingMachine:getFillUnitAllowsFillType`, `SowingMachine:getIsSeedChangeAllowed`, `SowingMachine:getSowingMachineCanConsume`, `SowingMachine:getSowingMachineFillUnitIndex`, `SowingMachine:getSowingMachineSeedFillTypeIndex`, `SowingMachine:getUseSowingMachineAIRequirements`, `SowingMachine:getWearMultiplier`, `SowingMachine:loadWorkAreaFromXML`, `SowingMachine:onAIFieldCourseSettingsInitialized`, `SowingMachine:onChangedFillType`, `SowingMachine:onDeactivate`, `SowingMachine:onDelete`, `SowingMachine:onEndWorkAreaProcessing`, `SowingMachine:onLoad`, `SowingMachine:onPostLoad`, `SowingMachine:onReadStream`, `SowingMachine:onRegisterActionEvents`, `SowingMachine:onStartWorkAreaProcessing`, `SowingMachine:onStateChange`, `SowingMachine:onTurnedOff`, `SowingMachine:onTurnedOn`, `SowingMachine:onUpdate`, `SowingMachine:onUpdateTick`, `SowingMachine:onWriteStream`, `SowingMachine:processSowingMachineArea`, `SowingMachine:saveToXMLFile`, `SowingMachine:setFillTypeSourceDisplayFillType`, `SowingMachine:setSeedFruitType`, `SowingMachine:setSeedIndex`, `SowingMachine:updateMissionSowingWarning`

## vehicles/specializations/SpeedRotatingParts.lua

`SpeedRotatingParts.initSpecialization`, `SpeedRotatingParts.prerequisitesPresent`, `SpeedRotatingParts.registerEventListeners`, `SpeedRotatingParts.registerFunctions`, `SpeedRotatingParts.registerOverwrittenFunctions`, `SpeedRotatingParts:getIsSpeedRotatingPartActive`, `SpeedRotatingParts:getSpeedRotatingPartDirection`, `SpeedRotatingParts:loadSpeedRotatingPartFromXML`, `SpeedRotatingParts:onLoad`, `SpeedRotatingParts:onReadStream`, `SpeedRotatingParts:onReadUpdateStream`, `SpeedRotatingParts:onUpdate`, `SpeedRotatingParts:onUpdateTick`, `SpeedRotatingParts:onWriteStream`, `SpeedRotatingParts:onWriteUpdateStream`, `SpeedRotatingParts:updateSpeedRotatingPart`, `SpeedRotatingParts:validateWashableNode`

## vehicles/specializations/SplineVehicle.lua

`SplineVehicle.initSpecialization`, `SplineVehicle.prerequisitesPresent`, `SplineVehicle.registerEventListeners`, `SplineVehicle.registerFunctions`, `SplineVehicle.registerOverwrittenFunctions`, `SplineVehicle:alignToSplineTime`, `SplineVehicle:getAreSurfaceSoundsActive`, `SplineVehicle:getCurrentSplinePosition`, `SplineVehicle:getCurrentSurfaceSound`, `SplineVehicle:getFrontToBackDistance`, `SplineVehicle:getIsDischargeNodeActive`, `SplineVehicle:getLastSpeed`, `SplineVehicle:getSplinePositionAndTimeFromDistance`, `SplineVehicle:getSplineTimeFromDistance`, `SplineVehicle:loadDischargeNode`, `SplineVehicle:onLoad`, `SplineVehicle:setTrainSystem`

## vehicles/specializations/Sprayer.lua

`Sprayer.actionEventDoubledAmount`, `Sprayer.getDefaultSpeedLimit`, `Sprayer.initSpecialization`, `Sprayer.prerequisitesPresent`, `Sprayer.registerEventListeners`, `Sprayer.registerEvents`, `Sprayer.registerFunctions`, `Sprayer.registerOverwrittenFunctions`, `Sprayer:doCheckSpeedLimit`, `Sprayer:getAIImplementUseVineSegment`, `Sprayer:getAIRequiresTurnOffOnHeadland`, `Sprayer:getActiveSprayType`, `Sprayer:getAreControlledActionsAllowed`, `Sprayer:getAreEffectsVisible`, `Sprayer:getCanBeTurnedOn`, `Sprayer:getCanToggleTurnedOn`, `Sprayer:getDirtMultiplier`, `Sprayer:getDrawFirstFillText`, `Sprayer:getEffectByNode`, `Sprayer:getExternalFill`, `Sprayer:getFillVolumeUVScrollSpeed`, `Sprayer:getIsSprayTypeActive`, `Sprayer:getIsSprayerExternallyFilled`, `Sprayer:getIsWorkAreaActive`, `Sprayer:getRawSpeedLimit`, `Sprayer:getSprayerDoubledAmountActive`, `Sprayer:getSprayerFillUnitIndex`, `Sprayer:getSprayerUsage`, `Sprayer:getUseSprayerAIRequirements`, `Sprayer:getVariableWorkWidthUsage`, `Sprayer:getWearMultiplier`, `Sprayer:loadSprayTypeFromXML`, `Sprayer:loadWorkAreaFromXML`, `Sprayer:onAIImplementEnd`, `Sprayer:onDelete`, `Sprayer:onEndWorkAreaProcessing`, `Sprayer:onFillUnitFillLevelChanged`, `Sprayer:onLoad`, `Sprayer:onPreDetach`, `Sprayer:onRegisterActionEvents`, `Sprayer:onSetLowered`, `Sprayer:onSprayTypeChange`, `Sprayer:onStartWorkAreaProcessing`, `Sprayer:onStateChange`, `Sprayer:onTurnedOff`, `Sprayer:onTurnedOn`, `Sprayer:onUpdateTick`, `Sprayer:onVariableWorkWidthSectionChanged`, `Sprayer:processSprayerArea`, `Sprayer:setSprayerAITerrainDetailProhibitedRange`, `Sprayer:setSprayerDoubledAmountActive`, `Sprayer:updateSprayerEffects`

## vehicles/specializations/StonePicker.lua

`StonePicker.getDefaultSpeedLimit`, `StonePicker.initSpecialization`, `StonePicker.prerequisitesPresent`, `StonePicker.registerEventListeners`, `StonePicker.registerFunctions`, `StonePicker.registerOverwrittenFunctions`, `StonePicker:doCheckSpeedLimit`, `StonePicker:getCanBeTurnedOn`, `StonePicker:getCanToggleTurnedOn`, `StonePicker:getDirtMultiplier`, `StonePicker:getDoGroundManipulation`, `StonePicker:getIsWorkAreaActive`, `StonePicker:getTurnedOnNotAllowedWarning`, `StonePicker:getWearMultiplier`, `StonePicker:loadWorkAreaFromXML`, `StonePicker:onAIFieldCourseSettingsInitialized`, `StonePicker:onDeactivate`, `StonePicker:onDelete`, `StonePicker:onEndWorkAreaProcessing`, `StonePicker:onFillUnitFillLevelChanged`, `StonePicker:onLoad`, `StonePicker:onPostAttach`, `StonePicker:onReadStream`, `StonePicker:onReadUpdateStream`, `StonePicker:onStartWorkAreaProcessing`, `StonePicker:onWriteStream`, `StonePicker:onWriteUpdateStream`, `StonePicker:processStonePickerArea`, `StonePicker:setStonePickerEffectsState`

## vehicles/specializations/StrawBlower.lua

`StrawBlower.initSpecialization`, `StrawBlower.prerequisitesPresent`, `StrawBlower.registerEventListeners`, `StrawBlower.registerFunctions`, `StrawBlower.registerOverwrittenFunctions`, `StrawBlower:addFillUnitFillLevel`, `StrawBlower:getAllowDynamicMountFillLevelInfo`, `StrawBlower:getDrawFirstFillText`, `StrawBlower:onDelete`, `StrawBlower:onDeleteStrawBlowerObject`, `StrawBlower:onDischargeStateChanged`, `StrawBlower:onFillUnitFillLevelChanged`, `StrawBlower:onLoad`, `StrawBlower:onUpdateTick`, `StrawBlower:strawBlowerBaleTriggerCallback`

## vehicles/specializations/StumpCutter.lua

`StumpCutter.initSpecialization`, `StumpCutter.prerequisitesPresent`, `StumpCutter.registerEventListeners`, `StumpCutter.registerFunctions`, `StumpCutter.registerOverwrittenFunctions`, `StumpCutter:crushSplitShape`, `StumpCutter:getConsumingLoad`, `StumpCutter:getCultivatorLimitToField`, `StumpCutter:getDirtMultiplier`, `StumpCutter:getPlowForceLimitToField`, `StumpCutter:getPlowLimitToField`, `StumpCutter:getWearMultiplier`, `StumpCutter:onDeactivate`, `StumpCutter:onDelete`, `StumpCutter:onLoad`, `StumpCutter:onTurnedOff`, `StumpCutter:onTurnedOn`, `StumpCutter:onUpdateTick`, `StumpCutter:processStumpCutterArea`, `StumpCutter:stumpCutterSplitShapeCallback`

## vehicles/specializations/StumpCutterLight.lua

`StumpCutterLight.initSpecialization`, `StumpCutterLight.prerequisitesPresent`, `StumpCutterLight.registerEventListeners`, `StumpCutterLight.registerFunctions`, `StumpCutterLight.registerOverwrittenFunctions`, `StumpCutterLight:getAreControlledActionsAllowed`, `StumpCutterLight:getConsumingLoad`, `StumpCutterLight:getDirtMultiplier`, `StumpCutterLight:getWearMultiplier`, `StumpCutterLight:onDeactivate`, `StumpCutterLight:onDelete`, `StumpCutterLight:onLoad`, `StumpCutterLight:onTurnedOff`, `StumpCutterLight:onTurnedOn`, `StumpCutterLight:onUpdate`, `StumpCutterLight:removeTreeStump`, `StumpCutterLight:stumpCutterLightOverlapCallback`

## vehicles/specializations/SupportVehicle.lua

`SupportVehicle.initSpecialization`, `SupportVehicle.prerequisitesPresent`, `SupportVehicle.registerEventListeners`, `SupportVehicle.registerFunctions`, `SupportVehicle.registerOverwrittenFunctions`, `SupportVehicle:addSupportVehicle`, `SupportVehicle:enableSupportVehicle`, `SupportVehicle:getAllowMultipleAttachments`, `SupportVehicle:getIsReadyToFinishDetachProcess`, `SupportVehicle:getShowAttachableMapHotspot`, `SupportVehicle:onDelete`, `SupportVehicle:onLoad`, `SupportVehicle:onPostDetach`, `SupportVehicle:onUpdate`, `SupportVehicle:removeSupportVehicle`, `SupportVehicle:resolveMultipleAttachments`, `SupportVehicle:startDetachProcess`, `SupportVehicle:supportVehicleLoaded`

## vehicles/specializations/Suspensions.lua

`Suspensions.initSpecialization`, `Suspensions.prerequisitesPresent`, `Suspensions.registerEventListeners`, `Suspensions.registerFunctions`, `Suspensions.subCollisionErrorFunction`, `Suspensions:getIsSuspensionNodeActive`, `Suspensions:getSuspensionModfier`, `Suspensions:getSuspensionNodeFromIndex`, `Suspensions:loadSuspensionNodeFromXML`, `Suspensions:onEnterVehicle`, `Suspensions:onLoad`, `Suspensions:onUpdate`, `Suspensions:onVehicleCharacterChanged`, `Suspensions:setSuspensionNodeCharacter`

## vehicles/specializations/Tedder.lua

`Tedder.getDefaultSpeedLimit`, `Tedder.initSpecialization`, `Tedder.prerequisitesPresent`, `Tedder.registerEventListeners`, `Tedder.registerFunctions`, `Tedder.registerOverwrittenFunctions`, `Tedder:doCheckSpeedLimit`, `Tedder:getDirtMultiplier`, `Tedder:getWearMultiplier`, `Tedder:loadWorkAreaFromXML`, `Tedder:onAIFieldCourseSettingsInitialized`, `Tedder:onDeactivate`, `Tedder:onDelete`, `Tedder:onEndWorkAreaProcessing`, `Tedder:onLoad`, `Tedder:onPostLoad`, `Tedder:onReadStream`, `Tedder:onReadUpdateStream`, `Tedder:onStartWorkAreaProcessing`, `Tedder:onTurnedOff`, `Tedder:onTurnedOn`, `Tedder:onUpdateTick`, `Tedder:onWriteStream`, `Tedder:onWriteUpdateStream`, `Tedder:preprocessTedderArea`, `Tedder:processDropArea`, `Tedder:processTedderArea`

## vehicles/specializations/TensionBeltObject.lua

`TensionBeltObject.initSpecialization`, `TensionBeltObject.prerequisitesPresent`, `TensionBeltObject.registerEventListeners`, `TensionBeltObject.registerFunctions`, `TensionBeltObject:getMeshNodes`, `TensionBeltObject:getSupportsTensionBelts`, `TensionBeltObject:getTensionBeltNodeId`, `TensionBeltObject:onLoad`

## vehicles/specializations/TensionBelts.lua

`TensionBelts.actionEventToggleTensionBelts`, `TensionBelts.consoleCommandToggleTensionBeltDebugRendering`, `TensionBelts.initSpecialization`, `TensionBelts.prerequisitesPresent`, `TensionBelts.registerEventListeners`, `TensionBelts.registerFunctions`, `TensionBelts.registerOverwrittenFunctions`, `TensionBelts:createTensionBelt`, `TensionBelts:freeTensionBeltObject`, `TensionBelts:getAdditionalComponentMass`, `TensionBelts:getCanBeSelected`, `TensionBelts:getCanDischargeToGround`, `TensionBelts:getCanDischargeToObject`, `TensionBelts:getFillLevelInformation`, `TensionBelts:getIsDynamicallyMountedNode`, `TensionBelts:getIsFoldAllowed`, `TensionBelts:getIsPlayerInTensionBeltsRange`, `TensionBelts:getIsReadyForAutomatedTrainTravel`, `TensionBelts:getObjectToMount`, `TensionBelts:getObjectsToUnmount`, `TensionBelts:lockTensionBeltObject`, `TensionBelts:objectOverlapCallback`, `TensionBelts:onDelete`, `TensionBelts:onDraw`, `TensionBelts:onLoad`, `TensionBelts:onPostLoad`, `TensionBelts:onPreDelete`, `TensionBelts:onReadStream`, `TensionBelts:onRegisterActionEvents`, `TensionBelts:onTensionBeltTreeShapeCut`, `TensionBelts:onUpdate`, `TensionBelts:onUpdateTick`, `TensionBelts:onWriteStream`, `TensionBelts:refreshTensionBelts`, `TensionBelts:removeTensionBelt`, `TensionBelts:saveToXMLFile`, `TensionBelts:setAllTensionBeltsActive`, `TensionBelts:setTensionBeltsActive`, `TensionBelts:tensionBeltActivationTriggerCallback`, `TensionBelts:updateFastenState`, `TensionBeltsActivatable.new`, `TensionBeltsActivatable:getDistance`, `TensionBeltsActivatable:getIsActivatable`, `TensionBeltsActivatable:run`, `TensionBeltsActivatable:updateActivateText`

## vehicles/specializations/TestAreas.lua

`TestAreas.initSpecialization`, `TestAreas.prerequisitesPresent`, `TestAreas.registerEventListeners`, `TestAreas.registerFunctions`, `TestAreas.registerOverwrittenFunctions`, `TestAreas:calculateTestAreaDimensions`, `TestAreas:generateTestAreasForWorkArea`, `TestAreas:getIsTestAreaActive`, `TestAreas:getTestAreaChargeByWorkAreaIndex`, `TestAreas:getTestAreaWidthByWorkAreaIndex`, `TestAreas:loadWorkAreaFromXML`, `TestAreas:onPostLoad`, `TestAreas:onPreLoad`, `TestAreas:onReadStream`, `TestAreas:onReadUpdateStream`, `TestAreas:onUpdateTick`, `TestAreas:onWriteStream`, `TestAreas:onWriteUpdateStream`, `TestAreas:processTestArea`, `TestAreas:readTestAreasStream`, `TestAreas:registerTestAreaForWorkArea`, `TestAreas:setTestAreaRequirements`, `TestAreas:writeTestAreasStream`

## vehicles/specializations/TipOccluder.lua

`TipOccluder.initSpecialization`, `TipOccluder.prerequisitesPresent`, `TipOccluder.registerEventListeners`, `TipOccluder.registerFunctions`, `TipOccluder.registerOverwrittenFunctions`, `TipOccluder:getRequiresTipOcclusionArea`, `TipOccluder:getTipOcclusionAreas`, `TipOccluder:getWheelsWithTipOcclisionAreaGroupId`, `TipOccluder:onLoad`, `TipOccluder:onLoadFinished`

## vehicles/specializations/TireTracks.lua

`TireTracks.initSpecialization`, `TireTracks.prerequisitesPresent`, `TireTracks.registerEventListeners`, `TireTracks.registerFunctions`, `TireTracks.registerOverwrittenFunctions`, `TireTracks:addTireTrackNode`, `TireTracks:getAllowTireTracks`, `TireTracks:onDelete`, `TireTracks:onPreLoad`, `TireTracks:onUpdate`, `TireTracks:removeTireTrackNode`, `TireTracks:updateTireTrackNode`

## vehicles/specializations/Trailer.lua

`Trailer.actionEventManualToggleDoor`, `Trailer.actionEventManualToggleTip`, `Trailer.actionEventToggleTipSide`, `Trailer.initSpecialization`, `Trailer.prerequisitesPresent`, `Trailer.registerEventListeners`, `Trailer.registerEvents`, `Trailer.registerFunctions`, `Trailer.registerOverwrittenFunctions`, `Trailer:endTipping`, `Trailer:getAIHasFinishedDischarge`, `Trailer:getAllowTrailerDoorToggle`, `Trailer:getCanBeSelected`, `Trailer:getCanChangePickupState`, `Trailer:getCanDischargeToGround`, `Trailer:getCanDischargeToObject`, `Trailer:getCanTogglePreferdTipSide`, `Trailer:getDischargeNodeEmptyFactor`, `Trailer:getIsNextCoverStateAllowed`, `Trailer:getIsTipSideAvailable`, `Trailer:getIsTurnedOnAnimationActive`, `Trailer:getNextAvailableTipSide`, `Trailer:getRequiresPower`, `Trailer:getTipState`, `Trailer:loadPickupFromXML`, `Trailer:loadTipSide`, `Trailer:loadTurnedOnAnimationFromXML`, `Trailer:onDeactivate`, `Trailer:onDelete`, `Trailer:onDischargeStateChanged`, `Trailer:onFillUnitFillLevelChanged`, `Trailer:onLoad`, `Trailer:onLoadFinished`, `Trailer:onPostLoad`, `Trailer:onReadStream`, `Trailer:onRegisterActionEvents`, `Trailer:onRegisterAnimationValueTypes`, `Trailer:onUpdate`, `Trailer:onWriteStream`, `Trailer:saveToXMLFile`, `Trailer:setManualDischargeState`, `Trailer:setPreferedTipSide`, `Trailer:setTipState`, `Trailer:setTrailerDoorState`, `Trailer:startAIDischarge`, `Trailer:startTipping`, `Trailer:stopTipping`, `Trailer:updateTrailerAutomaticRedischarge`

## vehicles/specializations/TreePlanter.lua

`TreePlanter.actionEventPlant`, `TreePlanter.actionEventToggleTreePlanterFieldLimitation`, `TreePlanter.getDefaultSpeedLimit`, `TreePlanter.getSaplingPalletInRange`, `TreePlanter.initSpecialization`, `TreePlanter.prerequisitesPresent`, `TreePlanter.registerEventListeners`, `TreePlanter.registerFunctions`, `TreePlanter.registerOverwrittenFunctions`, `TreePlanter:addFillUnitFillLevel`, `TreePlanter:createTree`, `TreePlanter:doCheckSpeedLimit`, `TreePlanter:getCanBeSelected`, `TreePlanter:getCanPlantOutsideSeason`, `TreePlanter:getDirtMultiplier`, `TreePlanter:getFillLevelInformation`, `TreePlanter:getFillUnitAllowsFillType`, `TreePlanter:getFillUnitCapacity`, `TreePlanter:getFillUnitFillLevel`, `TreePlanter:getFillUnitFillLevelPercentage`, `TreePlanter:getFillUnitFillType`, `TreePlanter:getFillUnitFreeCapacity`, `TreePlanter:getFillUnitHasMountedPalletsToUnload`, `TreePlanter:getFillUnitMountedPalletsToUnload`, `TreePlanter:getFillUnitUnloadPalletFilename`, `TreePlanter:getImplementAllowAutomaticSteering`, `TreePlanter:getIsOnField`, `TreePlanter:getIsSpeedRotatingPartActive`, `TreePlanter:getIsWorkAreaActive`, `TreePlanter:getWearMultiplier`, `TreePlanter:loadPallet`, `TreePlanter:onDelete`, `TreePlanter:onDeleteTreePlanterObject`, `TreePlanter:onDraw`, `TreePlanter:onFillUnitFillLevelChanged`, `TreePlanter:onFillUnitIsFillingStateChanged`, `TreePlanter:onFillUnitUnloadPallet`, `TreePlanter:onLoad`, `TreePlanter:onReadStream`, `TreePlanter:onReadUpdateStream`, `TreePlanter:onRegisterActionEvents`, `TreePlanter:onTreePlanterSaplingLoaded`, `TreePlanter:onTurnedOff`, `TreePlanter:onTurnedOn`, `TreePlanter:onUpdate`, `TreePlanter:onUpdateTick`, `TreePlanter:onWriteStream`, `TreePlanter:onWriteUpdateStream`, `TreePlanter:palletTriggerCallback`, `TreePlanter:removeMountedObject`, `TreePlanter:saveToXMLFile`, `TreePlanter:setPlantLimitToField`, `TreePlanter:setTreePlanterTreeTypeIndex`, `TreePlanter:updateTreePlanterFillLevel`, `TreePlanterActivatable.new`, `TreePlanterActivatable:getIsActivatable`, `TreePlanterActivatable:run`

## vehicles/specializations/TreeSaplingPallet.lua

`TreeSaplingPallet.initSpecialization`, `TreeSaplingPallet.prerequisitesPresent`, `TreeSaplingPallet.registerEventListeners`, `TreeSaplingPallet.registerFunctions`, `TreeSaplingPallet.registerOverwrittenFunctions`, `TreeSaplingPallet:getTreeSaplingPalletType`, `TreeSaplingPallet:onDelete`, `TreeSaplingPallet:onFillUnitFillLevelChanged`, `TreeSaplingPallet:onLoad`, `TreeSaplingPallet:onTreeSaplingLoaded`, `TreeSaplingPallet:saveToXMLFile`, `TreeSaplingPallet:setTreeSaplingPalletType`, `TreeSaplingPallet:showInfo`, `TreeSaplingPallet:updateTreeSaplingPalletNodes`, `TreeSaplingPallet:updateTreeSaplingVisuals`

## vehicles/specializations/TreeSaw.lua

`TreeSaw.initSpecialization`, `TreeSaw.prerequisitesPresent`, `TreeSaw.registerEventListeners`, `TreeSaw:onDeactivate`, `TreeSaw:onDelete`, `TreeSaw:onDraw`, `TreeSaw:onLoad`, `TreeSaw:onReadUpdateStream`, `TreeSaw:onTurnedOff`, `TreeSaw:onTurnedOn`, `TreeSaw:onUpdate`, `TreeSaw:onUpdateTick`, `TreeSaw:onWriteUpdateStream`

## vehicles/specializations/TurnOnVehicle.lua

`TurnOnVehicle.actionControllerTurnOnEvent`, `TurnOnVehicle.actionEventTurnOn`, `TurnOnVehicle.actionEventTurnOnAll`, `TurnOnVehicle.dashboardRpmAttributes`, `TurnOnVehicle.dashboardRpmValue`, `TurnOnVehicle.externalActionEventRegister`, `TurnOnVehicle.externalActionEventUpdate`, `TurnOnVehicle.initSpecialization`, `TurnOnVehicle.prerequisitesPresent`, `TurnOnVehicle.registerEventListeners`, `TurnOnVehicle.registerEvents`, `TurnOnVehicle.registerFunctions`, `TurnOnVehicle.registerOverwrittenFunctions`, `TurnOnVehicle.updateActionEvents`, `TurnOnVehicle:getAIRequiresTurnOffOnHeadland`, `TurnOnVehicle:getAIRequiresTurnOn`, `TurnOnVehicle:getAlarmTriggerIsActive`, `TurnOnVehicle:getBunkerSiloCompacterScale`, `TurnOnVehicle:getCanAIImplementContinueWork`, `TurnOnVehicle:getCanBeSelected`, `TurnOnVehicle:getCanBeTurnedOn`, `TurnOnVehicle:getCanBeTurnedOnAll`, `TurnOnVehicle:getCanToggleTurnedOn`, `TurnOnVehicle:getIsDischargeNodeActive`, `TurnOnVehicle:getIsFillUnitActive`, `TurnOnVehicle:getIsOperating`, `TurnOnVehicle:getIsPowerTakeOffActive`, `TurnOnVehicle:getIsSeedChangeAllowed`, `TurnOnVehicle:getIsTurnedOn`, `TurnOnVehicle:getIsTurnedOnAnimationActive`, `TurnOnVehicle:getIsWorkAreaActive`, `TurnOnVehicle:getIsWorkModeChangeAllowed`, `TurnOnVehicle:getRequiresTurnOn`, `TurnOnVehicle:getShovelNodeIsActive`, `TurnOnVehicle:getTurnedOnNotAllowedWarning`, `TurnOnVehicle:getTurnedOnSpeedFactor`, `TurnOnVehicle:getUseTurnedOnSchema`, `TurnOnVehicle:loadAlarmTrigger`, `TurnOnVehicle:loadBunkerSiloCompactorFromXML`, `TurnOnVehicle:loadDischargeNode`, `TurnOnVehicle:loadInputAttacherJoint`, `TurnOnVehicle:loadShovelNode`, `TurnOnVehicle:loadTurnedOnAnimationFromXML`, `TurnOnVehicle:loadWorkAreaFromXML`, `TurnOnVehicle:onAlarmTriggerChanged`, `TurnOnVehicle:onDeactivate`, `TurnOnVehicle:onDelete`, `TurnOnVehicle:onLoad`, `TurnOnVehicle:onPostAttach`, `TurnOnVehicle:onPreDetach`, `TurnOnVehicle:onReadStream`, `TurnOnVehicle:onRegisterActionEvents`, `TurnOnVehicle:onRegisterDashboardValueTypes`, `TurnOnVehicle:onRegisterExternalActionEvents`, `TurnOnVehicle:onRootVehicleChanged`, `TurnOnVehicle:onSetBroken`, `TurnOnVehicle:onStateChange`, `TurnOnVehicle:onTurnedOff`, `TurnOnVehicle:onTurnedOn`, `TurnOnVehicle:onUpdate`, `TurnOnVehicle:onUpdateTick`, `TurnOnVehicle:onWriteStream`, `TurnOnVehicle:setIsTurnedOn`

## vehicles/specializations/VariableWorkWidth.lua

`VariableWorkWidth.actionEventWorkWidthLeft`, `VariableWorkWidth.actionEventWorkWidthRight`, `VariableWorkWidth.actionEventWorkWidthToggle`, `VariableWorkWidth.initSpecialization`, `VariableWorkWidth.prerequisitesPresent`, `VariableWorkWidth.registerEventListeners`, `VariableWorkWidth.registerEvents`, `VariableWorkWidth.registerFunctions`, `VariableWorkWidth.registerOverwrittenFunctions`, `VariableWorkWidth.registerSectionPaths`, `VariableWorkWidth:getEffectByNode`, `VariableWorkWidth:getIsWorkAreaActive`, `VariableWorkWidth:getVariableWorkWidth`, `VariableWorkWidth:getVariableWorkWidthUsage`, `VariableWorkWidth:loadWorkAreaFromXML`, `VariableWorkWidth:onAIFieldWorkerStart`, `VariableWorkWidth:onAIImplementStart`, `VariableWorkWidth:onPostLoad`, `VariableWorkWidth:onRegisterActionEvents`, `VariableWorkWidth:saveToXMLFile`, `VariableWorkWidth:setSectionNodePercentage`, `VariableWorkWidth:setSectionsActive`, `VariableWorkWidth:updateSectionStates`, `VariableWorkWidth:updateSections`

## vehicles/specializations/VehicleSettings.lua

`VehicleSettings.initSpecialization`, `VehicleSettings.prerequisitesPresent`, `VehicleSettings.registerEventListeners`, `VehicleSettings.registerEvents`, `VehicleSettings.registerFunctions`, `VehicleSettings:forceVehicleSettingsUpdate`, `VehicleSettings:onPreLoad`, `VehicleSettings:onStateChange`, `VehicleSettings:onUpdateTick`, `VehicleSettings:registerVehicleSetting`, `VehicleSettings:setVehicleSettingState`

## vehicles/specializations/VineCutter.lua

`VineCutter.initSpecialization`, `VineCutter.prerequisitesPresent`, `VineCutter.registerEventListeners`, `VineCutter.registerFunctions`, `VineCutter.registerOverwrittenFunctions`, `VineCutter:onDraw`, `VineCutter:onLoad`

## vehicles/specializations/VineDetector.lua

`VineDetector.initSpecialization`, `VineDetector.prerequisitesPresent`, `VineDetector.registerEventListeners`, `VineDetector.registerFunctions`, `VineDetector:onLoad`, `VineDetector:onUpdate`

## vehicles/specializations/VinePrepruner.lua

`VinePrepruner.initSpecialization`, `VinePrepruner.prerequisitesPresent`, `VinePrepruner.readPrePrunerFromStream`, `VinePrepruner.registerEventListeners`, `VinePrepruner.registerFunctions`, `VinePrepruner.registerOverwrittenFunctions`, `VinePrepruner.writePrePrunerToStream`, `VinePrepruner:onDelete`, `VinePrepruner:onLoad`, `VinePrepruner:onReadStream`, `VinePrepruner:onReadUpdateStream`, `VinePrepruner:onUpdate`, `VinePrepruner:onWriteStream`, `VinePrepruner:onWriteUpdateStream`

## vehicles/specializations/Washable.lua

`Washable.getIntervalMultiplier`, `Washable.initSpecialization`, `Washable.prerequisitesPresent`, `Washable.readWashableNodeData`, `Washable.registerEventListeners`, `Washable.registerFunctions`, `Washable.writeWashableNodeData`, `Washable:addAllSubWashableNodes`, `Washable:addDirtAmount`, `Washable:addToGlobalWashableNode`, `Washable:addToLocalWashableNode`, `Washable:addWashableNode`, `Washable:addWashableNodes`, `Washable:addWetnessAmount`, `Washable:cleanVehicle`, `Washable:getAllowsWashingByType`, `Washable:getDirtAmount`, `Washable:getDirtMultiplier`, `Washable:getIsWet`, `Washable:getNodeDirtAmount`, `Washable:getWashDuration`, `Washable:getWashableNodeByCustomIndex`, `Washable:getWorkDirtMultiplier`, `Washable:onLoad`, `Washable:onLoadFinished`, `Washable:onReadStream`, `Washable:onReadUpdateStream`, `Washable:onUpdateTick`, `Washable:onWriteStream`, `Washable:onWriteUpdateStream`, `Washable:removeAllSubWashableNodes`, `Washable:removeWashableNode`, `Washable:saveToXMLFile`, `Washable:setDirtAmount`, `Washable:setNodeDirtAmount`, `Washable:setNodeDirtColor`, `Washable:setNodeWetness`, `Washable:updateDebugValues`, `Washable:updateDirtAmount`, `Washable:updateWetness`, `Washable:validateWashableNode`

## vehicles/specializations/WaterTrailer.lua

`WaterTrailer.initSpecialization`, `WaterTrailer.prerequisitesPresent`, `WaterTrailer.registerEventListeners`, `WaterTrailer.registerFunctions`, `WaterTrailer.registerOverwrittenFunctions`, `WaterTrailer:getDrawFirstFillText`, `WaterTrailer:onDelete`, `WaterTrailer:onLoad`, `WaterTrailer:onPreDetach`, `WaterTrailer:onReadStream`, `WaterTrailer:onUpdateTick`, `WaterTrailer:onWriteStream`, `WaterTrailer:setIsWaterTrailerFilling`, `WaterTrailerActivatable.new`, `WaterTrailerActivatable:getIsActivatable`, `WaterTrailerActivatable:run`, `WaterTrailerActivatable:updateActivateText`

## vehicles/specializations/Wearable.lua

`Wearable.calculateRepaintPrice`, `Wearable.calculateRepairPrice`, `Wearable.getSpecValueCondition`, `Wearable.initSpecialization`, `Wearable.loadSpecValueCondition`, `Wearable.prerequisitesPresent`, `Wearable.registerEventListeners`, `Wearable.registerFunctions`, `Wearable.registerOverwrittenFunctions`, `Wearable:addAllSubWearableNodes`, `Wearable:addDamageAmount`, `Wearable:addToGlobalWearableNode`, `Wearable:addToLocalWearableNode`, `Wearable:addWearAmount`, `Wearable:addWearableNode`, `Wearable:getDamageAmount`, `Wearable:getDamageShowOnHud`, `Wearable:getNodeWearAmount`, `Wearable:getRepaintPrice`, `Wearable:getRepairPrice`, `Wearable:getUsageCausesDamage`, `Wearable:getUsageCausesWear`, `Wearable:getVehicleDamage`, `Wearable:getWearMultiplier`, `Wearable:getWearTotalAmount`, `Wearable:getWorkWearMultiplier`, `Wearable:onLoad`, `Wearable:onLoadFinished`, `Wearable:onReadStream`, `Wearable:onReadUpdateStream`, `Wearable:onSaleItemSet`, `Wearable:onUpdateTick`, `Wearable:onWriteStream`, `Wearable:onWriteUpdateStream`, `Wearable:removeAllSubWearableNodes`, `Wearable:removeWearableNode`, `Wearable:repairVehicle`, `Wearable:saveToXMLFile`, `Wearable:setDamageAmount`, `Wearable:setNodeWearAmount`, `Wearable:showInfo`, `Wearable:updateDamageAmount`, `Wearable:updateDebugValues`, `Wearable:updateWearAmount`, `Wearable:validateWearableNode`

## vehicles/specializations/Weeder.lua

`Weeder.getDefaultSpeedLimit`, `Weeder.initSpecialization`, `Weeder.prerequisitesPresent`, `Weeder.registerEventListeners`, `Weeder.registerFunctions`, `Weeder.registerOverwrittenFunctions`, `Weeder:doCheckSpeedLimit`, `Weeder:getDirtMultiplier`, `Weeder:getIsWorkAreaActive`, `Weeder:getWearMultiplier`, `Weeder:loadGroundParticleMapping`, `Weeder:loadWorkAreaFromXML`, `Weeder:onDeactivate`, `Weeder:onDelete`, `Weeder:onEndWorkAreaProcessing`, `Weeder:onLoad`, `Weeder:onPostAttach`, `Weeder:onStartWorkAreaProcessing`, `Weeder:onStateChange`, `Weeder:onUpdateTick`, `Weeder:processWeederArea`, `Weeder:updateWeederAIRequirements`

## vehicles/specializations/Wheels.lua

`Wheels.createConfigToParentConfigMapping`, `Wheels.getBrands`, `Wheels.getSpecValueWheels`, `Wheels.getTireNames`, `Wheels.getWheelsByBrand`, `Wheels.initSpecialization`, `Wheels.loadHubMaterial`, `Wheels.loadSpecValueWheelWeight`, `Wheels.loadSpecValueWheels`, `Wheels.prerequisitesPresent`, `Wheels.registerAckermannSteeringXMLPaths`, `Wheels.registerEventListeners`, `Wheels.registerEvents`, `Wheels.registerFunctions`, `Wheels.registerOverwrittenFunctions`, `Wheels:addToPhysics`, `Wheels:brake`, `Wheels:forceUpdateWheelPhysics`, `Wheels:getAIDirectionNode`, `Wheels:getAIRootNode`, `Wheels:getAreSurfaceSoundsActive`, `Wheels:getBrakeForce`, `Wheels:getComponentMass`, `Wheels:getCurrentSurfaceSound`, `Wheels:getIsVersatileYRotActive`, `Wheels:getIsWheelChockAllowed`, `Wheels:getSteeringNodeByNode`, `Wheels:getSteeringRotTimeByCurvature`, `Wheels:getSupportsMountKinematic`, `Wheels:getTurningRadiusByRotTime`, `Wheels:getVehicleWorldDirection`, `Wheels:getVehicleWorldXRot`, `Wheels:getWheelByWheelNode`, `Wheels:getWheelFromWheelIndex`, `Wheels:getWheelSuspensionModfier`, `Wheels:getWheels`, `Wheels:loadAckermannSteeringFromXML`, `Wheels:loadBendingNodeFromXML`, `Wheels:loadHubFromXML`, `Wheels:loadHubsFromXML`, `Wheels:loadWheelFromXML`, `Wheels:loadWheelsFromXML`, `Wheels:onAIFieldWorkerEnd`, `Wheels:onAIFieldWorkerStart`, `Wheels:onAIImplementEnd`, `Wheels:onAIImplementStart`, `Wheels:onDelete`, `Wheels:onLeaveVehicle`, `Wheels:onLoad`, `Wheels:onLoadFinished`, `Wheels:onLoadWheelChockFromXML`, `Wheels:onPostAttachImplement`, `Wheels:onPostDetach`, `Wheels:onPostUpdate`, `Wheels:onPreAttach`, `Wheels:onPreLoad`, `Wheels:onReadStream`, `Wheels:onReadUpdateStream`, `Wheels:onRegisterAnimationValueTypes`, `Wheels:onRegisterDashboardValueTypes`, `Wheels:onUpdate`, `Wheels:onUpdateEnd`, `Wheels:onUpdateTick`, `Wheels:onWheelHubI3DLoaded`, `Wheels:onWheelSnowHeightChanged`, `Wheels:onWriteStream`, `Wheels:onWriteUpdateStream`, `Wheels:removeFromPhysics`, `Wheels:saveToXMLFile`, `Wheels:updateSteeringNodes`, `Wheels:updateWheelDirtAmount`, `Wheels:updateWheelMudAmount`, `Wheels:validateWashableNode`

## vehicles/specializations/Winch.lua

`Winch.actionEventControl`, `Winch.actionEventDetach`, `Winch.getSpecValueMaxMass`, `Winch.initSpecialization`, `Winch.loadSpecValueMaxMass`, `Winch.prerequisitesPresent`, `Winch.registerEventListeners`, `Winch.registerFunctions`, `Winch.registerOverwrittenFunctions`, `Winch.registerXMLPaths`, `Winch.updateActionEvents`, `Winch:addToPhysics`, `Winch:attachTreeToWinch`, `Winch:detachTreeFromWinch`, `Winch:getCanAttachWinchTree`, `Winch:getConsumingLoad`, `Winch:getDoConsumePtoPower`, `Winch:getIsPowerTakeOffActive`, `Winch:getIsWinchAttachModeActive`, `Winch:getIsWinchTreeAttachAllowed`, `Winch:getWinchRopeSpeedFactor`, `Winch:loadExtraDependentParts`, `Winch:loadWinchRopeFromXML`, `Winch:onAttachTreeInputEvent`, `Winch:onDelete`, `Winch:onLoad`, `Winch:onLoadFinished`, `Winch:onPostUpdate`, `Winch:onReadStream`, `Winch:onReadUpdateStream`, `Winch:onRegisterActionEvents`, `Winch:onWinchPlayerTriggerCallback`, `Winch:onWinchTreeRaycastCallback`, `Winch:onWinchTreeShapeCut`, `Winch:onWinchTreeShapeMounted`, `Winch:onWriteStream`, `Winch:onWriteUpdateStream`, `Winch:removeFromPhysics`, `Winch:saveToXMLFile`, `Winch:setWinchControlInput`, `Winch:setWinchTreeAttachMode`, `Winch:showWinchTreeMountFailedWarning`, `Winch:updateExtraDependentParts`

## vehicles/specializations/WindBending.lua

`WindBending.initSpecialization`, `WindBending.prerequisitesPresent`, `WindBending.registerEventListeners`, `WindBending.registerFunctions`, `WindBending:onLoad`, `WindBending:onUpdate`

## vehicles/specializations/Windrower.lua

`Windrower.getDefaultSpeedLimit`, `Windrower.initSpecialization`, `Windrower.prerequisitesPresent`, `Windrower.registerEventListeners`, `Windrower.registerFunctions`, `Windrower.registerOverwrittenFunctions`, `Windrower:doCheckSpeedLimit`, `Windrower:getDirtMultiplier`, `Windrower:getWearMultiplier`, `Windrower:loadWorkAreaFromXML`, `Windrower:onAIFieldCourseSettingsInitialized`, `Windrower:onDelete`, `Windrower:onEndWorkAreaProcessing`, `Windrower:onLoad`, `Windrower:onPostLoad`, `Windrower:onReadStream`, `Windrower:onReadUpdateStream`, `Windrower:onStartWorkAreaProcessing`, `Windrower:onTurnedOff`, `Windrower:onTurnedOn`, `Windrower:onUpdateTick`, `Windrower:onWriteStream`, `Windrower:onWriteUpdateStream`, `Windrower:processDropArea`, `Windrower:processWindrowerArea`

## vehicles/specializations/Wipers.lua

`Wipers.initSpecialization`, `Wipers.prerequisitesPresent`, `Wipers.registerEventListeners`, `Wipers.registerFunctions`, `Wipers:consoleSetWiperState`, `Wipers:getIsActiveForWipers`, `Wipers:loadWiperFromXML`, `Wipers:onFinishAnimation`, `Wipers:onLoad`, `Wipers:onRegisterDashboardValueTypes`, `Wipers:onUpdateTick`

## vehicles/specializations/WoodCrusher.lua

`WoodCrusher.crushSplitShape`, `WoodCrusher.deleteWoodCrusher`, `WoodCrusher.initSpecialization`, `WoodCrusher.loadWoodCrusher`, `WoodCrusher.prerequisitesPresent`, `WoodCrusher.registerEventListeners`, `WoodCrusher.registerFunctions`, `WoodCrusher.registerOverwrittenFunctions`, `WoodCrusher.registerWoodCrusherXMLPaths`, `WoodCrusher.turnOffWoodCrusher`, `WoodCrusher.turnOnWoodCrusher`, `WoodCrusher.updateTickWoodCrusher`, `WoodCrusher.updateWoodCrusher`, `WoodCrusher.woodCrusherDownForceTriggerCallback`, `WoodCrusher.woodCrusherMoveTriggerCallback`, `WoodCrusher.woodCrusherSplitShapeCallback`, `WoodCrusher:getCanBeTurnedOn`, `WoodCrusher:getConsumingLoad`, `WoodCrusher:getDirtMultiplier`, `WoodCrusher:getRequiresPower`, `WoodCrusher:getWearMultiplier`, `WoodCrusher:onCrushedSplitShape`, `WoodCrusher:onDelete`, `WoodCrusher:onLoad`, `WoodCrusher:onReadUpdateStream`, `WoodCrusher:onTurnedOff`, `WoodCrusher:onTurnedOn`, `WoodCrusher:onUpdate`, `WoodCrusher:onUpdateTick`, `WoodCrusher:onWriteUpdateStream`

## vehicles/specializations/WoodHarvester.lua

`WoodHarvester.actionEventCutTree`, `WoodHarvester.actionEventDropTree`, `WoodHarvester.actionEventSetCutlength`, `WoodHarvester.actionEventTiltHeader`, `WoodHarvester.getSpecValueMaxTreeSize`, `WoodHarvester.initSpecialization`, `WoodHarvester.loadSpecValueMaxTreeSize`, `WoodHarvester.prerequisitesPresent`, `WoodHarvester.registerEventListeners`, `WoodHarvester.registerEvents`, `WoodHarvester.registerFunctions`, `WoodHarvester.registerOverwrittenFunctions`, `WoodHarvester:cutTree`, `WoodHarvester:dropWoodHarvesterTree`, `WoodHarvester:findSplitShapesInRange`, `WoodHarvester:getAutoAlignHasValidTree`, `WoodHarvester:getCanBeSelected`, `WoodHarvester:getCanSplitShapeBeAccessed`, `WoodHarvester:getDoConsumePtoPower`, `WoodHarvester:getIsAutoTreeAlignmentAllowed`, `WoodHarvester:getIsFoldAllowed`, `WoodHarvester:getIsWoodHarvesterTiltStateAllowed`, `WoodHarvester:getSupportsAutoTreeAlignment`, `WoodHarvester:loadWoodHarvesterHeaderTiltFromXML`, `WoodHarvester:onCutTree`, `WoodHarvester:onDeactivate`, `WoodHarvester:onDelete`, `WoodHarvester:onDelimbTree`, `WoodHarvester:onDraw`, `WoodHarvester:onLoad`, `WoodHarvester:onLoadFinished`, `WoodHarvester:onPostLoad`, `WoodHarvester:onReadStream`, `WoodHarvester:onReadUpdateStream`, `WoodHarvester:onRegisterActionEvents`, `WoodHarvester:onRegisterDashboardValueTypes`, `WoodHarvester:onStateChange`, `WoodHarvester:onTurnedOff`, `WoodHarvester:onTurnedOn`, `WoodHarvester:onUpdate`, `WoodHarvester:onUpdateTick`, `WoodHarvester:onVehicleSettingChanged`, `WoodHarvester:onWriteStream`, `WoodHarvester:onWriteUpdateStream`, `WoodHarvester:saveToXMLFile`, `WoodHarvester:setLastTreeDiameter`, `WoodHarvester:setWoodHarvesterCutLengthIndex`, `WoodHarvester:setWoodHarvesterTiltState`, `WoodHarvester:woodHarvesterSplitShapeCallback`

## vehicles/specializations/WoodHarvesterLight.lua

`WoodHarvesterLight.initSpecialization`, `WoodHarvesterLight.prerequisitesPresent`, `WoodHarvesterLight.registerEventListeners`, `WoodHarvesterLight.registerFunctions`, `WoodHarvesterLight.registerOverwrittenFunctions`, `WoodHarvesterLight.spawnLogs`, `WoodHarvesterLight:getAreControlledActionsAllowed`, `WoodHarvesterLight:getAutoAlignHasValidTree`, `WoodHarvesterLight:getSupportsAutoTreeAlignment`, `WoodHarvesterLight:onDelete`, `WoodHarvesterLight:onLoad`, `WoodHarvesterLight:onTurnedOff`, `WoodHarvesterLight:onTurnedOn`, `WoodHarvesterLight:onUpdate`, `WoodHarvesterLight:onWoodHarversterLogSpawnerCallback`, `WoodHarvesterLight:spawnLogHeap`, `WoodHarvesterLight:spawnTreeStump`, `WoodHarvesterLight:updateLogSpawner`

## vehicles/specializations/WorkArea.lua

`WorkArea.initSpecialization`, `WorkArea.prerequisitesPresent`, `WorkArea.registerEventListeners`, `WorkArea.registerEvents`, `WorkArea.registerFunctions`, `WorkArea.registerOverwrittenFunctions`, `WorkArea.registerWorkAreaXMLPaths`, `WorkArea:checkMovingPartDirtyUpdateNode`, `WorkArea:getAIWorkAreaWidth`, `WorkArea:getImplementAllowAutomaticSteering`, `WorkArea:getIsAccessibleAtWorldPosition`, `WorkArea:getIsFarmlandNotOwnedWarningShown`, `WorkArea:getIsSpeedRotatingPartActive`, `WorkArea:getIsTypedWorkAreaActive`, `WorkArea:getIsWorkAreaActive`, `WorkArea:getIsWorkAreaProcessing`, `WorkArea:getLastTouchedFarmlandFarmId`, `WorkArea:getTypedNetworkAreas`, `WorkArea:getTypedWorkAreas`, `WorkArea:getWorkAreaByIndex`, `WorkArea:getWorkAreaWidth`, `WorkArea:loadSpeedRotatingPartFromXML`, `WorkArea:loadWorkAreaFromXML`, `WorkArea:onDraw`, `WorkArea:onLoad`, `WorkArea:onUpdateTick`, `WorkArea:updateLastWorkedArea`, `WorkArea:updateWorkAreaWidth`

## vehicles/specializations/WorkMode.lua

`WorkMode.actionEventWorkModeChange`, `WorkMode.actionEventWorkModeChangeDirect`, `WorkMode.initSpecialization`, `WorkMode.prerequisitesPresent`, `WorkMode.registerEventListeners`, `WorkMode.registerEvents`, `WorkMode.registerFunctions`, `WorkMode.registerOverwrittenFunctions`, `WorkMode.registerWorkModeXMLPaths`, `WorkMode:deactivateWindrowerEffects`, `WorkMode:getAllowsLowering`, `WorkMode:getAreEffectsVisible`, `WorkMode:getCanBeSelected`, `WorkMode:getIsMovingToolActive`, `WorkMode:getIsSprayTypeActive`, `WorkMode:getIsWorkAreaActive`, `WorkMode:getIsWorkModeChangeAllowed`, `WorkMode:loadMovingToolFromXML`, `WorkMode:loadSprayTypeFromXML`, `WorkMode:loadWorkModeFromXML`, `WorkMode:onDeactivate`, `WorkMode:onDelete`, `WorkMode:onDraw`, `WorkMode:onFoldStateChanged`, `WorkMode:onLoad`, `WorkMode:onPostLoad`, `WorkMode:onReadStream`, `WorkMode:onReadUpdateStream`, `WorkMode:onRegisterActionEvents`, `WorkMode:onSetLowered`, `WorkMode:onTurnedOff`, `WorkMode:onTurnedOn`, `WorkMode:onUpdate`, `WorkMode:onUpdateTick`, `WorkMode:onWriteStream`, `WorkMode:onWriteUpdateStream`, `WorkMode:saveToXMLFile`, `WorkMode:setWorkMode`

## vehicles/specializations/WorkParticles.lua

`WorkParticles.initSpecialization`, `WorkParticles.prerequisitesPresent`, `WorkParticles.registerEventListeners`, `WorkParticles.registerFunctions`, `WorkParticles.registerGroundAnimationMappingXMLPaths`, `WorkParticles.registerGroundParticleMappingXMLPaths`, `WorkParticles.registerOverwrittenFunctions`, `WorkParticles:getDoGroundManipulation`, `WorkParticles:getFillTypeFromWorkAreaIndex`, `WorkParticles:groundParticleI3DLoaded`, `WorkParticles:loadGroundAnimationMapping`, `WorkParticles:loadGroundAnimations`, `WorkParticles:loadGroundEffects`, `WorkParticles:loadGroundParticleMapping`, `WorkParticles:loadGroundParticles`, `WorkParticles:loadGroundReferenceNode`, `WorkParticles:onDeactivate`, `WorkParticles:onDelete`, `WorkParticles:onGroundAnimationI3DLoaded`, `WorkParticles:onLoad`, `WorkParticles:onUpdateTick`, `WorkParticles:updateGroundReferenceNode`

## vehicles/specializations/YarderCarriage.lua

`YarderCarriage.initSpecialization`, `YarderCarriage.loadAttachedTreesFromXML`, `YarderCarriage.prerequisitesPresent`, `YarderCarriage.registerEventListeners`, `YarderCarriage.registerFunctions`, `YarderCarriage.registerOverwrittenFunctions`, `YarderCarriage.registerSavegameXMLPaths`, `YarderCarriage:attachTreeToCarriage`, `YarderCarriage:createJoint`, `YarderCarriage:detachTreeFromCarriage`, `YarderCarriage:getAttachedTreeMass`, `YarderCarriage:getCarriageDimensions`, `YarderCarriage:getCarriagePullRopeTargetNode`, `YarderCarriage:getCarriagePushRopeTargetNode`, `YarderCarriage:getDirtMultiplier`, `YarderCarriage:getIsCarriageTreeAttachAllowed`, `YarderCarriage:getIsTreeInMountRange`, `YarderCarriage:getMaxNumAttachedTrees`, `YarderCarriage:getNumAttachedTrees`, `YarderCarriage:getWearMultiplier`, `YarderCarriage:onAttachTreeAction`, `YarderCarriage:onCarriageTreeRaycastCallback`, `YarderCarriage:onDelete`, `YarderCarriage:onDetachTreeAction`, `YarderCarriage:onLoad`, `YarderCarriage:onLoadFinished`, `YarderCarriage:onPostUpdate`, `YarderCarriage:onReadStream`, `YarderCarriage:onReadUpdateStream`, `YarderCarriage:onWriteStream`, `YarderCarriage:onWriteUpdateStream`, `YarderCarriage:onYarderCarriageTreeShapeCut`, `YarderCarriage:onYarderCarriageTreeShapeMounted`, `YarderCarriage:onYarderCarriageUpdateEnd`, `YarderCarriage:resolveLoadedAttachedTrees`, `YarderCarriage:saveAttachedTreesToXML`, `YarderCarriage:setCarriageLiftInput`, `YarderCarriage:setYarderTowerVehicle`, `YarderCarriage:showCarriageTreeMountFailedWarning`, `YarderCarriage:updateCarriageInRange`, `YarderCarriage:updateRopeAlignmentNodes`, `YarderCarriage:updateTreeAttachRopes`

## vehicles/specializations/YarderTower.lua

`YarderTower.getIsVehicleControlAllowed`, `YarderTower.getSpecValueMaxLength`, `YarderTower.getSpecValueMaxMass`, `YarderTower.initSpecialization`, `YarderTower.loadSpecValueMaxLength`, `YarderTower.loadSpecValueMaxMass`, `YarderTower.onYarderMainTreeRaycastCallback`, `YarderTower.onYarderSupportTerrainRaycastCallback`, `YarderTower.prerequisitesPresent`, `YarderTower.registerEventListeners`, `YarderTower.registerEvents`, `YarderTower.registerFunctions`, `YarderTower.registerOverwrittenFunctions`, `YarderTower.registerRopeXMLPaths`, `YarderTower:addToPhysics`, `YarderTower:doRopePlacementValidation`, `YarderTower:getAllowsLowering`, `YarderTower:getConsumingLoad`, `YarderTower:getDirtMultiplier`, `YarderTower:getDoConsumePtoPower`, `YarderTower:getIsFoldAllowed`, `YarderTower:getIsPlayerInYarderControlRange`, `YarderTower:getIsPlayerInYarderRange`, `YarderTower:getIsPowerTakeOffActive`, `YarderTower:getIsSetupModeChangeAllowed`, `YarderTower:getIsTreeShapeUsedForYarderSetup`, `YarderTower:getTreeAtPosition`, `YarderTower:getUsageCausesDamage`, `YarderTower:getWearMultiplier`, `YarderTower:getYarderCarriageLastSpeed`, `YarderTower:getYarderIsSetUp`, `YarderTower:getYarderMainRopeLength`, `YarderTower:getYarderStatusInfo`, `YarderTower:isDetachAllowed`, `YarderTower:onCarriageVehicleDeleted`, `YarderTower:onCreateCarriageFinished`, `YarderTower:onDelete`, `YarderTower:onHookI3DLoaded`, `YarderTower:onLoad`, `YarderTower:onLoadEnd`, `YarderTower:onMainRopePlacementValidated`, `YarderTower:onPostAttach`, `YarderTower:onPreDelete`, `YarderTower:onReadStream`, `YarderTower:onReadUpdateStream`, `YarderTower:onRopeI3DLoaded`, `YarderTower:onSupportRopeTreeOverlapCallback`, `YarderTower:onUpdate`, `YarderTower:onWriteStream`, `YarderTower:onWriteUpdateStream`, `YarderTower:onYarderCarriageAttach`, `YarderTower:onYarderCarriageDetach`, `YarderTower:onYarderCarriageTreeAttached`, `YarderTower:onYarderControlTriggerCallback`, `YarderTower:onYarderTowerPlayerDeleted`, `YarderTower:onYarderTreeRaycastCallback`, `YarderTower:removeFromPhysics`, `YarderTower:saveToXMLFile`, `YarderTower:setYarderCarriageFollowMode`, `YarderTower:setYarderCarriageLiftInput`, `YarderTower:setYarderCarriageMoveInput`, `YarderTower:setYarderRopeState`, `YarderTower:setYarderSetupModeState`, `YarderTower:setYarderTargetActive`, `YarderTower:setupSupportRopes`, `YarderTower:updateYarderRope`, `YarderTower:updateYarderRopeLengthNodes`

## vehicles/specializations/activatables/ConsumableActivatable.lua

`ConsumableActivatable.new`, `ConsumableActivatable:getIsActivatable`, `ConsumableActivatable:run`, `ConsumableActivatable:updateActivateText`

## vehicles/specializations/activatables/LivestockTrailerActivatable.lua

`LivestockTrailerActivatable.new`, `LivestockTrailerActivatable:getIsActivatable`, `LivestockTrailerActivatable:run`

## vehicles/specializations/activatables/WinchAttachTreeActivatable.lua

`WinchAttachTreeActivatable.new`, `WinchAttachTreeActivatable:activate`, `WinchAttachTreeActivatable:deactivate`, `WinchAttachTreeActivatable:draw`, `WinchAttachTreeActivatable:getDistance`, `WinchAttachTreeActivatable:getIsActivatable`, `WinchAttachTreeActivatable:onAttachTree`, `WinchAttachTreeActivatable:onToggleAttachTreeMode`, `WinchAttachTreeActivatable:registerCustomInput`, `WinchAttachTreeActivatable:removeCustomInput`, `WinchAttachTreeActivatable:update`

## vehicles/specializations/activatables/WinchControlRopeActivatable.lua

`WinchControlRopeActivatable.new`, `WinchControlRopeActivatable:activate`, `WinchControlRopeActivatable:deactivate`, `WinchControlRopeActivatable:draw`, `WinchControlRopeActivatable:getDistance`, `WinchControlRopeActivatable:getIsActivatable`, `WinchControlRopeActivatable:onAttachMode`, `WinchControlRopeActivatable:onControlWinch`, `WinchControlRopeActivatable:onDetachTree`, `WinchControlRopeActivatable:registerCustomInput`, `WinchControlRopeActivatable:removeCustomInput`, `WinchControlRopeActivatable:update`

## vehicles/specializations/activatables/YarderTowerControlActivatable.lua

`YarderTowerControlActivatable.new`, `YarderTowerControlActivatable:activate`, `YarderTowerControlActivatable:deactivate`, `YarderTowerControlActivatable:draw`, `YarderTowerControlActivatable:getDistance`, `YarderTowerControlActivatable:getIsActivatable`, `YarderTowerControlActivatable:onManualControlLeftRight`, `YarderTowerControlActivatable:onManualControlUpDown`, `YarderTowerControlActivatable:onToggleFollowHome`, `YarderTowerControlActivatable:onToggleFollowMeMode`, `YarderTowerControlActivatable:onToggleFollowPickup`, `YarderTowerControlActivatable:onTreeAttach`, `YarderTowerControlActivatable:onTreeDetach`, `YarderTowerControlActivatable:registerCustomInput`, `YarderTowerControlActivatable:removeCustomInput`, `YarderTowerControlActivatable:update`, `YarderTowerControlActivatable:updateActionEventTexts`

## vehicles/specializations/activatables/YarderTowerSetupActivatable.lua

`YarderTowerSetupActivatable.new`, `YarderTowerSetupActivatable:activate`, `YarderTowerSetupActivatable:deactivate`, `YarderTowerSetupActivatable:draw`, `YarderTowerSetupActivatable:getDistance`, `YarderTowerSetupActivatable:getIsActivatable`, `YarderTowerSetupActivatable:onSetTarget`, `YarderTowerSetupActivatable:onToggleSetupMode`, `YarderTowerSetupActivatable:registerCustomInput`, `YarderTowerSetupActivatable:removeCustomInput`, `YarderTowerSetupActivatable:updateActionEventTexts`

## vehicles/specializations/components/AttacherJointTopArm.lua

`AttacherJointTopArm.loadFromVehicleXML`, `AttacherJointTopArm.new`, `AttacherJointTopArm.registerVehicleXMLPaths`, `AttacherJointTopArm.registerXMLPaths`, `AttacherJointTopArm:delete`, `AttacherJointTopArm:finalize`, `AttacherJointTopArm:loadFromXML`, `AttacherJointTopArm:onFinished`, `AttacherJointTopArm:onI3DLoaded`, `AttacherJointTopArm:setCallback`, `AttacherJointTopArm:setIsActive`, `AttacherJointTopArm:update`

## vehicles/specializations/components/BeaconLight.lua

`BeaconLight.loadFromVehicleXML`, `BeaconLight.new`, `BeaconLight.registerVariationPaths`, `BeaconLight.registerVehicleXMLPaths`, `BeaconLight.registerXMLPaths`, `BeaconLight.spawnDebugBeacons`, `BeaconLight:delete`, `BeaconLight:loadFromXML`, `BeaconLight:loadVariationFromXML`, `BeaconLight:onFinished`, `BeaconLight:onI3DLoaded`, `BeaconLight:onLightsRealBeaconLightChanged`, `BeaconLight:setCallback`, `BeaconLight:setIsActive`, `BeaconLight:setRealLight`, `BeaconLight:setXMLSettings`, `BeaconLight:update`

## vehicles/specializations/components/RealLight.lua

`RealLight.consoleCommandDebugIES`, `RealLight.getAreShadowsMergable`, `RealLight.getMergedConeAngleSize`, `RealLight.loadLightsFromXML`, `RealLight.new`, `RealLight.registerXMLPaths`, `RealLight:finalize`, `RealLight:loadFromXML`, `RealLight:merge`, `RealLight:onLightsProfileChanged`, `RealLight:setCharge`, `RealLight:setChargeFunction`, `RealLight:setIsBlinking`, `RealLight:setLightTypesMask`, `RealLight:setState`, `RealLight:updateIESProfile`, `RealLight:updateLightScattering`, `RealLight:updateMergedShadows`

## vehicles/specializations/components/SharedLight.lua

`SharedLight.consoleCommandDebug`, `SharedLight.new`, `SharedLight.registerExternalXMLPaths`, `SharedLight.registerXMLPaths`, `SharedLight:delete`, `SharedLight:loadFromVehicleXML`, `SharedLight:loadFromXML`, `SharedLight:onFinished`, `SharedLight:onI3DLoaded`, `SharedLight:setCallback`, `SharedLight:setLightTypes`, `SharedLight:setRotationNodes`

## vehicles/specializations/components/StaticLight.lua

`StaticLight.loadLightsFromXML`, `StaticLight.new`, `StaticLight.registerXMLPaths`, `StaticLight:loadFromXML`, `StaticLight:merge`, `StaticLight:setChargeFunction`, `StaticLight:setIsBlinking`, `StaticLight:setLightTypesMask`, `StaticLight:setState`

## vehicles/specializations/components/StaticLightCompound.lua

`StaticLightCompound.loadFunctionMappingData`, `StaticLightCompound.new`, `StaticLightCompound.registerXMLPaths`, `StaticLightCompound:loadFromXML`, `StaticLightCompound:setLightTypes`, `StaticLightCompound:setLightTypesMask`, `StaticLightCompound:setOverwriteSettings`

## vehicles/specializations/events/AIAutomaticSteeringCourseEvent.lua

`AIAutomaticSteeringCourseEvent.emptyNew`, `AIAutomaticSteeringCourseEvent.new`, `AIAutomaticSteeringCourseEvent:readStream`, `AIAutomaticSteeringCourseEvent:run`, `AIAutomaticSteeringCourseEvent:writeStream`

## vehicles/specializations/events/AIAutomaticSteeringLineEndEvent.lua

`AIAutomaticSteeringLineEndEvent.emptyNew`, `AIAutomaticSteeringLineEndEvent.new`, `AIAutomaticSteeringLineEndEvent:readStream`, `AIAutomaticSteeringLineEndEvent:run`, `AIAutomaticSteeringLineEndEvent:writeStream`

## vehicles/specializations/events/AIAutomaticSteeringRequestEvent.lua

`AIAutomaticSteeringRequestEvent.emptyNew`, `AIAutomaticSteeringRequestEvent.new`, `AIAutomaticSteeringRequestEvent:readStream`, `AIAutomaticSteeringRequestEvent:run`, `AIAutomaticSteeringRequestEvent:writeStream`

## vehicles/specializations/events/AIAutomaticSteeringStateEvent.lua

`AIAutomaticSteeringStateEvent.emptyNew`, `AIAutomaticSteeringStateEvent.new`, `AIAutomaticSteeringStateEvent.sendEvent`, `AIAutomaticSteeringStateEvent:readStream`, `AIAutomaticSteeringStateEvent:run`, `AIAutomaticSteeringStateEvent:writeStream`

## vehicles/specializations/events/AIConveyorBeltSetAngleEvent.lua

`AIConveyorBeltSetAngleEvent.emptyNew`, `AIConveyorBeltSetAngleEvent.new`, `AIConveyorBeltSetAngleEvent:readStream`, `AIConveyorBeltSetAngleEvent:run`, `AIConveyorBeltSetAngleEvent:writeStream`

## vehicles/specializations/events/AIFieldWorkerStateEvent.lua

`AIFieldWorkerStateEvent.emptyNew`, `AIFieldWorkerStateEvent.new`, `AIFieldWorkerStateEvent:readStream`, `AIFieldWorkerStateEvent:run`, `AIFieldWorkerStateEvent:writeStream`

## vehicles/specializations/events/AIJobVehicleStateEvent.lua

`AIJobVehicleStateEvent.emptyNew`, `AIJobVehicleStateEvent.new`, `AIJobVehicleStateEvent:readStream`, `AIJobVehicleStateEvent:run`, `AIJobVehicleStateEvent:writeStream`

## vehicles/specializations/events/AIModeSelectionSettingsEvent.lua

`AIModeSelectionSettingsEvent.emptyNew`, `AIModeSelectionSettingsEvent.new`, `AIModeSelectionSettingsEvent.sendEvent`, `AIModeSelectionSettingsEvent:readStream`, `AIModeSelectionSettingsEvent:run`, `AIModeSelectionSettingsEvent:writeStream`

## vehicles/specializations/events/AISetModeEvent.lua

`AISetModeEvent.emptyNew`, `AISetModeEvent.new`, `AISetModeEvent.sendEvent`, `AISetModeEvent:readStream`, `AISetModeEvent:run`, `AISetModeEvent:writeStream`

## vehicles/specializations/events/AIVehicleIsBlockedEvent.lua

`AIVehicleIsBlockedEvent.emptyNew`, `AIVehicleIsBlockedEvent.new`, `AIVehicleIsBlockedEvent:readStream`, `AIVehicleIsBlockedEvent:run`, `AIVehicleIsBlockedEvent:writeStream`

## vehicles/specializations/events/AnimatedVehicleStartEvent.lua

`AnimatedVehicleStartEvent.emptyNew`, `AnimatedVehicleStartEvent.new`, `AnimatedVehicleStartEvent:readStream`, `AnimatedVehicleStartEvent:run`, `AnimatedVehicleStartEvent:writeStream`

## vehicles/specializations/events/AnimatedVehicleStopEvent.lua

`AnimatedVehicleStopEvent.emptyNew`, `AnimatedVehicleStopEvent.new`, `AnimatedVehicleStopEvent:readStream`, `AnimatedVehicleStopEvent:run`, `AnimatedVehicleStopEvent:writeStream`

## vehicles/specializations/events/AttachableStartDetachEvent.lua

`AttachableStartDetachEvent.emptyNew`, `AttachableStartDetachEvent.new`, `AttachableStartDetachEvent.sendEvent`, `AttachableStartDetachEvent:readStream`, `AttachableStartDetachEvent:run`, `AttachableStartDetachEvent:writeStream`

## vehicles/specializations/events/BaleCounterResetEvent.lua

`BaleCounterResetEvent.emptyNew`, `BaleCounterResetEvent.new`, `BaleCounterResetEvent.sendEvent`, `BaleCounterResetEvent:readStream`, `BaleCounterResetEvent:run`, `BaleCounterResetEvent:writeStream`

## vehicles/specializations/events/BaleLoaderStateEvent.lua

`BaleLoaderStateEvent.emptyNew`, `BaleLoaderStateEvent.new`, `BaleLoaderStateEvent:readStream`, `BaleLoaderStateEvent:run`, `BaleLoaderStateEvent:writeStream`

## vehicles/specializations/events/BaleWrapperAutomaticDropEvent.lua

`BaleWrapperAutomaticDropEvent.emptyNew`, `BaleWrapperAutomaticDropEvent.new`, `BaleWrapperAutomaticDropEvent.sendEvent`, `BaleWrapperAutomaticDropEvent:readStream`, `BaleWrapperAutomaticDropEvent:run`, `BaleWrapperAutomaticDropEvent:writeStream`

## vehicles/specializations/events/BaleWrapperDropEvent.lua

`BaleWrapperDropEvent.emptyNew`, `BaleWrapperDropEvent.new`, `BaleWrapperDropEvent:readStream`, `BaleWrapperDropEvent:run`, `BaleWrapperDropEvent:writeStream`

## vehicles/specializations/events/BaleWrapperStateEvent.lua

`BaleWrapperStateEvent.emptyNew`, `BaleWrapperStateEvent.new`, `BaleWrapperStateEvent:readStream`, `BaleWrapperStateEvent:run`, `BaleWrapperStateEvent:writeStream`

## vehicles/specializations/events/BalerAutomaticDropEvent.lua

`BalerAutomaticDropEvent.emptyNew`, `BalerAutomaticDropEvent.new`, `BalerAutomaticDropEvent.sendEvent`, `BalerAutomaticDropEvent:readStream`, `BalerAutomaticDropEvent:run`, `BalerAutomaticDropEvent:writeStream`

## vehicles/specializations/events/BalerBaleTypeEvent.lua

`BalerBaleTypeEvent.emptyNew`, `BalerBaleTypeEvent.new`, `BalerBaleTypeEvent.sendEvent`, `BalerBaleTypeEvent:readStream`, `BalerBaleTypeEvent:run`, `BalerBaleTypeEvent:writeStream`

## vehicles/specializations/events/BalerCreateBaleEvent.lua

`BalerCreateBaleEvent.emptyNew`, `BalerCreateBaleEvent.new`, `BalerCreateBaleEvent:readStream`, `BalerCreateBaleEvent:run`, `BalerCreateBaleEvent:writeStream`

## vehicles/specializations/events/BalerDropFromPlatformEvent.lua

`BalerDropFromPlatformEvent.emptyNew`, `BalerDropFromPlatformEvent.new`, `BalerDropFromPlatformEvent.sendEvent`, `BalerDropFromPlatformEvent:readStream`, `BalerDropFromPlatformEvent:run`, `BalerDropFromPlatformEvent:writeStream`

## vehicles/specializations/events/BalerSetBaleTimeEvent.lua

`BalerSetBaleTimeEvent.emptyNew`, `BalerSetBaleTimeEvent.new`, `BalerSetBaleTimeEvent:readStream`, `BalerSetBaleTimeEvent:run`, `BalerSetBaleTimeEvent:writeStream`

## vehicles/specializations/events/BalerSetIsUnloadingBaleEvent.lua

`BalerSetIsUnloadingBaleEvent.emptyNew`, `BalerSetIsUnloadingBaleEvent.new`, `BalerSetIsUnloadingBaleEvent.sendEvent`, `BalerSetIsUnloadingBaleEvent:readStream`, `BalerSetIsUnloadingBaleEvent:run`, `BalerSetIsUnloadingBaleEvent:writeStream`

## vehicles/specializations/events/CombineStrawEnableEvent.lua

`CombineStrawEnableEvent.emptyNew`, `CombineStrawEnableEvent.new`, `CombineStrawEnableEvent.sendEvent`, `CombineStrawEnableEvent:readStream`, `CombineStrawEnableEvent:run`, `CombineStrawEnableEvent:writeStream`

## vehicles/specializations/events/ConsumableRefillEvent.lua

`ConsumableRefillEvent.emptyNew`, `ConsumableRefillEvent.new`, `ConsumableRefillEvent.sendEvent`, `ConsumableRefillEvent:readStream`, `ConsumableRefillEvent:run`, `ConsumableRefillEvent:writeStream`

## vehicles/specializations/events/EnterablePassengerEnterRequestEvent.lua

`EnterablePassengerEnterRequestEvent.emptyNew`, `EnterablePassengerEnterRequestEvent.new`, `EnterablePassengerEnterRequestEvent:readStream`, `EnterablePassengerEnterRequestEvent:run`, `EnterablePassengerEnterRequestEvent:writeStream`

## vehicles/specializations/events/EnterablePassengerEnterResponseEvent.lua

`EnterablePassengerEnterResponseEvent.emptyNew`, `EnterablePassengerEnterResponseEvent.new`, `EnterablePassengerEnterResponseEvent:readStream`, `EnterablePassengerEnterResponseEvent:run`, `EnterablePassengerEnterResponseEvent:writeStream`

## vehicles/specializations/events/EnterablePassengerLeaveEvent.lua

`EnterablePassengerLeaveEvent.emptyNew`, `EnterablePassengerLeaveEvent.new`, `EnterablePassengerLeaveEvent.sendEvent`, `EnterablePassengerLeaveEvent:readStream`, `EnterablePassengerLeaveEvent:run`, `EnterablePassengerLeaveEvent:writeStream`

## vehicles/specializations/events/FellerBuncherCutEvent.lua

`FellerBuncherCutEvent.emptyNew`, `FellerBuncherCutEvent.new`, `FellerBuncherCutEvent.sendEvent`, `FellerBuncherCutEvent:readStream`, `FellerBuncherCutEvent:run`, `FellerBuncherCutEvent:writeStream`

## vehicles/specializations/events/FellerBuncherReleaseEvent.lua

`FellerBuncherReleaseEvent.emptyNew`, `FellerBuncherReleaseEvent.new`, `FellerBuncherReleaseEvent.sendEvent`, `FellerBuncherReleaseEvent:readStream`, `FellerBuncherReleaseEvent:run`, `FellerBuncherReleaseEvent:writeStream`

## vehicles/specializations/events/FillUnitUnloadEvent.lua

`FillUnitUnloadEvent.emptyNew`, `FillUnitUnloadEvent.new`, `FillUnitUnloadEvent.newServerToClient`, `FillUnitUnloadEvent:readStream`, `FillUnitUnloadEvent:run`, `FillUnitUnloadEvent:writeStream`

## vehicles/specializations/events/FillUnitUnloadedEvent.lua

`FillUnitUnloadedEvent.emptyNew`, `FillUnitUnloadedEvent.new`, `FillUnitUnloadedEvent:readStream`, `FillUnitUnloadedEvent:run`, `FillUnitUnloadedEvent:writeStream`

## vehicles/specializations/events/FoldableSetFoldDirectionEvent.lua

`FoldableSetFoldDirectionEvent.emptyNew`, `FoldableSetFoldDirectionEvent.new`, `FoldableSetFoldDirectionEvent:readStream`, `FoldableSetFoldDirectionEvent:run`, `FoldableSetFoldDirectionEvent:writeStream`

## vehicles/specializations/events/FoldableStepsChangeStateEvent.lua

`FoldableStepsChangeStateEvent.emptyNew`, `FoldableStepsChangeStateEvent.new`, `FoldableStepsChangeStateEvent.sendEvent`, `FoldableStepsChangeStateEvent:readStream`, `FoldableStepsChangeStateEvent:run`, `FoldableStepsChangeStateEvent:writeStream`

## vehicles/specializations/events/HonkEvent.lua

`HonkEvent.emptyNew`, `HonkEvent.new`, `HonkEvent.sendEvent`, `HonkEvent:readStream`, `HonkEvent:run`, `HonkEvent:writeStream`

## vehicles/specializations/events/InlineWrapperPushOffEvent.lua

`InlineWrapperPushOffEvent.emptyNew`, `InlineWrapperPushOffEvent.new`, `InlineWrapperPushOffEvent:readStream`, `InlineWrapperPushOffEvent:run`, `InlineWrapperPushOffEvent:writeStream`

## vehicles/specializations/events/JumpEvent.lua

`JumpEvent.emptyNew`, `JumpEvent.new`, `JumpEvent:readStream`, `JumpEvent:run`, `JumpEvent:writeStream`

## vehicles/specializations/events/LocomotiveStateEvent.lua

`LocomotiveStateEvent.emptyNew`, `LocomotiveStateEvent.new`, `LocomotiveStateEvent:readStream`, `LocomotiveStateEvent:run`, `LocomotiveStateEvent:writeStream`

## vehicles/specializations/events/LogGrabClawStateEvent.lua

`LogGrabClawStateEvent.emptyNew`, `LogGrabClawStateEvent.new`, `LogGrabClawStateEvent.sendEvent`, `LogGrabClawStateEvent:readStream`, `LogGrabClawStateEvent:run`, `LogGrabClawStateEvent:writeStream`

## vehicles/specializations/events/MixerWagonBaleNotAcceptedEvent.lua

`MixerWagonBaleNotAcceptedEvent.emptyNew`, `MixerWagonBaleNotAcceptedEvent.new`, `MixerWagonBaleNotAcceptedEvent:readStream`, `MixerWagonBaleNotAcceptedEvent:run`, `MixerWagonBaleNotAcceptedEvent:writeStream`

## vehicles/specializations/events/MotorGearShiftEvent.lua

`MotorGearShiftEvent.emptyNew`, `MotorGearShiftEvent.new`, `MotorGearShiftEvent.sendToServer`, `MotorGearShiftEvent:readStream`, `MotorGearShiftEvent:run`, `MotorGearShiftEvent:writeStream`

## vehicles/specializations/events/MotorSetTurnedOnEvent.lua

`MotorSetTurnedOnEvent.emptyNew`, `MotorSetTurnedOnEvent.new`, `MotorSetTurnedOnEvent.sendEvent`, `MotorSetTurnedOnEvent:readStream`, `MotorSetTurnedOnEvent:run`, `MotorSetTurnedOnEvent:writeStream`

## vehicles/specializations/events/MotorStateEvent.lua

`MotorStateEvent.emptyNew`, `MotorStateEvent.new`, `MotorStateEvent.sendEvent`, `MotorStateEvent:readStream`, `MotorStateEvent:run`, `MotorStateEvent:writeStream`

## vehicles/specializations/events/MountableSetMountTypeEvent.lua

`MountableSetMountTypeEvent.emptyNew`, `MountableSetMountTypeEvent.new`, `MountableSetMountTypeEvent.sendEvent`, `MountableSetMountTypeEvent:readStream`, `MountableSetMountTypeEvent:run`, `MountableSetMountTypeEvent:writeStream`

## vehicles/specializations/events/MowerToggleWindrowDropEvent.lua

`MowerToggleWindrowDropEvent.emptyNew`, `MowerToggleWindrowDropEvent.new`, `MowerToggleWindrowDropEvent.sendEvent`, `MowerToggleWindrowDropEvent:readStream`, `MowerToggleWindrowDropEvent:run`, `MowerToggleWindrowDropEvent:writeStream`

## vehicles/specializations/events/PalletFillerBuyPalletEvent.lua

`PalletFillerBuyPalletEvent.emptyNew`, `PalletFillerBuyPalletEvent.new`, `PalletFillerBuyPalletEvent:readStream`, `PalletFillerBuyPalletEvent:run`, `PalletFillerBuyPalletEvent:writeStream`

## vehicles/specializations/events/PalletFillerStateEvent.lua

`PalletFillerStateEvent.emptyNew`, `PalletFillerStateEvent.new`, `PalletFillerStateEvent.sendEvent`, `PalletFillerStateEvent:readStream`, `PalletFillerStateEvent:run`, `PalletFillerStateEvent:writeStream`

## vehicles/specializations/events/PickupSetStateEvent.lua

`PickupSetStateEvent.emptyNew`, `PickupSetStateEvent.new`, `PickupSetStateEvent.sendEvent`, `PickupSetStateEvent:readStream`, `PickupSetStateEvent:run`, `PickupSetStateEvent:writeStream`

## vehicles/specializations/events/PlantLimitToFieldEvent.lua

`PlantLimitToFieldEvent.emptyNew`, `PlantLimitToFieldEvent.new`, `PlantLimitToFieldEvent.sendEvent`, `PlantLimitToFieldEvent:readStream`, `PlantLimitToFieldEvent:run`, `PlantLimitToFieldEvent:writeStream`

## vehicles/specializations/events/PlowLimitToFieldEvent.lua

`PlowLimitToFieldEvent.emptyNew`, `PlowLimitToFieldEvent.new`, `PlowLimitToFieldEvent:readStream`, `PlowLimitToFieldEvent:run`, `PlowLimitToFieldEvent:writeStream`

## vehicles/specializations/events/PlowPackerStateEvent.lua

`PlowPackerStateEvent.emptyNew`, `PlowPackerStateEvent.new`, `PlowPackerStateEvent.sendEvent`, `PlowPackerStateEvent:readStream`, `PlowPackerStateEvent:run`, `PlowPackerStateEvent:writeStream`

## vehicles/specializations/events/PlowRotationCenterEvent.lua

`PlowRotationCenterEvent.emptyNew`, `PlowRotationCenterEvent.new`, `PlowRotationCenterEvent.sendEvent`, `PlowRotationCenterEvent:readStream`, `PlowRotationCenterEvent:run`, `PlowRotationCenterEvent:writeStream`

## vehicles/specializations/events/PlowRotationEvent.lua

`PlowRotationEvent.emptyNew`, `PlowRotationEvent.new`, `PlowRotationEvent.sendEvent`, `PlowRotationEvent:readStream`, `PlowRotationEvent:run`, `PlowRotationEvent:writeStream`

## vehicles/specializations/events/PushHandToolDriveModeEvent.lua

`PushHandToolDriveModeEvent.emptyNew`, `PushHandToolDriveModeEvent.new`, `PushHandToolDriveModeEvent.sendEvent`, `PushHandToolDriveModeEvent:readStream`, `PushHandToolDriveModeEvent:run`, `PushHandToolDriveModeEvent:writeStream`

## vehicles/specializations/events/ReceivingHopperSetCreateBoxesEvent.lua

`ReceivingHopperSetCreateBoxesEvent.emptyNew`, `ReceivingHopperSetCreateBoxesEvent.new`, `ReceivingHopperSetCreateBoxesEvent.sendEvent`, `ReceivingHopperSetCreateBoxesEvent:readStream`, `ReceivingHopperSetCreateBoxesEvent:run`, `ReceivingHopperSetCreateBoxesEvent:writeStream`

## vehicles/specializations/events/ReverseDrivingSetStateEvent.lua

`ReverseDrivingSetStateEvent.emptyNew`, `ReverseDrivingSetStateEvent.new`, `ReverseDrivingSetStateEvent.sendEvent`, `ReverseDrivingSetStateEvent:readStream`, `ReverseDrivingSetStateEvent:run`, `ReverseDrivingSetStateEvent:writeStream`

## vehicles/specializations/events/RideableStableNotificationEvent.lua

`RideableStableNotificationEvent.emptyNew`, `RideableStableNotificationEvent.new`, `RideableStableNotificationEvent:readStream`, `RideableStableNotificationEvent:run`, `RideableStableNotificationEvent:writeStream`

## vehicles/specializations/events/RidgeMarkerSetStateEvent.lua

`RidgeMarkerSetStateEvent.emptyNew`, `RidgeMarkerSetStateEvent.new`, `RidgeMarkerSetStateEvent.sendEvent`, `RidgeMarkerSetStateEvent:readStream`, `RidgeMarkerSetStateEvent:run`, `RidgeMarkerSetStateEvent:writeStream`

## vehicles/specializations/events/SetCoverStateEvent.lua

`SetCoverStateEvent.emptyNew`, `SetCoverStateEvent.new`, `SetCoverStateEvent.sendEvent`, `SetCoverStateEvent:readStream`, `SetCoverStateEvent:run`, `SetCoverStateEvent:writeStream`

## vehicles/specializations/events/SetCrabSteeringEvent.lua

`SetCrabSteeringEvent.emptyNew`, `SetCrabSteeringEvent.new`, `SetCrabSteeringEvent.sendEvent`, `SetCrabSteeringEvent:readStream`, `SetCrabSteeringEvent:run`, `SetCrabSteeringEvent:writeStream`

## vehicles/specializations/events/SetCruiseControlSpeedEvent.lua

`SetCruiseControlSpeedEvent.emptyNew`, `SetCruiseControlSpeedEvent.new`, `SetCruiseControlSpeedEvent:readStream`, `SetCruiseControlSpeedEvent:run`, `SetCruiseControlSpeedEvent:writeStream`

## vehicles/specializations/events/SetCruiseControlStateEvent.lua

`SetCruiseControlStateEvent.emptyNew`, `SetCruiseControlStateEvent.new`, `SetCruiseControlStateEvent:readStream`, `SetCruiseControlStateEvent:run`, `SetCruiseControlStateEvent:writeStream`

## vehicles/specializations/events/SetDischargeStateEvent.lua

`SetDischargeStateEvent.emptyNew`, `SetDischargeStateEvent.new`, `SetDischargeStateEvent.sendEvent`, `SetDischargeStateEvent:readStream`, `SetDischargeStateEvent:run`, `SetDischargeStateEvent:writeStream`

## vehicles/specializations/events/SetFillUnitCapacityEvent.lua

`SetFillUnitCapacityEvent.emptyNew`, `SetFillUnitCapacityEvent.new`, `SetFillUnitCapacityEvent.sendEvent`, `SetFillUnitCapacityEvent:readStream`, `SetFillUnitCapacityEvent:run`, `SetFillUnitCapacityEvent:writeStream`

## vehicles/specializations/events/SetFillUnitIsFillingEvent.lua

`SetFillUnitIsFillingEvent.emptyNew`, `SetFillUnitIsFillingEvent.new`, `SetFillUnitIsFillingEvent:readStream`, `SetFillUnitIsFillingEvent:run`, `SetFillUnitIsFillingEvent:writeStream`

## vehicles/specializations/events/SetPipeDischargeToGroundEvent.lua

`SetPipeDischargeToGroundEvent.emptyNew`, `SetPipeDischargeToGroundEvent.new`, `SetPipeDischargeToGroundEvent.sendEvent`, `SetPipeDischargeToGroundEvent:readStream`, `SetPipeDischargeToGroundEvent:run`, `SetPipeDischargeToGroundEvent:writeStream`

## vehicles/specializations/events/SetPipeStateEvent.lua

`SetPipeStateEvent.emptyNew`, `SetPipeStateEvent.new`, `SetPipeStateEvent:readStream`, `SetPipeStateEvent:run`, `SetPipeStateEvent:writeStream`

## vehicles/specializations/events/SetSeedIndexEvent.lua

`SetSeedIndexEvent.emptyNew`, `SetSeedIndexEvent.new`, `SetSeedIndexEvent.sendEvent`, `SetSeedIndexEvent:readStream`, `SetSeedIndexEvent:run`, `SetSeedIndexEvent:writeStream`

## vehicles/specializations/events/SetTurnedOnEvent.lua

`SetTurnedOnEvent.emptyNew`, `SetTurnedOnEvent.new`, `SetTurnedOnEvent.sendEvent`, `SetTurnedOnEvent:readStream`, `SetTurnedOnEvent:run`, `SetTurnedOnEvent:writeStream`

## vehicles/specializations/events/SetWorkModeEvent.lua

`SetWorkModeEvent.emptyNew`, `SetWorkModeEvent.new`, `SetWorkModeEvent.sendEvent`, `SetWorkModeEvent:readStream`, `SetWorkModeEvent:run`, `SetWorkModeEvent:writeStream`

## vehicles/specializations/events/SprayerDoubledAmountEvent.lua

`SprayerDoubledAmountEvent.emptyNew`, `SprayerDoubledAmountEvent.new`, `SprayerDoubledAmountEvent.sendEvent`, `SprayerDoubledAmountEvent:readStream`, `SprayerDoubledAmountEvent:run`, `SprayerDoubledAmountEvent:writeStream`

## vehicles/specializations/events/TensionBeltsEvent.lua

`TensionBeltsEvent.emptyNew`, `TensionBeltsEvent.new`, `TensionBeltsEvent.sendEvent`, `TensionBeltsEvent:readStream`, `TensionBeltsEvent:run`, `TensionBeltsEvent:writeStream`

## vehicles/specializations/events/TensionBeltsRefreshEvent.lua

`TensionBeltsRefreshEvent.emptyNew`, `TensionBeltsRefreshEvent.new`, `TensionBeltsRefreshEvent:readStream`, `TensionBeltsRefreshEvent:run`, `TensionBeltsRefreshEvent:writeStream`

## vehicles/specializations/events/TrailerToggleManualDoorEvent.lua

`TrailerToggleManualDoorEvent.emptyNew`, `TrailerToggleManualDoorEvent.new`, `TrailerToggleManualDoorEvent.sendEvent`, `TrailerToggleManualDoorEvent:readStream`, `TrailerToggleManualDoorEvent:run`, `TrailerToggleManualDoorEvent:writeStream`

## vehicles/specializations/events/TrailerToggleManualTipEvent.lua

`TrailerToggleManualTipEvent.emptyNew`, `TrailerToggleManualTipEvent.new`, `TrailerToggleManualTipEvent.sendEvent`, `TrailerToggleManualTipEvent:readStream`, `TrailerToggleManualTipEvent:run`, `TrailerToggleManualTipEvent:writeStream`

## vehicles/specializations/events/TrailerToggleTipSideEvent.lua

`TrailerToggleTipSideEvent.emptyNew`, `TrailerToggleTipSideEvent.new`, `TrailerToggleTipSideEvent:readStream`, `TrailerToggleTipSideEvent:run`, `TrailerToggleTipSideEvent:writeStream`

## vehicles/specializations/events/TreeAttachEvent.lua

`TreeAttachEvent.emptyNew`, `TreeAttachEvent.new`, `TreeAttachEvent.sendEvent`, `TreeAttachEvent:readStream`, `TreeAttachEvent:run`, `TreeAttachEvent:writeStream`

## vehicles/specializations/events/TreeAttachRequestEvent.lua

`TreeAttachRequestEvent.emptyNew`, `TreeAttachRequestEvent.new`, `TreeAttachRequestEvent:readStream`, `TreeAttachRequestEvent:run`, `TreeAttachRequestEvent:writeStream`

## vehicles/specializations/events/TreeAttachResponseEvent.lua

`TreeAttachResponseEvent.emptyNew`, `TreeAttachResponseEvent.new`, `TreeAttachResponseEvent:readStream`, `TreeAttachResponseEvent:run`, `TreeAttachResponseEvent:writeStream`

## vehicles/specializations/events/TreeDetachEvent.lua

`TreeDetachEvent.emptyNew`, `TreeDetachEvent.new`, `TreeDetachEvent.sendEvent`, `TreeDetachEvent:readStream`, `TreeDetachEvent:run`, `TreeDetachEvent:writeStream`

## vehicles/specializations/events/TreePlanterCreateTreeEvent.lua

`TreePlanterCreateTreeEvent.emptyNew`, `TreePlanterCreateTreeEvent.new`, `TreePlanterCreateTreeEvent.sendEvent`, `TreePlanterCreateTreeEvent:readStream`, `TreePlanterCreateTreeEvent:run`, `TreePlanterCreateTreeEvent:writeStream`

## vehicles/specializations/events/TreePlanterLoadPalletEvent.lua

`TreePlanterLoadPalletEvent.emptyNew`, `TreePlanterLoadPalletEvent.new`, `TreePlanterLoadPalletEvent.sendEvent`, `TreePlanterLoadPalletEvent:readStream`, `TreePlanterLoadPalletEvent:run`, `TreePlanterLoadPalletEvent:writeStream`

## vehicles/specializations/events/TreePlanterTreeTypeEvent.lua

`TreePlanterTreeTypeEvent.emptyNew`, `TreePlanterTreeTypeEvent.new`, `TreePlanterTreeTypeEvent.sendEvent`, `TreePlanterTreeTypeEvent:readStream`, `TreePlanterTreeTypeEvent:run`, `TreePlanterTreeTypeEvent:writeStream`

## vehicles/specializations/events/VariableWorkWidthStateEvent.lua

`VariableWorkWidthStateEvent.emptyNew`, `VariableWorkWidthStateEvent.new`, `VariableWorkWidthStateEvent.sendEvent`, `VariableWorkWidthStateEvent:readStream`, `VariableWorkWidthStateEvent:run`, `VariableWorkWidthStateEvent:writeStream`

## vehicles/specializations/events/VehiclePlayerStyleChangedEvent.lua

`VehiclePlayerStyleChangedEvent.emptyNew`, `VehiclePlayerStyleChangedEvent.new`, `VehiclePlayerStyleChangedEvent:readStream`, `VehiclePlayerStyleChangedEvent:run`, `VehiclePlayerStyleChangedEvent:writeStream`

## vehicles/specializations/events/VehicleSetBeaconLightEvent.lua

`VehicleSetBeaconLightEvent.emptyNew`, `VehicleSetBeaconLightEvent.new`, `VehicleSetBeaconLightEvent:readStream`, `VehicleSetBeaconLightEvent:run`, `VehicleSetBeaconLightEvent:writeStream`

## vehicles/specializations/events/VehicleSetLightEvent.lua

`VehicleSetLightEvent.emptyNew`, `VehicleSetLightEvent.new`, `VehicleSetLightEvent:readStream`, `VehicleSetLightEvent:run`, `VehicleSetLightEvent:writeStream`

## vehicles/specializations/events/VehicleSetTurnLightEvent.lua

`VehicleSetTurnLightEvent.emptyNew`, `VehicleSetTurnLightEvent.new`, `VehicleSetTurnLightEvent:readStream`, `VehicleSetTurnLightEvent:run`, `VehicleSetTurnLightEvent:writeStream`

## vehicles/specializations/events/VehicleSettingsChangeEvent.lua

`VehicleSettingsChangeEvent.emptyNew`, `VehicleSettingsChangeEvent.new`, `VehicleSettingsChangeEvent:readStream`, `VehicleSettingsChangeEvent:run`, `VehicleSettingsChangeEvent:writeStream`

## vehicles/specializations/events/WaterTrailerSetIsFillingEvent.lua

`WaterTrailerSetIsFillingEvent.emptyNew`, `WaterTrailerSetIsFillingEvent.new`, `WaterTrailerSetIsFillingEvent.sendEvent`, `WaterTrailerSetIsFillingEvent:readStream`, `WaterTrailerSetIsFillingEvent:run`, `WaterTrailerSetIsFillingEvent:writeStream`

## vehicles/specializations/events/WearableRepaintEvent.lua

`WearableRepaintEvent.emptyNew`, `WearableRepaintEvent.new`, `WearableRepaintEvent:readStream`, `WearableRepaintEvent:run`, `WearableRepaintEvent:writeStream`

## vehicles/specializations/events/WearableRepairEvent.lua

`WearableRepairEvent.emptyNew`, `WearableRepairEvent.new`, `WearableRepairEvent:readStream`, `WearableRepairEvent:run`, `WearableRepairEvent:writeStream`

## vehicles/specializations/events/WoodHarvesterCutLengthEvent.lua

`WoodHarvesterCutLengthEvent.emptyNew`, `WoodHarvesterCutLengthEvent.new`, `WoodHarvesterCutLengthEvent.sendEvent`, `WoodHarvesterCutLengthEvent:readStream`, `WoodHarvesterCutLengthEvent:run`, `WoodHarvesterCutLengthEvent:writeStream`

## vehicles/specializations/events/WoodHarvesterCutTreeEvent.lua

`WoodHarvesterCutTreeEvent.emptyNew`, `WoodHarvesterCutTreeEvent.new`, `WoodHarvesterCutTreeEvent.sendEvent`, `WoodHarvesterCutTreeEvent:readStream`, `WoodHarvesterCutTreeEvent:run`, `WoodHarvesterCutTreeEvent:writeStream`

## vehicles/specializations/events/WoodHarvesterDropTreeEvent.lua

`WoodHarvesterDropTreeEvent.emptyNew`, `WoodHarvesterDropTreeEvent.new`, `WoodHarvesterDropTreeEvent.sendEvent`, `WoodHarvesterDropTreeEvent:readStream`, `WoodHarvesterDropTreeEvent:run`, `WoodHarvesterDropTreeEvent:writeStream`

## vehicles/specializations/events/WoodHarvesterHeaderTiltEvent.lua

`WoodHarvesterHeaderTiltEvent.emptyNew`, `WoodHarvesterHeaderTiltEvent.new`, `WoodHarvesterHeaderTiltEvent.sendEvent`, `WoodHarvesterHeaderTiltEvent:readStream`, `WoodHarvesterHeaderTiltEvent:run`, `WoodHarvesterHeaderTiltEvent:writeStream`

## vehicles/specializations/events/WoodHarvesterOnCutTreeEvent.lua

`WoodHarvesterOnCutTreeEvent.emptyNew`, `WoodHarvesterOnCutTreeEvent.new`, `WoodHarvesterOnCutTreeEvent:readStream`, `WoodHarvesterOnCutTreeEvent:run`, `WoodHarvesterOnCutTreeEvent:writeStream`

## vehicles/specializations/events/WoodHarvesterOnDelimbTreeEvent.lua

`WoodHarvesterOnDelimbTreeEvent.emptyNew`, `WoodHarvesterOnDelimbTreeEvent.new`, `WoodHarvesterOnDelimbTreeEvent:readStream`, `WoodHarvesterOnDelimbTreeEvent:run`, `WoodHarvesterOnDelimbTreeEvent:writeStream`

## vehicles/specializations/events/YarderTowerFollowModeEvent.lua

`YarderTowerFollowModeEvent.emptyNew`, `YarderTowerFollowModeEvent.new`, `YarderTowerFollowModeEvent.sendEvent`, `YarderTowerFollowModeEvent:readStream`, `YarderTowerFollowModeEvent:run`, `YarderTowerFollowModeEvent:writeStream`

## vehicles/specializations/events/YarderTowerSetTargetEvent.lua

`YarderTowerSetTargetEvent.emptyNew`, `YarderTowerSetTargetEvent.new`, `YarderTowerSetTargetEvent.sendEvent`, `YarderTowerSetTargetEvent:readStream`, `YarderTowerSetTargetEvent:run`, `YarderTowerSetTargetEvent:writeStream`
