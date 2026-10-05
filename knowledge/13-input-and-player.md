# 13. Input, player, attaching implements

[← Overview](../README.md)

## Actions and bindings (modDesc)

- `<actions><action name="X" category="VEHICLE" axisType="HALF"/>` plus `<inputBinding><actionBinding action="X"><binding device="KB_MOUSE_DEFAULT" input="KEY_lshift KEY_f"/>`. Categories seen: `VEHICLE`, `ONFOOT VEHICLE`, `MENU`, `MENU_SHOP_CONFIG`; `displayCategory="PLAYER_INTERACTIVE"`; gamepad device `0_XINPUT_GAMEPAD`; mouse inputs `MOUSE_BUTTON_LEFT/MIDDLE`. 🔎 (UsedPlus, UniversalAutoload, manualAttach)
- Name in the controls menu: l10n key `input_X`. 🔎 (UsedPlus)
- **Axis actions** (`axisType="FULL"`) need **two** bindings (`axisComponent="-"` and `"+"`, `inputComponent="+"`, `index="1"`) and two texts `input_X_1` / `input_X_2`. 🔎 (EnhancedVehicle)
- `<actionBinding action="X"/>` without a binding = unbound but rebindable; `neutralInput="0"` seen. 🔎 (DashboardLive)
- A typo in an attribute (`categoy`) is ignored silently. 🔎 (DashboardLive)

## Vehicle-bound actions

- In the specialization: `onRegisterActionEvents(isActiveForInput, isActiveForInputIgnoreSelection)` → `self:clearActionEventsTable(spec.actionEvents)`, then `self:addActionEvent(spec.actionEvents, InputAction.X, self, cb, triggerUp, triggerDown, triggerAlways, startActive, callbackState)`. Guard with `self.isClient` and `self:getIsActiveForInput(true, true)`. 🔎 (Courseplay, UniversalAutoload)
- Callback: `cb(self, actionName, inputValue, callbackState, isAnalog)`. 🔎
- Text/help: `g_inputBinding:setActionEventText(id, text)`, `setActionEventTextVisibility`, `setActionEventTextPriority(id, GS_PRIO_HIGH)` (`GS_PRIO_VERY_HIGH` … `GS_PRIO_VERY_LOW`), `setActionEventActive`. 🔎
- After a state change call `self:requestActionEventUpdate()`; changed action lists otherwise only apply after re-entering the vehicle. 🔎 (AutoDrive, EnhancedVehicle)
- Removing a conflicting game action from the vehicle's list: `g_inputBinding:removeActionEvent(id)`. 🔎 (UniversalAutoload)
- Detecting driver input: hook the vanilla actions `AXIS_ACCELERATE_VEHICLE`, `AXIS_BRAKE_VEHICLE`, `AXIS_MOVE_SIDE_VEHICLE`. 🔎 (EnhancedVehicle)
- Inside input callbacks `self.spec_<name>` was "not reliable"; DashboardLive uses `g_currentMission.hud.controlledVehicle.spec_…` instead. 🔎 ❓

## Global and on-foot actions

- Global (not bound to a vehicle): `g_inputBinding:registerActionEvent(InputAction.X, target, cb, triggerUp, triggerDown, triggerAlways, startActive, callbackState, disableConflictingBindings)` → `valid, eventId, conflictingEvents`; remove with `g_inputBinding:removeActionEvent(id)`. Register only on clients (`g_dedicatedServer == nil`). 🔎 (interactiveControl, UniversalAutoload)
- **On foot:** wrap the registration in `g_inputBinding:beginActionEventsModification(PlayerInputComponent.INPUT_CONTEXT_NAME)` … `endActionEventsModification()` (e.g. inside a wrapped `PlayerInputComponent.registerActionEvents`). Registering without the wrapper produced duplicate binds. Alternative: append to `PlayerInputComponent.registerGlobalPlayerActionEvents`. Remove inside the same context. 🔎 (manualAttach, UsedPlus, PowerTools)
- **Short/long press on one key:** callback with `triggerUp` and `triggerDown`, measure time with `g_currentDt` while `inputValue == 1` (e.g. < 150 ms short, ≥ 350 ms long, fire on release). 🔎 (manualAttach)
- **Re-using a vanilla action:** `g_inputBinding.nameActions[InputAction.X]`, `g_inputBinding.actionEvents[action][1]`; swap its `callback`/`targetObject`. Only after `Player.onStartMission` – the events do not exist earlier. 🔎 (PowerTools)
- Raw key fallback while a GUI blocks input: mod listener `keyEvent(unicode, sym, modifier, isDown)`, `Input.isKeyPressed(key)`. 🔎 (PowerTools)
- Choose keys that do not collide with vanilla bindings (a mod's F12 clashed with refill and input dialogs); pass `disableConflictingBindings` and keep priorities low. 🔎 (PowerTools)

## Mouse and clicks on 3D points

- No raycast needed: project the node's world position with `project(x, y, z)` → `sx, sy, sz` (on screen if `sx, sy` in (−1, 2) and `sz <= 1`) and compare with `g_inputBinding:getMousePosition()`. 🔎 (interactiveControl)
- Indoor test: `g_soundManager:getIsIndoor()` or `vehicle:getActiveCamera().isInside`. 🔎
- Crosshair while the camera captures the mouse: `g_localPlayer.currentHandTool.spec_hands.crosshair:render()`. ❓ How the mouse position is read in that mode is unclear. 🔎 (interactiveControl)
- Mod listener `mouseEvent(posX, posY, isDown, isUp, button)` for editing in the shop. 🔎 (UniversalAutoload)

## Player (FS25)

- `g_localPlayer` with `rootNode`, `farmId`, `userId`, `isControlled`, `isOwner`, `hands`. 🔎 (manualAttach, PowerTools)
- `player:getCurrentVehicle()` replaces FS22's `g_currentMission.controlledVehicle`; `player:getIsInVehicle()`, `getAreHandsHoldingObject()`, `getIsHoldingHandTool()`, `getPosition()`, `getCurrentFacingDirection()`. 🔎
- Lifecycle: append `Player.load`, prepend `Player.delete`; act only if `g_localPlayer == player and player.isOwner`. 🔎 (manualAttach)
- Per-frame logic for the local player on foot: override `ActivatableObjectsSystem.updateObjects`. 🔎 (UniversalAutoload)
- **Player range trigger:** load a trigger i3d once, `clone()` it per local player, `link(player.rootNode, trigger)`, `addTrigger(node, "cb", self)`; resolve objects with `g_currentMission:getNodeObject(otherId)`. Recheck stale entries with `overlapBox(…, CollisionFlag.DYNAMIC_OBJECT + CollisionFlag.VEHICLE, …)`. 🔎 (manualAttach)
- Trigger callback `(triggerId, otherActorId, onEnter, onLeave, onStay, otherShapeId)`; player check `otherActorId == g_localPlayer.rootNode`; farm check `g_currentMission.accessHandler:canFarmAccess(farmId, object)`. 🔎 (interactiveControl, manualAttach)
- Context hint like the game's attach hint: `ContextActionDisplay.new()`, `setScale(…UI_SCALE…)`, `setContext(InputAction.X, ContextActionDisplay.CONTEXT_ICON.ATTACH, text, HUD.CONTEXT_PRIORITY.LOW, actionText)`, `update(dt)`, `draw()`. 🔎 (manualAttach)

## Attaching implements

All 🔎 (manualAttach) unless noted.
- Override points (`SpecializationUtil.registerOverwrittenFunction`): `getCanToggleAttach` (block attaching from the cab), `attachImplementFromInfo(superFunc, info)`, `loadAttacherJointFromXML` (read **own extra attributes** on vanilla joints after `superFunc`), `isDetachAllowed` → `(allowed, warning, showWarning)`, `getAllowsLowering` → `(bool, warning)`, `loadInputAttacherJoint`.
- Attach in code: `vehicle:attachImplement(implement, inputJointDescIndex, jointDescIndex, noEventSend, nil, startLowered)`, then `setJointMoveDown(jointDescIndex, true, false)`. Detach: `implement:startDetachProcess()` if present, else `attacherVehicle:detachImplementByObject(implement)`.
- Candidates: `g_currentMission.vehicleSystem.inputAttacherJoints` (flat list with `vehicle`, `jointType`, `jointIndex`, `translation`, `node`); `spec_attacherJoints.attacherJoints[i].jointTransform/.jointType`, `getIsInputAttacherActive`, `getActiveInputAttacherJointDescIndex()`. Joint types: `AttacherJoints.jointTypeNameToInt[name]` (nil for unknown mod types – guard).
- Queries: `getAttachedImplements()`, `getAttacherVehicle()`, `getImplementByObject(obj)`, `getAttacherJointDescFromObject`, `spec_attachable.detachingInProgress`.
- **PTO:** `attachPowerTakeOff(object, inputJointDescIndex, jointDescIndex)`, `detachPowerTakeOff(vehicle, implement)`, `getOutputPowerTakeOffs()`; vanilla defers mounting in `spec_powerTakeOffs.delayedPowerTakeOffsMountings`. Blocking work without PTO: override `getCanBeTurnedOn`, `getCanDischargeToObject`, `getCanDischargeToGround`.
- **Hoses:** override `connectHosesToAttacherVehicle(...)`; `getConnectionHosesByInputAttacherJoint(idx)`, `disconnectHose(hose)`, `updateAttachedConnectionHoses`. Without hoses the mod blocks `setLightsTypesMask`, `setBeaconLightsVisibility`, `setTurnLightState`, `getIsFoldAllowed`, `getIsMovingToolActive` … and brakes with `self:brake(1, true)` without an air hose.
- `getIsFoldMiddleAllowed` is false while hoses are detached – check `spec_foldable.foldMiddleAnimTime` for the capability instead.
- Before node math on a remembered vehicle: `not v.isDeleted and v.rootNode ~= nil and entityExists(v.rootNode)` – sold/reset vehicles crash otherwise.
