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

## Torque at runtime

- Hook `VehicleMotor.getTorqueCurveValue` – the game itself subtracts damage there (`DAMAGE_TORQUE_REDUCTION`). 📖
- **The physics only receives the curve via `Motorized:updateMotorProperties`** → `setMotorProperties(… motor:getTorqueAndSpeedValues())`, which the game calls only on load and on a damage change > 5 %. If you change torque at runtime you must **call `updateMotorProperties` yourself** – otherwise it shows in displays but not while driving. ✅
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
- Own steering: override `Drivable.updateVehiclePhysics` and replace `axisSide`; or override `setSteeringInput` in a specialization. Keep the original in a `pcall` so driving survives an error in your code. 🔎 (EnhancedVehicle, UsedPlus)

## Automatic gearbox (`VehicleMotor:updateGear`)

- `getUseAutomaticGearShifting()` is true with the automatic setting or if the vehicle has no manual gears. **Helpers always shift automatically:** `Motorized:onAIJobStarted` sets `SHIFT_MODE_AUTOMATIC`, `onAIJobFinished` resets it. 📖
- The shift mode is a **setting of the driver**. In multiplayer the game sends it to the server (`VehicleSettingsChangeEvent`), where gear selection runs.
- **Gear choice:** `findGearChangeTargetGearPrediction(curGear, gears, gearSign, gearChangeTimer, acceleratorPedal, dt)` estimates the speed **after the shift pause** including the downhill force. That is why the game holds a gear uphill under load deep into low rpm and then drops several gears at once (seen: tractor with 36 t, gear 7 from 44 to 19 km/h, then 7→5→3→1). The current gear is preferred; no downshift within 3 s after an upshift (`allowGearChangeTimer`). ✅
- On a **group change** the game does **not** check the rpm at the current speed – it takes the same gear in the new group and stalls the engine. ✅
- **Intervention points:** `updateGear` (correct group/gear afterwards), `applyTargetGear` (prepended, just before engaging), `findGearChangeTargetGearPrediction` (adjust the result). After changing `targetGear` yourself, raise `onGearChanged` again so the lever animation and display match. Do not change the shift pause (`gearChangeTime`) – it belongs to the vehicle.
- In the low field group the automatic skips gears (e.g. L5 → L7) – that is vanilla behaviour.
