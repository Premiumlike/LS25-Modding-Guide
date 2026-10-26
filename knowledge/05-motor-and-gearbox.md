# 5. Motor, driving physics, gearbox

[← Overview](../README.md)

## Changing motor values

- **Change the motor XML before `loadMotor`:** `torqueScale` is baked into the torque curve while reading – changing it at runtime has no effect. Undo your changes after `loadMotor` (a change set), otherwise they add up, e.g. because the shop preview reloads on every click. ✅
- `.motor#maxForwardSpeed` is only a **cap** (`math.min` with the speed from the gearbox), not an accelerator. ✅
- **CVT:** speed ∝ 1 / `minForwardGearRatio` (km/h = maxRpm·π/30 / ratio · 3.6). 📖
- **Manual gearbox:** `transmission.forwardGear(n)#maxSpeed` or `#gearRatio`.
  - Do **not mix** min/max ratio and a gear list – with `minForwardGearRatio` the game ignores the gear list. ✅
  - `<transmission>` is often missing on later variants. Copy it **completely** from index 0 – a half copy prevents the built-in fallback ("Missing forward gear ratios"). ✅
- **Gear groups:** inverted internally (XML L 0.316 → internal 3.16). km/h = maxRpm·π/30 / (ratio·groupRatio) · 3.6. Smaller internal ratio = faster group. ✅
- After changing the top speed, the cruise control may need the new maximum: `spec_drivable.cruiseControl.maxSpeed / maxSpeedReverse / speed / speedSent`. 🔎 (AdjustSuite)
- **Base values:** `motor.maxForwardSpeedOrigin`, `maxBackwardSpeedOrigin`, `minForwardGearRatioOrigin`, `maxForwardGearRatioOrigin`, `minBackwardGearRatioOrigin`, `maxBackwardGearRatioOrigin` hold the load-time values – scale from them at runtime so changes do not compound. 🔎 (CVT Addon) ❓ They are captured when the motor is built, so an XML-level change before `loadMotor` becomes the new origin.
- **Units:** `maxForwardSpeed`, `motorLimitSpeed` m/s; `lowBrakeForceSpeedLimit` m/ms; `lastMotorRpm`, `minRpm`, `maxRpm` rpm; `rawLoadPercentage` / `smoothedLoadPercentage` 0–1 (raw can be negative under engine braking); `getSpeedLimit()` and `motor:setSpeedLimit()` km/h. 🔎 (CVT Addon, RealisticHarvesting)
- More motor fields seen: `motorAppliedTorque`, `motorExternalTorque` (PTO/external load; × rpm × π/30 = power), `motorRotationAccelerationLimit`, `accelerationLimit`, `lowBrakeForceScale` (engine-brake strength), `gearRatio` (current), `currentDirection` (±1), `lastAcceleratorPedal`, `lastPtoRpm`, `ptoMotorRpmRatio`, `peakMotorTorque`, `peakMotorPower`, `maxMotorPower`, `maxForwardRpm`, `maxBackwardRpm`, `groupType`, `gearType`, `forwardGears`, `lastManualShifterActive`; methods `getLastModulatedMotorRpm()`, `getMaxRpm()`, `getRotInertia()`/`setRotInertia()`, `setTargetRpm`, `setThrottle`, `getHp()`. 🔎 (CVT Addon, ExtendedVehicleMaintenance, RealisticHarvesting)
- **CVT detection:** `gearType == 1 and groupType == 1 and forwardGears == nil and not lastManualShifterActive`. 🔎 (CVT Addon)

## Mods that write motor fields every tick

- **CVT Addon** makes **no load-time motor changes** and never touches the torque curve, `#torqueScale` or `updateMotorProperties`. Instead, on CVT vehicles with its configuration installed, it rewrites in `onUpdateTick` (on server and clients): `maxForwardSpeed`/`maxBackwardSpeed` from the `*Origin` values × driving level (0.625–1.25), `motorLimitSpeed` (pedal mode), min/max gear ratios (reset to `*Origin`, ×1.6 in the field range), `gearRatio`, `lastMotorRpm` (own rpm-vs-load curve), the load values, `accelerationLimit`, `lowBrakeForceScale`, `motorAppliedTorque` (0 with the pedal released). 🔎 (CVT Addon)
  - ❓ Consequences: XML-level torque/top-speed/ratio changes stack with it (a raised top speed × its driving level 1.25); **runtime writes by other mods to these fields are overwritten** every tick – order against `VehicleMotor:update` decides. Back off runtime drivetrain features on such vehicles: `spec_CVTaddon` present, `CVTconfig ~= 8`, `isVarioTM`.
  - It also overrides `getRequiredMotorRpmRange` to return `(motor.minRpm, motor.maxRpm)` on CVT vehicles – that removes the vanilla PTO rpm window. 🔎
- ❓ Writing `lastMotorRpm` or `gearRatio` from `onUpdateTick` is fragile because `VehicleMotor:update` recomputes them; CVT Addon needs ~100 writes and server/client fudge factors. Prefer load-time XML changes and targeted function overrides.
- **Snapshot-and-restore:** ExtendedVehicleMaintenance caps `maxRpm`, `maxForwardSpeed`, `peakMotorPower` during failures (and `motor:setSpeedLimit(0.01)` for a stall) and later writes back the values it stored – changes other mods made in between are lost until reload ❓. 🔎 (ExtendedVehicleMaintenance)

## Torque at runtime

- Hook `VehicleMotor.getTorqueCurveValue` – the game itself subtracts damage there (`DAMAGE_TORQUE_REDUCTION`). 📖
- **The physics only receives the curve via `Motorized:updateMotorProperties`** → `setMotorProperties(… motor:getTorqueAndSpeedValues())`, which the game calls only on load and on a damage change > 5 %. If you change torque at runtime you must **call `updateMotorProperties` yourself** – otherwise it shows in displays but not while driving. ✅
- Other mods hook `VehicleMotor.getTorqueCurveValue` globally too (AdvancedDamageSystem: torque × max(1 + effect, 0.2), then `updateMotorProperties`) – factors of several mods **multiply**. 🔎 (AdvancedDamageSystem)
- PTO torque: `PowerConsumer.getTotalConsumedPtoTorque` recurses across implements – AdvancedDamageSystem hooks it with a call-depth counter and `pcall`. 🔎
- Less torque alone hardly slows a vehicle on the road – it keeps its speed. It becomes noticeable only with a pedal intervention. ✅

## Pedals

- Hook `WheelsUtil.getSmoothedAcceleratorAndBrakePedals`.
  - Before smoothing: hard values, e.g. engine off → throttle 0, brake ≥ x.
  - After smoothing: immediate effect, e.g. a misfire (throttle × 0 plus a light drag brake). ✅
- Without intervention a vehicle with a stopped engine rolls on almost unbraked – the coast brake is weak and there is no engine brake. ✅

## Engine state and data

- Prevent starting: override `getCanMotorRun`; stop: `stopMotor()`. ✅
  - **Many mods override `getCanMotorRun`** (AutoDrive, Courseplay, UsedPlus as a stall/governor) – always call `superFunc` when you do not block. 🔎 (AutoDrive, Courseplay, UsedPlus)
  - AutoDrive restarts the motor only if `getCanMotorRun()` allows; Courseplay's fuel-save controller calls `startMotor()` without asking ❓ – see [8](08-helpers-ai.md). 🔎
  - A message for the blocked start: overwrite `getMotorNotAllowedWarning` together with `getCanMotorRun`. 🔎 (ExtendedVehicleMaintenance) Start interlocks seen: CVT Addon (clutch, hand throttle, pre-glow; skipped while Courseplay is active), AdvancedDamageSystem (`startMotor` overridden, starter must be **held**: own events on `InputAction.TOGGLE_MOTOR_STATE` / `MOTOR_STATE_ON` with triggerUp/Down). ExtendedVehicleMaintenance replaces `vehicle.startMotor` **per instance** – that bypasses the override chain. 🔎
  - Additional Game Settings' "easy motor start" (`Drivable.actionEventAccelerate` override) asks `getCanMotorRun` – block there and it is respected. 🔎 ❓ (AdditionalGameSettings)
- Motor temperature: `spec_motorized.motorTemperature.value` (°C) is what HUD and game read. AdvancedDamageSystem overrides `updateMotorTemperature` and owns the value; CVT Addon changes `heatingPerMS`, `coolingPerMS`, `coolingByWindPerMS`, `valueMin` and `motorFan.enabled`. A temperature display shows whatever these mods compute. 🔎
- `getMotorState()` / `MotorState.OFF`, `spec_motorized.stopMotorOnLeave`, `g_currentMission.missionInfo.automaticMotorStartEnabled`, `motor:setGearShiftMode(VehicleMotor.SHIFT_MODE_AUTOMATIC)`, `spec_motorized.gearShiftMode`. 🔎 (AutoDrive, Courseplay)
- `spec_motorized.smoothedLoadPercentage` (load 0–1, freezes when the engine is off), `motor:getLastRealMotorRpm()`, `motor.minRpm/maxRpm`, `motor:getMaximumForwardSpeed()` (m/s).
- More values (RPM, temperature, fuel usage – partly server-only) in [15](15-dashboards-and-vehicle-data.md).

## Driving and braking from code

All 🔎 (AutoDrive, Courseplay, EnhancedVehicle) – not tested by us.
- Low level: `vehicle:updateVehiclePhysics(axisForward, axisSide, doHandbrake, dt)`; a tiny positive acceleration plus handbrake holds the vehicle. `WheelsUtil.updateWheelsPhysics(vehicle, 0, 0, 0, true, true)` hard-stops on the server.
- `vehicle:brake(1)`, `stopVehicle()`, `setCruiseControlState(Drivable.CRUISECONTROL_STATE_OFF, true)`.
- Brake to standstill like the player: set `spec_drivable.lastInputValues.targetSpeed` (small value) and `targetDirection` until `getLastSpeed() < 1`, then reset both to nil. 🔎 (Courseplay)
- `forceIsActive = true` keeps an unentered vehicle updating; `vehicle:raiseActive()` does it for one frame. 🔎 (AutoDrive, interactiveControl)
- **Parking brake:** override `WheelsUtil.updateWheelsPhysics` (acceleration 0, handbrake, brake lights via `setBrakeLightsVisibility`) **and** `WheelsUtil.getSmoothedAcceleratorAndBrakePedals` (needed for manual transmission). Only while `getIsVehicleControlledByPlayer()`. 🔎 (EnhancedVehicle)
- **Speed limit in two layers:** (1) override `getSpeedLimit(superFunc, onlyIfWorking)` → `limit, doCheckSpeedLimit` in km/h, always capped by the super value; (2) because Courseplay and cruise control can bypass it, also `motor:setSpeedLimit(kmh)` on the motorized root – only on a change ≥ 0.05, release with `math.huge`. 🔎 (RealisticHarvesting) Calling `vehicle:getSpeedLimit(true)` on a vehicle whose own override calls it recurses. 🔎
- Reversing, robustly: `getIsDrivingBackward()`, `getDrivingDirection() < 0`, `movingDirection < 0`, `motor.currentDirection < 0`, also on the root vehicle. Cruise control: `getCruiseControlSpeed()`, `getCruiseControlState()` (0 = off), `setCruiseControlMaxSpeed`. 🔎 (RealisticHarvesting)
- `Drivable.updateVehiclePhysics(axisForward, axisSide, doHandbrake, dt)` is the earliest place to scale throttle/steering (AdvancedDamageSystem: hesitation, limp mode, steering bias). Two mods doing pedal effects there and in `WheelsUtil.getSmoothedAcceleratorAndBrakePedals` stack. 🔎 (AdvancedDamageSystem) ❓
- Steering takeover without AI: override `getIsVehicleControlledByPlayer` → false while active, write `vehicle.rotatedTime` (between `minRotTime`/`maxRotTime`, rate `getAISteeringSpeed()`), cap with `getMotor():setSpeedLimit(v)`, drive via `WheelsUtil.updateWheelsPhysics(...)`; read the player's axes by overriding `Drivable.actionEventAccelerate/Brake/Steer`. 🔎 ❓ (guidanceSteering, FS22 code)
- Own steering: override `Drivable.updateVehiclePhysics` and replace `axisSide`; or override `setSteeringInput` in a specialization. Keep the original in a `pcall` so driving survives an error in your code. 🔎 (EnhancedVehicle, UsedPlus)

## Automatic gearbox (`VehicleMotor:updateGear`)

- `getUseAutomaticGearShifting()` is true with the automatic setting or if the vehicle has no manual gears. **Helpers always shift automatically:** `Motorized:onAIJobStarted` sets `SHIFT_MODE_AUTOMATIC`, `onAIJobFinished` resets it. 📖
- The shift mode is a **setting of the driver**. In multiplayer the game sends it to the server (`VehicleSettingsChangeEvent`), where gear selection runs.
- **Gear choice:** `findGearChangeTargetGearPrediction(curGear, gears, gearSign, gearChangeTimer, acceleratorPedal, dt)` estimates the speed **after the shift pause** including the downhill force. That is why the game holds a gear uphill under load deep into low rpm and then drops several gears at once (seen: tractor with 36 t, gear 7 from 44 to 19 km/h, then 7→5→3→1). The current gear is preferred; no downshift within 3 s after an upshift (`allowGearChangeTimer`). ✅
- **Prediction timing and shift lock details:** in driving, `findGearChangeTargetGearPrediction` is called **every frame** while `autoGearChangeTimer` ≤ 0 – hooks there must not log per frame. The 3 s lock only applies with throttle in driving direction and only against the direction of the last shift; a mod that wants to downshift right away can set `motor.allowGearChangeTimer = 0`. With `gearChangeTime` 0 the new gear is applied **immediately** (`applyTargetGear` in the same call, `motor.gear` never becomes 0), so checks that wait for the neutral phase (`gear == 0`) miss those shifts; correct the prediction result instead. 📖 (`VehicleMotor:updateGear`)
- On a **group change** the game does **not** check the rpm at the current speed – it takes the same gear in the new group and stalls the engine. ✅
- **Intervention points:** `updateGear` (correct group/gear afterwards), `applyTargetGear` (prepended, just before engaging), `findGearChangeTargetGearPrediction` (adjust the result). After changing `targetGear` yourself, raise `onGearChanged` again so the lever animation and display match. Do not change the shift pause (`gearChangeTime`) – it belongs to the vehicle.
- More gearbox hooks seen: `VehicleMotor.getMinMaxGearRatio`, `shiftGear(up)`, `selectGear(gearIndex, activation)`, `applyTargetGear`, `updateGear(acc, brake, dt)`. 🔎 (AdvancedDamageSystem) CVT Addon is mostly inactive on geared vehicles ❓.
- In the low field group the automatic skips gears (e.g. L5 → L7) – that is vanilla behaviour.

## Engine sound volume

- Engine samples live in `vehicle.spec_motorized.motorSamples` (7–8 entries on base game tractors), each with `indoorAttributes.volume` / `outdoorAttributes.volume`, `soundSample` (engine handle) and the usual SoundManager modifiers. ✅
- The loud loops already have a base volume of **1.0** (seen: 0.10–1.00). Raising the base value (×1.25, ×2.0) was **not audible** in game. ✅
- What works: overwrite `SoundManager.getModifierFactor(sample, modifierName)` and multiply the result for `modifierName == "volume"` on your own samples (mark them with a field on the sample table). The engine then really plays louder: `getSampleVolume(sample.soundSample)` went from ~1.0 to ~2.0 outdoors and ~0.7 to ~1.4 indoors with factor 2, so values above 1 are accepted. ✅ (technique 🔎 Interactive Control)
- SoundManager functions available for volume work (FS25 1.24): `getCurrentFadeFactor`, `getCurrentSampleVolume`, `getCurrentSampleLowpassGain`, `getCurrentSamplePitch`, `getModifierFactor`, `getSampleModifierValue`, `getSampleVolumeScale`, `setSampleVolumeScale`, `setSampleVolumeOffset`, `setSampleLowpassGainOffset`, `setCurrentSampleAttributes`, `updateSampleModifiers`. Engine globals `getSampleVolume`, `setSampleVolume`, `isSamplePlaying` exist. ✅ (listed at runtime)
- `g_soundManager:getIsIndoor()` tells whether the indoor attributes are in use. ✅
- **Engine off:** `spec_motorized.smoothedLoadPercentage` and `lastFuelUsage` are not updated while the motor is off (e.g. after a breakdown, `getIsMotorStarted()` false) – they keep their last value (seen: 96 % load / 95 l/h at 0 km/h). Set displayed values to 0 yourself. ✅

## Sound layers: structure and meaning

Read from the base game Fiat 180-90 sound XML and all 73 sound XMLs of More Motor Sounds 2.0 (October 2026), runtime fields confirmed in game with a debug log.

- A vehicle's sound XML (`vehicle.base.sounds#filename`, optional `#volumeFactor`) has a block `motorized.sounds` with several `<motor>` layers, several `<gearbox>` layers, optionally `<blowOffValve>`, plus `retarder`, `brake`, `airCompressorRun/Stop`, `compressedAir`, `gearLeverStart/End`, `gearGroupLeverStart/End`, `reverseDrive`. Each layer has `file` (.gls/.ogg/.wav) **or** `template`, `volumeScale`, `pitchScale`, `linkNode`/`linkNodeOffset`, and children `<volume indoor outdoor>` with `<modifier type value modifiedValue>`, `<pitch>`, `<lowpassGain>`, `<loopSynthesisRpm>`/`<loopSynthesisLoad>`. ✅ (files)
- **`<motor>` does not mean "engine".** The Fiat 180-90 has 7 `<motor>` layers: engine, a turbo (`$data/vehicles/volvo/vnx300/sounds/turbo_loop.gls`, `volumeScale` 0.2), two transmission whines (`template="transmissionModern_04"`), a fan and two cabin rumbles (`indoorCabinRumble`). Scaling all `motorSamples` also scales transmission, fan and cabin. ✅
- **A turbo is just another layer**, not a sound type. It can sit under `<motor>` (Fiat) or `<gearbox>` (More Motor Sounds). Only its name tells you. Not every vehicle has one. ✅
- **More Motor Sounds uses `<gearbox>` as a catch-all:** on the MB-trac 1800 21 layers, 14 under `<gearbox>` – exhaust under load (`*_Load_exh`), a second engine layer, retarder (`*_ret_exh`), turbo, transmission, and six `FD_Extra` layers. "Came from `<gearbox>`" therefore does not mean "transmission". ✅
- **Blow-off valve** is a real type (`<blowOffValve>`); the game drives it with the modifier `BLOW_OFF_VALVE_STATE` (0..1). More Motor Sounds also gates it with `ACCELERATE`/`CRUISECONTROL` = 0 (only when lifting off the throttle). The base game Fiat has none. ✅ (files)
- Modifier types used in More Motor Sounds (by frequency): `MOTOR_LOAD`, `SPEED`, `SUSPENSION`, `MOTOR_RPM`, `DIFFERENTIAL_SPEED`, `DRIVING_DIRECTION`, `DECELERATE`, `ACCELERATE`, `CRUISECONTROL`, `BLOW_OFF_VALVE_STATE`, `MOTOR_RPM_REAL`. ✅
- **Reusing game sounds without copying:** vehicles reference sounds of other vehicles via `$data/...` (the Fiat uses the Volvo truck's turbo). A mod can do the same instead of shipping copies. ✅ (file)

### Runtime fields

- `vehicle.spec_motorized.motorSamples`, `.gearboxSamples` (arrays) and `.samples` (table, e.g. `samples.blowOffValve`). ✅
- **No separate start sound in FS25 (Martin's log 26.10.2026, MB-trac 1500 with MMS):** `spec_motorized.samples` has no `motorStart` (present e.g. `airCompressorRun`, `airCompressorStop`, `blowOffValve`, `brake`, `gearGroupLeverStart`, `gearLeverEnd`, `retarder`). ✅ Start/run/stop live in the GLS engine file (`<motor file="….gls">`, runtime `isGlsFile`); the start length is `motorStartDuration` (ms) in the vehicle XML (MF 7S: 3400). ✅ (file) Whether `g_soundManager:playSample` on a GLS engine layer with the motor off plays the start part is ❓.
- **`getMotorNotAllowedWarning` is not a start-attempt signal (Martin's logs 26.10.2026, VEC v0.78.2–0.78.4):** the game polls it continuously while you sit in a vehicle whose motor may not run – even without any key/throttle input; the polling only stops when you leave. ✅ To detect "player tries to start" use the input itself: automatic motor start (`g_currentMission.missionInfo.automaticMotorStartEnabled`) → holding throttle/brake (`spec_drivable.axisForward`, −1..1, next to `axisForwardSend`, `axisSide`, `axisSideLast`, `axisSideSend` ✅ Martin's log 26.10.), manual start → motor key (`Motorized.actionEventToggleMotorState` – exists and can be wrapped ✅).
- Per sample: `filename` (base game e.g. `data/vehicles/fiat/series90/sounds/fiatagri90.gls`, mods/DLC with the full path), `templateName` (e.g. `engineMediumVintage`, `transmissionModern_04`, `indoorCabinRumble`, `cabinTractor_01`, `blowOffValve`), `sampleName` (`motor(0)`, `gearbox(1)`), `volumeScale`, `soundSample` (engine handle), `linkNode`, `isGlsFile`, `isLocalSound`, `innerRadius`/`outerRadius`, `indoorAttributes`/`outdoorAttributes`. A template resolves `filename` to the base game file (`data/sounds/vehicles/transmission/transmissionmodern_04.gls`). ✅

### Telling layers apart (rule that matches all of More Motor Sounds 2.0)

Use only the **file name without folders** plus `templateName`. Folders mislead (More Motor Sounds keeps almost everything in `FD_extras/…`), and `sampleName` ("gearbox(1)") says nothing. Order that classified all 215 engine/transmission/blow-off layers of More Motor Sounds 2.0, the base game Fiat 180-90 and the DLC MB-trac 1800 correctly: ✅ (offline check against the files + in-game log)
1. blow-off: from `samples.blowOffValve` or "blowoff" in the name
2. turbo: "turbo"
3. fan: "fan", "luefter", "kuehl", "cooling"
4. cabin: "cabin", "rumble" – **not** for `<gearbox>` layers (the Fiat's `<gearbox file="cabin.gls">` is the transmission heard in the cab)
5. leave alone: "retarder", "_ret", "ret_", "extra", "reifen", "tire", "rattle", "brake", "trailer", "mtb"
6. engine: "eng", "exh", "auspuff", "_int", "_ext", "motor"
7. transmission: "getriebe", "gtr", "gearbox", "transmission", "cvt", "cvx", "vario", "tms"
8. "load" → engine
9. otherwise by origin: `<gearbox>` → transmission, `<motor>` → engine

Per-layer volume works with the `getModifierFactor` hook above (mark each sample with its own factor). ✅ (VEC v0.76.1)

### How More Motor Sounds swaps the sound

Own shop configuration `moreMotorSounds`; in `onPreLoad` it points `self.externalSoundsFilename` / `self.externalSoundsFile` to its own sound XML and calls `Motorized.loadSounds` with `self.baseDirectory` set to the mod folder (relative paths inside the mod). It replaces the whole sound file, it does not touch single layers. 🔎 (read, not copied)

## Copying a transmission into a motor variant
- If a motor configuration has no own `<transmission>`, the game uses the one of index 0. If you copy it into the variant (e.g. to change one gear group), **copy the direction change too** (`transmission.directionChange#useGroup`/`#reverseGroupIndex`, `#useGear`/`#reverseGearIndex` – ✅ copying these keys was enough, the direction change was correct after loading). Without it the motor falls back to `directionChangeUseInverse`; with a reverse **group** (negative `ratio`, e.g. MB-trac 1100 "H R") the automatic then toggles between the reverse group and the road group and the tractor creeps forward when reversing. ✅ (VEC log, game update Oct 2026)
- Safe fix after `loadMotor`: find the group with a negative ratio and call `motor:setDirectionChange(false, gearIndex, true, groupIndex, changeTime)`. Runtime fields: `directionChangeUseGroup`, `directionChangeGroupIndex`, `directionChangeUseGear`, `directionChangeGearIndex`, `directionChangeUseInverse`, `directionChangeTime`. 📖
- When hooking game functions, pass **all** return values through (`{ n = select("#", ...), ... }` + `unpack(t, 1, t.n)`); updates may add return values.
