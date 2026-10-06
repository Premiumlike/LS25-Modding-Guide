# 8. Helpers (AI workers), AutoDrive, Courseplay

[← Overview](../README.md)

## Basics

- `vehicle:getIsAIActive()`. **Careful:** AutoDrive makes this true as well, without an AI job (see below). 🔎 (AutoDrive)
- `vehicle:stopCurrentAIJob(AIMessageErrorVehicleBroken.new())` stops with the game message "vehicle broken". `stopCurrentAIJob(nil)` stops **without** a message – useful when you show your own message. ✅
- Job of a vehicle: `vehicle:getJob()` (nil without a job), `vehicle:getLastJob()`, `job:isa(AIJobFieldWork)`; running jobs: `g_currentMission.aiSystem.activeJobVehicles`. 🔎 (AutoDrive, Courseplay)
- Helpers set the shift mode to automatic (see [5](05-motor-and-gearbox.md)).
- While a helper drives, the player does not see that vehicle's HUD. Communicate important states with notifications (top right, see [7](07-hud-and-display.md)). In multiplayer, send them to the players of the owning farm (`vehicle:getOwnerFarmId()`, player farm `g_currentMission:getFarmId()`).
- Implements have a fixed pulling force (`PowerConsumer#maxForce`). The "required hp" in the shop is display only – ploughs often do not reach 90 % engine load. ✅
- **Did-not-move timer:** a stalled game/Courseplay field worker is stopped by the game after a few seconds with `AIMessageErrorBlockedByObject` (`spec_aiFieldWorker.didNotMoveTimer`). If you stop a helper yourself (e.g. engine failure), do it first so the right message is shown. 🔎 (Courseplay)
- Starting a job in code: `g_currentMission.aiJobTypeManager:createJob(AIJobType.FIELDWORK)`, `job:applyCurrentState(vehicle, g_currentMission, farmId, isDirectStart)`, `job:setValues()`, `job:validate()`, then `g_currentMission.aiSystem:startJob(job, farmId)` (server) or `AIJobStartRequestEvent.new(job, farmId)` to the server (client). 🔎 (AutoDrive, Courseplay)
- Own job types: `aiJobTypeManager:registerJobType(name, title, class)` with a subclass of `AIJob`. 🔎 (Courseplay)
- Helper pool: `g_helperManager:getRandomHelper()`, `useHelper`, `releaseHelper`, `getHelperByIndex`. 🔎 (AutoDrive)
- Keep the game from resuming a helper after loading a savegame: Courseplay forces `#isActive=false` in an `AIFieldWorker.saveToXMLFile` override. 🔎 (Courseplay)
- Running jobs: `g_currentMission.aiSystem:getActiveJobs()`; per job `job.isRunning` (not `isActive`), `job.startedFarmId`, `job.vehicleParameter:getVehicle()`, `job:getHelperName()`. 🔎 (WorkerCosts)
- **Job messages (server only):** `MessageType.AI_JOB_STARTED` (job, startFarmId) and `MessageType.AI_JOB_STOPPED` (job, aiMessage). Stop reason: `aiMessage:getType() == AIMessageType.ERROR` (also `OK`, `INFO`), `aiMessage:isa(AIMessageSuccessStoppedByUser)`. A helper-cost mod records an `ERROR`-type stop as "failed", others as "stopped by user" – give an own stop message the error type ❓. 🔎 (WorkerCosts)
- **Vanilla wages** (as the WorkerCosts authors read it from the game source, unverified by us ❓): `AIJob:updateCost()` collects `pendingCost` and books it above ~25 with `addMoney(-cost, startedFarmId, MoneyType.AI, true)`; `AIJob:stop()` books the rest. WorkerCosts replaces `g_currentMission.addMoney` on every peer to drop these and books its own wages as `MoneyType.OTHER` at the day change – see [4](04-configurations-and-shop.md) for chaining. It never stops jobs. 🔎 (WorkerCosts)
- Driving helpers: `AIVehicleUtil.driveInDirection(...)` and `AIVehicleUtil.driveToPoint(vehicle, dt, acc, allowedToDrive, moveForwards, lx, lz, maxSpeed)`, target from `worldToLocal(vehicle:getAISteeringNode(), …)`. 🔎 (AutoDrive, Courseplay)

## Own AI message

The cleanest way to stop any job with your own text in the game's helper notification. 🔎 (Courseplay)
1. Subclass `AIMessage` with a unique `name` and a `getI18NText()` that returns `g_i18n:getText(key)` (key must be in the global `g_i18n`, see [2](02-mod-skeleton.md)).
2. Register it in `loadMap`: `g_currentMission.aiMessageManager:registerMessage(name, class)`.
3. Stop with `vehicle:stopCurrentAIJob(MyMessage.new())`.
- **Multiplayer:** the game failed to find mod message classes (and mod job types) by class. Courseplay overrides `AIMessageManager.getMessageIndex` and `AIJobTypeManager.getJobTypeIndex` to fall back to the lookup by `name` (`nameToIndex[obj.name]`). Give every class a `.name` and register it by name. 🔎 (Courseplay)
- Unknown messages trigger **no** Courseplay/AutoDrive follow-up – that is the point (see table below). 🔎 (Courseplay)

## AutoDrive (AD)

- **No AI job.** AD is a vehicle specialization (state in `vehicle.ad`, modules `stateModule`, `taskModule`, `drivePathModule` …) on every type with `AIVehicle + Motorized + Drivable + Enterable`. It drives on the server. 🔎 (AutoDrive)
- **`getIsAIActive()` is true while AD drives** (AD overrides it), but `getJob()` is nil and the vehicle is not in `activeJobVehicles`. **So `stopCurrentAIJob` does not stop AD.** ❓ Guard `stopCurrentAIJob` with `vehicle.getJob ~= nil and vehicle:getJob() ~= nil`. 🔎 (AutoDrive)
- AD also overrides `getIsVehicleControlledByPlayer` (false while active), `getActiveFarm`, `setBroken`, `getCanMotorRun`. 🔎
- **Detect:** `vehicle.ad ~= nil and vehicle.ad.stateModule ~= nil and vehicle.ad.stateModule:isActive()` on the root vehicle. The flag is synced, so it also works on clients. "AI active but no job" → AD or another non-job driver ❓. 🔎 (AutoDrive)
- **Stop cleanly (server only):** set `vehicle.ad.isStoppingWithError = true`, call `vehicle.ad.stateModule:setStartHelper(false)`, then `vehicle:stopAutoDrive()`. 🔎 (AutoDrive)
  - The error flag prevents the hand-over to Courseplay / game AI, clears refuel/repair routes and, if nobody sits in the vehicle, turns lights and motor off.
  - `stopAutoDrive` on a client only logs a dev error. From a client, AD's own path is its input event with `input_start_stop` – it **toggles**, so only send it while AD is active.
  - Gentler: AD's `StopAndDisableADTask` brakes to standstill first.
  - AD broadcasts its stop; the vehicle events `onStartAutoDrive` / `onStopAutoDrive(isPassingToCP, isStartingAIVE)` run on all machines. **Listen to `onStartAutoDrive`** to stop AD again at once if the vehicle must not drive.
- AD stops itself on the vehicle event `onSetBroken`. ❓ A failure that goes through `setBroken` stops AD automatically (without your message). 🔎 (AutoDrive)
- **Dead motor:** AD restarts the motor itself whenever `getCanMotorRun()` allows – so a `getCanMotorRun` override does block it. But AD keeps steering; after 8 s without progress it reports "got stuck", stops and restarts – **in a loop**, a message every ~8 s, no Lua error. **Stop AD explicitly** (above); do not rely on the motor block alone. 🔎 (AutoDrive)
- **AD may take over after a game helper ends:** it listens to `onAIJobFinished` (except Courseplay jobs) and restarts if its "start helper" option was on, or drives to the park position (`enableParkAtJobFinished`, default off). After your own `stopCurrentAIJob`, re-check `ad.stateModule:isActive()` on the next updates and stop AD if needed. 🔎 (AutoDrive)
- Defaults: `autoRefuel` and `autoRepair` (drives to a workshop when an implement's `spec_wearable.damage > 0.6`) are on. 🔎 (AutoDrive)
- AD refuses to start while the vehicle has an AI job. 🔎
- Public API (global `AutoDrive`): `AutoDrive:StartDriving(vehicle, destId, unloadId, …)`, `AutoDrive:GetAvailableDestinations()`, `AutoDrive:HoldDriving(vehicle)`, `AutoDrive:getIsCPActive(vehicle)`; vehicle functions `startAutoDrive`, `stopAutoDrive`, `getCanAdTakeControl`. AD messages: `AutoDriveMessageEvent.sendMessageOrNotification(...)` with `$l10n_KEY;` tokens (key in global `g_i18n`). 🔎
- AD loads its classes later than many mods. Retry your hook in `update` until the class exists (e.g. `ADTrailerModule`) and give up after a number of attempts. 🔎 (AdjustSuite)

## Courseplay (CP)

- **Real AI jobs** (`CpAIJob` subclasses of `AIJob`, e.g. `FIELDWORK_CP`). `getIsAIActive()` is true; `getJob()` is set. 🔎 (Courseplay)
- **Detect:** `vehicle.getIsCpActive ~= nil and vehicle:getIsCpActive()` on the root vehicle. More: `getIsCpFieldWorkActive`, `getIsCpDriveToFieldWorkActive`, `getIsCpCombineUnloaderActive`, `getCpDriveStrategy()`; mod marker `g_modManager.CP_MOD_NAME`. 🔎
- **Stop:** `vehicle:stopCurrentAIJob(message)` – CP overrides it. `stopCurrentAIJob(nil)` works (CP logs "no stop message was given"). With a message CP may **refuse**: `AIMessageErrorBlockedByObject` while its own max speed < 1, and `AIMessageErrorOutOfFill` when refilling on the field is allowed. 🔎 (Courseplay)
- `vehicle:cpStartStopDriver()` toggles (client side, stops with `AIMessageSuccessStoppedByUser`). 🔎
- CP overrides `getCanMotorRun` (false in its fuel-save mode, else `superFunc`). Its motor controller restarts the motor with `startMotor()` **without** asking `getCanMotorRun` ❓ – block the motor **and** stop the job. 🔎 (Courseplay)
- CP stops jobs itself on low fuel (`AIMessageErrorOutOfFuel`) and high damage (`AIMessageErrorVehicleBroken`). 🔎
- Vehicle events for other mods: `onCpFinished`, `onCpEmpty`, `onCpFull`, `onCpFuelEmpty`, `onCpBroken`, `onCpADStartedByPlayer`, `onCpADRestarted`. 🔎
- **Courseplay** reads working widths itself; if you change widths at runtime, Courseplay has to be updated, too. 🔎 (AdjustSuite)

## Detecting who drives (all helper kinds)

🔎 (SimpleInspector, RealisticHarvesting) – status priority used by SimpleInspector: controlled by a player > helper > motor running > off.
- Player: `getIsControlled()`, name in MP `vehicle:getControllerName()`.
- Any helper: `getIsAIActive()` (FarmTablet calls `getAIIsActive` inside `pcall` – ❓ one of the two may not exist, nil-check). Game helper turning: `getAIFieldWorkerIsTurning()` on the root vehicle.
- AutoDrive: `vehicle.ad.stateModule:isActive()`, `getRemainingDriveTime()` (s).
- Courseplay: `vehicle:getCpStatus()` → `getIsActive()`, `getWaypointText()`, `getTimeRemainingText()`; or `rootVehicle:getIsCpActive()`.
- ❓ On clients these values exist only as far as AD/CP sync them.

## Other mods and helpers

🔎 – details per mod in [12](12-learned-from-other-mods.md).
- AdvancedDamageSystem makes helpers immune to its hard-start effect and stops them on critical breakdowns; check `getIsAIActive()` before blocking a start yourself.
- CVT Addon skips its start interlock while Courseplay is active; RealisticHarvesting limits combine speed via `motor:setSpeedLimit` so Courseplay and cruise control obey it ([5](05-motor-and-gearbox.md)).
- guidanceSteering blocks helpers while it steers by overriding `getCanStartAIVehicle` / `getShowAIToggleActionEvent`, and does not steer while `getIsAIActive()`. 🔎 ❓ (guidanceSteering, FS22 code)

## Stop message → follow-up by CP and AD

🔎 (Courseplay, AutoDrive)

| Message | CP raises | AD then |
|---|---|---|
| `AIMessageErrorOutOfFuel` | `onCpFuelEmpty` | drives to refuel |
| `AIMessageErrorVehicleBroken` | `onCpBroken` | drives to a workshop (`autoRepair`) |
| `AIMessageErrorOutOfFill` / `AIMessageErrorIsFull` | `onCpEmpty` / `onCpFull` | – |
| `AIMessageSuccessFinishedJob` | `onCpFinished` | may park |
| own `AIMessage` subclass | nothing | nothing |

**Recipe – a mod that stops helpers on engine failure** (❓, assembled from the points above): block `getCanMotorRun` (and call `superFunc` when not blocking – AD, CP and others chain on it), stop a job with an **own** message (not OutOfFuel/VehicleBroken, otherwise AD drives the dead vehicle), stop AD separately with `isStoppingWithError`, and re-check AD for a few updates.
