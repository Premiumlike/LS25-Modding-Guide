# Functions – collections

Source: `github.com/MyGameSteamOfficial/fs25-lua-api` (commit 9478ee9, 2025-02-26 – older than the current patch). Extracted automatically: names, XML keys, types, defaults only – no code. Status 📖 (read from source, not verified in game).

## collections/BaseStateMachineState.lua

`BaseStateMachineState.new`, `BaseStateMachineState:addTransition`, `BaseStateMachineState:caclulateDebugScreenBounds`, `BaseStateMachineState:calculateIfShouldBeForced`, `BaseStateMachineState:calculateIfValidEntryState`, `BaseStateMachineState:createTransitions`, `BaseStateMachineState:debugDraw`, `BaseStateMachineState:onStateEntered`, `BaseStateMachineState:onStateExited`, `BaseStateMachineState:trySwitchToValidTransition`, `BaseStateMachineState:updateAsCurrent`, `BaseStateMachineState:updateAsInactive`

## collections/DataGrid.lua

`DataGrid.new`, `DataGrid:delete`, `DataGrid:getValue`, `DataGrid:setValue`

## collections/DynamicDataGrid.lua

`DynamicDataGrid.new`, `DynamicDataGrid:delete`, `DynamicDataGrid:getCellFromWorldPosition`, `DynamicDataGrid:getGridIndicesByWorldPosition`, `DynamicDataGrid:getGridSnappedPosition`, `DynamicDataGrid:getLocalIndicesByWorldPosition`, `DynamicDataGrid:getWorldPositionByLocalIndices`

## collections/ListenerList.lua

`ListenerList.new`, `ListenerList:invoke`, `ListenerList:registerListener`, `ListenerList_mt.__call`

## collections/MapDataGrid.lua

`MapDataGrid.createFromBlockSize`, `MapDataGrid.new`, `MapDataGrid:getRowColumnFromWorldPos`, `MapDataGrid:getValueAtWorldPos`, `MapDataGrid:isWorldPositionInRange`, `MapDataGrid:setValueAtWorldPos`

## collections/ObjectPool.lua

`ObjectPool.new`, `ObjectPool:clear`, `ObjectPool:getLength`, `ObjectPool:getOrCreateNext`, `ObjectPool:returnToPool`

## collections/Queue.lua

`Queue:peek`

## collections/StateMachine.lua

`StateMachine.new`, `StateMachine:callStateFunction`, `StateMachine:changeState`, `StateMachine:determineState`, `StateMachine:getCurrentStateIndex`, `StateMachine:getCurrentStateName`, `StateMachine:getIndexOfState`, `StateMachine:getIsPassive`, `StateMachine:getNameOfState`, `StateMachine:getStateByIndex`, `StateMachine:implementStateInterface`, `StateMachine:initialiseStateTransitions`, `StateMachine:resolveCurrentState`, `StateMachine:setIsPassive`, `StateMachine:update`

## collections/ValueInterpolator.lua

`ValueInterpolator.hasInterpolator`, `ValueInterpolator.new`, `ValueInterpolator.removeInterpolator`, `ValueInterpolator:delete`, `ValueInterpolator:getTarget`, `ValueInterpolator:onDeleteParent`, `ValueInterpolator:setDeleteListenerObject`, `ValueInterpolator:setFinishedFunc`, `ValueInterpolator:setUpdateFunc`, `ValueInterpolator:update`, `ValueInterpolator:updateSpeed`
