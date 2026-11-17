# Functions – player

Source: `github.com/MyGameSteamOfficial/fs25-lua-api` (commit 9478ee9, 2025-02-26 – older than the current patch). Extracted automatically: names, XML keys, types, defaults only – no code. Status 📖 (read from source, not verified in game).

## player/Player.lua

`Player.createServerInstance`, `Player.new`, `Player:debugDraw`, `Player:delete`, `Player:findEmptyAreaAroundPosition`, `Player:findSpawnPositionAndYaw`, `Player:getCanPickupHandTool`, `Player:getCarriedHandToolMass`, `Player:getHasSpawnPosition`, `Player:getHasSpawnYaw`, `Player:getIsCarryingHandTool`, `Player:getIsHoldingHandTool`, `Player:getMapPositionAndLookYaw`, `Player:getMovementYaw`, `Player:getSpawnPosition`, `Player:getSpawnYaw`, `Player:getUniqueUserId`, `Player:initialise`, `Player:load`, `Player:onDropHandTool`, `Player:onPickupHandTool`, `Player:readStream`, `Player:readUpdateStream`, `Player:setSpawnYaw`, `Player:setUniqueUserId`, `Player:show`, `Player:update`, `Player:updateControlledState`, `Player:updateTick`, `Player:writeStream`, `Player:writeUpdateStream`

## player/PlayerCCT.lua

`PlayerCCT.new`, `PlayerCCT:calculateIfBottomTouchesGround`, `PlayerCCT:debugDraw`, `PlayerCCT:delete`, `PlayerCCT:getPosition`, `PlayerCCT:move`, `PlayerCCT:rebuild`, `PlayerCCT:setPosition`

## player/PlayerCamera.lua

`PlayerCamera.new`, `PlayerCamera:calculateLocalDirection`, `PlayerCamera:calculateWorldDirection`, `PlayerCamera:focusOnPlayer`, `PlayerCamera:focusOnPosition`, `PlayerCamera:getCameraPosition`, `PlayerCamera:getCurrentZoomDistance`, `PlayerCamera:getDesiredZoomDistance`, `PlayerCamera:getFocusPosition`, `PlayerCamera:getIsCollisionEnabled`, `PlayerCamera:getOffsetY`, `PlayerCamera:getRotation`, `PlayerCamera:initialise`, `PlayerCamera:makeCurrent`, `PlayerCamera:setCurrentZoomDistance`, `PlayerCamera:setFocusPosition`, `PlayerCamera:setIsCollisionEnabled`, `PlayerCamera:setOffsetY`, `PlayerCamera:setRotation`, `PlayerCamera:toggleThirdPersonMode`, `PlayerCamera:tryApplyViewBobbing`, `PlayerCamera:updatePosition`, `PlayerCamera:updateRotation`

## player/PlayerInputComponent.lua

`PlayerInputComponent.new`, `PlayerInputComponent:addPauseListeners`, `PlayerInputComponent:calculateNormalisedMovementDirection`, `PlayerInputComponent:calculateNormalisedWorldMovementDirection`, `PlayerInputComponent:debugDraw`, `PlayerInputComponent:lock`, `PlayerInputComponent:onGamePaused`, `PlayerInputComponent:onInputChangeAltitude`, `PlayerInputComponent:onInputCrouch`, `PlayerInputComponent:onInputEnter`, `PlayerInputComponent:onInputJump`, `PlayerInputComponent:onInputLookLeftRight`, `PlayerInputComponent:onInputLookUpDown`, `PlayerInputComponent:onInputMoveForward`, `PlayerInputComponent:onInputMoveSide`, `PlayerInputComponent:onInputRun`, `PlayerInputComponent:onInputSwitchCamera`, `PlayerInputComponent:registerActionEvents`, `PlayerInputComponent:resetState`, `PlayerInputComponent:unlock`, `PlayerInputComponent:unregisterActionEvents`

## player/PlayerMover.lua

`PlayerMover.new`, `PlayerMover:calculateSmoothSpeed`, `PlayerMover:debugDraw`, `PlayerMover:getMovementYaw`, `PlayerMover:getSpeed`, `PlayerMover:initialise`, `PlayerMover:moveHorizontally`, `PlayerMover:moveVertically`, `PlayerMover:onGroundRaycastCallback`, `PlayerMover:onWaterRaycastCallback`, `PlayerMover:setFlightActive`, `PlayerMover:setPosition`, `PlayerMover:teleportTo`, `PlayerMover:toggleFlightActive`, `PlayerMover:update`, `PlayerMover:updateFloorDistance`, `PlayerMover:updateWaterSubmergeDistance`

## player/PlayerSystem.lua

`PlayerSystem:addPlayer`, `PlayerSystem:debugDrawAllPlayers`, `PlayerSystem:draw`, `PlayerSystem:getHasPlayerWithUniqueId`, `PlayerSystem:getIsPlayerAdded`, `PlayerSystem:getPlayerByConnection`, `PlayerSystem:getPlayerByIndex`, `PlayerSystem:getPlayerByRootNode`, `PlayerSystem:getPlayerByUniqueId`, `PlayerSystem:getPlayerByUserId`, `PlayerSystem:getPlayerCount`, `PlayerSystem:getPlayerDataByUniqueId`, `PlayerSystem:saveHugeUnloadedPlayers`, `PlayerSystem:saveToXMLFile`, `PlayerSystem:saveUnloadedPlayers`

## player/PlayerTargeter.lua

`PlayerTargeter.new`, `PlayerTargeter:addFilterToTargetType`, `PlayerTargeter:addTargetType`, `PlayerTargeter:debugDraw`, `PlayerTargeter:getClosestTargetedNodeFromType`, `PlayerTargeter:getHasTargetedKey`, `PlayerTargeter:getLastLookRay`, `PlayerTargeter:recalculateCombinedTargetMask`, `PlayerTargeter:removeTargetType`, `PlayerTargeter:tryAddTargetWithMask`, `PlayerTargeter:update`

## player/events/PlayerHoldHandToolEvent.lua

`PlayerHoldHandToolEvent.emptyNew`, `PlayerHoldHandToolEvent.new`, `PlayerHoldHandToolEvent.sendEvent`, `PlayerHoldHandToolEvent:readStream`, `PlayerHoldHandToolEvent:run`, `PlayerHoldHandToolEvent:writeStream`

## player/events/PlayerRequestStyleEvent.lua

`PlayerRequestStyleEvent.emptyNew`, `PlayerRequestStyleEvent.new`, `PlayerRequestStyleEvent:readStream`, `PlayerRequestStyleEvent:run`, `PlayerRequestStyleEvent:writeStream`

## player/events/PlayerSetFarmAnswerEvent.lua

`PlayerSetFarmAnswerEvent.emptyNew`, `PlayerSetFarmAnswerEvent.new`, `PlayerSetFarmAnswerEvent:readStream`, `PlayerSetFarmAnswerEvent:run`, `PlayerSetFarmAnswerEvent:writeStream`

## player/events/PlayerSetFarmEvent.lua

`PlayerSetFarmEvent.emptyNew`, `PlayerSetFarmEvent.new`, `PlayerSetFarmEvent.sendEvent`, `PlayerSetFarmEvent:readStream`, `PlayerSetFarmEvent:run`, `PlayerSetFarmEvent:writeStream`

## player/events/PlayerSetNicknameEvent.lua

`PlayerSetNicknameEvent.emptyNew`, `PlayerSetNicknameEvent.new`, `PlayerSetNicknameEvent:readStream`, `PlayerSetNicknameEvent:run`, `PlayerSetNicknameEvent:writeStream`

## player/events/PlayerSetStyleEvent.lua

`PlayerSetStyleEvent.emptyNew`, `PlayerSetStyleEvent.new`, `PlayerSetStyleEvent.sendEvent`, `PlayerSetStyleEvent:readStream`, `PlayerSetStyleEvent:run`, `PlayerSetStyleEvent:writeStream`

## player/events/PlayerSwitchedFarmEvent.lua

`PlayerSwitchedFarmEvent.emptyNew`, `PlayerSwitchedFarmEvent:readStream`, `PlayerSwitchedFarmEvent:run`, `PlayerSwitchedFarmEvent:writeStream`

## player/events/PlayerTeleportEvent.lua

`PlayerTeleportEvent.emptyNew`, `PlayerTeleportEvent.new`, `PlayerTeleportEvent.newExitVehicle`, `PlayerTeleportEvent:readStream`, `PlayerTeleportEvent:run`, `PlayerTeleportEvent:writeStream`

## player/graphical/PlayerStyle.lua

`PlayerStyle.new`, `PlayerStyle:copyConfigurationFrom`, `PlayerStyle:copyFrom`, `PlayerStyle:copySelectionFrom`, `PlayerStyle:debugDraw`, `PlayerStyle:loadConfigurationXML`, `PlayerStyle:readStream`, `PlayerStyle:writeStream`

## player/graphical/PlayerStyleConfig.lua

`PlayerStyleConfig:BEARD_FACE_GETTER_FILTER`, `PlayerStyleConfig:ENABLED_GETTER_FILTER`, `PlayerStyleConfig:NOT_FOR_HAT_GETTER_FILTER`, `PlayerStyleConfig:NOT_HIDDEN_GETTER_FILTER`, `PlayerStyleConfig:NO_ONEPIECE_GETTER_FILTER`, `PlayerStyleConfig:SELECTED_GETTER_FILTER`, `PlayerStyleConfig:getItemIndex`, `PlayerStyleConfig:getItemNameIndex`, `PlayerStyleConfig:getSelectedItem`

## player/networking/PlayerLocalNetworkComponent.lua

`PlayerLocalNetworkComponent.new`, `PlayerLocalNetworkComponent:readUpdateStream`, `PlayerLocalNetworkComponent:update`, `PlayerLocalNetworkComponent:updateTick`, `PlayerLocalNetworkComponent:writeUpdateStream`

## player/networking/PlayerNetworkComponent.lua

`PlayerNetworkComponent.new`, `PlayerNetworkComponent:debugDraw`, `PlayerNetworkComponent:readUpdateStream`, `PlayerNetworkComponent:update`, `PlayerNetworkComponent:updateTick`, `PlayerNetworkComponent:writeUpdateStream`

## player/networking/PlayerPositionalInterpolator.lua

`PlayerPositionalInterpolator.new`, `PlayerPositionalInterpolator:getInterpolatedPosition`, `PlayerPositionalInterpolator:setTargetPosition`, `PlayerPositionalInterpolator:setTargetYaw`, `PlayerPositionalInterpolator:update`, `PlayerPositionalInterpolator:updateTick`

## player/networking/PlayerRemoteNetworkComponent.lua

`PlayerRemoteNetworkComponent.new`, `PlayerRemoteNetworkComponent:readUpdateStream`

## player/networking/PlayerServerNetworkComponent.lua

`PlayerServerNetworkComponent.new`, `PlayerServerNetworkComponent:readUpdateStream`, `PlayerServerNetworkComponent:update`, `PlayerServerNetworkComponent:updateTick`, `PlayerServerNetworkComponent:writeUpdateStream`

## player/stateMachine/PlayerOnFootStateMachine.lua

`PlayerOnFootStateMachine.new`, `PlayerOnFootStateMachine:onStateEntered`, `PlayerOnFootStateMachine:onStateExited`, `PlayerOnFootStateMachine:updateAsCurrent`

## player/stateMachine/PlayerStateCrouch.lua

`PlayerStateCrouch.new`, `PlayerStateCrouch:calculateDesiredHorizontalVelocity`, `PlayerStateCrouch:calculateIfCrouching`, `PlayerStateCrouch:calculateIfValidEntryState`, `PlayerStateCrouch:createTransitions`, `PlayerStateCrouch:onStateEntered`, `PlayerStateCrouch:onStateExited`, `PlayerStateCrouch:resetTimers`, `PlayerStateCrouch:updateAsCurrent`

## player/stateMachine/PlayerStateFall.lua

`PlayerStateFall.new`, `PlayerStateFall:calculateDesiredHorizontalVelocity`, `PlayerStateFall:calculateIfFalling`, `PlayerStateFall:calculateIfLanding`, `PlayerStateFall:updateAsCurrent`

## player/stateMachine/PlayerStateIdle.lua

`PlayerStateIdle.new`, `PlayerStateIdle:calculateIfIdle`, `PlayerStateIdle:calculateIfValidEntryState`, `PlayerStateIdle:createTransitions`

## player/stateMachine/PlayerStateJump.lua

`PlayerStateJump.new`, `PlayerStateJump:calculateDesiredHorizontalVelocity`, `PlayerStateJump:calculateIfFalling`, `PlayerStateJump:calculateIfJumping`, `PlayerStateJump:calculateIfLanding`, `PlayerStateJump:calculateIfTakingOff`, `PlayerStateJump:createTransitions`, `PlayerStateJump:onStateEntered`, `PlayerStateJump:onStateExited`, `PlayerStateJump:resetTimers`, `PlayerStateJump:updateAsCurrent`

## player/stateMachine/PlayerStateMachine.lua

`PlayerStateMachine.new`, `PlayerStateMachine:updateWhilePaused`

## player/stateMachine/PlayerStateSwim.lua

`PlayerStateSwim.new`, `PlayerStateSwim:calculateDesiredHorizontalVelocity`, `PlayerStateSwim:updateAsCurrent`

## player/stateMachine/PlayerStateWalk.lua

`PlayerStateWalk.new`, `PlayerStateWalk:calculateDesiredHorizontalVelocity`, `PlayerStateWalk:calculateIfRunning`, `PlayerStateWalk:calculateIfValidEntryState`, `PlayerStateWalk:calculateIfWalking`, `PlayerStateWalk:createTransitions`
