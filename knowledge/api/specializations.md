# Vehicle specializations

Source: `github.com/MyGameSteamOfficial/fs25-lua-api` (commit 9478ee9, 2025-02-26 – older than the current patch). Extracted automatically: names, XML keys, types, defaults only – no code. Status 📖 (read from source, not verified in game).

## AIAutomaticSteering

- **requires:** `Drivable`
- **new functions:** `generateSteeringFieldCourse`, `getAIAutomaticSteeringLookAheadDistance`, `getAIAutomaticSteeringState`, `getAttacherToolWorkingWidth`, `getIsAIAutomaticSteeringAllowed`, `getIsAutomaticSteeringAllowed`, `getIsSideOffsetReversed`, `setAIAutomaticSteeringCourse`, `setAIAutomaticSteeringEnabled`
- **overwritable (registerOverwrittenFunction):** `setSteeringInput`, `updateVehiclePhysics`
- **events:** `onAIAutomaticSteeringLineEnd`
- **event listeners:** `onAIAutomaticSteeringLineEnd`, `onAIModeChanged`, `onAIModeSettingsChanged`, `onActivate`, `onDeactivate`, `onDelete`, `onLoad`, `onPostLoad`, `onReadStream`, `onReadUpdateStream`, `onRegisterActionEvents`, `onRegisterDashboardValueTypes`, `onStateChange`, `onUpdate`, `onUpdateTick`, `onWriteStream`, `onWriteUpdateStream`

## AIConveyorBelt

- **requires:** `AIFieldWorker`, `Motorized`
- **new functions:** `getDirectionAndSpeedToTargetAngle`, `setAIConveyorBeltAngle`
- **overwritable (registerOverwrittenFunction):** `getAINeedsTrafficCollisionBox`, `getCanBeSelected`, `getCanStartAIVehicle`, `getCanStartFieldWork`, `getHasStartableAIJob`, `getStartableAIJob`
- **event listeners:** `onAIFieldWorkerStart`, `onLoad`, `onPostLoad`, `onReadStream`, `onRegisterActionEvents`, `onUpdate`, `onUpdateTick`, `onWriteStream`

## AIDischargeable


## AIDrivable

- **requires:** `AIJobVehicle`, `AIVehicle`, `Drivable`
- **new functions:** `addAIAgentAttachment`, `consoleCommandClearPath`, `consoleCommandMove`, `consoleCommandSetTurnRadius`, `createAgent`, `debugGetAgentHasSpaceAt`, `deleteAgent`, `drawDebugAIAgent`, `getAIAgentMaxBrakeAcceleration`, `getAIAgentSize`, `getAIAllowsBackwards`, `getAIRootNode`, `getAIRootNodeBoundingBox`, `getAIRootNodeMaxZOffset`, `getAITurningRadius`, `loadAgentInfoFromXML`, `prepareForAIDriving`, `reachedAITarget`, `setAIRootNodeDirty`, `setAITarget`, `startNewAIAgentAttachmentChain`, `stopAIDriving`, `unsetAITarget`, `updateAIAgentAttachmentOffsetData`, `updateAIAgentAttachments`, `updateAIAgentPoseData`
- **overwritable (registerOverwrittenFunction):** `getCanHaveAIVehicleObstacle`, `getCanStartAIVehicle`, `getIsAIPreparingToDrive`, `getIsAIReadyToDrive`
- **events:** `onAIDrivablePrepare`, `onAIDriveableActive`, `onAIDriveableEnd`, `onAIDriveableStart`
- **event listeners:** `onCruiseControlSpeedChanged`, `onEnterVehicle`, `onLeaveVehicle`, `onLoad`, `onPostLoad`, `onUpdate`

## AIFieldWorker

- **requires:** `AIJobVehicle`, `Drivable`

## AIImplement

- **new functions:** `addAIDensityHeightTypeRequirement`, `addAIFruitProhibitions`, `addAIFruitRequirement`, `addAIGroundTypeRequirements`, `addAITerrainDetailProhibitedRange`, `addAITerrainDetailRequiredRange`, `aiImplementEndLine`, `aiImplementStartLine`, `calcAIMarkerAttacherJointOffset`, `clearAIDensityHeightTypeRequirements`, `clearAIFruitProhibitions`, `clearAIFruitRequirements`, `clearAITerrainDetailProhibitedRange`, `clearAITerrainDetailRequiredRange`, `compareFieldCropsQuery`, `createFieldCropsQuery`, `getAIAllowTurnBackward`, `getAIAreaOverlap`, `getAIBlockTurnBackward`, `getAIDensityHeightTypeRequirements`, `getAIFruitProhibitions`, `getAIFruitRequirements`, `getAIHasNoFullCoverageArea`, `getAIImplementCollisionTrigger`, `getAIImplementCollisionTriggers`, `getAIImplementSideOffset`, `getAIImplementUseVineSegment`, `getAIInvertMarkersOnTurn`, `getAIIsVineyardTool`, `getAILookAheadSize`, `getAILowerIfAnyIsLowered`, `getAIMarkerAttacherJointOffset`, `getAIMarkers`, `getAIMinTurningRadius`, `getAINeedsLowering`, `getAINeedsRootAlignment`, `getAISizeMarkers`, `getAITerrainDetailProhibitedRange`, `getAITerrainDetailRequiredRange`, `getAIToolReverserDirectionNode`, `getAITurnRadiusLimitation`, `getCanAIImplementContinueWork`, `getCanImplementBeUsedForAI`, `getCustomAIImplementBaseSetup`, `getFieldCropsQuery`, `getImplementAllowAutomaticSteering`, `getIsAIImplementInLine`, `loadAICollisionTriggerFromXML`, `loadAIImplementBaseSetupFromXML`, `setAIDensityHeightTypeRequirements`, `setAIFruitProhibitions`, `setAIFruitRequirements`, `setAIImplementVariableSideOffset`, `setAIMarkersInverted`, `updateAIMarkerWidth`, `updateFieldCropsQuery`
- **overwritable (registerOverwrittenFunction):** `addVehicleToAIImplementList`, `checkMovingPartDirtyUpdateNode`, `getAllowTireTracks`, `getDoConsumePtoPower`
- **events:** `onAIImplementActive`, `onAIImplementBlock`, `onAIImplementContinue`, `onAIImplementEnd`, `onAIImplementEndLine`, `onAIImplementEndTurn`, `onAIImplementJobVehicleBlock`, `onAIImplementJobVehicleContinue`, `onAIImplementPrepareForTransport`, `onAIImplementPrepareForWork`, `onAIImplementSideOffsetChanged`, `onAIImplementStart`, `onAIImplementStartLine`, `onAIImplementStartTurn`, `onAIImplementTurnProgress`
- **event listeners:** `onAIFieldCourseSettingsInitialized`, `onLoad`, `onPostLoad`

## AIJobVehicle

- **requires:** `AIVehicle`, `Drivable`
- **new functions:** `aiBlock`, `aiContinue`, `aiJobFinished`, `aiJobStarted`, `getAIDirectionNode`, `getAIJobFarmId`, `getAIReverserNode`, `getAISteeringNode`, `getAISteeringSpeed`, `getCanStartAIVehicle`, `getCanStopAIVehicle`, `getCanToggleAIVehicle`, `getCurrentHelper`, `getHasStartableAIJob`, `getIsAIJobSupported`, `getJob`, `getLastJob`, `getShowAIToggleActionEvent`, `getStartAIJobText`, `getStartableAIJob`, `setAIMapHotspotBlinking`, `setIsAIStartAllowed`, `setIsAIStopAllowed`, `skipCurrentTask`, `stopCurrentAIJob`, `toggleAIVehicle`
- **overwritable (registerOverwrittenFunction):** `getActiveFarm`, `getAllowTireTracks`, `getDeactivateLightsOnLeave`, `getDeactivateOnLeave`, `getDisableVehicleCharacterOnLeave`, `getFullName`, `getIsAIActive`, `getIsActive`, `getIsMapHotspotVisible`, `getIsVehicleControlledByPlayer`, `getMapHotspot`, `getStopMotorOnLeave`
- **events:** `onAIJobFinished`, `onAIJobStarted`, `onAIJobVehicleBlock`, `onAIJobVehicleContinue`
- **event listeners:** `onAIModeChanged`, `onDelete`, `onLoad`, `onReadStream`, `onSetBroken`, `onUpdate`, `onWriteStream`

## AIModeSelection

- **requires:** `AIAutomaticSteering`, `AIDrivable`
- **new functions:** `aiModeSettingsChanged`, `applyReadAIModeSettingsFromStream`, `getAIModeFieldCourseSettings`, `getAIModeSelection`, `initializeLoadedAIModeUserSettings`, `setAIModeFieldCourseSettings`, `setAIModeSelection`, `writeAIModeSettingsToStream`
- **events:** `onAIModeChanged`, `onAIModeSettingsChanged`
- **event listeners:** `onDelete`, `onDraw`, `onLoad`, `onReadStream`, `onRegisterActionEvents`, `onStateChange`, `onUpdateTick`, `onWriteStream`

## AIVehicle

- **new functions:** `collectAIAgentAttachments`, `drawAIAgentAttachments`, `getIsAIPreparingToDrive`, `getIsAIReadyToDrive`, `loadAIAgentAttachmentsFromXML`, `raiseAIEvent`, `registerAIAgentAttachment`, `safeRaiseAIEvent`, `validateAIAgentAttachments`
- **events:** `onAIFieldCourseSettingsInitialized`
- **event listeners:** `onLoad`, `onPostLoad`

## AIVehicleObstacle

- **event listeners:** `onDelete`, `onEnterVehicle`, `onLeaveVehicle`, `onLoad`, `onUpdate`

## AdditionalToolConnections

- **requires:** `Attachable`, `AttacherJoints`
- **overwritable (registerOverwrittenFunction):** `loadAttacherJointFromXML`
- **event listeners:** `onPostAttach`, `onPostLoad`, `onPreDetach`

## AnimatedVehicle

- **new functions:** `getAnimationByName`, `getAnimationDuration`, `getAnimationExists`, `getAnimationSpeed`, `getAnimationTime`, `getIsAnimationPlaying`, `getNumOfActiveAnimations`, `getRealAnimationTime`, `initializeAnimationPart`, `initializeAnimationParts`, `loadAnimation`, `loadAnimationPart`, `loadStaticAnimationPart`, `loadStaticAnimationPartValues`, `playAnimation`, `postInitializeAnimationPart`, `registerAnimationValueType`, `resetAnimationPartValues`, `resetAnimationValues`, `setAnimationSpeed`, `setAnimationStopTime`, `setAnimationTime`, `setRealAnimationTime`, `stopAnimation`, `updateAnimationPart`
- **overwritable (registerOverwrittenFunction):** `getIsMovingPartActive`, `getIsMovingToolActive`, `getIsSpeedRotatingPartActive`, `getIsWorkAreaActive`, `loadMovingPartFromXML`, `loadMovingToolFromXML`, `loadSpeedRotatingPartFromXML`, `loadWorkAreaFromXML`
- **events:** `onAnimationPartChanged`, `onFinishAnimation`, `onPlayAnimation`, `onRegisterAnimationValueTypes`, `onStartAnimation`, `onStopAnimation`, `onUpdateAnimation`
- **event listeners:** `onDelete`, `onLoad`, `onPostLoad`, `onPreLoad`, `onRegisterAnimationValueTypes`, `onUpdate`

## ArticulatedAxis

- **requires:** `Drivable`
- **overwritable (registerOverwrittenFunction):** `getAIReverserNode`, `getSteeringRotTimeByCurvature`, `getTurningRadiusByRotTime`
- **event listeners:** `onDeactivate`, `onDelete`, `onLoad`, `onPostLoad`, `onUpdate`

## Attachable

- **new functions:** `attachableAddToolCameras`, `attachableRemoveToolCameras`, `getActiveInputAttacherJoint`, `getActiveInputAttacherJointDescIndex`, `getAllowMultipleAttachments`, `getAllowsLowering`, `getAttachbleAirConsumerUsage`, `getAttacherVehicle`, `getBlockFoliageDestruction`, `getInputAttacherJointByJointDescIndex`, `getInputAttacherJointIndexByNode`, `getInputAttacherJoints`, `getIsAdditionalAttachment`, `getIsAttachedTo`, `getIsAttacherJointHeightNodeActive`, `getIsImplementChainLowered`, `getIsInWorkPosition`, `getIsInputAttacherActive`, `getIsReadyToFinishDetachProcess`, `getIsSteeringAxleAllowed`, `getIsSupportAnimationAllowed`, `getIsSupportVehicle`, `getLoweringActionEventState`, `getShowAttachableMapHotspot`, `getSteeringAxleBaseVehicle`, `isAttachAllowed`, `isDetachAllowed`, `loadAttacherJointHeightNode`, `loadInputAttacherJoint`, `loadSteeringAngleNodeFromXML`, `loadSteeringAxleFromXML`, `loadSupportAnimationFromXML`, `postAttach`, `postDetach`, `preAttach`, `preDetach`, `registerLoweringActionEvent`, `resolveMultipleAttachments`, `setIsAdditionalAttachment`, `setIsDetachingBlocked`, `setIsSupportVehicle`, `setLowered`, `setLoweredAll`, `setToolBottomArmWidthByIndex`, `startDetachProcess`, `updateInputAttacherJointGraphics`, `updateSteeringAngleNode`
- **overwritable (registerOverwrittenFunction):** `addToPhysics`, `findRootVehicle`, `getActiveFarm`, `getAreControlledActionsAllowed`, `getBrakeForce`, `getCanAIImplementContinueWork`, `getCanBeReset`, `getCanBeSelected`, `getCanImplementBeUsedForAI`, `getCanToggleTurnedOn`, `getConnectionHoseConfigIndex`, `getDeactivateOnLeave`, `getIsActive`, `getIsDashboardGroupActive`, `getIsFoldAllowed`, `getIsInUse`, `getIsLightActive`, `getIsLowered`, `getIsMapHotspotVisible`, `getIsOperating`, `getIsPowered`, `getOwnerConnection`, `getPowerTakeOffConfigIndex`, `getUpdatePriority`, `loadAdditionalLightAttributesFromXML`, `loadDashboardGroupFromXML`, `mountDynamic`, `removeFromPhysics`, `setWorldPositionQuaternion`
- **events:** `onLeaveRootVehicle`, `onPostAttach`, `onPostDetach`, `onPreAttach`, `onPreDetach`, `onSetLowered`, `onSetLoweredAll`
- **event listeners:** `onDeactivate`, `onDelete`, `onFoldStateChanged`, `onLoad`, `onLoadFinished`, `onPostLoad`, `onPreDelete`, `onPreInitComponentPlacement`, `onReadStream`, `onRegisterAnimationValueTypes`, `onRootVehicleChanged`, `onSelect`, `onStateChange`, `onUnselect`, `onUpdate`, `onUpdateInterpolation`, `onUpdateTick`, `onWriteStream`

## AttacherJointControl

- **requires:** `Attachable`
- **new functions:** `controlAttacherJoint`, `controlAttacherJointHeight`, `controlAttacherJointTilt`, `getControlAttacherJointDirection`, `getIsAttacherJointControlDampingAllowed`
- **overwritable (registerOverwrittenFunction):** `getCanBeSelected`, `getLoweringActionEventState`, `loadInputAttacherJoint`, `registerLoweringActionEvent`
- **event listeners:** `onDelete`, `onLoad`, `onPostAttach`, `onPreDetach`, `onReadStream`, `onReadUpdateStream`, `onRegisterActionEvents`, `onUpdate`, `onWriteStream`, `onWriteUpdateStream`

## AttacherJoints

- **new functions:** `activateAttachments`, `attachAdditionalAttachment`, `attachImplement`, `attachImplementFromInfo`, `calculateAttacherJointMoveUpperLowerAlpha`, `callFunctionOnAllImplements`, `createAttachmentJoint`, `deactivateAttachments`, `deactivateAttachmentsLights`, `detachAdditionalAttachment`, `detachAttachedImplement`, `detachImplement`, `detachImplementByObject`, `detachingIsPossible`, `doGroundHeightNodeCheck`, `finishGroundHeightNodeCheck`, `getAttachControlBarActionAccessible`, `getAttachableInfo`, `getAttachedImplements`, `getAttacherJointByJointDescIndex`, `getAttacherJointDescFromObject`, `getAttacherJointIndexByNode`, `getAttacherJointIndexFromImplementIndex`, `getAttacherJointIndexFromObject`, `getAttacherJoints`, `getCanSteerAttachable`, `getCanToggleAttach`, `getImplementByJointDescIndex`, `getImplementByObject`, `getImplementFromAttacherJointIndex`, `getImplementIndexByJointDescIndex`, `getImplementIndexByObject`, `getIsAttachingAllowed`, `getIsHardAttachAllowed`, `getJointMoveDown`, `getObjectFromImplementIndex`, `getSelectedImplement`, `getShowAttachControlBarAction`, `groundHeightNodeCheckCallback`, `handleLowerImplementByAttacherJointIndex`, `handleLowerImplementEvent`, `hardAttachImplement`, `hardDetachImplement`, `loadAttacherJointFromXML`, `loadAttachmentsFinished`, `onAttacherJointsVehicleLoaded`, `onBottomArmToolbarI3DLoaded`, `playAttachSound`, `playDetachSound`, `postAttachImplement`, `registerSelfLoweringActionEvent`, `setAttacherJointBlocked`, `setAttacherJointBottomArmWidth`, `setJointMoveDown`, `setSelectedImplementByObject`, `startAttacherJointCombo`, `updateAttacherJointGraphics`, `updateAttacherJointRotation`, `updateAttacherJointRotationNodes`, `updateAttacherJointSettingsByObject`
- **overwritable (registerOverwrittenFunction):** `addChildVehicles`, `addToPhysics`, `addVehicleToAIImplementList`, `attachableAddToolCameras`, `attachableRemoveToolCameras`, `collectAIAgentAttachments`, `getAdditionalComponentMass`, `getAirConsumerUsage`, `getAreControlledActionsAllowed`, `getConnectionHoseConfigIndex`, `getDirectionSnapAngle`, `getFillLevelInformation`, `getIsAttacherJointHeightNodeActive`, `getIsAutomaticShiftingAllowed`, `getIsDashboardGroupActive`, `getIsFoldAllowed`, `getIsReadyForAutomatedTrainTravel`, `getIsWheelFoliageDestructionAllowed`, `getPowerTakeOffConfigIndex`, `getRequiresPower`, `getTotalMass`, `isDetachAllowed`, `loadAttacherJointHeightNode`, `loadDashboardGroupFromXML`, `raiseActive`, `registerActionEvents`, `registerSelectableObjects`, `removeActionEvents`, `removeFromPhysics`, `setAIVehicleObstacleStateDirty`
- **events:** `onPostAttachImplement`, `onPostDetachImplement`, `onPreAttachImplement`, `onPreDetachImplement`, `onRequiresTopLightsChanged`
- **event listeners:** `onActivate`, `onBeaconLightsVisibilityChanged`, `onBrake`, `onBrakeLightsVisibilityChanged`, `onDeactivate`, `onDelete`, `onLeaveVehicle`, `onLightsTypesMaskChanged`, `onLoad`, `onLoadFinished`, `onPostLoad`, `onPreDelete`, `onPreLoad`, `onReadStream`, `onRegisterActionEvents`, `onReverseDirectionChanged`, `onReverseLightsVisibilityChanged`, `onStateChange`, `onTurnLightStateChanged`, `onTurnedOff`, `onTurnedOn`, `onUpdate`, `onUpdateEnd`, `onUpdateInterpolation`, `onUpdateTick`, `onWriteStream`

## AttacherJointsCompControl

- **requires:** `AttacherJoints`
- **new functions:** `addDependentComponentJointData`, `setDependentComponentJointBaseFactors`, `updateDependentComponentJointValues`
- **overwritable (registerOverwrittenFunction):** `addToPhysics`, `loadAttacherJointFromXML`
- **event listeners:** `onPreLoad`, `onStateChange`

## AutoLoadFork

- **new functions:** `doUnloadFork`, `getCanUnloadFork`, `getIsForkUnloadingAllowed`, `mountObjectToFork`, `onAutoLoadForkTriggerCallback`, `onUnmountObject`
- **overwritable (registerOverwrittenFunction):** `addToPhysics`, `removeFromPhysics`
- **event listeners:** `onDeactivate`, `onDelete`, `onLoad`, `onPostLoad`, `onRegisterActionEvents`, `onRootVehicleChanged`, `onUpdate`

## AutoLoadForwarder

- **requires:** `AutomaticArmControlForwarder`
- **new functions:** `addTreeToLoadPlaces`, `mountTreeToCrane`, `removeMountedObject`, `sortLoadedTreeObjects`
- **overwritable (registerOverwrittenFunction):** `addToPhysics`, `getAreControlledActionsAllowed`
- **events:** `onAutoLoadForwaderMountedTree`
- **event listeners:** `onDelete`, `onLoad`, `onPostLoad`, `onRootVehicleChanged`, `onUpdate`

## AutoLoadable

- **new functions:** `autoLoad`, `getAutoLoadBoundingBox`, `getAutoLoadIsAllowed`, `getAutoLoadIsSupported`, `getAutoLoadSize`
- **event listeners:** `onLoad`

## AutoLoader

- **new functions:** `autoLoaderOverlapCallback`, `autoLoaderPickupTriggerCallback`, `getIsAutoLoadingAllowed`, `getIsValidAutoLoaderObject`, `onUnmountObject`
- **overwritable (registerOverwrittenFunction):** `addToPhysics`, `getDynamicMountTimeToMount`, `removeFromPhysics`
- **event listeners:** `onDelete`, `onDraw`, `onLoad`, `onPostLoad`, `onRootVehicleChanged`, `onUpdate`

## AutoLoaderBales

- **new functions:** `autoLoaderBalesTriggerCallback`, `doAutoLoadBale`, `getAutoLoadBaleTypeFromBale`, `getIsBaleAutoLoadable`
- **event listeners:** `onDelete`, `onLoad`, `onLoadFinished`, `onUpdate`

## AutomaticArmControlForwarder

- **requires:** `Cylindered`
- **new functions:** `doTreeArmAlignment`, `getAutomaticAlignmentAvailableTargetTree`, `getAutomaticAlignmentCurrentTarget`, `getAutomaticAlignmentTargetTree`, `getBestTreeToAutoAlign`, `getIsAutoTreeAlignmentAllowed`, `getIsAutomaticAlignmentActive`, `getIsAutomaticAlignmentFinished`, `onTreeAutoTriggerCallback`, `resetAutomaticAlignment`, `setTreeArmAlignmentInput`
- **event listeners:** `onAutoLoadForwaderMountedTree`, `onDelete`, `onLoad`, `onPostLoad`, `onReadUpdateStream`, `onRegisterActionEvents`, `onUpdate`, `onWriteUpdateStream`

## AutomaticArmControlHarvester

- **requires:** `Cylindered`
- **new functions:** `doTreeArmAlignment`, `getAutoAlignHasValidTree`, `getAutoAlignTreeMarkerState`, `getAutomaticAlignmentCurrentTarget`, `getAutomaticAlignmentInvalidTreeReason`, `getBestTreeToAutoAlign`, `getIsAutoTreeAlignmentAllowed`, `getIsAutomaticAlignmentActive`, `getSupportsAutoTreeAlignment`, `getTreeAutomaticOverwrites`, `onTreeAutoOverlapCallback`, `setTreeArmAlignmentInput`
- **event listeners:** `onDelete`, `onLoad`, `onPostLoad`, `onReadUpdateStream`, `onRegisterActionEvents`, `onRootVehicleChanged`, `onUpdate`, `onWriteUpdateStream`

## BaleCounter

- **requires:** `Baler`
- **new functions:** `doBaleCounterReset`
- **overwritable (registerOverwrittenFunction):** `dropBale`
- **event listeners:** `onDelete`, `onDraw`, `onLoad`, `onReadStream`, `onRegisterActionEvents`, `onRegisterDashboardValueTypes`, `onRegisterExternalActionEvents`, `onWriteStream`

## BaleGrab

- **new functions:** `addDynamicMountedObject`, `baleGrabTriggerCallback`, `getIsBaleGrabClosed`, `mountBaleGrabObject`, `removeDynamicMountedObject`, `unmountBaleGrabObject`
- **overwritable (registerOverwrittenFunction):** `getMovingToolMoveValue`
- **event listeners:** `onDelete`, `onLoad`, `onPostLoad`, `onUpdateTick`

## BaleLoader

- **requires:** `FillUnit`
- **new functions:** `addBaleUnloadTrigger`, `baleGrabberTriggerCallback`, `baleLoaderMoveTriggerCallback`, `createBaleToBaleJoint`, `createBaleToBaleJoints`, `doStateChange`, `getBaleGrabberDropBaleAnimName`, `getBaleTypeByBale`, `getCurrentFoldingAnimation`, `getIsAutomaticBaleUnloadingAllowed`, `getIsAutomaticBaleUnloadingInProgress`, `getIsBaleGrabbingAllowed`, `getIsBaleLoaderFoldingPlaying`, `getLoadedBales`, `loadBaleLoaderAnimationsFromXML`, `loadBalePlacesFromXML`, `loadBaleTypeFromXML`, `mountBale`, `mountDynamicBale`, `onBaleMoverBaleRemoved`, `pickupBale`, `playBaleLoaderFoldingAnimation`, `removeBaleUnloadTrigger`, `setBaleLoaderBaleType`, `setBalePairCollision`, `startAutomaticBaleUnloading`, `unmountBale`, `unmountDynamicBale`, `updateFoldingAnimation`
- **overwritable (registerOverwrittenFunction):** `addToPhysics`, `getAllowDynamicMountFillLevelInfo`, `getAreControlledActionsAllowed`, `getCanBeSelected`, `getConsumingLoad`, `getDoConsumePtoPower`, `getIsAIPreparingToDrive`, `getIsAIReadyToDrive`, `getIsFoldAllowed`, `getIsPowerTakeOffActive`, `removeFromPhysics`
- **event listeners:** `onActivate`, `onBalerUnloadingStarted`, `onDeactivate`, `onDelete`, `onDraw`, `onFillUnitFillLevelChanged`, `onFoldStateChanged`, `onLoad`, `onLoadFinished`, `onPostLoad`, `onReadStream`, `onReadUpdateStream`, `onRegisterActionEvents`, `onRegisterAnimationValueTypes`, `onRootVehicleChanged`, `onUpdate`, `onUpdateTick`, `onWriteStream`, `onWriteUpdateStream`

## BaleWrapper

- **requires:** `AnimatedVehicle`, `Consumable`
- **new functions:** `allowsGrabbingBale`, `baleGrabberTriggerCallback`, `doStateChange`, `getIsBaleDropAllowed`, `getIsBaleWrappable`, `getIsBaleWrappingAllowed`, `getMatchingBaleTypeIndex`, `loadWrapperAnimCurveFromXML`, `loadWrapperAnimNodesFromXML`, `loadWrapperAnimationNodesFromXML`, `loadWrapperAnimationsFromXML`, `loadWrapperFoilAnimationFromXML`, `loadWrapperFromXML`, `loadWrapperStateCurveFromXML`, `loadWrapperWrapNodesFromXML`, `onBaleWrapperBlockOverlapCallback`, `onBaleWrapperDropOverlapCallback`, `pickupWrapperBale`, `playMoveToWrapper`, `setBaleWrapperAutomaticDrop`, `setBaleWrapperDropAnimation`, `setBaleWrapperType`, `updateWrapNodes`, `updateWrappingState`
- **overwritable (registerOverwrittenFunction):** `addToPhysics`, `getCanBeSelected`, `getIsFoldAllowed`, `getShowConsumableEmptyWarning`, `removeFromPhysics`
- **event listeners:** `onConsumableVariationChanged`, `onDeactivate`, `onDelete`, `onDraw`, `onFoldStateChanged`, `onLoad`, `onLoadFinished`, `onPostLoad`, `onReadStream`, `onRegisterActionEvents`, `onRegisterExternalActionEvents`, `onUpdate`, `onUpdateTick`, `onWriteStream`

## Baler

- **requires:** `AnimatedVehicle`, `Consumable`, `FillUnit`, `TurnOnVehicle`, `WorkArea`
- **new functions:** `createBale`, `createDummyBale`, `deleteDummyBale`, `dropBale`, `dropBaleFromPlatform`, `finishBale`, `getBalerBaleOwnerFarmId`, `getCanUnloadUnfinishedBale`, `getIsBaleUnloading`, `getIsRoundBaler`, `getTimeFromLevel`, `handleUnloadingBaleEvent`, `isUnloadingAllowed`, `moveBale`, `moveBales`, `processBalerArea`, `setBaleTime`, `setBaleTypeIndex`, `setBalerAutomaticDrop`, `setIsUnloadingBale`, `updateDummyBale`
- **overwritable (registerOverwrittenFunction):** `addToPhysics`, `doCheckSpeedLimit`, `getAlarmTriggerIsActive`, `getAllowDynamicMountFillLevelInfo`, `getCanBeSelected`, `getCanBeTurnedOn`, `getConsumingLoad`, `getIsAttachedTo`, `getIsFoldAllowed`, `getIsSpeedRotatingPartActive`, `getIsWorkAreaActive`, `getRequiresPower`, `getShowConsumableEmptyWarning`, `loadAlarmTrigger`, `loadSpeedRotatingPartFromXML`, `removeFromPhysics`
- **events:** `onBalerUnloadingFinished`, `onBalerUnloadingStarted`
- **event listeners:** `onChangedFillType`, `onConsumableVariationChanged`, `onDelete`, `onDraw`, `onEndWorkAreaProcessing`, `onFillUnitFillLevelChanged`, `onLoad`, `onLoadFinished`, `onPostLoad`, `onReadStream`, `onReadUpdateStream`, `onRegisterActionEvents`, `onRegisterExternalActionEvents`, `onRootVehicleChanged`, `onStartWorkAreaProcessing`, `onTurnedOff`, `onTurnedOn`, `onUpdate`, `onUpdateTick`, `onWriteStream`, `onWriteUpdateStream`

## BalerStationary

- **requires:** `BaleWrapper`, `Baler`, `FoldableSteps`
- **event listeners:** `onDelete`, `onDraw`, `onLoad`

## BaseMaterial

- **event listeners:** `onLoad`

## BigBag

- **overwritable (registerOverwrittenFunction):** `getInfoBoxTitle`
- **event listeners:** `onFillUnitFillLevelChanged`, `onLoad`, `onUpdate`

## BunkerSiloCompacter

- **new functions:** `getBunkerSiloCompacterScale`, `loadBunkerSiloCompactorFromXML`
- **overwritable (registerOverwrittenFunction):** `doCheckSpeedLimit`
- **event listeners:** `onDelete`, `onLoad`, `onUpdate`

## BunkerSiloInteractor

- **new functions:** `notifiyBunkerSilo`, `setBunkerSiloInteractorCallback`
- **event listeners:** `onLoad`

## CCTDrivable

- **requires:** `Enterable`
- **new functions:** `getCCTCollisionMask`, `getCCTWorldTranslation`, `getIsCCTOnGround`, `getTouchingNode`, `moveCCT`, `moveCCTExternal`
- **overwritable (registerOverwrittenFunction):** `addToPhysics`, `setWorldPosition`, `setWorldPositionQuaternion`
- **event listeners:** `onDelete`, `onLoad`

## ChainRollers

- **new functions:** `loadChainRollerFromXML`, `updateChainRoller`
- **overwritable (registerOverwrittenFunction):** `loadExtraDependentParts`, `updateExtraDependentParts`
- **event listeners:** `onLoad`, `onLoadFinished`, `onPostUpdate`

## Combine

- **requires:** `AnimatedVehicle`, `Attachable`, `Drivable`, `FillUnit`, `TurnOnVehicle`, `WorkArea`
- **new functions:** `addCutterArea`, `addCutterToCombine`, `getCombineFillLevelPercentage`, `getCombineLastValidFillType`, `getCombineLoadPercentage`, `getFillLevelDependentSpeed`, `getIsCutterCompatible`, `getIsThreshingDuringRain`, `loadCombineEffects`, `loadCombineRotationNodes`, `loadCombineSamples`, `loadCombineSetup`, `processCombineChopperArea`, `processCombineSwathArea`, `removeCutterFromCombine`, `setChopperPSEnabled`, `setCombineIsFilling`, `setIsSwathActive`, `setStrawPSEnabled`, `setWorkedHectars`, `startThreshing`, `stopThreshing`, `verifyCombine`
- **overwritable (registerOverwrittenFunction):** `getAreControlledActionsAllowed`, `getCanBeSelected`, `getCanBeTurnedOn`, `getDirtMultiplier`, `getDischargeFillType`, `getImplementAllowAutomaticSteering`, `getIsFoldAllowed`, `getIsRandomlyMovingPartActive`, `getIsTurnedOnAnimationActive`, `getTurnedOnNotAllowedWarning`, `getWearMultiplier`, `loadRandomlyMovingPartFromXML`, `loadTurnedOnAnimationFromXML`, `loadWorkAreaFromXML`
- **events:** `onStartThreshing`, `onStopThreshing`
- **event listeners:** `onChangedFillType`, `onDeactivate`, `onDelete`, `onDraw`, `onEndWorkAreaProcessing`, `onEnterVehicle`, `onFillUnitFillLevelChanged`, `onFoldStateChanged`, `onLeaveVehicle`, `onLoad`, `onPostAttachImplement`, `onPostDetachImplement`, `onPostLoad`, `onReadStream`, `onReadUpdateStream`, `onRegisterActionEvents`, `onRegisterDashboardValueTypes`, `onStartWorkAreaProcessing`, `onTurnedOff`, `onTurnedOn`, `onUpdate`, `onUpdateTick`, `onWriteStream`, `onWriteUpdateStream`

## ConnectedAttributes

- **overwritable (registerOverwrittenFunction):** `loadExtraDependentParts`, `updateExtraDependentParts`
- **event listeners:** `onFinishAnimation`, `onLoad`, `onLoadFinished`, `onPlayAnimation`, `onUpdate`, `onUpdateAnimation`, `onUpdateEnd`

## ConnectionHoses

- **new functions:** `addHoseTargetNodes`, `addHoseToDelayedMountings`, `connectCustomHoseNode`, `connectCustomHosesToAttacherVehicle`, `connectHose`, `connectHoseToSkipNode`, `connectHosesToAttacherVehicle`, `disconnectCustomHoseNode`, `disconnectHose`, `getCenterPointAngle`, `getCenterPointAngleRegulation`, `getClonedSkipHoseNode`, `getConnectionHoseConfigIndex`, `getConnectionHosesByInputAttacherJoint`, `getConnectionTarget`, `getIsConnectionHoseUsed`, `getIsConnectionTargetUsed`, `getIsSkipNodeAvailable`, `iterateConnectionTargets`, `loadConnectionHosesFromXML`, `loadCustomHosesFromXML`, `loadHoseNode`, `loadHoseSkipNode`, `loadHoseTargetNode`, `loadToolConnectorHoseNode`, `retryHoseSkipNodeConnections`, `updateAttachedConnectionHoses`, `updateConnectionHose`, `updateCustomHoseNode`, `updateToolConnectionHose`
- **overwritable (registerOverwrittenFunction):** `loadExtraDependentParts`, `updateExtraDependentParts`
- **event listeners:** `onDelete`, `onLoadFinished`, `onPostAttach`, `onPostLoad`, `onPreDetach`, `onPreLoad`, `onUpdateEnd`, `onUpdateInterpolation`

## Consumable

- **requires:** `FillUnit`
- **new functions:** `getConsumableIsAvailable`, `getConsumableVariationIndexByFillUnitIndex`, `getCustomFillTriggerSpeedFactor`, `getShowConsumableEmptyWarning`, `setConsumableSlotVariationIndex`, `updateConsumable`
- **overwritable (registerOverwrittenFunction):** `addFillUnitFillLevel`, `collectPalletTensionBeltNodes`, `getFillUnitFreeCapacity`
- **events:** `onConsumableVariationChanged`
- **event listeners:** `onAddedFillUnitTrigger`, `onDirtyMaskCleared`, `onDraw`, `onFillUnitFillLevelChanged`, `onFillUnitIsFillingStateChanged`, `onLoad`, `onPostLoad`, `onReadStream`, `onReadUpdateStream`, `onRemovedFillUnitTrigger`, `onUpdate`, `onWriteStream`, `onWriteUpdateStream`

## ConveyorBelt

- **requires:** `Dischargeable`
- **new functions:** `getConveyorBeltFillLevel`, `getConveyorBeltTargetObject`, `getLoadTriggerMaxFillSpeed`
- **overwritable (registerOverwrittenFunction):** `getDischargeNodeEmptyFactor`, `getFillUnitAllowsFillType`, `getFillUnitFreeCapacity`, `getIsEnterable`, `handleDischarge`, `handleDischargeOnEmpty`
- **event listeners:** `onDelete`, `onFillUnitFillLevelChanged`, `onLoad`, `onMovingToolChanged`, `onPostLoad`, `onReadUpdateStream`, `onUpdateTick`, `onWriteUpdateStream`

## Cover

- **requires:** `AnimatedVehicle`
- **new functions:** `getCoverByFillUnitIndex`, `getIsNextCoverStateAllowed`, `getIsNextCoverStateAllowedWarning`, `loadCoverFromXML`, `playCoverAnimation`, `setCoverState`
- **overwritable (registerOverwrittenFunction):** `aiFinishLoading`, `aiPrepareLoading`, `finishedAIDischarge`, `getCanBeSelected`, `getFillUnitSupportsToolType`, `getIsPipeStateChangeAllowed`, `loadPipeNodes`, `setFillUnitInTriggerRange`
- **event listeners:** `onFillUnitTriggerChanged`, `onLoad`, `onOpenBackDoor`, `onPostLoad`, `onReadStream`, `onRegisterActionEvents`, `onRemovedFillUnitTrigger`, `onStartTipping`, `onUpdate`, `onWriteStream`

## CrabSteering

- **requires:** `AnimatedVehicle`, `Drivable`, `Wheels`
- **new functions:** `getCanToggleCrabSteering`, `getCrabSteeringMode`, `getCrabSteeringModeAvailable`, `getNumCrabSteeringModesAvailable`, `loadCrabSteeringModeFromXML`, `setCrabSteering`, `setNextCrabSteeringMode`, `updateArticulatedAxisRotation`
- **overwritable (registerOverwrittenFunction):** `getAIAutomaticSteeringLookAheadDistance`, `getCanBeSelected`, `loadWheelFromXML`, `loadWheelsFromXML`, `startFieldWorker`, `updateSteeringAngle`, `updateSteeringWheel`
- **event listeners:** `onDelete`, `onDraw`, `onLoad`, `onPostLoad`, `onReadStream`, `onReadUpdateStream`, `onRegisterActionEvents`, `onRegisterDashboardValueTypes`, `onUpdateTick`, `onWriteStream`, `onWriteUpdateStream`

## Crawlers

- **requires:** `Wheels`
- **new functions:** `getCrawlerWheelMovedDistance`, `loadCrawlerFromConfigFile`, `loadCrawlerFromXML`, `onCrawlerI3DLoaded`, `updateCrawler`
- **overwritable (registerOverwrittenFunction):** `validateWashableNode`
- **event listeners:** `onDelete`, `onLoad`, `onLoadFinished`, `onUpdate`, `onWheelConfigurationChanged`

## CropRowAdjustedNodes

- **new functions:** `getIsCropRowAdjustedNodeActive`, `loadCropRowAdjustedNodeFromXML`, `updateCropRowAdjustedNode`
- **event listeners:** `onLoad`, `onUpdate`

## Cultivator

- **requires:** `WorkArea`
- **new functions:** `getCultivatorLimitToField`, `getIsCultivationEnabled`, `getUseCultivatorAIRequirements`, `processCultivatorArea`, `processVineCultivatorArea`, `updateCultivatorAIRequirements`, `updateCultivatorEnabledState`
- **overwritable (registerOverwrittenFunction):** `doCheckSpeedLimit`, `getAIImplementUseVineSegment`, `getDirtMultiplier`, `getIsWorkAreaActive`, `getWearMultiplier`, `loadWorkAreaFromXML`, `loadWorkModeFromXML`
- **event listeners:** `onDeactivate`, `onDelete`, `onEndWorkAreaProcessing`, `onLoad`, `onPostAttach`, `onStartWorkAreaProcessing`, `onStateChange`, `onWorkModeChanged`

## Cutter

- **requires:** `FruitExtraObjects`, `TestAreas`, `WorkArea`
- **new functions:** `getAllowCutterAIFruitRequirements`, `getCombine`, `getCutterLoad`, `getCutterStoneMultiplier`, `getCutterTiltDelta`, `getCutterTiltIsActive`, `getCutterTiltIsAvailable`, `loadCutterTiltFromXML`, `processCutterArea`, `processHaulmDropArea`, `processPickupCutterArea`, `readCutterFromStream`, `setCutterCutHeight`, `tiltRaycastDetectionCallbackLeft`, `tiltRaycastDetectionCallbackRight`, `writeCutterToStream`
- **overwritable (registerOverwrittenFunction):** `doCheckSpeedLimit`, `getConsumingLoad`, `getDefaultAllowComponentMassReduction`, `getDirtMultiplier`, `getFruitExtraObjectTypeData`, `getIsGroundReferenceNodeThreshold`, `getIsRandomlyMovingPartActive`, `getIsSpeedRotatingPartActive`, `getIsWorkAreaActive`, `getWearMultiplier`, `isAttachAllowed`, `loadInputAttacherJoint`, `loadRandomlyMovingPartFromXML`, `loadSpeedRotatingPartFromXML`, `loadWorkAreaFromXML`
- **event listeners:** `onAIFieldCourseSettingsInitialized`, `onAIImplementStart`, `onDelete`, `onEndWorkAreaProcessing`, `onLoad`, `onPostLoad`, `onReadStream`, `onReadUpdateStream`, `onStartWorkAreaProcessing`, `onTurnedOff`, `onTurnedOn`, `onUpdate`, `onUpdateTick`, `onWriteStream`, `onWriteUpdateStream`

## Cylindered

- **requires:** `VehicleSettings`
- **new functions:** `allowLoadMovingToolStates`, `checkMovingPartDirtyUpdateNode`, `getIsMovingPartActive`, `getIsMovingToolActive`, `getMovingPartByNode`, `getMovingToolByNode`, `getMovingToolMoveValue`, `getTranslatingPartByNode`, `loadActionSoundsFromXML`, `loadCopyLocalDirectionParts`, `loadDependentAnimations`, `loadDependentAttacherJoints`, `loadDependentComponentJoints`, `loadDependentMovingTools`, `loadDependentParts`, `loadDependentTranslatingParts`, `loadDependentWheels`, `loadEasyArmControlFromXML`, `loadExtraDependentParts`, `loadMovingPartFromXML`, `loadMovingPartsFromXML`, `loadMovingToolFromXML`, `loadMovingToolsFromXML`, `loadRotationBasedLimits`, `onMovingPartSoundEvent`, `resolveDependentPartData`, `setDelayedData`, `setEasyControlForcedTransMove`, `setIsEasyControlActive`, `setMovingPartReferenceNode`, `setMovingToolDirty`, `updateControlGroups`, `updateCylinderedInitial`, `updateDelayedTool`, `updateDependentAnimations`, `updateDependentToolLimits`, `updateDirtyMovingParts`, `updateEasyControl`, `updateExtraDependentParts`, `updateMovingPartByNode`, `updateMovingToolSoundEvents`
- **overwritable (registerOverwrittenFunction):** `getAdditionalSchemaText`, `getConsumingLoad`, `getDischargeNodeEmptyFactor`, `getDoConsumePtoPower`, `getIsDynamicMountGrabOpened`, `getShovelNodeIsActive`, `getWearMultiplier`, `isDetachAllowed`, `loadDischargeNode`, `loadDynamicMountGrabFromXML`, `loadObjectChangeValuesFromXML`, `loadShovelNode`, `setComponentJointFrame`, `setObjectChangeValues`
- **events:** `onMovingToolChanged`
- **event listeners:** `onAIImplementStart`, `onAnimationPartChanged`, `onDeactivate`, `onDelete`, `onDraw`, `onLoad`, `onLoadFinished`, `onPostAttach`, `onPostLoad`, `onPostUpdate`, `onPostUpdateTick`, `onReadStream`, `onReadUpdateStream`, `onRegisterActionEvents`, `onRegisterAnimationValueTypes`, `onRegisterDashboardValueTypes`, `onSelect`, `onUnselect`, `onUpdate`, `onUpdateEnd`, `onUpdateTick`, `onVehicleSettingChanged`, `onWriteStream`, `onWriteUpdateStream`

## CylinderedFoldable

- **requires:** `Cylindered`, `Foldable`
- **event listeners:** `onLoad`, `onPreInitComponentPlacement`, `onReadStream`, `onWriteStream`

## Dashboard

- **new functions:** `getDashboardGroupByName`, `getDashboardValue`, `getIsDashboardGroupActive`, `loadDashboardCompoundFromXML`, `loadDashboardFromXML`, `loadDashboardGroupFromXML`, `loadDashboardsFromXML`, `onDashboardCompoundLoaded`, `registerDashboardValueType`, `setDashboardsDirty`, `updateDashboards`
- **events:** `onRegisterDashboardValueTypes`
- **event listeners:** `onDelete`, `onLoad`, `onPostLoad`, `onUpdate`, `onUpdateEnd`, `onUpdateTick`

## Dischargeable

- **requires:** `FillUnit`, `FillVolume`
- **new functions:** `discharge`, `dischargeActivationTriggerCallback`, `dischargeToGround`, `dischargeToObject`, `dischargeTriggerCallback`, `finishDischargeRaycast`, `getCanDischargeAtPosition`, `getCanDischargeToGround`, `getCanDischargeToLand`, `getCanDischargeToObject`, `getCanToggleDischargeToGround`, `getCanToggleDischargeToObject`, `getCurrentDischargeNode`, `getCurrentDischargeNodeIndex`, `getCurrentDischargeObject`, `getDischargeFillType`, `getDischargeNodeAutomaticDischarge`, `getDischargeNodeByIndex`, `getDischargeNodeByNode`, `getDischargeNodeEmptyFactor`, `getDischargeNotAllowedWarning`, `getDischargeState`, `getDischargeTargetObject`, `getIsDischargeNodeActive`, `getIsPossibleToDischargeToObject`, `handleDischarge`, `handleDischargeNodeChanged`, `handleDischargeOnEmpty`, `handleDischargeRaycast`, `handleFoundDischargeObject`, `loadDischargeNode`, `onDeleteActivationTriggerObject`, `onDeleteDischargeTriggerObject`, `raycastCallbackDischargeNode`, `setCurrentDischargeNodeIndex`, `setDischargeEffectActive`, `setDischargeEffectDistance`, `setDischargeState`, `setForcedFillTypeIndex`, `setIsDischargeAllowed`, `setManualDischargeState`, `updateDischargeInfo`, `updateDischargeSound`, `updateRaycast`
- **overwritable (registerOverwrittenFunction):** `getAllowLoadTriggerActivation`, `getCanBeSelected`, `getDoConsumePtoPower`, `getIsPowerTakeOffActive`, `getRequiresTipOcclusionArea`
- **events:** `onDischargeStateChanged`, `onDischargeTargetObjectChanged`
- **event listeners:** `onDeactivate`, `onDelete`, `onFillUnitFillLevelChanged`, `onLoad`, `onPostLoad`, `onReadStream`, `onReadUpdateStream`, `onRegisterActionEvents`, `onRegisterDashboardValueTypes`, `onStateChange`, `onUpdate`, `onUpdateTick`, `onWriteStream`, `onWriteUpdateStream`

## Drivable

- **requires:** `Enterable`, `Motorized`
- **new functions:** `brakeToStop`, `getAcDecelerationAxis`, `getAccelerationAxis`, `getAxisForward`, `getCruiseControlAxis`, `getCruiseControlDisplayInfo`, `getCruiseControlMaxSpeed`, `getCruiseControlSpeed`, `getCruiseControlState`, `getDashboardSteeringAxis`, `getDecelerationAxis`, `getDrivingDirection`, `getIsDrivingBackward`, `getIsDrivingForward`, `getIsPlayerVehicleControlAllowed`, `getIsVehicleControlledByPlayer`, `getReverserDirection`, `getSteeringDirection`, `registerPlayerVehicleControlAllowedFunction`, `setAccelerationPedalInput`, `setBrakePedalInput`, `setCruiseControlMaxSpeed`, `setCruiseControlState`, `setReverserDirection`, `setSteeringInput`, `setTargetSpeedAndDirection`, `updateSteeringAngle`, `updateSteeringWheel`, `updateVehiclePhysics`
- **overwritable (registerOverwrittenFunction):** `getIsManualDirectionChangeAllowed`, `getMapHotspotRotation`, `setTransmissionDirection`
- **events:** `onCruiseControlSpeedChanged`, `onVehiclePhysicsUpdate`
- **event listeners:** `onDelete`, `onDraw`, `onLeaveVehicle`, `onLoad`, `onReadStream`, `onReadUpdateStream`, `onRegisterActionEvents`, `onRegisterDashboardValueTypes`, `onSetBroken`, `onUpdate`, `onWriteStream`, `onWriteUpdateStream`

## DynamicMountAttacher

- **new functions:** `addDynamicMountedObject`, `dynamicMountTriggerCallback`, `forceDynamicMountPendingObjects`, `forceUnmountDynamicMountedObjects`, `getAllowDynamicMountFillLevelInfo`, `getAllowDynamicMountObjects`, `getDynamicMountAttacherSettingsByNode`, `getDynamicMountTimeToMount`, `getHasDynamicMountedObjects`, `getIsDynamicMountGrabOpened`, `loadDynamicMountGrabFromXML`, `lockDynamicMountedObject`, `readDynamicMountObjectsFromStream`, `removeDynamicMountedObject`, `setDynamicMountAnimationState`, `writeDynamicMountObjectsToStream`
- **overwritable (registerOverwrittenFunction):** `getAdditionalComponentMass`, `getFillLevelInformation`, `getIsAttachedTo`, `getIsFoldAllowed`, `loadExtraDependentParts`, `updateExtraDependentParts`
- **event listeners:** `onDelete`, `onLoad`, `onPreAttachImplement`, `onReadUpdateStream`, `onUpdateTick`, `onWriteUpdateStream`

## DynamicallyLoadedParts

- **new functions:** `onDynamicallyPartI3DLoaded`
- **event listeners:** `onDelete`, `onLoad`

## Enterable

- **new functions:** `addToolCameras`, `deleteVehicleCharacter`, `doLeaveVehicle`, `getActiveCamera`, `getAllowCharacterVisibilityUpdate`, `getCanLeave`, `getCanLeaveRideable`, `getCanLeaveVehicle`, `getControllerName`, `getCurrentPlayerStyle`, `getDisableVehicleCharacterOnLeave`, `getExitNode`, `getFormattedOperatingTime`, `getIsAdditionalCharacterActive`, `getIsControlled`, `getIsEnterable`, `getIsEnterableFromMenu`, `getIsEntered`, `getIsLeavingAllowed`, `getIsTabbable`, `getUserPlayerStyle`, `getVehicleCharacter`, `loadAdditionalCharacterFromXML`, `loadCamerasFromXML`, `loadCharacterTargetNodeModifier`, `onPlayerEnterVehicle`, `onPlayerLeaveVehicle`, `onPlayerStyleChanged`, `removeToolCameras`, `resetCharacterTargetNodeStateDefaults`, `restoreVehicleCharacter`, `setActiveCameraIndex`, `setCharacterTargetNodeStateDirty`, `setIsLeavingAllowed`, `setIsTabbable`, `setMirrorVisible`, `setRandomVehicleCharacter`, `setVehicleCharacter`, `updateCharacterTargetNodeModifier`, `vehicleCharacterLoaded`
- **overwritable (registerOverwrittenFunction):** `getActiveFarm`, `getCanToggleAttach`, `getCanToggleSelectable`, `getDistanceToNode`, `getInteractionHelp`, `getIsActive`, `getIsActiveForInput`, `getIsDashboardGroupActive`, `getIsInUse`, `getIsInteractive`, `getIsMapHotspotVisible`, `interact`, `loadDashboardGroupFromXML`, `loadExtraDependentParts`, `mountDynamic`, `updateExtraDependentParts`
- **events:** `onCameraChanged`, `onEnterVehicle`, `onLeaveVehicle`, `onVehicleCharacterChanged`
- **event listeners:** `onDelete`, `onDrawUIInfo`, `onLoad`, `onLoadFinished`, `onPostLoad`, `onPostUpdate`, `onPreRegisterActionEvents`, `onPreUpdate`, `onReadStream`, `onRegisterActionEvents`, `onRegisterDashboardValueTypes`, `onSetBroken`, `onUpdate`, `onWriteStream`

## EnterablePassenger

- **requires:** `Enterable`
- **new functions:** `copyEnterableActiveCameraIndex`, `enablePassengerActiveCamera`, `enterVehiclePassengerSeat`, `getCanUsePassengerSeats`, `getClosestSeatIndex`, `getFirstAvailablePassengerSeat`, `getIsPassengerSeatAvailable`, `getIsPassengerSeatIndexAvailable`, `getPassengerSeatIndexByPlayer`, `getPlayerNameBySeatIndex`, `leaveLocalPassengerSeat`, `leavePassengerSeat`, `onPassengerPlayerStyleChanged`, `setPassengerActiveCameraIndex`, `setPassengerSeatCharacter`, `updatePassengerSeatCharacter`
- **overwritable (registerOverwrittenFunction):** `getDeactivateOnLeave`, `getDistanceToNode`, `getExitNode`, `getInteractionHelp`, `getIsEnterable`, `getIsInUse`, `getIsInteractive`, `interact`
- **event listeners:** `onDelete`, `onDrawUIInfo`, `onEnterVehicle`, `onLeaveVehicle`, `onLoad`, `onPostUpdate`, `onPreRegisterActionEvents`, `onReadStream`, `onRegisterActionEvents`, `onSetBroken`, `onWriteStream`

## ExternalVehicleControl

- **new functions:** `registerExternalActionEvent`
- **events:** `onRegisterExternalActionEvents`
- **event listeners:** `onDelete`, `onLoadFinished`, `onUpdateTick`

## FellerBuncher

- **requires:** `FillUnit`
- **new functions:** `cutTree`, `doMountProcess`, `fellerBuncherSplitShapeCallback`, `getFellerBuncherCanCutSplitShape`, `getIsFellerBuncherReadyForCut`, `getNumLoadedTrees`, `mountTreeInRange`, `onFellerBuncherTreeShapeCut`, `onFellerBuncherTreeShapeMounted`, `onFellerBuncherTreesChanged`, `releaseMainArmTree`, `releaseMountedTrees`, `releaseNextTreeSlot`, `setFellerBuncherGrabState`
- **overwritable (registerOverwrittenFunction):** `getAutoAlignHasValidTree`, `getCanToggleTurnedOn`, `getSupportsAutoTreeAlignment`, `registerLoweringActionEvent`
- **event listeners:** `onDelete`, `onFinishAnimation`, `onLoad`, `onReadStream`, `onReadUpdateStream`, `onRegisterActionEvents`, `onTurnedOff`, `onTurnedOn`, `onUpdateTick`, `onWriteStream`, `onWriteUpdateStream`

## FertilizingCultivator

- **requires:** `Cultivator`, `Sprayer`
- **overwritable (registerOverwrittenFunction):** `processCultivatorArea`, `setSprayerAITerrainDetailProhibitedRange`
- **event listeners:** `onLoad`

## FertilizingSowingMachine

- **requires:** `SowingMachine`, `Sprayer`
- **overwritable (registerOverwrittenFunction):** `getAreEffectsVisible`, `getUseSprayerAIRequirements`, `processSowingMachineArea`
- **event listeners:** `onLoad`

## FillTriggerVehicle

- **requires:** `FillUnit`
- **overwritable (registerOverwrittenFunction):** `getDrawFirstFillText`
- **event listeners:** `onDelete`, `onLoad`, `onReadStream`, `onWriteStream`

## FillUnit

- **new functions:** `addExactFillRootAimToUpdate`, `addFillUnitFillLevel`, `addFillUnitTrigger`, `debugGetSupportedFillTypesPerFillUnit`, `emptyAllFillUnits`, `getAlarmTriggerIsActive`, `getAllowLoadTriggerActivation`, `getDrawFirstFillText`, `getFillTypeChangeThreshold`, `getFillUnitAllowsFillType`, `getFillUnitAutoAimTargetNode`, `getFillUnitByIndex`, `getFillUnitCanBeFilled`, `getFillUnitCapacity`, `getFillUnitExactFillRootNode`, `getFillUnitExists`, `getFillUnitExtraDistanceFromNode`, `getFillUnitFillLevel`, `getFillUnitFillLevelPercentage`, `getFillUnitFillType`, `getFillUnitFirstSupportedFillType`, `getFillUnitForcedMaterialFillType`, `getFillUnitFreeCapacity`, `getFillUnitFromNode`, `getFillUnitHasMountedPalletsToUnload`, `getFillUnitIndexFromNode`, `getFillUnitLastValidFillType`, `getFillUnitMountedPalletsToUnload`, `getFillUnitRootNode`, `getFillUnitSupportedFillTypes`, `getFillUnitSupportedToolTypes`, `getFillUnitSupportsFillType`, `getFillUnitSupportsToolType`, `getFillUnitSupportsToolTypeAndFillType`, `getFillUnitUnloadPalletFilename`, `getFillUnits`, `getFirstValidFillUnitToFill`, `getIsFillAllowedFromFarm`, `getIsFillUnitActive`, `loadAlarmTrigger`, `loadFillPlane`, `loadFillTypeMaterials`, `loadFillUnitFromXML`, `loadFillUnitUnloadingFromXML`, `loadMeasurementNode`, `removeFillUnitTrigger`, `setAlarmTriggerState`, `setFillPlaneForcedFillType`, `setFillSoundIsPlaying`, `setFillUnitCapacity`, `setFillUnitCapacityToDisplay`, `setFillUnitFillLevelToDisplay`, `setFillUnitFillType`, `setFillUnitFillTypeToDisplay`, `setFillUnitForcedMaterialFillType`, `setFillUnitInTriggerRange`, `setFillUnitIsFilling`, `setFillUnitLastValidFillType`, `unloadFillUnits`, `updateAlarmTriggers`, `updateFillTypeMaterials`, `updateFillUnitAutoAimTarget`, `updateFillUnitFillPlane`, `updateFillUnitTriggers`, `updateMeasurementNodes`
- **overwritable (registerOverwrittenFunction):** `getAdditionalComponentMass`, `getCanBeTurnedOn`, `getDoConsumePtoPower`, `getFillLevelInformation`, `getIsFoldAllowed`, `getIsLevelerPickupNodeActive`, `getIsMovingToolActive`, `getIsPowerTakeOffActive`, `getIsReadyForAutomatedTrainTravel`, `loadLevelerNodeFromXML`, `loadMovingToolFromXML`, `showInfo`
- **events:** `onAddedFillUnitTrigger`, `onAlarmTriggerChanged`, `onChangedFillType`, `onFillUnitFillLevelChanged`, `onFillUnitIsFillingStateChanged`, `onFillUnitTriggerChanged`, `onFillUnitUnloadPallet`, `onFillUnitUnloaded`, `onRemovedFillUnitTrigger`
- **event listeners:** `onDeactivate`, `onDelete`, `onDischargeTargetObjectChanged`, `onDraw`, `onLoad`, `onPostLoad`, `onPostUpdate`, `onReadStream`, `onReadUpdateStream`, `onRegisterActionEvents`, `onUpdateTick`, `onWriteStream`, `onWriteUpdateStream`

## FillVolume

- **requires:** `FillUnit`
- **new functions:** `getFillVolumeIndicesByFillUnitIndex`, `getFillVolumeLoadInfo`, `getFillVolumeUVScrollSpeed`, `getFillVolumeUnloadInfo`, `loadFillVolume`, `loadFillVolumeHeightNode`, `loadFillVolumeInfo`, `setFillVolumeForcedFillType`, `setFillVolumeForcedFillTypeByFillUnitIndex`
- **overwritable (registerOverwrittenFunction):** `loadExtraDependentParts`, `setMovingToolDirty`, `updateExtraDependentParts`
- **event listeners:** `onDelete`, `onFillUnitFillLevelChanged`, `onLoad`, `onReadUpdateStream`, `onUpdate`, `onWriteUpdateStream`

## Foldable

- **new functions:** `getFoldAnimTime`, `getIsFoldAllowed`, `getIsFoldMiddleAllowed`, `getIsUnfolded`, `getToggledFoldDirection`, `getToggledFoldMiddleDirection`, `loadFoldingPartFromXML`, `setFoldDirection`, `setFoldMiddleState`, `setFoldState`, `setIsFoldAllowed`
- **overwritable (registerOverwrittenFunction):** `allowLoadMovingToolStates`, `getAllowDynamicMountObjects`, `getAllowsLowering`, `getBrakeForce`, `getCanAIImplementContinueWork`, `getCanBeSelected`, `getCanBeTurnedOn`, `getCanChangePickupState`, `getCanToggleCrabSteering`, `getCrabSteeringModeAvailable`, `getCutterTiltIsActive`, `getFillUnitSupportsToolType`, `getIsAIPreparingToDrive`, `getIsAIReadyToDrive`, `getIsAdditionalCharacterActive`, `getIsAttacherJointHeightNodeActive`, `getIsGroundAdjustedNodeActive`, `getIsInWorkPosition`, `getIsInputAttacherActive`, `getIsLevelerPickupNodeActive`, `getIsLowered`, `getIsMovingPartActive`, `getIsMovingToolActive`, `getIsNextCoverStateAllowed`, `getIsNextCoverStateAllowedWarning`, `getIsPreprunerNodeActive`, `getIsSpeedRotatingPartActive`, `getIsSprayTypeActive`, `getIsSteeringAxleAllowed`, `getIsSupportAnimationAllowed`, `getIsSuspensionNodeActive`, `getIsTurnedOnAnimationActive`, `getIsVersatileYRotActive`, `getIsWheelChockAllowed`, `getIsWoodHarvesterTiltStateAllowed`, `getIsWorkAreaActive`, `getRequiresPower`, `getShovelNodeIsActive`, `getSlopeCompensationAngleScale`, `getTurnedOnNotAllowedWarning`, `isAttachAllowed`, `isDetachAllowed`, `loadAdditionalCharacterFromXML`, `loadAttacherJointHeightNode`, `loadCrabSteeringModeFromXML`, `loadCutterTiltFromXML`, `loadFillUnitFromXML`, `loadGroundAdjustedNodeFromXML`, `loadGroundReferenceNode`, `loadInputAttacherJoint`, `loadLevelerNodeFromXML`, `loadMovingPartFromXML`, `loadMovingToolFromXML`, `loadPickupFromXML`, `loadPreprunerNodeFromXML`, `loadShovelNode`, `loadSlopeCompensationNodeFromXML`, `loadSpeedRotatingPartFromXML`, `loadSprayTypeFromXML`, `loadSteeringAngleNodeFromXML`, `loadSteeringAxleFromXML`, `loadSupportAnimationFromXML`, `loadSuspensionNodeFromXML`, `loadTurnedOnAnimationFromXML`, `loadWheelFromXML`, `loadWoodHarvesterHeaderTiltFromXML`, `loadWorkAreaFromXML`, `onLoadWheelChockFromXML`, `registerLoweringActionEvent`, `registerSelfLoweringActionEvent`, `updateGroundReferenceNode`, `updateSteeringAngleNode`
- **events:** `onFoldStateChanged`, `onFoldTimeChanged`
- **event listeners:** `onDeactivate`, `onLoad`, `onPostAttach`, `onPostLoad`, `onPreAttachImplement`, `onPreDetach`, `onPreDetachImplement`, `onReadStream`, `onRegisterActionEvents`, `onRegisterExternalActionEvents`, `onRegistered`, `onRootVehicleChanged`, `onSetLoweredAll`, `onUpdate`, `onUpdateTick`, `onWriteStream`

## FoldableSteps

- **requires:** `AnimatedVehicle`
- **new functions:** `setFoldableStepsFoldState`
- **overwritable (registerOverwrittenFunction):** `getAllowHudInfoTrigger`, `getCanBeTurnedOn`, `getFillUnitSupportsToolType`, `getRequiresPower`, `getTurnedOnNotAllowedWarning`
- **event listeners:** `onLoad`, `onPostLoad`, `onReadStream`, `onRegisterActionEvents`, `onRegisterExternalActionEvents`, `onUpdateTick`, `onWriteStream`

## FoliageBending

- **new functions:** `activateBendingNodes`, `deactivateBendingNodes`, `getFoliageBendingNodeByIndex`, `loadBendingNodeFromXML`, `loadBendingNodeModifierFromXML`, `updateFoliageBendingAttributes`
- **event listeners:** `onActivate`, `onDeactivate`, `onDelete`, `onPostLoad`

## ForageWagon

- **requires:** `FillUnit`, `Pickup`, `TurnOnVehicle`, `WorkArea`
- **new functions:** `fillForageWagon`, `processForageWagonArea`, `setFillEffectActive`
- **overwritable (registerOverwrittenFunction):** `doCheckSpeedLimit`, `getConsumingLoad`, `getFillVolumeUVScrollSpeed`, `getIsSpeedRotatingPartActive`, `getIsWorkAreaActive`, `loadSpeedRotatingPartFromXML`
- **event listeners:** `onDeactivate`, `onDelete`, `onEndWorkAreaProcessing`, `onFillUnitFillLevelChanged`, `onLoad`, `onReadStream`, `onReadUpdateStream`, `onStartWorkAreaProcessing`, `onTurnedOff`, `onUpdateTick`, `onWriteStream`, `onWriteUpdateStream`

## FrontloaderAttacher

- **requires:** `AttacherJoints`
- **event listeners:** `onLoad`, `onPreAttachImplement`, `onPreDetachImplement`

## FruitExtraObjects

- **new functions:** `getFruitExtraObjectTypeData`, `loadFruitExtraObjectFromXML`, `updateFruitExtraObjects`
- **event listeners:** `onDynamicMountTypeChanged`, `onPostDetach`, `onPostLoad`, `onPreAttach`

## FruitPreparer

- **requires:** `TurnOnVehicle`, `WorkArea`
- **new functions:** `processFruitPreparerArea`
- **overwritable (registerOverwrittenFunction):** `doCheckSpeedLimit`, `getAllowCutterAIFruitRequirements`, `getDirtMultiplier`, `getDoGroundManipulation`, `getIsRandomlyMovingPartActive`, `getWearMultiplier`, `loadRandomlyMovingPartFromXML`, `loadWorkAreaFromXML`
- **event listeners:** `onAIFieldCourseSettingsInitialized`, `onDelete`, `onEndWorkAreaProcessing`, `onLoad`, `onReadUpdateStream`, `onTurnedOff`, `onTurnedOn`, `onWriteUpdateStream`

## GroundAdjustedNodes

- **new functions:** `getIsGroundAdjustedNodeActive`, `initGroundAdjustedAdjustNode`, `loadGroundAdjustedAdjustNodeFromXML`, `loadGroundAdjustedNodeFromXML`, `loadGroundAdjustedRaycastNodeFromXML`, `updateGroundAdjustedNode`, `updateGroundAdjustedRaycasts`
- **event listeners:** `onLoad`, `onLoadFinished`, `onRegisterAnimationValueTypes`, `onUpdate`

## GroundReference

- **new functions:** `getGroundReferenceNodeForwardSpeed`, `getGroundReferenceNodeFromIndex`, `getIsGroundReferenceNodeActive`, `getIsGroundReferenceNodeThreshold`, `loadGroundReferenceNode`, `updateGroundReferenceNode`
- **overwritable (registerOverwrittenFunction):** `getIsSpeedRotatingPartActive`, `getPowerMultiplier`, `loadSpeedRotatingPartFromXML`
- **event listeners:** `onLoad`, `onReadUpdateStream`, `onUpdateTick`, `onWriteUpdateStream`

## HUDInfoTrigger

- **new functions:** `getAllowHudInfoTrigger`, `getIsPlayerInHudInfoTrigger`
- **event listeners:** `onDelete`, `onLoad`, `onUpdate`

## HandToolHolders

- **new functions:** `onHandToolHolderFinished`
- **overwritable (registerOverwrittenFunction):** `setOwnerFarmId`
- **events:** `onHandToolStoredInHolder`, `onHandToolTakenFromHolder`
- **event listeners:** `onDelete`, `onLoad`, `onReadStream`, `onRegistered`, `onWriteStream`, `saveToXMLFile`

## HeadlandAnimation

- **event listeners:** `onLoad`, `onUpdate`

## HighPressureWasher

- **event listeners:** `onDelete`, `onHandToolStoredInHolder`, `onHandToolTakenFromHolder`, `onLoad`

## Honk

- **requires:** `Drivable`
- **new functions:** `getIsHonkAvailable`, `playHonk`, `setHonkInput`
- **event listeners:** `onDelete`, `onLeaveVehicle`, `onLoad`, `onRegisterActionEvents`, `onUpdate`

## HookLiftContainer

- **requires:** `AnimatedVehicle`, `Attachable`
- **overwritable (registerOverwrittenFunction):** `getCanDischargeToGround`, `getCanDischargeToObject`, `isDetachAllowed`
- **event listeners:** `onLoad`, `onStartTipping`, `onStopTipping`

## HookLiftTrailer

- **requires:** `AnimatedVehicle`, `Foldable`
- **new functions:** `getCanDetachContainer`, `getIsTippingAllowed`, `startTipping`, `stopTipping`
- **overwritable (registerOverwrittenFunction):** `getDoConsumePtoPower`, `getIsFoldAllowed`, `getPtoRpm`, `isDetachAllowed`
- **event listeners:** `onLoad`, `onPostAttachImplement`, `onPostLoad`, `onPreDetachImplement`, `onUpdateTick`

## HydraulicHammer

- **requires:** `AnimatedVehicle`, `TurnOnVehicle`
- **new functions:** `hydraulicHammerRaycastCallback`
- **overwritable (registerOverwrittenFunction):** `getConsumingLoad`, `getDirtMultiplier`, `getWearMultiplier`
- **event listeners:** `onDeactivate`, `onDelete`, `onLoad`, `onTurnedOff`, `onTurnedOn`, `onUpdate`

## IKChains

- **event listeners:** `onLoad`, `onUpdate`

## InlineWrapper

- **requires:** `Consumable`, `Foldable`
- **new functions:** `getAllowBalePushing`, `getCanInteract`, `getCanPushOff`, `getCurrentInlineBale`, `getIsInlineBalingAllowed`, `getWrapperBaleType`, `inlineBaleTriggerCallback`, `inlineWrapTriggerCallback`, `pushOffInlineBale`, `readInlineBales`, `setCurrentInlineBale`, `updateInlineSteeringWheels`, `updateRoundBaleWrappingNode`, `updateSquareBaleWrappingNode`, `updateWrapperRailings`, `updateWrappingNodes`, `writeInlineBales`
- **overwritable (registerOverwrittenFunction):** `getBrakeForce`, `getIsActive`, `getIsFoldAllowed`, `getShowConsumableEmptyWarning`
- **event listeners:** `onConsumableVariationChanged`, `onDelete`, `onDraw`, `onEnterVehicle`, `onLeaveVehicle`, `onLoad`, `onPostLoad`, `onReadStream`, `onReadUpdateStream`, `onRegisterActionEvents`, `onUpdate`, `onUpdateTick`, `onWriteStream`, `onWriteUpdateStream`

## JigglingParts

- **new functions:** `isJigglingPartActive`, `loadJigglingPartsFromXML`, `updateJigglingPart`
- **event listeners:** `onLoad`, `onUpdate`

## Leveler

- **requires:** `BunkerSiloInteractor`, `FillUnit`
- **new functions:** `getIsLevelerPickupNodeActive`, `loadLevelerNodeFromXML`, `onLevelerRaycastCallback`
- **overwritable (registerOverwrittenFunction):** `getIsAttacherJointControlDampingAllowed`
- **event listeners:** `onDelete`, `onLoad`, `onReadUpdateStream`, `onUpdate`, `onWriteUpdateStream`

## LicensePlates

- **new functions:** `getHasLicensePlates`, `getLicensePlateDialogSettings`, `getLicensePlatesData`, `getLicensePlatesDataIsEqual`, `setLicensePlatesData`
- **event listeners:** `onDelete`, `onLoad`, `onPostLoad`, `onReadStream`, `onWriteStream`

## Lights

- **new functions:** `applyAdditionalActiveLightType`, `deactivateBeaconLights`, `deactivateLights`, `getBeaconLightsVisibility`, `getCanToggleLight`, `getDeactivateLightsOnLeave`, `getInteriorLightBrightness`, `getIsActiveForInteriorLights`, `getIsActiveForLights`, `getIsLightActive`, `getLightsTypesMask`, `getRealLightFromNode`, `getStaticLightFromNode`, `getTurnLightState`, `getUseHighProfile`, `lightsWeatherChanged`, `loadAdditionalLightAttributesFromXML`, `loadRealLightSetup`, `loadSharedLight`, `onLightsProfileChanged`, `onLightsRealBeaconLightChanged`, `setBeaconLightsVisibility`, `setBrakeLightsVisibility`, `setInteriorLightsVisibility`, `setLightsTypesMask`, `setNextLightsState`, `setReverseLightsVisibility`, `setTopLightsVisibility`, `setTurnLightState`, `updateAutomaticLights`
- **overwritable (registerOverwrittenFunction):** `getIsDashboardGroupActive`, `loadDashboardGroupFromXML`
- **events:** `onBeaconLightsVisibilityChanged`, `onBrakeLightsVisibilityChanged`, `onLightsTypesMaskChanged`, `onReverseLightsVisibilityChanged`, `onTopLightsVisibilityChanged`, `onTurnLightStateChanged`
- **event listeners:** `onAIDriveableActive`, `onAIDriveableEnd`, `onAIFieldWorkerActive`, `onAIFieldWorkerEnd`, `onAIFieldWorkerStart`, `onAIJobVehicleBlock`, `onAIJobVehicleContinue`, `onAutomatedTrainTravelActive`, `onDeactivate`, `onDelete`, `onEnterVehicle`, `onLeaveVehicle`, `onLoad`, `onLoadFinished`, `onPostAttach`, `onPostDetach`, `onReadStream`, `onRegisterActionEvents`, `onRegisterDashboardValueTypes`, `onRegisterExternalActionEvents`, `onRequiresTopLightsChanged`, `onStartMotor`, `onStartReverseDirectionChange`, `onStopMotor`, `onUpdate`, `onUpdateTick`, `onVehiclePhysicsUpdate`, `onWriteStream`

## LivestockTrailer

- **new functions:** `addAnimals`, `addCluster`, `clearAnimals`, `getAnimalUnloadPlaces`, `getClusterById`, `getClusterSystem`, `getClusters`, `getCurrentAnimalType`, `getLoadingTrigger`, `getMaxNumOfAnimals`, `getNumOfAnimals`, `getNumOfFreeAnimalSlots`, `getRideablesInTrigger`, `getSupportsAnimalSubType`, `getSupportsAnimalType`, `onAnimalLoadTriggerCallback`, `onAnimalLoaded`, `onAnimalRideableDeleted`, `setAnimalScreenController`, `setLoadingTrigger`, `updateAnimals`, `updatedClusters`
- **overwritable (registerOverwrittenFunction):** `dayChanged`, `getAdditionalComponentMass`, `getSellPrice`, `periodChanged`
- **event listeners:** `onDelete`, `onLoad`, `onLoadFinished`, `onReadStream`, `onWriteStream`

## Locomotive

- **requires:** `Drivable`, `SplineVehicle`
- **new functions:** `getDistanceToRequestedPosition`, `getDownhillForce`, `notifyPlayerFarmChanged`, `setLocomotiveState`, `setRequestedSplinePosition`, `startAutomatedTrainTravel`
- **overwritable (registerOverwrittenFunction):** `alignToSplineTime`, `getAreSurfaceSoundsActive`, `getCanBeReset`, `getFullName`, `getIsEnterable`, `getIsMapHotspotVisible`, `getIsMotorStarted`, `getIsReadyForAutomatedTrainTravel`, `getMapHotspotPosition`, `getStopMotorOnLeave`, `getTraveledDistanceStatsActive`, `setTrainSystem`, `updateVehiclePhysics`
- **events:** `onAutomatedTrainTravelActive`
- **event listeners:** `onDelete`, `onEnterVehicle`, `onLeaveVehicle`, `onLoad`, `onReadStream`, `onUpdate`, `onWriteStream`

## LogGrab

- **new functions:** `getGrabCanMountSplitShape`, `getIsLogGrabClawStateChangeAllowed`, `loadLogGrabFromXML`, `mountSplitShape`, `setLogGrabClawState`, `unmountSplitShape`, `updateLogGrabClawState`
- **overwritable (registerOverwrittenFunction):** `getMovingToolMoveValue`, `onDelimbTree`, `setComponentJointFrame`
- **events:** `onLogGrabMountedTreesChanged`
- **event listeners:** `onCutTree`, `onDelete`, `onFoldStateChanged`, `onFoldTimeChanged`, `onLoad`, `onLogGrabMountedTreesChanged`, `onPostLoad`, `onReadStream`, `onRegisterActionEvents`, `onTurnedOn`, `onUpdateTick`, `onWriteStream`

## ManureBarrel

- **requires:** `AttacherJoints`, `Sprayer`
- **overwritable (registerOverwrittenFunction):** `getAreEffectsVisible`, `getIsWorkAreaActive`
- **event listeners:** `onLoad`, `onPostAttachImplement`, `onPostDetachImplement`

## MixerWagon

- **requires:** `Trailer`, `TurnOnVehicle`
- **new functions:** `mixerWagonBaleTriggerCallback`, `onMixerWagonBaleDeleted`
- **overwritable (registerOverwrittenFunction):** `addFillUnitFillLevel`, `getConsumingLoad`, `getDischargeFillType`, `getDoConsumePtoPower`, `getFillUnitAllowsFillType`, `getIsBaleAutoLoadable`, `getIsPowerTakeOffActive`
- **event listeners:** `onDelete`, `onDraw`, `onFillUnitFillLevelChanged`, `onLoad`, `onPostLoad`, `onReadStream`, `onReadUpdateStream`, `onTurnedOff`, `onTurnedOn`, `onUpdate`, `onWriteStream`, `onWriteUpdateStream`

## Motorbike

- **requires:** `AnimatedVehicle`, `Motorized`
- **event listeners:** `onLeaveVehicle`, `onLoad`, `onPostLoad`, `onUpdate`

## Motorized

- **requires:** `FillUnit`, `VehicleSettings`
- **new functions:** `controlVehicle`, `generateShiftAnimation`, `getAirConsumerUsage`, `getCanMotorRun`, `getConsumerFillUnitIndex`, `getDirectionChangeMode`, `getGearInfoToDisplay`, `getGearShiftMode`, `getIsManualDirectionChangeAllowed`, `getIsMotorInNeutral`, `getIsMotorStarted`, `getMotor`, `getMotorBlowOffValveState`, `getMotorDifferentialSpeed`, `getMotorLoadPercentage`, `getMotorNotAllowedWarning`, `getMotorRpmPercentage`, `getMotorRpmReal`, `getMotorStartTime`, `getMotorState`, `getMotorType`, `getStopMotorOnLeave`, `getTraveledDistanceStatsActive`, `loadConsumerConfiguration`, `loadDifferentials`, `loadExhaustEffects`, `loadGearGroups`, `loadGears`, `loadMotor`, `loadSounds`, `onExhaustEffectI3DLoaded`, `setGearLeversState`, `setMotorState`, `setTransmissionDirection`, `startMotor`, `stopMotor`, `stopVehicle`, `updateConsumers`, `updateMotorProperties`, `updateMotorTemperature`
- **overwritable (registerOverwrittenFunction):** `addToPhysics`, `getBrakeForce`, `getCanBeSelected`, `getDeactivateLightsOnLeave`, `getDeactivateOnLeave`, `getIsActiveForInteriorLights`, `getIsActiveForWipers`, `getIsDashboardGroupActive`, `getIsOperating`, `getIsPowered`, `getName`, `getUsageCausesDamage`, `loadDashboardGroupFromXML`, `removeFromPhysics`
- **events:** `onClutchCreaking`, `onGearChanged`, `onGearDirectionChanged`, `onGearGroupChanged`, `onStartMotor`, `onStopMotor`
- **event listeners:** `onAIJobFinished`, `onAIJobStarted`, `onClutchCreaking`, `onDelete`, `onFillUnitFillLevelChanged`, `onGearChanged`, `onGearDirectionChanged`, `onGearGroupChanged`, `onLoad`, `onPostLoad`, `onReadStream`, `onReadUpdateStream`, `onRegisterActionEvents`, `onRegisterDashboardValueTypes`, `onReverseDirectionChanged`, `onSetBroken`, `onStateChange`, `onUpdate`, `onUpdateTick`, `onVehicleSettingChanged`, `onWriteStream`, `onWriteUpdateStream`

## Mountable

- **new functions:** `addMountStateChangeListener`, `additionalMountingMassRaycastCallback`, `getAdditionalMountingDistance`, `getAdditionalMountingMass`, `getAllowComponentMassReduction`, `getDefaultAllowComponentMassReduction`, `getDynamicMountObject`, `getMountObject`, `getMountableLockPositions`, `getSupportsMountDynamic`, `getSupportsMountKinematic`, `mount`, `mountDynamic`, `mountKinematic`, `mountableTriggerCallback`, `onDynamicMountJointBreak`, `removeMountStateChangeListener`, `setDynamicMountType`, `setReducedComponentMass`, `unmount`, `unmountDynamic`, `unmountKinematic`, `updateDynamicMountJointForceLimit`
- **overwritable (registerOverwrittenFunction):** `addToPhysics`, `findRootVehicle`, `getAdditionalComponentMass`, `getIsActive`, `getIsMapHotspotVisible`, `getOwnerConnection`, `removeFromPhysics`, `setWorldPositionQuaternion`
- **events:** `onDynamicMountTypeChanged`
- **event listeners:** `onDelete`, `onEnterVehicle`, `onLoad`, `onPreAttach`, `onReadStream`, `onUpdate`, `onWriteStream`

## Mower

- **requires:** `FruitExtraObjects`, `TurnOnVehicle`, `WorkArea`
- **new functions:** `getDropArea`, `processDropArea`, `processMowerArea`, `setCutSoundEnabled`, `setDropEffectEnabled`, `setUseMowerWindrowDropAreas`
- **overwritable (registerOverwrittenFunction):** `doCheckSpeedLimit`, `getCanBeSelected`, `getDirtMultiplier`, `getFruitExtraObjectTypeData`, `getWearMultiplier`, `loadWorkAreaFromXML`
- **event listeners:** `onAIFieldCourseSettingsInitialized`, `onDelete`, `onEndWorkAreaProcessing`, `onLoad`, `onPostLoad`, `onReadStream`, `onReadUpdateStream`, `onRegisterActionEvents`, `onStartWorkAreaProcessing`, `onTurnedOff`, `onTurnedOn`, `onUpdate`, `onWriteStream`, `onWriteUpdateStream`

## Mulcher

- **requires:** `GroundReference`, `WorkArea`
- **new functions:** `processMulcherArea`
- **overwritable (registerOverwrittenFunction):** `doCheckSpeedLimit`, `getAIImplementUseVineSegment`, `getDirtMultiplier`, `getDoGroundManipulation`, `getWearMultiplier`
- **event listeners:** `onAIFieldCourseSettingsInitialized`, `onDeactivate`, `onDelete`, `onEndWorkAreaProcessing`, `onLoad`, `onPostLoad`, `onReadStream`, `onReadUpdateStream`, `onStartWorkAreaProcessing`, `onUpdateTick`, `onWriteStream`, `onWriteUpdateStream`

## MultipleItemPurchase

- **requires:** `FillUnit`
- **new functions:** `loadItemAtPosition`, `onFinishLoadingVehicle`
- **overwritable (registerOverwrittenFunction):** `addToPhysics`, `getFillUnitCapacity`, `getTotalMass`, `removeFromPhysics`, `setVisibility`
- **event listeners:** `onDelete`, `onLoad`, `onPreLoadFinished`, `onUpdate`

## Pallet

- **new functions:** `collectPalletTensionBeltNodes`, `getInfoBoxTitle`, `onPalletI3DFileLoaded`, `setPalletTensionBeltNodesDirty`, `updatePalletStraps`
- **overwritable (registerOverwrittenFunction):** `autoLoad`, `getAutoLoadSize`, `getCanBeReset`, `getIsMapHotspotVisible`, `getMeshNodes`, `getShowInVehiclesOverview`, `loadComponentFromXML`
- **event listeners:** `onDelete`, `onFillUnitFillLevelChanged`, `onLoad`, `onPostLoad`, `onPreLoad`

## PalletFiller

- **new functions:** `buyPalletFillerPallets`, `getCanBuyPalletFillerPallets`, `getCanChangePalletFillerState`, `getPalletFillerFillStep`, `getPalletFillerMovementDirection`, `loadPalletFillerPallet`, `setPalletFillerDeflectorState`, `setPalletFillerState`, `unloadPalletFillerPallet`
- **overwritable (registerOverwrittenFunction):** `getCanAIImplementContinueWork`, `getCanToggleDischargeToGround`, `getCanToggleDischargeToObject`, `getFillLevelInformation`, `getIsFoldAllowed`, `removeFromPhysics`, `verifyCombine`
- **event listeners:** `onDelete`, `onFinishAnimation`, `onFoldTimeChanged`, `onLoad`, `onLoadFinished`, `onReadStream`, `onReadUpdateStream`, `onRegisterActionEvents`, `onUpdate`, `onUpdateTick`, `onWriteStream`, `onWriteUpdateStream`

## Pickup

- **requires:** `AnimatedVehicle`
- **new functions:** `allowPickingUp`, `getCanChangePickupState`, `loadPickupFromXML`, `setPickupState`
- **overwritable (registerOverwrittenFunction):** `getCanDischargeToGround`, `getCanDischargeToObject`, `getDirtMultiplier`, `getIsLowered`, `getWearMultiplier`, `registerLoweringActionEvent`, `registerSelfLoweringActionEvent`
- **event listeners:** `onFoldTimeChanged`, `onLoad`, `onPostLoad`, `onReadStream`, `onRootVehicleChanged`, `onSetLoweredAll`, `onWriteStream`

## Pipe

- **requires:** `Dischargeable`, `FillUnit`
- **new functions:** `getCurrentPipeState`, `getIsPipeStateChangeAllowed`, `getPipeDischargeNodeIndex`, `loadPipeNodes`, `loadUnloadingTriggers`, `onDeletePipeObject`, `setIsPipeStateChangeAllowed`, `setPipeDischargeToGround`, `setPipeState`, `unloadingTriggerCallback`, `updateActionEventText`, `updateBendingRegulationNodes`, `updateNearestObjectInTriggers`, `updatePipeNodes`
- **overwritable (registerOverwrittenFunction):** `getCanBeSelected`, `getCanBeTurnedOn`, `getCanToggleDischargeToGround`, `getCanToggleDischargeToObject`, `getIsAIPreparingToDrive`, `getIsAIReadyToDrive`, `getIsDischargeNodeActive`, `getIsFoldAllowed`, `getIsMovingToolActive`, `getIsNextCoverStateAllowed`, `getRequiresPower`, `getTurnedOnNotAllowedWarning`, `handleDischarge`, `handleDischargeRaycast`, `loadCoverFromXML`, `loadMovingToolFromXML`
- **event listeners:** `onAIImplementPrepareForTransport`, `onDelete`, `onDischargeStateChanged`, `onLoad`, `onMovingToolChanged`, `onPostLoad`, `onReadStream`, `onReadUpdateStream`, `onRegisterActionEvents`, `onRootVehicleChanged`, `onUpdate`, `onUpdateTick`, `onWriteStream`, `onWriteUpdateStream`

## Plow

- **requires:** `WorkArea`
- **new functions:** `getCanTogglePlowRotation`, `getIsPlowRotationAllowed`, `getPlowForceLimitToField`, `getPlowLimitToField`, `processPlowArea`, `processPlowShareArea`, `setPlowAIRequirements`, `setPlowLimitToField`, `setRotationCenter`, `setRotationMax`
- **overwritable (registerOverwrittenFunction):** `doCheckSpeedLimit`, `getAIInvertMarkersOnTurn`, `getAllowsLowering`, `getCanAIImplementContinueWork`, `getCanBeSelected`, `getDirtMultiplier`, `getIsAIPreparingToDrive`, `getIsAIReadyToDrive`, `getIsFoldAllowed`, `getIsFoldMiddleAllowed`, `getIsSpeedRotatingPartActive`, `getIsWorkAreaActive`, `getSpeedRotatingPartDirection`, `getWearMultiplier`, `isDetachAllowed`, `loadSpeedRotatingPartFromXML`, `loadWorkAreaFromXML`
- **event listeners:** `onAIFieldCourseSettingsInitialized`, `onAIImplementEnd`, `onAIImplementEndTurn`, `onAIImplementSideOffsetChanged`, `onAIImplementStartTurn`, `onAIImplementTurnProgress`, `onDeactivate`, `onDelete`, `onEndWorkAreaProcessing`, `onFinishAnimation`, `onFoldTimeChanged`, `onLoad`, `onPostAttach`, `onPostLoad`, `onPreDetach`, `onReadStream`, `onRegisterActionEvents`, `onRootVehicleChanged`, `onStartAnimation`, `onStartWorkAreaProcessing`, `onUpdate`, `onWriteStream`

## PlowPacker

- **requires:** `AnimatedVehicle`, `Cultivator`, `Plow`
- **new functions:** `getIsPackerAllowed`, `setPackerState`
- **overwritable (registerOverwrittenFunction):** `getUseCultivatorAIRequirements`, `processCultivatorArea`, `setFoldState`, `setPlowAIRequirements`, `setRotationMax`
- **event listeners:** `onLoad`, `onPostLoad`, `onReadStream`, `onRegisterActionEvents`, `onSetLowered`, `onUpdate`, `onUpdateTick`, `onWriteStream`

## PowerConsumer

- **new functions:** `getConsumedPtoTorque`, `getConsumingLoad`, `getDoConsumePtoPower`, `getPowerMultiplier`, `getPtoRpm`, `loadPowerSetup`
- **overwritable (registerOverwrittenFunction):** `getCanBeTurnedOn`, `getCanBeTurnedOnAll`, `getRawSpeedLimit`, `getTurnedOnNotAllowedWarning`, `loadWorkModeFromXML`
- **event listeners:** `onLoad`, `onStateChange`, `onTurnedOn`, `onUpdate`, `onWorkModeChanged`

## PowerTakeOffs

- **requires:** `Attachable`, `AttacherJoints`
- **new functions:** `attachPowerTakeOff`, `attachTypedPowerTakeOff`, `checkPowerTakeOffCollision`, `detachPowerTakeOff`, `detachTypedPowerTakeOff`, `getInputPowerTakeOffs`, `getInputPowerTakeOffsByJointDescIndexAndName`, `getIsPowerTakeOffActive`, `getOutputPowerTakeOffs`, `getOutputPowerTakeOffsByJointDescIndex`, `getPowerTakeOffConfigIndex`, `loadBasicPowerTakeOff`, `loadDoubleJointPowerTakeOff`, `loadInputPowerTakeOff`, `loadLocalPowerTakeOff`, `loadOutputPowerTakeOff`, `loadPowerTakeOffFromConfigFile`, `loadPowerTakeOffsFromXML`, `loadSingleJointPowerTakeOff`, `onPowerTakeOffI3DLoaded`, `parkPowerTakeOff`, `placeLocalPowerTakeOff`, `updateAttachedPowerTakeOffs`, `updateDoubleJointPowerTakeOff`, `updatePowerTakeOff`, `updatePowerTakeOffLength`, `updateSingleJointPowerTakeOff`, `validatePowerTakeOffAttachment`
- **overwritable (registerOverwrittenFunction):** `loadExtraDependentParts`, `updateExtraDependentParts`
- **event listeners:** `onDelete`, `onLoad`, `onPostAttachImplement`, `onPostLoad`, `onPreAttachImplement`, `onPreDetachImplement`, `onPreLoad`, `onUpdateEnd`, `onUpdateInterpolation`

## ProtectedBundleVehicle

- **overwritable (registerOverwrittenFunction):** `getReloadXML`
- **event listeners:** `onLoad`, `onPostDetach`

## PushHandTool

- **requires:** `Enterable`
- **new functions:** `customVehicleCharacterLoaded`, `getRaycastPosition`, `playerRaycastCallback`, `postAnimationUpdate`, `setPushHandToolDriveMode`
- **overwritable (registerOverwrittenFunction):** `deleteVehicleCharacter`, `getAllowCharacterVisibilityUpdate`, `getIsFoldAllowed`, `setActiveCameraIndex`, `setVehicleCharacter`
- **event listeners:** `onCameraChanged`, `onDelete`, `onEnterVehicle`, `onLoad`, `onPostLoad`, `onReadStream`, `onReadUpdateStream`, `onRegisterActionEvents`, `onUpdate`, `onVehicleCharacterChanged`, `onWriteStream`, `onWriteUpdateStream`

## RandomlyMovingParts

- **new functions:** `getIsRandomlyMovingPartActive`, `loadRandomlyMovingPartFromXML`, `updateRandomlyMovingPart`
- **event listeners:** `onLoad`, `onUpdate`

## ReceivingHopper

- **requires:** `Dischargeable`, `FillUnit`
- **new functions:** `collisionTestCallback`, `createBox`, `getCanSpawnNextBox`, `onCreateBoxFinished`, `setCreateBoxes`
- **overwritable (registerOverwrittenFunction):** `getCanBeSelected`, `handleDischargeRaycast`
- **event listeners:** `onFillUnitFillLevelChanged`, `onLoad`, `onRegisterActionEvents`, `onUpdateTick`

## ReverseDriving

- **requires:** `AnimatedVehicle`, `Drivable`, `Enterable`
- **new functions:** `getIsReverseDrivingAllowed`, `reverseDirectionChanged`, `setIsReverseDriving`
- **overwritable (registerOverwrittenFunction):** `getAIDirectionNode`, `getAIImplementCollisionTrigger`, `getAIRootNode`, `getAllowCharacterVisibilityUpdate`, `getCanBeSelected`, `getCanStartAIVehicle`, `getIsDashboardGroupActive`, `getIsLightActive`, `getSteeringDirection`, `loadAdditionalLightAttributesFromXML`, `loadDashboardGroupFromXML`, `updateSteeringWheel`
- **events:** `onReverseDirectionChanged`, `onStartReverseDirectionChange`
- **event listeners:** `onLoad`, `onPostLoad`, `onReadStream`, `onRegisterActionEvents`, `onUpdate`, `onVehicleCharacterChanged`, `onWriteStream`

## Rideable

- **requires:** `CCTDrivable`
- **new functions:** `calculateLegsDistance`, `endFade`, `getCluster`, `getCurrentGait`, `getHoofSurfaceSound`, `getIsRideableJumpAllowed`, `getPosition`, `getRotation`, `groundRaycastCallback`, `jump`, `resetInputs`, `setCluster`, `setCurrentGait`, `setEquipmentVisibility`, `setPlayerToEnter`, `setRideableSteer`, `setWorldPositionQuat`, `testCCTMove`, `unlinkReins`, `updateAnimation`, `updateDirt`, `updateFootsteps`, `updateInputText`, `updateKinematic`, `updateRiding`, `updateSound`
- **overwritable (registerOverwrittenFunction):** `dayChanged`, `deleteVehicleCharacter`, `getCanBeReset`, `getCanBeSold`, `getFullName`, `getImageFilename`, `getInteractionHelp`, `getMapHotspotRotation`, `getName`, `getShowInVehiclesOverview`, `periodChanged`, `setWorldPosition`, `setWorldPositionQuaternion`, `showInfo`, `updateVehicleSpeed`
- **event listeners:** `onDelete`, `onDraw`, `onEnterVehicle`, `onLeaveVehicle`, `onLoad`, `onLoadFinished`, `onReadPositionUpdateStream`, `onReadStream`, `onReadUpdateStream`, `onRegisterActionEvents`, `onSetBroken`, `onUpdate`, `onUpdateInterpolation`, `onVehicleCharacterChanged`, `onWritePositionUpdateStream`, `onWriteStream`, `onWriteUpdateStream`

## RidgeFormer

- **new functions:** `processRidgeFormerArea`
- **overwritable (registerOverwrittenFunction):** `doCheckSpeedLimit`, `getDirtMultiplier`, `getWearMultiplier`
- **event listeners:** `onDeactivate`, `onDelete`, `onEndWorkAreaProcessing`, `onLoad`, `onStartWorkAreaProcessing`

## RidgeMarker

- **requires:** `AnimatedVehicle`, `WorkArea`
- **new functions:** `canFoldRidgeMarker`, `loadRidgeMarker`, `processRidgeMarkerArea`, `setRidgeMarkerState`
- **overwritable (registerOverwrittenFunction):** `getCanBeSelected`, `getIsSpeedRotatingPartActive`, `getIsWorkAreaActive`, `loadSpeedRotatingPartFromXML`, `loadWorkAreaFromXML`
- **event listeners:** `onAIImplementStart`, `onFoldStateChanged`, `onLoad`, `onPostLoad`, `onReadStream`, `onRegisterActionEvents`, `onSetLowered`, `onUpdateTick`, `onWriteStream`

## Roller

- **requires:** `WorkArea`
- **new functions:** `processRollerArea`, `updateRollerAIRequirements`
- **overwritable (registerOverwrittenFunction):** `doCheckSpeedLimit`, `getDirtMultiplier`, `getDoGroundManipulation`, `getIsWorkAreaActive`, `getWearMultiplier`
- **event listeners:** `onDeactivate`, `onDelete`, `onEndWorkAreaProcessing`, `onLoad`, `onPostAttach`, `onStartWorkAreaProcessing`

## Ropes

- **new functions:** `loadAdjusterNode`, `updateAdjusterNodes`, `updateRopes`
- **event listeners:** `onLoad`, `onLoadFinished`, `onPostUpdate`

## SaltSpreader

- **requires:** `TurnOnVehicle`, `WorkArea`
- **new functions:** `processSaltSpreaderArea`
- **overwritable (registerOverwrittenFunction):** `doCheckSpeedLimit`, `getAreControlledActionsAllowed`, `getCanBeTurnedOn`, `getDirtMultiplier`, `getTurnedOnNotAllowedWarning`, `getVariableWorkWidthUsage`, `getWearMultiplier`
- **event listeners:** `onDelete`, `onLoad`, `onTurnedOff`, `onTurnedOn`, `onUpdateTick`

## SeedTreater

- **requires:** `Dischargeable`, `FillUnit`
- **overwritable (registerOverwrittenFunction):** `discharge`, `getDischargeFillType`, `getDischargeNodeEmptyFactor`
- **event listeners:** `onLoad`, `onUpdate`

## SemiTrailerFront

- **requires:** `AttacherJoints`
- **overwritable (registerOverwrittenFunction):** `isDetachAllowed`
- **event listeners:** `onLoad`, `onPostAttach`, `onPostAttachImplement`, `onPreDetach`, `onPreDetachImplement`, `onUpdate`

## ShallowWaterObstacles

- **new functions:** `loadObstacleNodeFromXML`
- **event listeners:** `onDelete`, `onLoadFinished`, `onPostLoad`

## Shovel

- **requires:** `BunkerSiloInteractor`, `Dischargeable`, `FillUnit`, `FillVolume`
- **new functions:** `getCanShovelAtPosition`, `getIsShovelEffectState`, `getShovelNodeIsActive`, `getShovelTipFactor`, `loadShovelNode`
- **overwritable (registerOverwrittenFunction):** `doCheckSpeedLimit`, `getCanToggleDischargeToGround`, `getCanToggleDischargeToObject`, `getDischargeNodeEmptyFactor`, `getIsDischargeNodeActive`, `getWearMultiplier`, `handleDischarge`, `handleDischargeOnEmpty`, `handleDischargeRaycast`
- **event listeners:** `onDelete`, `onFillUnitFillLevelChanged`, `onLoad`, `onReadStream`, `onReadUpdateStream`, `onUpdateTick`, `onWriteStream`, `onWriteUpdateStream`

## SlopeCompensation

- **requires:** `Wheels`
- **new functions:** `getSlopeCompensationAngle`, `getSlopeCompensationAngleScale`, `loadSlopeCompensationNodeFromXML`, `loadSlopeCompensationWheels`, `setSlopeCompensationNodeAngle`, `updateSlopeCompensationAngle`
- **event listeners:** `onLoad`, `onLoadFinished`, `onRegisterAnimationValueTypes`, `onUpdate`, `onUpdateTick`

## SmartAttach

- **new functions:** `doSmartAttach`, `getCanBeSmartAttached`, `smartAttachCallback`
- **event listeners:** `onDelete`, `onLoad`, `onPreAttach`

## SowingMachine

- **requires:** `FillUnit`, `TurnOnVehicle`, `WorkArea`
- **new functions:** `changeSeedIndex`, `getCanPlantOutsideSeason`, `getCurrentSeedTypeIcon`, `getIsSeedChangeAllowed`, `getSowingMachineCanConsume`, `getSowingMachineFillUnitIndex`, `getSowingMachineSeedFillTypeIndex`, `getUseSowingMachineAIRequirements`, `processSowingMachineArea`, `setFillTypeSourceDisplayFillType`, `setIsSeedChangeAllowed`, `setSeedFruitType`, `setSeedIndex`, `updateMissionSowingWarning`
- **overwritable (registerOverwrittenFunction):** `addFillUnitFillLevel`, `doCheckSpeedLimit`, `getAllowFillFromAir`, `getAreControlledActionsAllowed`, `getCanAIImplementContinueWork`, `getCanBeSelected`, `getCanBeTurnedOn`, `getCanToggleTurnedOn`, `getDirectionSnapAngle`, `getDirtMultiplier`, `getDrawFirstFillText`, `getFillUnitAllowsFillType`, `getWearMultiplier`, `loadWorkAreaFromXML`
- **event listeners:** `onAIFieldCourseSettingsInitialized`, `onChangedFillType`, `onDeactivate`, `onDelete`, `onEndWorkAreaProcessing`, `onLoad`, `onPostLoad`, `onReadStream`, `onRegisterActionEvents`, `onStartWorkAreaProcessing`, `onStateChange`, `onTurnedOff`, `onTurnedOn`, `onUpdate`, `onUpdateTick`, `onWriteStream`

## SpeedRotatingParts

- **new functions:** `getIsSpeedRotatingPartActive`, `getSpeedRotatingPartDirection`, `loadSpeedRotatingPartFromXML`, `updateSpeedRotatingPart`
- **overwritable (registerOverwrittenFunction):** `validateWashableNode`
- **event listeners:** `onLoad`, `onReadStream`, `onReadUpdateStream`, `onUpdate`, `onUpdateTick`, `onWriteStream`, `onWriteUpdateStream`

## SplineVehicle

- **new functions:** `alignToSplineTime`, `getCurrentSplinePosition`, `getFrontToBackDistance`, `getSplinePositionAndTimeFromDistance`, `getSplineTimeFromDistance`, `setSplineSpeed`
- **overwritable (registerOverwrittenFunction):** `getAreSurfaceSoundsActive`, `getCurrentSurfaceSound`, `getIsDischargeNodeActive`, `getLastSpeed`, `loadDischargeNode`, `setTrainSystem`
- **event listeners:** `onLoad`

## Sprayer

- **requires:** `FillUnit`, `TurnOnVehicle`, `WorkArea`
- **new functions:** `getActiveSprayType`, `getAreEffectsVisible`, `getExternalFill`, `getIsSprayTypeActive`, `getIsSprayerExternallyFilled`, `getSprayerDoubledAmountActive`, `getSprayerFillUnitIndex`, `getSprayerUsage`, `getUseSprayerAIRequirements`, `loadSprayTypeFromXML`, `processSprayerArea`, `setSprayerAITerrainDetailProhibitedRange`, `setSprayerDoubledAmountActive`, `updateSprayerEffects`
- **overwritable (registerOverwrittenFunction):** `doCheckSpeedLimit`, `getAIImplementUseVineSegment`, `getAIRequiresTurnOffOnHeadland`, `getAreControlledActionsAllowed`, `getCanBeTurnedOn`, `getCanToggleTurnedOn`, `getDirtMultiplier`, `getDrawFirstFillText`, `getEffectByNode`, `getFillVolumeUVScrollSpeed`, `getIsWorkAreaActive`, `getRawSpeedLimit`, `getVariableWorkWidthUsage`, `getWearMultiplier`, `loadWorkAreaFromXML`
- **events:** `onSprayTypeChange`
- **event listeners:** `onAIImplementEnd`, `onDelete`, `onEndWorkAreaProcessing`, `onFillUnitFillLevelChanged`, `onLoad`, `onPreDetach`, `onRegisterActionEvents`, `onSetLowered`, `onSprayTypeChange`, `onStartWorkAreaProcessing`, `onStateChange`, `onTurnedOff`, `onTurnedOn`, `onUpdateTick`, `onVariableWorkWidthSectionChanged`

## StonePicker

- **requires:** `FillUnit`, `WorkArea`
- **new functions:** `processStonePickerArea`, `setStonePickerEffectsState`
- **overwritable (registerOverwrittenFunction):** `doCheckSpeedLimit`, `getCanBeTurnedOn`, `getCanToggleTurnedOn`, `getDirtMultiplier`, `getDoGroundManipulation`, `getIsWorkAreaActive`, `getTurnedOnNotAllowedWarning`, `getWearMultiplier`, `loadWorkAreaFromXML`
- **event listeners:** `onAIFieldCourseSettingsInitialized`, `onDeactivate`, `onDelete`, `onEndWorkAreaProcessing`, `onFillUnitFillLevelChanged`, `onLoad`, `onPostAttach`, `onReadStream`, `onReadUpdateStream`, `onStartWorkAreaProcessing`, `onWriteStream`, `onWriteUpdateStream`

## StrawBlower

- **requires:** `FillUnit`, `Trailer`
- **new functions:** `onDeleteStrawBlowerObject`, `strawBlowerBaleTriggerCallback`
- **overwritable (registerOverwrittenFunction):** `addFillUnitFillLevel`, `getAllowDynamicMountFillLevelInfo`, `getDrawFirstFillText`
- **event listeners:** `onDelete`, `onDischargeStateChanged`, `onFillUnitFillLevelChanged`, `onLoad`, `onUpdateTick`

## StumpCutter

- **requires:** `TurnOnVehicle`
- **new functions:** `crushSplitShape`, `processStumpCutterArea`, `stumpCutterSplitShapeCallback`
- **overwritable (registerOverwrittenFunction):** `getConsumingLoad`, `getCultivatorLimitToField`, `getDirtMultiplier`, `getPlowForceLimitToField`, `getPlowLimitToField`, `getWearMultiplier`
- **event listeners:** `onDeactivate`, `onDelete`, `onLoad`, `onTurnedOff`, `onTurnedOn`, `onUpdateTick`

## StumpCutterLight

- **requires:** `TurnOnVehicle`
- **new functions:** `removeTreeStump`, `stumpCutterLightOverlapCallback`
- **overwritable (registerOverwrittenFunction):** `getAreControlledActionsAllowed`, `getConsumingLoad`, `getDirtMultiplier`, `getWearMultiplier`
- **event listeners:** `onDeactivate`, `onDelete`, `onLoad`, `onTurnedOff`, `onTurnedOn`, `onUpdate`

## SupportVehicle

- **requires:** `AttacherJoints`, `Mountable`
- **new functions:** `addSupportVehicle`, `enableSupportVehicle`, `removeSupportVehicle`
- **overwritable (registerOverwrittenFunction):** `getAllowMultipleAttachments`, `getIsReadyToFinishDetachProcess`, `getShowAttachableMapHotspot`, `resolveMultipleAttachments`, `startDetachProcess`
- **event listeners:** `onDelete`, `onLoad`, `onPostDetach`, `onUpdate`

## Suspensions

- **new functions:** `getIsSuspensionNodeActive`, `getSuspensionNodeFromIndex`, `loadSuspensionNodeFromXML`, `setSuspensionNodeCharacter`
- **event listeners:** `onEnterVehicle`, `onLoad`, `onUpdate`, `onVehicleCharacterChanged`

## Tedder

- **requires:** `TurnOnVehicle`, `WorkArea`
- **new functions:** `preprocessTedderArea`, `processDropArea`, `processTedderArea`
- **overwritable (registerOverwrittenFunction):** `doCheckSpeedLimit`, `getDirtMultiplier`, `getWearMultiplier`, `loadWorkAreaFromXML`
- **event listeners:** `onAIFieldCourseSettingsInitialized`, `onDeactivate`, `onDelete`, `onEndWorkAreaProcessing`, `onLoad`, `onPostLoad`, `onReadStream`, `onReadUpdateStream`, `onStartWorkAreaProcessing`, `onTurnedOff`, `onTurnedOn`, `onUpdateTick`, `onWriteStream`, `onWriteUpdateStream`

## TensionBeltObject

- **new functions:** `getMeshNodes`, `getSupportsTensionBelts`, `getTensionBeltNodeId`
- **event listeners:** `onLoad`

## TensionBelts

- **new functions:** `createTensionBelt`, `freeTensionBeltObject`, `getIsDynamicallyMountedNode`, `getIsPlayerInTensionBeltsRange`, `getObjectToMount`, `getObjectsToUnmount`, `lockTensionBeltObject`, `objectOverlapCallback`, `onTensionBeltTreeShapeCut`, `refreshTensionBelts`, `removeTensionBelt`, `setAllTensionBeltsActive`, `setTensionBeltsActive`, `tensionBeltActivationTriggerCallback`, `updateFastenState`
- **overwritable (registerOverwrittenFunction):** `getAdditionalComponentMass`, `getCanBeSelected`, `getCanDischargeToGround`, `getCanDischargeToObject`, `getFillLevelInformation`, `getIsFoldAllowed`, `getIsReadyForAutomatedTrainTravel`
- **event listeners:** `onDelete`, `onDraw`, `onLoad`, `onPostLoad`, `onPreDelete`, `onReadStream`, `onRegisterActionEvents`, `onUpdate`, `onUpdateTick`, `onWriteStream`

## TestAreas

- **requires:** `WorkArea`
- **new functions:** `calculateTestAreaDimensions`, `generateTestAreasForWorkArea`, `getIsTestAreaActive`, `getTestAreaChargeByWorkAreaIndex`, `getTestAreaWidthByWorkAreaIndex`, `processTestArea`, `readTestAreasStream`, `registerTestAreaForWorkArea`, `setTestAreaRequirements`, `writeTestAreasStream`
- **overwritable (registerOverwrittenFunction):** `loadWorkAreaFromXML`
- **event listeners:** `onPostLoad`, `onPreLoad`, `onReadStream`, `onReadUpdateStream`, `onUpdateTick`, `onWriteStream`, `onWriteUpdateStream`

## TipOccluder

- **new functions:** `getRequiresTipOcclusionArea`, `getTipOcclusionAreas`, `getWheelsWithTipOcclisionAreaGroupId`
- **event listeners:** `onLoad`, `onLoadFinished`

## TireTracks

- **new functions:** `addTireTrackNode`, `getAllowTireTracks`, `removeTireTrackNode`, `updateTireTrackNode`
- **event listeners:** `onDelete`, `onPreLoad`, `onUpdate`

## Trailer

- **requires:** `AnimatedVehicle`, `Dischargeable`, `FillUnit`
- **new functions:** `endTipping`, `getAllowTrailerDoorToggle`, `getCanTogglePreferdTipSide`, `getIsTipSideAvailable`, `getNextAvailableTipSide`, `getTipState`, `loadTipSide`, `setPreferedTipSide`, `setTipState`, `setTrailerDoorState`, `startTipping`, `stopTipping`, `updateTrailerAutomaticRedischarge`
- **overwritable (registerOverwrittenFunction):** `getAIHasFinishedDischarge`, `getCanBeSelected`, `getCanChangePickupState`, `getCanDischargeToGround`, `getCanDischargeToObject`, `getDischargeNodeEmptyFactor`, `getIsNextCoverStateAllowed`, `getIsTurnedOnAnimationActive`, `getRequiresPower`, `loadPickupFromXML`, `loadTurnedOnAnimationFromXML`, `setManualDischargeState`, `startAIDischarge`
- **events:** `onCloseBackDoor`, `onEndTipping`, `onOpenBackDoor`, `onStartTipping`, `onStopTipping`
- **event listeners:** `onDeactivate`, `onDelete`, `onDischargeStateChanged`, `onFillUnitFillLevelChanged`, `onLoad`, `onLoadFinished`, `onPostLoad`, `onReadStream`, `onRegisterActionEvents`, `onRegisterAnimationValueTypes`, `onUpdate`, `onWriteStream`

## TreePlanter

- **requires:** `FillUnit`, `GroundReference`, `TurnOnVehicle`
- **new functions:** `createTree`, `getCanPlantOutsideSeason`, `loadPallet`, `onDeleteTreePlanterObject`, `onTreePlanterSaplingLoaded`, `palletTriggerCallback`, `removeMountedObject`, `setPlantLimitToField`, `setTreePlanterTreeTypeIndex`, `updateTreePlanterFillLevel`
- **overwritable (registerOverwrittenFunction):** `addFillUnitFillLevel`, `doCheckSpeedLimit`, `getCanBeSelected`, `getDirtMultiplier`, `getFillLevelInformation`, `getFillUnitAllowsFillType`, `getFillUnitCapacity`, `getFillUnitFillLevel`, `getFillUnitFillLevelPercentage`, `getFillUnitFillType`, `getFillUnitFreeCapacity`, `getFillUnitHasMountedPalletsToUnload`, `getFillUnitMountedPalletsToUnload`, `getFillUnitUnloadPalletFilename`, `getImplementAllowAutomaticSteering`, `getIsOnField`, `getIsSpeedRotatingPartActive`, `getIsWorkAreaActive`, `getWearMultiplier`
- **event listeners:** `onDelete`, `onDraw`, `onFillUnitFillLevelChanged`, `onFillUnitIsFillingStateChanged`, `onFillUnitUnloadPallet`, `onLoad`, `onReadStream`, `onReadUpdateStream`, `onRegisterActionEvents`, `onTurnedOff`, `onTurnedOn`, `onUpdate`, `onUpdateTick`, `onWriteStream`, `onWriteUpdateStream`

## TreeSaplingPallet

- **new functions:** `getTreeSaplingPalletType`, `onTreeSaplingLoaded`, `setTreeSaplingPalletType`, `updateTreeSaplingPalletNodes`, `updateTreeSaplingVisuals`
- **overwritable (registerOverwrittenFunction):** `showInfo`
- **event listeners:** `onDelete`, `onFillUnitFillLevelChanged`, `onLoad`

## TreeSaw

- **requires:** `TurnOnVehicle`
- **event listeners:** `onDeactivate`, `onDelete`, `onDraw`, `onLoad`, `onReadUpdateStream`, `onTurnedOff`, `onTurnedOn`, `onUpdate`, `onUpdateTick`, `onWriteUpdateStream`

## TurnOnVehicle

- **new functions:** `getAIRequiresTurnOffOnHeadland`, `getAIRequiresTurnOn`, `getCanBeTurnedOn`, `getCanBeTurnedOnAll`, `getCanToggleTurnedOn`, `getIsTurnedOn`, `getIsTurnedOnAnimationActive`, `getRequiresTurnOn`, `getTurnedOnNotAllowedWarning`, `getTurnedOnSpeedFactor`, `loadTurnedOnAnimationFromXML`, `setIsTurnedOn`
- **overwritable (registerOverwrittenFunction):** `getAlarmTriggerIsActive`, `getBunkerSiloCompacterScale`, `getCanAIImplementContinueWork`, `getCanBeSelected`, `getIsDischargeNodeActive`, `getIsFillUnitActive`, `getIsOperating`, `getIsPowerTakeOffActive`, `getIsSeedChangeAllowed`, `getIsWorkAreaActive`, `getIsWorkModeChangeAllowed`, `getShovelNodeIsActive`, `getUseTurnedOnSchema`, `loadAlarmTrigger`, `loadBunkerSiloCompactorFromXML`, `loadDischargeNode`, `loadInputAttacherJoint`, `loadShovelNode`, `loadWorkAreaFromXML`
- **events:** `onTurnedOff`, `onTurnedOn`
- **event listeners:** `onAlarmTriggerChanged`, `onDeactivate`, `onDelete`, `onLoad`, `onPostAttach`, `onPreDetach`, `onReadStream`, `onRegisterActionEvents`, `onRegisterDashboardValueTypes`, `onRegisterExternalActionEvents`, `onRootVehicleChanged`, `onSetBroken`, `onStateChange`, `onTurnedOff`, `onTurnedOn`, `onUpdate`, `onUpdateTick`, `onWriteStream`

## VariableWorkWidth

- **new functions:** `getEffectByNode`, `getVariableWorkWidth`, `getVariableWorkWidthUsage`, `setSectionNodePercentage`, `setSectionsActive`, `updateSectionStates`, `updateSections`
- **overwritable (registerOverwrittenFunction):** `getIsWorkAreaActive`, `loadWorkAreaFromXML`
- **events:** `onVariableWorkWidthSectionChanged`
- **event listeners:** `onAIFieldWorkerStart`, `onAIImplementStart`, `onDelete`, `onDraw`, `onPostLoad`, `onRegisterActionEvents`

## VehicleSettings

- **new functions:** `forceVehicleSettingsUpdate`, `registerVehicleSetting`, `setVehicleSettingState`
- **events:** `onVehicleSettingChanged`
- **event listeners:** `onPreAttach`, `onPreLoad`, `onStateChange`, `onUpdateTick`

## VineCutter

- **requires:** `VineDetector`
- **new functions:** `getCombine`, `harvestCallback`
- **overwritable (registerOverwrittenFunction):** `clearCurrentVinePlaceable`, `doCheckSpeedLimit`, `getAIImplementUseVineSegment`, `getCanStartVineDetection`, `getIsValidVinePlaceable`, `handleVinePlaceable`
- **event listeners:** `onDraw`, `onLoad`, `onPostLoad`, `onTurnedOff`

## VineDetector

- **new functions:** `cancelVineDetection`, `clearCurrentVinePlaceable`, `finishedVineDetection`, `getCanStartVineDetection`, `getCurrentVineHitDistance`, `getCurrentVineHitPosition`, `getFirstVineHitPosition`, `getIsValidVinePlaceable`, `handleVinePlaceable`, `raycastCallbackVineDetection`
- **event listeners:** `onLoad`, `onUpdate`

## VinePrepruner

- **requires:** `VineDetector`
- **new functions:** `getIsPreprunerNodeActive`, `loadPreprunerNodeFromXML`
- **overwritable (registerOverwrittenFunction):** `doCheckSpeedLimit`, `getAIImplementUseVineSegment`, `getCanStartVineDetection`, `getIsValidVinePlaceable`, `handleVinePlaceable`
- **event listeners:** `onAnimationPartChanged`, `onDelete`, `onLoad`, `onReadStream`, `onReadUpdateStream`, `onTurnedOff`, `onUpdate`, `onWriteStream`, `onWriteUpdateStream`

## Washable

- **new functions:** `addAllSubWashableNodes`, `addDirtAmount`, `addToGlobalWashableNode`, `addToLocalWashableNode`, `addWashableNode`, `addWashableNodes`, `addWetnessAmount`, `cleanVehicle`, `getAllowsWashingByType`, `getDirtAmount`, `getDirtMultiplier`, `getIsWet`, `getNodeDirtAmount`, `getWashDuration`, `getWashableNodeByCustomIndex`, `getWorkDirtMultiplier`, `removeAllSubWashableNodes`, `removeWashableNode`, `setDirtAmount`, `setNodeDirtAmount`, `setNodeDirtColor`, `setNodeWetness`, `updateDirtAmount`, `updateWetness`, `validateWashableNode`
- **event listeners:** `onLoad`, `onLoadFinished`, `onReadStream`, `onReadUpdateStream`, `onUpdateTick`, `onWriteStream`, `onWriteUpdateStream`

## WaterTrailer

- **requires:** `FillUnit`
- **new functions:** `setIsWaterTrailerFilling`
- **overwritable (registerOverwrittenFunction):** `getDrawFirstFillText`
- **event listeners:** `onDelete`, `onLoad`, `onPreDetach`, `onReadStream`, `onUpdateTick`, `onWriteStream`

## Wearable

- **new functions:** `addAllSubWearableNodes`, `addDamageAmount`, `addToGlobalWearableNode`, `addToLocalWearableNode`, `addWearAmount`, `addWearableNode`, `getDamageAmount`, `getDamageShowOnHud`, `getNodeWearAmount`, `getUsageCausesDamage`, `getUsageCausesWear`, `getWearMultiplier`, `getWearTotalAmount`, `getWorkWearMultiplier`, `removeAllSubWearableNodes`, `removeWearableNode`, `repaintVehicle`, `repairVehicle`, `setDamageAmount`, `setNodeWearAmount`, `updateDamageAmount`, `updateWearAmount`, `validateWearableNode`
- **overwritable (registerOverwrittenFunction):** `getRepaintPrice`, `getRepairPrice`, `getVehicleDamage`, `showInfo`
- **event listeners:** `onLoad`, `onLoadFinished`, `onReadStream`, `onReadUpdateStream`, `onSaleItemSet`, `onUpdateTick`, `onWriteStream`, `onWriteUpdateStream`

## Weeder

- **requires:** `AttacherJoints`, `WorkArea`
- **new functions:** `processWeederArea`, `updateWeederAIRequirements`
- **overwritable (registerOverwrittenFunction):** `doCheckSpeedLimit`, `getDirtMultiplier`, `getIsWorkAreaActive`, `getWearMultiplier`, `loadGroundParticleMapping`, `loadWorkAreaFromXML`
- **event listeners:** `onDeactivate`, `onDelete`, `onEndWorkAreaProcessing`, `onLoad`, `onPostAttach`, `onStartWorkAreaProcessing`, `onStateChange`, `onUpdateTick`

## Wheels

- **new functions:** `brake`, `forceUpdateWheelPhysics`, `getAreSurfaceSoundsActive`, `getBrakeForce`, `getCurrentSurfaceSound`, `getIsVersatileYRotActive`, `getIsWheelChockAllowed`, `getSteeringNodeByNode`, `getSteeringRotTimeByCurvature`, `getTurningRadiusByRotTime`, `getWheelByWheelNode`, `getWheelFromWheelIndex`, `getWheels`, `loadAckermannSteeringFromXML`, `loadHubFromXML`, `loadHubsFromXML`, `loadWheelFromXML`, `loadWheelsFromXML`, `onLoadWheelChockFromXML`, `onWheelHubI3DLoaded`, `onWheelSnowHeightChanged`, `setCustomBrakeForce`, `updateSteeringNodes`, `updateWheelDirtAmount`, `updateWheelMudAmount`
- **overwritable (registerOverwrittenFunction):** `addToPhysics`, `getAIDirectionNode`, `getAIRootNode`, `getComponentMass`, `getSupportsMountKinematic`, `getVehicleWorldDirection`, `getVehicleWorldXRot`, `loadBendingNodeFromXML`, `removeFromPhysics`, `validateWashableNode`
- **events:** `onBrake`, `onFinishedWheelLoading`, `onWheelConfigurationChanged`
- **event listeners:** `onAIFieldWorkerEnd`, `onAIFieldWorkerStart`, `onAIImplementEnd`, `onAIImplementStart`, `onDelete`, `onLeaveVehicle`, `onLoad`, `onLoadFinished`, `onPostAttachImplement`, `onPostDetach`, `onPostUpdate`, `onPreAttach`, `onPreLoad`, `onReadStream`, `onReadUpdateStream`, `onRegisterAnimationValueTypes`, `onRegisterDashboardValueTypes`, `onUpdate`, `onUpdateEnd`, `onUpdateTick`, `onWriteStream`, `onWriteUpdateStream`

## Winch

- **new functions:** `attachTreeToWinch`, `detachTreeFromWinch`, `getCanAttachWinchTree`, `getIsWinchAttachModeActive`, `getIsWinchTreeAttachAllowed`, `getWinchRopeSpeedFactor`, `loadWinchRopeFromXML`, `onAttachTreeInputEvent`, `onWinchPlayerTriggerCallback`, `onWinchTreeRaycastCallback`, `onWinchTreeShapeCut`, `onWinchTreeShapeMounted`, `setWinchControlInput`, `setWinchTreeAttachMode`, `showWinchTreeMountFailedWarning`
- **overwritable (registerOverwrittenFunction):** `addToPhysics`, `getConsumingLoad`, `getDoConsumePtoPower`, `getIsPowerTakeOffActive`, `loadExtraDependentParts`, `removeFromPhysics`, `updateExtraDependentParts`
- **event listeners:** `onDelete`, `onLoad`, `onLoadFinished`, `onPostUpdate`, `onReadStream`, `onReadUpdateStream`, `onRegisterActionEvents`, `onWriteStream`, `onWriteUpdateStream`

## WindBending

- **event listeners:** `onLoad`, `onUpdate`

## Windrower

- **requires:** `WorkArea`
- **new functions:** `processDropArea`, `processWindrowerArea`
- **overwritable (registerOverwrittenFunction):** `doCheckSpeedLimit`, `getDirtMultiplier`, `getWearMultiplier`, `loadWorkAreaFromXML`
- **event listeners:** `onAIFieldCourseSettingsInitialized`, `onDelete`, `onEndWorkAreaProcessing`, `onLoad`, `onPostLoad`, `onReadStream`, `onReadUpdateStream`, `onStartWorkAreaProcessing`, `onTurnedOff`, `onTurnedOn`, `onUpdateTick`, `onWriteStream`, `onWriteUpdateStream`

## Wipers

- **requires:** `AnimatedVehicle`, `Enterable`
- **new functions:** `getIsActiveForWipers`, `loadWiperFromXML`
- **event listeners:** `onFinishAnimation`, `onLoad`, `onRegisterDashboardValueTypes`, `onUpdateTick`

## WoodCrusher

- **requires:** `FillUnit`, `TurnOnVehicle`
- **new functions:** `onCrushedSplitShape`
- **overwritable (registerOverwrittenFunction):** `getCanBeTurnedOn`, `getConsumingLoad`, `getDirtMultiplier`, `getRequiresPower`, `getWearMultiplier`
- **event listeners:** `onDelete`, `onLoad`, `onReadUpdateStream`, `onTurnedOff`, `onTurnedOn`, `onUpdate`, `onUpdateTick`, `onWriteUpdateStream`

## WoodHarvester

- **requires:** `TurnOnVehicle`
- **new functions:** `cutTree`, `dropWoodHarvesterTree`, `findSplitShapesInRange`, `getCanSplitShapeBeAccessed`, `getIsWoodHarvesterTiltStateAllowed`, `loadWoodHarvesterHeaderTiltFromXML`, `onDelimbTree`, `setLastTreeDiameter`, `setWoodHarvesterCutLengthIndex`, `setWoodHarvesterTiltState`, `woodHarvesterSplitShapeCallback`
- **overwritable (registerOverwrittenFunction):** `getAutoAlignHasValidTree`, `getCanBeSelected`, `getDoConsumePtoPower`, `getIsAutoTreeAlignmentAllowed`, `getIsFoldAllowed`, `getSupportsAutoTreeAlignment`
- **events:** `onCutTree`
- **event listeners:** `onCutTree`, `onDeactivate`, `onDelete`, `onDraw`, `onLoad`, `onLoadFinished`, `onPostLoad`, `onReadStream`, `onReadUpdateStream`, `onRegisterActionEvents`, `onRegisterDashboardValueTypes`, `onStateChange`, `onTurnedOff`, `onTurnedOn`, `onUpdate`, `onUpdateTick`, `onVehicleSettingChanged`, `onWriteStream`, `onWriteUpdateStream`

## WoodHarvesterLight

- **requires:** `AutomaticArmControlHarvester`, `TurnOnVehicle`
- **new functions:** `onWoodHarversterLogSpawnerCallback`, `spawnLogHeap`, `spawnTreeStump`, `updateLogSpawner`
- **overwritable (registerOverwrittenFunction):** `getAreControlledActionsAllowed`, `getAutoAlignHasValidTree`, `getSupportsAutoTreeAlignment`
- **event listeners:** `onDelete`, `onLoad`, `onTurnedOff`, `onTurnedOn`, `onUpdate`

## WorkArea

- **requires:** `GroundReference`
- **new functions:** `getAIWorkAreaWidth`, `getIsAccessibleAtWorldPosition`, `getIsFarmlandNotOwnedWarningShown`, `getIsTypedWorkAreaActive`, `getIsWorkAreaActive`, `getIsWorkAreaProcessing`, `getLastTouchedFarmlandFarmId`, `getMissionByWorkArea`, `getTypedNetworkAreas`, `getTypedWorkAreas`, `getWorkAreaByIndex`, `getWorkAreaWidth`, `loadWorkAreaFromXML`, `updateLastWorkedArea`, `updateWorkAreaWidth`
- **overwritable (registerOverwrittenFunction):** `checkMovingPartDirtyUpdateNode`, `getImplementAllowAutomaticSteering`, `getIsSpeedRotatingPartActive`, `loadSpeedRotatingPartFromXML`
- **events:** `onEndWorkAreaProcessing`, `onStartWorkAreaProcessing`
- **event listeners:** `onDraw`, `onLoad`, `onUpdateTick`

## WorkMode

- **requires:** `AnimatedVehicle`, `WorkArea`
- **new functions:** `deactivateWindrowerEffects`, `getIsWorkModeChangeAllowed`, `getWorkMode`, `loadWorkModeFromXML`, `setWorkMode`
- **overwritable (registerOverwrittenFunction):** `getAllowsLowering`, `getAreEffectsVisible`, `getCanBeSelected`, `getIsMovingToolActive`, `getIsSprayTypeActive`, `getIsWorkAreaActive`, `loadMovingToolFromXML`, `loadSprayTypeFromXML`
- **events:** `onWorkModeChanged`
- **event listeners:** `onDeactivate`, `onDelete`, `onDraw`, `onFoldStateChanged`, `onLoad`, `onPostLoad`, `onReadStream`, `onReadUpdateStream`, `onRegisterActionEvents`, `onSetLowered`, `onTurnedOff`, `onTurnedOn`, `onUpdate`, `onUpdateTick`, `onWriteStream`, `onWriteUpdateStream`

## WorkParticles

- **new functions:** `getDoGroundManipulation`, `getFillTypeFromWorkAreaIndex`, `groundParticleI3DLoaded`, `loadGroundAnimationMapping`, `loadGroundAnimations`, `loadGroundEffects`, `loadGroundParticleMapping`, `loadGroundParticles`, `onGroundAnimationI3DLoaded`
- **overwritable (registerOverwrittenFunction):** `loadGroundReferenceNode`, `updateGroundReferenceNode`
- **event listeners:** `onDeactivate`, `onDelete`, `onLoad`, `onUpdateTick`

## YarderCarriage

- **new functions:** `attachTreeToCarriage`, `createJoint`, `detachTreeFromCarriage`, `getAttachedTreeMass`, `getCarriageDimensions`, `getCarriagePullRopeTargetNode`, `getCarriagePushRopeTargetNode`, `getIsCarriageTreeAttachAllowed`, `getIsTreeInMountRange`, `getMaxNumAttachedTrees`, `getNumAttachedTrees`, `onAttachTreeAction`, `onCarriageTreeRaycastCallback`, `onDetachTreeAction`, `onYarderCarriageTreeShapeCut`, `onYarderCarriageTreeShapeMounted`, `onYarderCarriageUpdateEnd`, `resolveLoadedAttachedTrees`, `saveAttachedTreesToXML`, `setCarriageLiftInput`, `setYarderTowerVehicle`, `showCarriageTreeMountFailedWarning`, `updateCarriageInRange`, `updateRopeAlignmentNodes`, `updateTreeAttachRopes`
- **overwritable (registerOverwrittenFunction):** `getDirtMultiplier`, `getWearMultiplier`
- **event listeners:** `onDelete`, `onLoad`, `onLoadFinished`, `onPostUpdate`, `onReadStream`, `onReadUpdateStream`, `onWriteStream`, `onWriteUpdateStream`

## YarderTower

- **new functions:** `doRopePlacementValidation`, `getIsPlayerInYarderControlRange`, `getIsPlayerInYarderRange`, `getIsSetupModeChangeAllowed`, `getIsTreeShapeUsedForYarderSetup`, `getTreeAtPosition`, `getYarderCarriageLastSpeed`, `getYarderIsSetUp`, `getYarderMainRopeLength`, `getYarderStatusInfo`, `onCarriageVehicleDeleted`, `onCreateCarriageFinished`, `onHookI3DLoaded`, `onMainRopePlacementValidated`, `onRopeI3DLoaded`, `onSupportRopeTreeOverlapCallback`, `onYarderCarriageAttach`, `onYarderCarriageDetach`, `onYarderControlTriggerCallback`, `onYarderSupportTerrainRaycastCallback`, `onYarderTowerPlayerDeleted`, `onYarderTreeRaycastCallback`, `setYarderCarriageFollowMode`, `setYarderCarriageLiftInput`, `setYarderCarriageMoveInput`, `setYarderRopeState`, `setYarderSetupModeState`, `setYarderTargetActive`, `setupSupportRopes`, `updateYarderRope`, `updateYarderRopeLengthNodes`
- **overwritable (registerOverwrittenFunction):** `addToPhysics`, `getAllowsLowering`, `getConsumingLoad`, `getDirtMultiplier`, `getDoConsumePtoPower`, `getIsFoldAllowed`, `getIsPowerTakeOffActive`, `getUsageCausesDamage`, `getWearMultiplier`, `isDetachAllowed`, `removeFromPhysics`
- **events:** `onYarderCarriageTreeAttached`
- **event listeners:** `onDelete`, `onLoad`, `onLoadEnd`, `onPostAttach`, `onPreDelete`, `onReadStream`, `onReadUpdateStream`, `onUpdate`, `onWriteStream`, `onWriteUpdateStream`, `onYarderCarriageTreeAttached`

## ConsumableActivatable


## LivestockTrailerActivatable


## WinchAttachTreeActivatable


## WinchControlRopeActivatable


## YarderTowerControlActivatable


## YarderTowerSetupActivatable


## AttacherJointTopArm


## BeaconLight


## RealLight


## SharedLight


## StaticLight


## StaticLightCompound


## AIAutomaticSteeringCourseEvent


## AIAutomaticSteeringLineEndEvent


## AIAutomaticSteeringRequestEvent


## AIAutomaticSteeringStateEvent


## AIConveyorBeltSetAngleEvent


## AIFieldWorkerStateEvent


## AIJobVehicleStateEvent


## AIModeSelectionSettingsEvent


## AISetModeEvent


## AIVehicleIsBlockedEvent


## AnimatedVehicleStartEvent


## AnimatedVehicleStopEvent


## AttachableStartDetachEvent


## BaleCounterResetEvent


## BaleLoaderStateEvent


## BaleWrapperAutomaticDropEvent


## BaleWrapperDropEvent


## BaleWrapperStateEvent


## BalerAutomaticDropEvent


## BalerBaleTypeEvent


## BalerCreateBaleEvent


## BalerDropFromPlatformEvent


## BalerSetBaleTimeEvent


## BalerSetIsUnloadingBaleEvent


## CombineStrawEnableEvent


## ConsumableRefillEvent


## EnterablePassengerEnterRequestEvent


## EnterablePassengerEnterResponseEvent


## EnterablePassengerLeaveEvent


## FellerBuncherCutEvent


## FellerBuncherReleaseEvent


## FillUnitUnloadEvent


## FillUnitUnloadedEvent


## FoldableSetFoldDirectionEvent


## FoldableStepsChangeStateEvent


## HonkEvent


## InlineWrapperPushOffEvent


## JumpEvent


## LocomotiveStateEvent


## LogGrabClawStateEvent


## MixerWagonBaleNotAcceptedEvent


## MotorGearShiftEvent


## MotorSetTurnedOnEvent


## MotorStateEvent


## MountableSetMountTypeEvent


## MowerToggleWindrowDropEvent


## PalletFillerBuyPalletEvent


## PalletFillerStateEvent


## PickupSetStateEvent


## PlantLimitToFieldEvent


## PlowLimitToFieldEvent


## PlowPackerStateEvent


## PlowRotationCenterEvent


## PlowRotationEvent


## PushHandToolDriveModeEvent


## ReceivingHopperSetCreateBoxesEvent


## ReverseDrivingSetStateEvent


## RideableStableNotificationEvent


## RidgeMarkerSetStateEvent


## SetCoverStateEvent


## SetCrabSteeringEvent


## SetCruiseControlSpeedEvent


## SetCruiseControlStateEvent


## SetDischargeStateEvent


## SetFillUnitCapacityEvent


## SetFillUnitIsFillingEvent


## SetPipeDischargeToGroundEvent


## SetPipeStateEvent


## SetSeedIndexEvent


## SetTurnedOnEvent


## SetWorkModeEvent


## SprayerDoubledAmountEvent


## TensionBeltsEvent


## TensionBeltsRefreshEvent


## TrailerToggleManualDoorEvent


## TrailerToggleManualTipEvent


## TrailerToggleTipSideEvent


## TreeAttachEvent


## TreeAttachRequestEvent


## TreeAttachResponseEvent


## TreeDetachEvent


## TreePlanterCreateTreeEvent


## TreePlanterLoadPalletEvent


## TreePlanterTreeTypeEvent


## VariableWorkWidthStateEvent


## VehiclePlayerStyleChangedEvent


## VehicleSetBeaconLightEvent


## VehicleSetLightEvent


## VehicleSetTurnLightEvent


## VehicleSettingsChangeEvent


## WaterTrailerSetIsFillingEvent


## WearableRepaintEvent


## WearableRepairEvent


## WoodHarvesterCutLengthEvent


## WoodHarvesterCutTreeEvent


## WoodHarvesterDropTreeEvent


## WoodHarvesterHeaderTiltEvent


## WoodHarvesterOnCutTreeEvent


## WoodHarvesterOnDelimbTreeEvent


## YarderTowerFollowModeEvent


## YarderTowerSetTargetEvent

