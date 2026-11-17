# Functions – ai

Source: `github.com/MyGameSteamOfficial/fs25-lua-api` (commit 9478ee9, 2025-02-26 – older than the current patch). Extracted automatically: names, XML keys, types, defaults only – no code. Status 📖 (read from source, not verified in game).

## ai/AIJobTypeManager.lua

`AIJobTypeManager.new`, `AIJobTypeManager:createJob`, `AIJobTypeManager:delete`, `AIJobTypeManager:getJobTypeByIndex`, `AIJobTypeManager:getJobTypeIndex`, `AIJobTypeManager:getJobTypeIndexByName`, `AIJobTypeManager:loadMapData`, `AIJobTypeManager:registerJobType`

## ai/AISystem.lua

`AISystem.getAgentStateName`, `AISystem.new`, `AISystem.onCreateAIRoadSpline`, `AISystem:addJob`, `AISystem:addJobVehicle`, `AISystem:addObstacle`, `AISystem:addRoadSpline`, `AISystem:consoleCommandAICheckSplineInterference`, `AISystem:consoleCommandAICostmapExport`, `AISystem:consoleCommandAIEnableDebug`, `AISystem:consoleCommandAISetAreaDirty`, `AISystem:consoleCommandAISetLastTarget`, `AISystem:consoleCommandAISetTarget`, `AISystem:consoleCommandAIShowCosts`, `AISystem:consoleCommandAIShowObstacles`, `AISystem:consoleCommandAIStart`, `AISystem:consoleCommandAIToggleAINodeDebug`, `AISystem:consoleCommandAIToggleSplineVisibility`, `AISystem:consoleCommandShowPlanningDebug`, `AISystem:delete`, `AISystem:drawDebug`, `AISystem:getAILimitedReached`, `AISystem:getActiveJobs`, `AISystem:getJobById`, `AISystem:getNavigationMap`, `AISystem:getNavigationMapFilename`, `AISystem:getNumActiveJobs`, `AISystem:loadFromXMLFile`, `AISystem:loadMapData`, `AISystem:onClientJoined`, `AISystem:onMissionStarted`, `AISystem:onTerrainLoad`, `AISystem:registerXMLPaths`, `AISystem:removeJob`, `AISystem:removeJobVehicle`, `AISystem:removeObstacle`, `AISystem:removeRoadSpline`, `AISystem:save`, `AISystem:setAreaDirty`, `AISystem:setObstacleIsPassable`, `AISystem:skipCurrentTask`, `AISystem:skipCurrentTaskInternal`, `AISystem:startJob`, `AISystem:startJobInternal`, `AISystem:stopJob`, `AISystem:stopJobById`, `AISystem:stopJobInternal`, `AISystem:update`

## ai/HelperManager.lua

`HelperManager.new`, `HelperManager:addHelper`, `HelperManager:getHelperByIndex`, `HelperManager:getHelperByName`, `HelperManager:getNumOfHelpers`, `HelperManager:getRandomHelper`, `HelperManager:getRandomHelperStyle`, `HelperManager:getRandomIndex`, `HelperManager:initDataStructures`, `HelperManager:loadDefaultTypes`, `HelperManager:loadHelpers`, `HelperManager:loadMapData`, `HelperManager:releaseHelper`, `HelperManager:useHelper`

## ai/NavigationSystem.lua

`NavigationSystem.new`, `NavigationSystem:delete`, `NavigationSystem:draw`, `NavigationSystem:loadMapData`, `NavigationSystem:navigateTo`, `NavigationSystem:onNavigationMarkerLoaded`, `NavigationSystem:saveToXMLFile`, `NavigationSystem:stop`, `NavigationSystem:updateMarker`

## ai/errors/AIMessage.lua

`AIMessage.new`, `AIMessage:getMessage`, `AIMessage:getType`, `AIMessage:readStream`, `AIMessage:writeStream`

## ai/errors/AIMessageErrorBlockedByObject.lua

`AIMessageErrorBlockedByObject.new`

## ai/errors/AIMessageErrorCouldNotPrepare.lua

`AIMessageErrorCouldNotPrepare.new`, `AIMessageErrorCouldNotPrepare:getMessage`, `AIMessageErrorCouldNotPrepare:readStream`, `AIMessageErrorCouldNotPrepare:writeStream`

## ai/errors/AIMessageErrorFieldNotOwned.lua

`AIMessageErrorFieldNotOwned.new`, `AIMessageErrorFieldNotOwned:getI18NText`

## ai/errors/AIMessageErrorFieldNotReady.lua

`AIMessageErrorFieldNotReady.new`, `AIMessageErrorFieldNotReady:getI18NText`

## ai/errors/AIMessageErrorGraintankIsFull.lua

`AIMessageErrorGraintankIsFull.new`, `AIMessageErrorGraintankIsFull:getI18NText`

## ai/errors/AIMessageErrorImplementWrongWay.lua

`AIMessageErrorImplementWrongWay.new`, `AIMessageErrorImplementWrongWay:getI18NText`

## ai/errors/AIMessageErrorLoadingStationDeleted.lua

`AIMessageErrorLoadingStationDeleted.new`, `AIMessageErrorLoadingStationDeleted:getI18NText`

## ai/errors/AIMessageErrorNoFieldFound.lua

`AIMessageErrorNoFieldFound.new`, `AIMessageErrorNoFieldFound:getI18NText`

## ai/errors/AIMessageErrorNoPalletsLoaded.lua

`AIMessageErrorNoPalletsLoaded.new`, `AIMessageErrorNoPalletsLoaded:getI18NText`, `AIMessageErrorNoPalletsLoaded:getType`

## ai/errors/AIMessageErrorNoValidFillTypeLoaded.lua

`AIMessageErrorNoValidFillTypeLoaded.new`, `AIMessageErrorNoValidFillTypeLoaded:getI18NText`

## ai/errors/AIMessageErrorNoVineFound.lua

`AIMessageErrorNoVineFound.new`, `AIMessageErrorNoVineFound:getI18NText`

## ai/errors/AIMessageErrorNotReachable.lua

`AIMessageErrorNotReachable.new`, `AIMessageErrorNotReachable:getI18NText`

## ai/errors/AIMessageErrorOutOfFill.lua

`AIMessageErrorOutOfFill.new`, `AIMessageErrorOutOfFill:getI18NText`

## ai/errors/AIMessageErrorOutOfFuel.lua

`AIMessageErrorOutOfFuel.new`, `AIMessageErrorOutOfFuel:getI18NText`

## ai/errors/AIMessageErrorOutOfMoney.lua

`AIMessageErrorOutOfMoney.new`, `AIMessageErrorOutOfMoney:getI18NText`

## ai/errors/AIMessageErrorPalletsFull.lua

`AIMessageErrorPalletsFull.new`, `AIMessageErrorPalletsFull:getI18NText`, `AIMessageErrorPalletsFull:getType`

## ai/errors/AIMessageErrorThreshingNotAllowed.lua

`AIMessageErrorThreshingNotAllowed.new`, `AIMessageErrorThreshingNotAllowed:getI18NText`

## ai/errors/AIMessageErrorUnknown.lua

`AIMessageErrorUnknown.new`, `AIMessageErrorUnknown:getI18NText`

## ai/errors/AIMessageErrorUnloadingStationDeleted.lua

`AIMessageErrorUnloadingStationDeleted.new`, `AIMessageErrorUnloadingStationDeleted:getI18NText`

## ai/errors/AIMessageErrorUnloadingStationFull.lua

`AIMessageErrorUnloadingStationFull.new`, `AIMessageErrorUnloadingStationFull:getI18NText`

## ai/errors/AIMessageErrorVehicleBroken.lua

`AIMessageErrorVehicleBroken.new`, `AIMessageErrorVehicleBroken:getI18NText`

## ai/errors/AIMessageErrorVehicleDeleted.lua

`AIMessageErrorVehicleDeleted.new`, `AIMessageErrorVehicleDeleted:getI18NText`

## ai/errors/AIMessageErrorVineyardNotSupported.lua

`AIMessageErrorVineyardNotSupported.new`, `AIMessageErrorVineyardNotSupported:getI18NText`

## ai/errors/AIMessageErrorWrongSeason.lua

`AIMessageErrorWrongSeason.new`, `AIMessageErrorWrongSeason:getI18NText`

## ai/errors/AIMessageManager.lua

`AIMessageManager.new`, `AIMessageManager:createMessage`, `AIMessageManager:delete`, `AIMessageManager:getMessageIndex`, `AIMessageManager:loadMapData`, `AIMessageManager:registerMessage`

## ai/errors/AIMessageSuccessFinishedJob.lua

`AIMessageSuccessFinishedJob.new`, `AIMessageSuccessFinishedJob:getI18NText`, `AIMessageSuccessFinishedJob:getType`

## ai/errors/AIMessageSuccessSiloEmpty.lua

`AIMessageSuccessSiloEmpty.new`, `AIMessageSuccessSiloEmpty:getI18NText`, `AIMessageSuccessSiloEmpty:getType`

## ai/errors/AIMessageSuccessStoppedByUser.lua

`AIMessageSuccessStoppedByUser.new`, `AIMessageSuccessStoppedByUser:getI18NText`, `AIMessageSuccessStoppedByUser:getType`

## ai/events/AIJobSkipTaskEvent.lua

`AIJobSkipTaskEvent.emptyNew`, `AIJobSkipTaskEvent.new`, `AIJobSkipTaskEvent:readStream`, `AIJobSkipTaskEvent:run`, `AIJobSkipTaskEvent:writeStream`

## ai/events/AIJobStartEvent.lua

`AIJobStartEvent.emptyNew`, `AIJobStartEvent.new`, `AIJobStartEvent:readStream`, `AIJobStartEvent:run`, `AIJobStartEvent:writeStream`

## ai/events/AIJobStartRequestEvent.lua

`AIJobStartRequestEvent.emptyNew`, `AIJobStartRequestEvent.new`, `AIJobStartRequestEvent.newServerToClient`, `AIJobStartRequestEvent:readStream`, `AIJobStartRequestEvent:run`, `AIJobStartRequestEvent:writeStream`

## ai/events/AIJobStopEvent.lua

`AIJobStopEvent.emptyNew`, `AIJobStopEvent.new`, `AIJobStopEvent:readStream`, `AIJobStopEvent:run`, `AIJobStopEvent:writeStream`

## ai/events/AITaskStartEvent.lua

`AITaskStartEvent.emptyNew`, `AITaskStartEvent.new`, `AITaskStartEvent:readStream`, `AITaskStartEvent:run`, `AITaskStartEvent:writeStream`

## ai/events/AITaskStopEvent.lua

`AITaskStopEvent.emptyNew`, `AITaskStopEvent.new`, `AITaskStopEvent:readStream`, `AITaskStopEvent:run`, `AITaskStopEvent:writeStream`

## ai/jobs/AIJob.lua

`AIJob.new`, `AIJob:addNamedParameter`, `AIJob:addTask`, `AIJob:applyCurrentState`, `AIJob:canContinueWork`, `AIJob:canStartWork`, `AIJob:delete`, `AIJob:getCanSkipTask`, `AIJob:getDescription`, `AIJob:getGroupedParameters`, `AIJob:getHelperName`, `AIJob:getIsAvailableForVehicle`, `AIJob:getIsLooping`, `AIJob:getIsStartable`, `AIJob:getNamedParameter`, `AIJob:getNamedParameters`, `AIJob:getNextTaskIndex`, `AIJob:getPricePerMs`, `AIJob:getStartTaskIndex`, `AIJob:getTaskByIndex`, `AIJob:getTitle`, `AIJob:loadFromXMLFile`, `AIJob:onParameterValueChanged`, `AIJob:readStream`, `AIJob:resetTasks`, `AIJob:saveToXMLFile`, `AIJob:setId`, `AIJob:setParameterValid`, `AIJob:setValues`, `AIJob:showNotification`, `AIJob:skipCurrentTask`, `AIJob:start`, `AIJob:startTask`, `AIJob:stop`, `AIJob:stopTask`, `AIJob:update`, `AIJob:updateCost`, `AIJob:validate`, `AIJob:writeStream`

## ai/jobs/AIJobConveyor.lua

`AIJobConveyor.getIsStartErrorText`, `AIJobConveyor.new`, `AIJobConveyor:applyCurrentState`, `AIJobConveyor:getIsAvailableForVehicle`, `AIJobConveyor:getIsStartable`, `AIJobConveyor:getPricePerMs`, `AIJobConveyor:getTitle`, `AIJobConveyor:setValues`, `AIJobConveyor:start`, `AIJobConveyor:stop`, `AIJobConveyor:validate`

## ai/jobs/AIJobDeliver.lua

`AIJobDeliver.getIsStartErrorText`, `AIJobDeliver.new`, `AIJobDeliver:applyCurrentState`, `AIJobDeliver:canContinueWork`, `AIJobDeliver:getCanSkipTask`, `AIJobDeliver:getDescription`, `AIJobDeliver:getHasLoadedValidFillType`, `AIJobDeliver:getIsAvailableForVehicle`, `AIJobDeliver:getIsLooping`, `AIJobDeliver:getIsStartable`, `AIJobDeliver:getNextTaskIndex`, `AIJobDeliver:getStartTaskIndex`, `AIJobDeliver:getTitle`, `AIJobDeliver:setValues`, `AIJobDeliver:skipCurrentTask`, `AIJobDeliver:start`, `AIJobDeliver:startTask`, `AIJobDeliver:stop`, `AIJobDeliver:validate`

## ai/jobs/AIJobFieldWork.lua

`AIJobFieldWork.getIsStartErrorText`, `AIJobFieldWork.new`, `AIJobFieldWork:applyCurrentState`, `AIJobFieldWork:getDescription`, `AIJobFieldWork:getIsAvailableForVehicle`, `AIJobFieldWork:getIsStartable`, `AIJobFieldWork:getPricePerMs`, `AIJobFieldWork:getStartTaskIndex`, `AIJobFieldWork:getTarget`, `AIJobFieldWork:getTitle`, `AIJobFieldWork:readStream`, `AIJobFieldWork:setValues`, `AIJobFieldWork:start`, `AIJobFieldWork:stop`, `AIJobFieldWork:validate`, `AIJobFieldWork:writeStream`

## ai/jobs/AIJobGoTo.lua

`AIJobGoTo.getIsStartErrorText`, `AIJobGoTo.new`, `AIJobGoTo:applyCurrentState`, `AIJobGoTo:getDescription`, `AIJobGoTo:getIsAvailableForVehicle`, `AIJobGoTo:getIsStartable`, `AIJobGoTo:getTarget`, `AIJobGoTo:getTitle`, `AIJobGoTo:setValues`, `AIJobGoTo:start`, `AIJobGoTo:stop`, `AIJobGoTo:validate`

## ai/jobs/AIJobLoadAndDeliver.lua

`AIJobLoadAndDeliver.getIsStartErrorText`, `AIJobLoadAndDeliver.new`, `AIJobLoadAndDeliver:applyCurrentState`, `AIJobLoadAndDeliver:canContinueWork`, `AIJobLoadAndDeliver:getDescription`, `AIJobLoadAndDeliver:getIsAvailableForVehicle`, `AIJobLoadAndDeliver:getIsLooping`, `AIJobLoadAndDeliver:getIsStartable`, `AIJobLoadAndDeliver:getNextTaskIndex`, `AIJobLoadAndDeliver:getStartTaskIndex`, `AIJobLoadAndDeliver:getTitle`, `AIJobLoadAndDeliver:onParameterValueChanged`, `AIJobLoadAndDeliver:setValues`, `AIJobLoadAndDeliver:start`, `AIJobLoadAndDeliver:startTask`, `AIJobLoadAndDeliver:stop`, `AIJobLoadAndDeliver:updateFillTypes`, `AIJobLoadAndDeliver:validate`

## ai/parameters/AIParameter.lua

`AIParameter.new`, `AIParameter:getCanBeChanged`, `AIParameter:getIsValid`, `AIParameter:getString`, `AIParameter:getType`, `AIParameter:readStream`, `AIParameter:setIsValid`, `AIParameter:writeStream`

## ai/parameters/AIParameterFillType.lua

`AIParameterFillType.new`, `AIParameterFillType:getFillTypeIndex`, `AIParameterFillType:getString`, `AIParameterFillType:loadFromXMLFile`, `AIParameterFillType:readStream`, `AIParameterFillType:saveToXMLFile`, `AIParameterFillType:setFillTypeByIndex`, `AIParameterFillType:setFillTypeIndex`, `AIParameterFillType:setNextItem`, `AIParameterFillType:setPreviousItem`, `AIParameterFillType:setValidFillTypes`, `AIParameterFillType:validate`, `AIParameterFillType:writeStream`

## ai/parameters/AIParameterGroup.lua

`AIParameterGroup.new`, `AIParameterGroup:addParameter`, `AIParameterGroup:getParameters`, `AIParameterGroup:getTitle`

## ai/parameters/AIParameterLoadingStation.lua

`AIParameterLoadingStation.new`, `AIParameterLoadingStation:getLoadingStation`, `AIParameterLoadingStation:getString`, `AIParameterLoadingStation:loadFromXMLFile`, `AIParameterLoadingStation:onPlaceableLoaded`, `AIParameterLoadingStation:readStream`, `AIParameterLoadingStation:saveToXMLFile`, `AIParameterLoadingStation:setLoadingStation`, `AIParameterLoadingStation:setLoadingStationFromUniqueId`, `AIParameterLoadingStation:setNextItem`, `AIParameterLoadingStation:setPreviousItem`, `AIParameterLoadingStation:setValidLoadingStations`, `AIParameterLoadingStation:validate`, `AIParameterLoadingStation:writeStream`

## ai/parameters/AIParameterLooping.lua

`AIParameterLooping.new`, `AIParameterLooping:getIsLooping`, `AIParameterLooping:getString`, `AIParameterLooping:loadFromXMLFile`, `AIParameterLooping:readStream`, `AIParameterLooping:saveToXMLFile`, `AIParameterLooping:setIsLooping`, `AIParameterLooping:setNextItem`, `AIParameterLooping:setPreviousItem`, `AIParameterLooping:writeStream`

## ai/parameters/AIParameterPosition.lua

`AIParameterPosition.new`, `AIParameterPosition:getPosition`, `AIParameterPosition:getString`, `AIParameterPosition:loadFromXMLFile`, `AIParameterPosition:readStream`, `AIParameterPosition:saveToXMLFile`, `AIParameterPosition:setPosition`, `AIParameterPosition:validate`, `AIParameterPosition:writeStream`

## ai/parameters/AIParameterPositionAngle.lua

`AIParameterPositionAngle.new`, `AIParameterPositionAngle:getAngle`, `AIParameterPositionAngle:getDirection`, `AIParameterPositionAngle:getSnappingAngle`, `AIParameterPositionAngle:getString`, `AIParameterPositionAngle:loadFromXMLFile`, `AIParameterPositionAngle:readStream`, `AIParameterPositionAngle:saveToXMLFile`, `AIParameterPositionAngle:setAngle`, `AIParameterPositionAngle:setSnappingAngle`, `AIParameterPositionAngle:validate`, `AIParameterPositionAngle:writeStream`

## ai/parameters/AIParameterUnloadingStation.lua

`AIParameterUnloadingStation.new`, `AIParameterUnloadingStation:getString`, `AIParameterUnloadingStation:getUnloadingStation`, `AIParameterUnloadingStation:loadFromXMLFile`, `AIParameterUnloadingStation:onPlaceableLoaded`, `AIParameterUnloadingStation:readStream`, `AIParameterUnloadingStation:saveToXMLFile`, `AIParameterUnloadingStation:setNextItem`, `AIParameterUnloadingStation:setPreviousItem`, `AIParameterUnloadingStation:setUnloadingStation`, `AIParameterUnloadingStation:setUnloadingStationFromUniqueId`, `AIParameterUnloadingStation:setValidUnloadingStations`, `AIParameterUnloadingStation:validate`, `AIParameterUnloadingStation:writeStream`

## ai/parameters/AIParameterVehicle.lua

`AIParameterVehicle.new`, `AIParameterVehicle:getCanBeChanged`, `AIParameterVehicle:getString`, `AIParameterVehicle:getVehicle`, `AIParameterVehicle:readStream`, `AIParameterVehicle:saveToXMLFile`, `AIParameterVehicle:setVehicle`, `AIParameterVehicle:validate`, `AIParameterVehicle:writeStream`

## ai/tasks/AITask.lua

`AITask.new`, `AITask:delete`, `AITask:getIsFinished`, `AITask:reset`, `AITask:skip`, `AITask:start`, `AITask:stop`, `AITask:update`, `AITask:validate`

## ai/tasks/AITaskConveyor.lua

`AITaskConveyor.new`, `AITaskConveyor:reset`, `AITaskConveyor:setVehicle`, `AITaskConveyor:start`, `AITaskConveyor:stop`

## ai/tasks/AITaskDischarge.lua

`AITaskDischarge.new`, `AITaskDischarge:finishedDischarge`, `AITaskDischarge:onError`, `AITaskDischarge:onTargetReached`, `AITaskDischarge:reset`, `AITaskDischarge:setDischargeNode`, `AITaskDischarge:setUnloadTrigger`, `AITaskDischarge:setVehicle`, `AITaskDischarge:start`

## ai/tasks/AITaskDriveTo.lua

`AITaskDriveTo.new`, `AITaskDriveTo:onError`, `AITaskDriveTo:onTargetReached`, `AITaskDriveTo:reset`, `AITaskDriveTo:setTargetDirection`, `AITaskDriveTo:setTargetOffset`, `AITaskDriveTo:setTargetPosition`, `AITaskDriveTo:setVehicle`, `AITaskDriveTo:start`, `AITaskDriveTo:startDriving`, `AITaskDriveTo:stop`, `AITaskDriveTo:update`

## ai/tasks/AITaskFieldWork.lua

`AITaskFieldWork.new`, `AITaskFieldWork:reset`, `AITaskFieldWork:setVehicle`, `AITaskFieldWork:start`, `AITaskFieldWork:stop`, `AITaskFieldWork:update`

## ai/tasks/AITaskLoading.lua

`AITaskLoading.new`, `AITaskLoading:finishedLoading`, `AITaskLoading:onError`, `AITaskLoading:onTargetReached`, `AITaskLoading:reset`, `AITaskLoading:setFillType`, `AITaskLoading:setFillUnit`, `AITaskLoading:setLoadTrigger`, `AITaskLoading:setVehicle`, `AITaskLoading:start`

## ai/tasks/AITaskWaitForFilling.lua

`AITaskWaitForFilling.new`, `AITaskWaitForFilling:addAllowedFillType`, `AITaskWaitForFilling:addFillUnits`, `AITaskWaitForFilling:reset`, `AITaskWaitForFilling:setVehicle`, `AITaskWaitForFilling:start`, `AITaskWaitForFilling:stop`, `AITaskWaitForFilling:update`
