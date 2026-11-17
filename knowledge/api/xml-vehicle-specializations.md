# XML keys – vehicle-specializations

Source: `github.com/MyGameSteamOfficial/fs25-lua-api` (commit 9478ee9, 2025-02-26 – older than the current patch). Extracted automatically: names, XML keys, types, defaults only – no code. Status 📖 (read from source, not verified in game).

## vehicles/specializations/AIAutomaticSteering.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.ai.automaticSteering#lookAheadDistance` | FLOAT | `"half of the vehicle length"` |
| `vehicles.vehicle(?).aiAutomaticSteering#isOnField` | BOOL |  |
| `vehicles.vehicle(?).aiAutomaticSteering#courseWasActive` | BOOL |  |

## vehicles/specializations/AIConveyorBelt.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.ai.conveyorBelt#minAngle` | FLOAT | `5` |
| `vehicle.ai.conveyorBelt#maxAngle` | FLOAT | `45` |
| `vehicle.ai.conveyorBelt#stepSize` | FLOAT | `5` |
| `vehicle.ai.conveyorBelt#speed` | FLOAT | `1` |
| `vehicle.ai.conveyorBelt#direction` | INT | `-1` |
| `vehicles.vehicle(?).aiConveyorBelt#currentAngle` | FLOAT | `45` |

## vehicles/specializations/AIDrivable.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>#width` | FLOAT |  |
| `<basePath>#length` | FLOAT |  |
| `<basePath>#lengthOffset` | FLOAT |  |
| `<basePath>#height` | FLOAT |  |
| `<basePath>#frontOffset` | FLOAT |  |
| `<basePath>#frontWheelIndices` | VECTOR_N |  |
| `<basePath>#frontWheelNodes` | NODE_INDICES |  |
| `<basePath>#maxBrakeAcceleration` | FLOAT |  |
| `<basePath>#maxCentripetalAcceleration` | FLOAT |  |
| `<basePath>#maxTurningRadius` | FLOAT |  |

## vehicles/specializations/AIImplement.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>.minTurningRadius#value` | FLOAT |  |
| `<basePath>.needsLowering#value` | BOOL | `true` |
| `<basePath>.needsLowering#lowerIfAnyIsLowered` | BOOL | `false` |
| `<basePath>.needsRootAlignment#value` | BOOL | `true` |
| `<basePath>.allowTurnBackward#value` | BOOL | `true` |
| `<basePath>.allowTurnBackward#straighteningSegmentLength` | FLOAT |  |
| `<basePath>.allowTurnBackward#straighteningAlwaysActive` | BOOL | `false` |
| `<basePath>.blockTurnBackward#value` | BOOL | `false` |
| `<basePath>.isVineyardTool#value` | BOOL | `false` |
| `<basePath>.isVineyardTool#betweenRows` | BOOL | `false` |
| `<basePath>.toolReverserDirectionNode#node` | NODE_INDEX |  |
| `<basePath>.turningRadiusLimitation#rotationJointNode` | NODE_INDEX |  |
| `<basePath>.turningRadiusLimitation#wheelIndices` | VECTOR_N |  |
| `<basePath>.turningRadiusLimitation#radius` | FLOAT |  |
| `<basePath>.turningRadiusLimitation#initialTurnRadiusFactor` | FLOAT | `1` |
| `<basePath>.turningRadiusLimitation#rotLimitFactor` | FLOAT | `1` |
| `<basePath>.lookAheadSize#value` | FLOAT | `2` |
| `<basePath>.useAttributesOfAttachedImplement#value` | BOOL | `false` |
| `<basePath>.hasNoFullCoverageArea#value` | BOOL | `false` |
| `<basePath>.hasNoFullCoverageArea#offset` | FLOAT | `0` |
| `<basePath>.headlandTailAvoidance#enabled` | BOOL | `false` |
| `<basePath>.headland#minNumHeadlands` | INT |  |
| `<basePath>.overlap#value` | FLOAT | `AIVehicleUtil.AREA_OVERLAP` |
| `<basePath>.areaMarkers#leftNode` | NODE_INDEX |  |
| `<basePath>.areaMarkers#rightNode` | NODE_INDEX |  |
| `<basePath>.areaMarkers#backNode` | NODE_INDEX |  |
| `<basePath>.areaMarkers#sideOffset` | FLOAT | `0` |
| `<basePath>.areaMarkers#sideOffsetHeadlandAlternate` | BOOL | `false` |
| `<basePath>.areaMarkers#width` | FLOAT | `"automatically calculated based on di...` |
| `<basePath>.areaMarkers#validityOffset` | FLOAT | `0` |
| `<basePath>.sizeMarkers#leftNode` | NODE_INDEX |  |
| `<basePath>.sizeMarkers#rightNode` | NODE_INDEX |  |
| `<basePath>.sizeMarkers#backNode` | NODE_INDEX |  |
| `<basePath>.collisionTrigger#useSize` | BOOL | `false` |
| `<basePath>.collisionTrigger#node` | NODE_INDEX |  |
| `<basePath>.collisionTrigger#backNode` | NODE_INDEX |  |
| `<basePath>.collisionTrigger#width` | FLOAT | `4` |
| `<basePath>.collisionTrigger#height` | FLOAT | `3` |
| `<basePath>.collisionTrigger#length` | FLOAT | `5` |

## vehicles/specializations/AIJobVehicle.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.ai.steeringNode#node` | NODE_INDEX |  |
| `vehicle.ai.reverserNode#node` | NODE_INDEX |  |
| `vehicle.ai.steeringSpeed` | FLOAT | `1` |
| `vehicle.ai#supportsAIJobs` | BOOL | `true` |
| `vehicle.ai#supportedJobTypes` | STRING_LIST | `"all jobs if no names are given"` |
| `vehicles.vehicle(?).aiJobVehicle#isAIStartAllowed` | BOOL | `true` |
| `vehicles.vehicle(?).aiJobVehicle#isAIStopAllowed` | BOOL | `true` |

## vehicles/specializations/AIModeSelection.lua

| Key | Type | Default |
|---|---|---|
| `vehicles.vehicle(?).aiModeSelection#currentMode` | STRING |  |

## vehicles/specializations/AIVehicle.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>.agentAttachment(?)#jointNode` | NODE_INDEX |  |
| `<basePath>.agentAttachment(?)#rotCenterWheelIndices` | VECTOR_N |  |
| `<basePath>.agentAttachment(?)#rotCenterNode` | NODE_INDEX |  |
| `<basePath>.agentAttachment(?)#rotCenterPosition` | VECTOR_2 |  |
| `<basePath>.agentAttachment(?)#width` | FLOAT | `3` |
| `<basePath>.agentAttachment(?)#height` | FLOAT | `3` |
| `<basePath>.agentAttachment(?)#heightOffset` | FLOAT | `0` |
| `<basePath>.agentAttachment(?)#length` | FLOAT | `3` |
| `<basePath>.agentAttachment(?)#lengthOffset` | FLOAT | `0` |
| `<basePath>.agentAttachment(?)#hasCollision` | BOOL | `true` |
| `<basePath>.agentAttachment(?)#useSize` | BOOL | `false` |

## vehicles/specializations/AdditionalToolConnections.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.additionalToolConnections.connection(?)#id` | STRING |  |
| `vehicle.additionalToolConnections.connection(?)#movingPartNode` | NODE_INDEX |  |

## vehicles/specializations/AnimatedVehicle.lua

| Key | Type | Default |
|---|---|---|
| `<SpeedRotatingParts.SPEED_ROTATING_PART_XML_KEY>#animName` | STRING |  |
| `<SpeedRotatingParts.SPEED_ROTATING_PART_XML_KEY>#animOuterRange` | BOOL | `false` |
| `<SpeedRotatingParts.SPEED_ROTATING_PART_XML_KEY>#animMinLimit` | FLOAT | `0` |
| `<SpeedRotatingParts.SPEED_ROTATING_PART_XML_KEY>#animMaxLimit` | FLOAT | `1` |
| `<WorkArea.WORK_AREA_XML_KEY>#animName` | STRING |  |
| `<WorkArea.WORK_AREA_XML_KEY>#animMinLimit` | FLOAT | `0` |
| `<WorkArea.WORK_AREA_XML_KEY>#animMaxLimit` | FLOAT | `1` |
| `<WorkArea.WORK_AREA_XML_CONFIG_KEY>#animName` | STRING |  |
| `<WorkArea.WORK_AREA_XML_CONFIG_KEY>#animMinLimit` | FLOAT | `0` |
| `<WorkArea.WORK_AREA_XML_CONFIG_KEY>#animMaxLimit` | FLOAT | `1` |
| `<basePath>#name` | STRING |  |
| `<basePath>#looping` | BOOL | `false` |
| `<basePath>#resetOnStart` | BOOL | `true` |
| `<basePath>#startAnimTime` | FLOAT | `0` |
| `<basePath>#soundVolumeFactor` | FLOAT | `1` |
| `<basePath>#isKeyframe` | BOOL | `false` |
| `<basePath>.part(?)#node` | NODE_INDEX |  |
| `<basePath>.part(?)#startTime` | FLOAT |  |
| `<basePath>.part(?)#duration` | FLOAT |  |
| `<basePath>.part(?)#endTime` | FLOAT |  |
| `<basePath>.part(?)#time` | FLOAT |  |
| `<basePath>.part(?)#direction` | INT | `0` |
| `<basePath>.part(?)#tangentType` | STRING | `"linear"` |
| `<basePath>.part(?)#startRot` | VECTOR_ROT |  |
| `<basePath>.part(?)#endRot` | VECTOR_ROT |  |
| `<basePath>.part(?)#startTrans` | VECTOR_TRANS |  |
| `<basePath>.part(?)#endTrans` | VECTOR_TRANS |  |
| `<basePath>.part(?)#startScale` | VECTOR_SCALE |  |
| `<basePath>.part(?)#endScale` | VECTOR_SCALE |  |
| `<basePath>.part(?)#visibility` | BOOL |  |
| `<basePath>.part(?)#startVisibility` | BOOL |  |
| `<basePath>.part(?)#endVisibility` | BOOL |  |
| `<basePath>.part(?)#componentJointIndex` | INT |  |
| `<basePath>.part(?)#rotation` | VECTOR_ROT |  |
| `<basePath>.part(?)#translation` | VECTOR_TRANS |  |
| `<basePath>.part(?)#scale` | VECTOR_SCALE |  |
| `<basePath>.part(?)#requiredAnimation` | STRING |  |
| `<basePath>.part(?)#requiredAnimationRange` | VECTOR_2 |  |
| `<basePath>.part(?)#requiredConfigurationName` | STRING |  |
| `<basePath>.part(?)#requiredConfigurationIndex` | INT |  |
| `<basePath>.part(?)#startRotLimit` | VECTOR_ROT |  |
| `<basePath>.part(?)#startRotMinLimit` | VECTOR_ROT |  |
| `<basePath>.part(?)#startRotMaxLimit` | VECTOR_ROT |  |
| `<basePath>.part(?)#endRotLimit` | VECTOR_ROT |  |
| `<basePath>.part(?)#endRotMinLimit` | VECTOR_ROT |  |
| `<basePath>.part(?)#endRotMaxLimit` | VECTOR_ROT |  |
| `<basePath>.part(?)#startTransLimit` | VECTOR_TRANS |  |
| `<basePath>.part(?)#startTransMinLimit` | VECTOR_TRANS |  |
| `<basePath>.part(?)#startTransMaxLimit` | VECTOR_TRANS |  |
| `<basePath>.part(?)#endTransLimit` | VECTOR_TRANS |  |
| `<basePath>.part(?)#endTransMinLimit` | VECTOR_TRANS |  |
| `<basePath>.part(?)#endTransMaxLimit` | VECTOR_TRANS |  |
| `<basePath>.part(?)#startRotLimitSpring` | VECTOR_3 |  |
| `<basePath>.part(?)#startRotLimitDamping` | VECTOR_3 |  |
| `<basePath>.part(?)#endRotLimitSpring` | VECTOR_3 |  |
| `<basePath>.part(?)#endRotLimitDamping` | VECTOR_3 |  |
| `<basePath>.part(?)#componentIndex` | INT |  |
| `<basePath>.part(?)#startMass` | FLOAT |  |
| `<basePath>.part(?)#startCenterOfMass` | VECTOR_TRANS |  |
| `<basePath>.part(?)#endMass` | FLOAT |  |
| `<basePath>.part(?)#endCenterOfMass` | VECTOR_TRANS |  |
| `<basePath>.part(?)#startFrictionVelocity` | FLOAT |  |
| `<basePath>.part(?)#endFrictionVelocity` | FLOAT |  |
| `<basePath>.part(?)#shaderParameter` | STRING |  |
| `<basePath>.part(?)#shaderParameterPrev` | STRING |  |
| `<basePath>.part(?)#shaderStartValues` | STRING_LIST |  |
| `<basePath>.part(?)#shaderEndValues` | STRING_LIST |  |
| `<basePath>.part(?)#animationClip` | STRING |  |
| `<basePath>.part(?)#clipStartTime` | FLOAT |  |
| `<basePath>.part(?)#clipEndTime` | FLOAT |  |
| `<basePath>.part(?)#dependentAnimation` | STRING |  |
| `<basePath>.part(?)#dependentAnimationStartTime` | FLOAT |  |
| `<basePath>.part(?)#dependentAnimationEndTime` | FLOAT |  |
| `<basePath>.part(?)#spline` | NODE_INDEX |  |
| `<basePath>.part(?)#startSplinePos` | FLOAT |  |
| `<basePath>.part(?)#endSplinePos` | FLOAT |  |
| `<basePath>.part(?)#startGatePos` | FLOAT |  |
| `<basePath>.part(?)#endGatePos` | FLOAT |  |
| `<basePath>.sound(?)#startTime` | TIME | `0` |
| `<basePath>.sound(?)#endTime` | TIME |  |
| `<basePath>.sound(?)#direction` | INT | `0` |
| `<basePath>.sound(?)#startPitchScale` | FLOAT |  |
| `<basePath>.sound(?)#endPitchScale` | FLOAT |  |

## vehicles/specializations/ArticulatedAxis.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.articulatedAxis#componentJointIndex` | INT |  |
| `vehicle.articulatedAxis#rotSpeed` | ANGLE |  |
| `vehicle.articulatedAxis#rotMax` | ANGLE |  |
| `vehicle.articulatedAxis#rotMin` | ANGLE |  |
| `vehicle.articulatedAxis#anchorActor` | INT | `0` |
| `vehicle.articulatedAxis#rotNode` | NODE_INDEX |  |
| `vehicle.articulatedAxis#aiReverserNode` | NODE_INDEX |  |
| `vehicle.articulatedAxis#maxTurningRadius` | FLOAT |  |
| `vehicle.articulatedAxis#customWheelIndices1` | VECTOR_N |  |
| `vehicle.articulatedAxis#customWheelIndices2` | VECTOR_N |  |
| `vehicle.articulatedAxis.rotatingPart(?)#node` | NODE_INDEX |  |
| `vehicle.articulatedAxis.rotatingPart(?)#posRot` | VECTOR_ROT |  |
| `vehicle.articulatedAxis.rotatingPart(?)#negRot` | VECTOR_ROT |  |
| `vehicle.articulatedAxis.rotatingPart(?)#posRotFactor` | FLOAT | `1` |
| `vehicle.articulatedAxis.rotatingPart(?)#negRotFactor` | FLOAT | `1` |
| `vehicle.articulatedAxis.rotatingPart(?)#invertSteeringAngle` | BOOL | `false` |

## vehicles/specializations/Attachable.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.attachable#connectionHoseConfigId` | INT |  |
| `vehicle.attachable#powerTakeOffConfigId` | INT |  |
| `vehicle.attachable.inputAttacherJointConfigurations.inputAttacherJointConfiguration(?)#connectionHoseConfigId` | INT |  |
| `vehicle.attachable.inputAttacherJointConfigurations.inputAttacherJointConfiguration(?)#powerTakeOffConfigId` | INT |  |
| `vehicle.attachable.brakeForce#force` | FLOAT | `0` |
| `vehicle.attachable.brakeForce#maxForce` | FLOAT | `0` |
| `vehicle.attachable.brakeForce#maxForceMass` | FLOAT | `0` |
| `vehicle.attachable.brakeForce#includeAttachables` | BOOL | `false` |
| `vehicle.attachable.brakeForce#loweredForce` | FLOAT |  |
| `vehicle.attachable.airConsumer#usage` | FLOAT | `0` |
| `vehicle.attachable#allowFoldingWhileAttached` | BOOL | `true` |
| `vehicle.attachable#allowFoldingWhileLowered` | BOOL | `true` |
| `vehicle.attachable#blockFoliageDestruction` | BOOL | `false` |
| `vehicle.attachable.power#requiresExternalPower` | BOOL | `true` |
| `vehicle.attachable.power#attachToPowerWarning` | L10N_STRING | `"warning_attachToPower"` |
| `vehicle.attachable.steeringAxleAngleScale#startSpeed` | FLOAT | `10` |
| `vehicle.attachable.steeringAxleAngleScale#endSpeed` | FLOAT | `30` |
| `vehicle.attachable.steeringAxleAngleScale#backwards` | BOOL | `false` |
| `vehicle.attachable.steeringAxleAngleScale#speed` | ANGLE | `60` |
| `vehicle.attachable.steeringAxleAngleScale#useSuperAttachable` | BOOL | `false` |
| `vehicle.attachable.steeringAxleAngleScale.targetNode#node` | NODE_INDEX |  |
| `vehicle.attachable.steeringAxleAngleScale.targetNode#refAngle` | ANGLE |  |
| `vehicle.attachable.steeringAxleAngleScale#minRot` | ANGLE | `0` |
| `vehicle.attachable.steeringAxleAngleScale#maxRot` | ANGLE | `0` |
| `vehicle.attachable.steeringAxleAngleScale#direction` | FLOAT | `1` |
| `vehicle.attachable.steeringAxleAngleScale#forceUsage` | BOOL | `false` |
| `vehicle.attachable.steeringAxleAngleScale#speedDependent` | BOOL | `true` |
| `vehicle.attachable.steeringAxleAngleScale#distanceDelay` | FLOAT | `0` |
| `vehicle.attachable.steeringAxleAngleScale#referenceComponentIndex` | INT |  |
| `<Attachable.STEERING_ANGLE_NODE_XML_KEY>#node` | NODE_INDEX |  |
| `<Attachable.STEERING_ANGLE_NODE_XML_KEY>#speed` | ANGLE | `25` |
| `<Attachable.STEERING_ANGLE_NODE_XML_KEY>#scale` | FLOAT | `1` |
| `<Attachable.STEERING_ANGLE_NODE_XML_KEY>#offset` | ANGLE | `0` |
| `<Attachable.STEERING_ANGLE_NODE_XML_KEY>#minSpeed` | FLOAT | `0` |
| `vehicle.attachable.lowerAnimation#name` | STRING |  |
| `vehicle.attachable.lowerAnimation#speed` | FLOAT | `1` |
| `vehicle.attachable.lowerAnimation#directionOnDetach` | INT | `0` |
| `vehicle.attachable.lowerAnimation#defaultLowered` | BOOL | `false` |
| `<key>#inputAttacherJointIndex` | INT |  |
| `<Dashboard.GROUP_XML_KEY>#isAttached` | BOOL |  |
| `vehicles.vehicle(?).attachable#lowerAnimTime` | FLOAT |  |
| `vehicles.vehicle(?).attachable#isDetachingBlocked` | BOOL |  |
| `<baseName>#node` | NODE_INDEX |  |
| `<baseName>.heightNode(?)#node` | NODE_INDEX |  |
| `<baseName>#jointType` | STRING |  |
| `<baseName>.subType#name` | STRING |  |
| `<baseName>.subType#showWarning` | BOOL | `true` |
| `<baseName>#needsTrailerJoint` | BOOL | `false` |
| `<baseName>#needsLowJoint` | BOOL | `false` |
| `<baseName>#topReferenceNode` | NODE_INDEX |  |
| `<baseName>#rootNode` | NODE_INDEX | `"Parent component of attacher joint n...` |
| `<baseName>#allowsDetaching` | BOOL | `true` |
| `<baseName>#fixedRotation` | BOOL | `false` |
| `<baseName>#hardAttach` | BOOL | `false` |
| `<baseName>#nodeVisual` | NODE_INDEX |  |
| `<baseName>.distanceToGround#lower` | FLOAT |  |
| `<baseName>.distanceToGround#upper` | FLOAT |  |
| `<baseName>.distanceToGround.vehicle(?)#filename` | STRING |  |
| `<baseName>.distanceToGround.vehicle(?)#lower` | FLOAT |  |
| `<baseName>.distanceToGround.vehicle(?)#upper` | FLOAT |  |
| `<baseName>#lowerRotationOffset` | ANGLE |  |
| `<baseName>#upperRotationOffset` | ANGLE | `"8 degrees for implements"` |
| `<baseName>#allowsJointRotLimitMovement` | BOOL | `true` |
| `<baseName>#allowsJointTransLimitMovement` | BOOL | `true` |
| `<baseName>#needsToolbar` | BOOL | `false` |
| `<baseName>.bottomArm#categories` | VECTOR_N |  |
| `<baseName>.bottomArm#widths` | VECTOR_N |  |
| `<baseName>.bottomArm#ballType` | INT | `1` |
| `<baseName>.bottomArm#ballFilename` | STRING |  |
| `<baseName>.bottomArm#ballDefaultVisibility` | BOOL | `"'true' if no toolbar is used ('needs...` |
| `<baseName>#steeringBarLeftNode` | NODE_INDEX |  |
| `<baseName>#steeringBarRightNode` | NODE_INDEX |  |
| `<baseName>#drawbarNode` | NODE_INDEX |  |
| `<baseName>#bottomArmLeftNode` | NODE_INDEX |  |
| `<baseName>#bottomArmRightNode` | NODE_INDEX |  |
| `<baseName>#upperRotLimitScale` | VECTOR_3 | `"0 0 0"` |
| `<baseName>#lowerRotLimitScale` | VECTOR_3 | `"0 0 0"` |
| `<baseName>#rotLimitThreshold` | FLOAT | `0` |
| `<baseName>#upperTransLimitScale` | VECTOR_3 | `"0 0 0"` |
| `<baseName>#lowerTransLimitScale` | VECTOR_3 | `"0 0 0"` |
| `<baseName>#transLimitThreshold` | FLOAT | `0` |
| `<baseName>#rotLimitSpring` | VECTOR_3 | `"0 0 0"` |
| `<baseName>#rotLimitDamping` | VECTOR_3 | `"1 1 1"` |
| `<baseName>#rotLimitForceLimit` | VECTOR_3 | `"-1 -1 -1"` |
| `<baseName>#transLimitSpring` | VECTOR_3 | `"0 0 0"` |
| `<baseName>#transLimitDamping` | VECTOR_3 | `"1 1 1"` |
| `<baseName>#transLimitForceLimit` | VECTOR_3 | `"-1 -1 -1"` |
| `<baseName>#attachAngleLimitAxis` | INT | `1` |
| `<baseName>#attacherHeight` | FLOAT | `"0.9 for trailer, 0.55 for trailer low"` |
| `<baseName>#needsLowering` | BOOL |  |
| `<baseName>#allowsLowering` | BOOL |  |
| `<baseName>#isDefaultLowered` | BOOL | `false` |
| `<baseName>#useFoldingLoweredState` | BOOL | `false` |
| `<baseName>#forceSelectionOnAttach` | BOOL | `true` |
| `<baseName>#forceAllowDetachWhileLifted` | BOOL | `false` |
| `<baseName>#forcedAttachingDirection` | INT | `0` |
| `<baseName>#allowFolding` | BOOL | `true` |
| `<baseName>#allowTurnOn` | BOOL | `true` |
| `<baseName>#allowAI` | BOOL | `true` |
| `<baseName>#allowDetachWhileParentLifted` | BOOL | `true` |
| `<baseName>#useTopLights` | BOOL | `true` |
| `<baseName>.dependentAttacherJoint(?)#attacherJointIndex` | INT |  |
| `<baseName>.additionalObjects.additionalObject(?)#node` | NODE_INDEX |  |
| `<baseName>.additionalObjects.additionalObject(?)#attacherVehiclePath` | STRING |  |
| `<baseName>.additionalAttachment#filename` | STRING |  |
| `<baseName>.additionalAttachment#inputAttacherJointIndex` | INT |  |
| `<baseName>.additionalAttachment#needsLowering` | BOOL |  |
| `<baseName>.additionalAttachment#jointType` | STRING |  |
| `<key>#animationName` | STRING |  |
| `<key>#delayedOnLoad` | BOOL | `false` |
| `<key>#delayedOnAttach` | BOOL | `true` |
| `<key>#detachAfterAnimation` | BOOL | `true` |
| `<key>#detachAnimationTime` | FLOAT | `1` |

## vehicles/specializations/AttacherJointControl.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.attacherJointControl#maxTiltAngle` | ANGLE | `25` |
| `vehicle.attacherJointControl#supportsDamping` | BOOL | `false` |
| `vehicle.attacherJointControl#dampingOffset` | FLOAT | `2` |
| `vehicle.attacherJointControl.control(?)#controlFunction` | STRING |  |
| `vehicle.attacherJointControl.control(?)#controlAxis` | STRING |  |
| `vehicle.attacherJointControl.control(?)#iconName` | STRING |  |
| `vehicle.attacherJointControl.control(?)#invertControlAxis` | BOOL | `false` |
| `vehicle.attacherJointControl.control(?)#mouseSpeedFactor` | FLOAT | `1` |
| `<Attachable.INPUT_ATTACHERJOINT_XML_KEY>#isControllable` | BOOL | `false` |
| `<Attachable.INPUT_ATTACHERJOINT_CONFIG_XML_KEY>#isControllable` | BOOL | `false` |

## vehicles/specializations/AttacherJoints.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.attacherJoints#comboDuration` | FLOAT | `2` |
| `vehicle.attacherJoints#connectionHoseConfigId` | INT |  |
| `vehicle.attacherJoints#powerTakeOffConfigId` | INT |  |
| `vehicle.attacherJoints.attacherJointConfigurations.attacherJointConfiguration(?)#connectionHoseConfigId` | INT |  |
| `vehicle.attacherJoints.attacherJointConfigurations.attacherJointConfiguration(?)#powerTakeOffConfigId` | INT |  |
| `vehicle.attacherJoints#maxUpdateDistance` | FLOAT | `AttacherJoints.DEFAULT_MAX_UPDATE_DIS...` |
| `<Dashboard.GROUP_XML_KEY>#attacherJointIndices` | VECTOR_N |  |
| `<Dashboard.GROUP_XML_KEY>#attacherJointNodes` | NODE_INDICES |  |
| `<Attachable.INPUT_ATTACHERJOINT_XML_KEY>.heightNode(?)#disablingAttacherJointIndices` | VECTOR_N |  |
| `<Attachable.INPUT_ATTACHERJOINT_CONFIG_XML_KEY>.heightNode(?)#disablingAttacherJointIndices` | VECTOR_N |  |
| `vehicles.vehicle(?).attacherJoints#comboDirection` | INT |  |
| `vehicles.vehicle(?).attacherJoints.attachedImplement(?)#jointIndex` | INT |  |
| `vehicles.vehicle(?).attacherJoints.attachedImplement(?)#moveDown` | BOOL |  |
| `vehicles.vehicle(?).attacherJoints.attachedImplement(?)#attachedVehicleUniqueId` | STRING |  |
| `vehicles.vehicle(?).attacherJoints.attachedImplement(?)#inputJointIndex` | INT |  |
| `vehicles.vehicle(?).attacherJoints.attacherJoint(?)#jointIndex` | INT |  |
| `vehicles.vehicle(?).attacherJoints.attacherJoint(?)#isBlocked` | BOOL |  |
| `vehicles.attachments(?)#rootVehicleId` | INT |  |
| `vehicles.attachments(?).attachment(?)#attachmentId` | INT |  |
| `vehicles.attachments(?).attachment(?)#inputJointDescIndex` | INT | `1` |
| `vehicles.attachments(?).attachment(?)#jointIndex` | INT |  |
| `vehicles.attachments(?).attachment(?)#moveDown` | BOOL |  |
| `<baseName>#node` | NODE_INDEX |  |
| `<baseName>#nodeVisual` | NODE_INDEX |  |
| `<baseName>#supportsHardAttach` | BOOL |  |
| `<baseName>#jointType` | STRING | `"implement"` |
| `<baseName>.subType#name` | STRING |  |
| `<baseName>.subType#brandRestriction` | STRING |  |
| `<baseName>.subType#vehicleRestriction` | STRING |  |
| `<baseName>.subType#subTypeShowWarning` | BOOL | `true` |
| `<baseName>#allowsJointLimitMovement` | BOOL | `true` |
| `<baseName>#allowsLowering` | BOOL | `true` |
| `<baseName>#isDefaultLowered` | BOOL | `false` |
| `<baseName>#allowDetachingWhileLifted` | BOOL | `true` |
| `<baseName>#allowFoldingWhileAttached` | BOOL | `true` |
| `<baseName>#canTurnOnImplement` | BOOL | `true` |
| `<baseName>.rotationNode#node` | NODE_INDEX |  |
| `<baseName>.rotationNode#lowerRotation` | VECTOR_ROT | `"0 0 0"` |
| `<baseName>.rotationNode#upperRotation` | VECTOR_ROT | `"rotation in i3d"` |
| `<baseName>.rotationNode#startRotation` | VECTOR_ROT | `"rotation in i3d"` |
| `<baseName>.rotationNode2#node` | NODE_INDEX |  |
| `<baseName>.rotationNode2#lowerRotation` | VECTOR_ROT | `"0 0 0"` |
| `<baseName>.rotationNode2#upperRotation` | VECTOR_ROT | `"rotation in i3d"` |
| `<baseName>.transNode#node` | NODE_INDEX |  |
| `<baseName>.transNode#height` | FLOAT | `0.12` |
| `<baseName>.transNode#minY` | FLOAT |  |
| `<baseName>.transNode#maxY` | FLOAT |  |
| `<baseName>.transNode.dependentBottomArm#node` | NODE_INDEX |  |
| `<baseName>.transNode.dependentBottomArm#threshold` | FLOAT | `"unlimited, so rotation is always set"` |
| `<baseName>.transNode.dependentBottomArm#rotation` | VECTOR_ROT | `"0 0 0"` |
| `<baseName>.distanceToGround#lower` | FLOAT | `0.7` |
| `<baseName>.distanceToGround#upper` | FLOAT | `1.0` |
| `<baseName>#lowerRotationOffset` | ANGLE | `0` |
| `<baseName>#upperRotationOffset` | ANGLE | `0` |
| `<baseName>#dynamicLowerRotLimit` | BOOL | `false` |
| `<baseName>#lockDownRotLimit` | BOOL | `false` |
| `<baseName>#lockUpRotLimit` | BOOL | `false` |
| `<baseName>#lockDownTransLimit` | BOOL | `true` |
| `<baseName>#lockUpTransLimit` | BOOL | `false` |
| `<baseName>#lowerRotLimit` | VECTOR_ROT | `"(20 20 20) for implement type, other...` |
| `<baseName>#upperRotLimit` | VECTOR_ROT | `"Lower rot limit"` |
| `<baseName>#lowerTransLimit` | VECTOR_3 | `"(0.5 0.5 0.5) for implement type, ot...` |
| `<baseName>#upperTransLimit` | VECTOR_3 | `"Lower trans limit"` |
| `<baseName>#jointPositionOffset` | VECTOR_3 | `"0 0 0"` |
| `<baseName>#rotLimitSpring` | VECTOR_3 | `"0 0 0"` |
| `<baseName>#rotLimitDamping` | VECTOR_3 | `"1 1 1"` |
| `<baseName>#rotLimitForceLimit` | VECTOR_3 | `"-1 -1 -1"` |
| `<baseName>#transLimitSpring` | VECTOR_3 | `"0 0 0"` |
| `<baseName>#transLimitDamping` | VECTOR_3 | `"1 1 1"` |
| `<baseName>#transLimitForceLimit` | VECTOR_3 | `"-1 -1 -1"` |
| `<baseName>#moveTime` | FLOAT | `0.5` |
| `<baseName>#disabledByAttacherJoints` | VECTOR_N |  |
| `<baseName>#enableCollision` | BOOL | `false` |
| `<baseName>.bottomArm#rotationNode` | NODE_INDEX |  |
| `<baseName>.bottomArm#translationNode` | NODE_INDEX |  |
| `<baseName>.bottomArm#referenceNode` | NODE_INDEX |  |
| `<baseName>.bottomArm#startRotation` | VECTOR_ROT | `"values set in i3d"` |
| `<baseName>.bottomArm#zScale` | INT | `1` |
| `<baseName>.bottomArm#lockDirection` | BOOL | `true` |
| `<baseName>.bottomArm#resetSpeed` | ANGLE | `45` |
| `<baseName>.bottomArm#updateReferenceDistance` | BOOL | `false` |
| `<baseName>.bottomArm#jointPositionNode` | NODE_INDEX |  |
| `<baseName>.bottomArm#toggleVisibility` | BOOL | `false` |
| `<baseName>.bottomArm#categoryRange` | VECTOR_N | `"1 4"` |
| `<baseName>.bottomArm#widthRange` | VECTOR_N |  |
| `<baseName>.bottomArm#defaultWidth` | FLOAT | `"Width inside i3d file"` |
| `<baseName>.bottomArm#defaultCategory` | INT | `"Width inside i3d file"` |
| `<baseName>.bottomArm#ballVisibility` | BOOL | `true` |
| `<baseName>.bottomArm.armLeft#node` | NODE_INDEX |  |
| `<baseName>.bottomArm.armLeft#referenceNode` | NODE_INDEX |  |
| `<baseName>.bottomArm.armRight#node` | NODE_INDEX |  |
| `<baseName>.bottomArm.armRight#referenceNode` | NODE_INDEX |  |
| `<baseName>.bottomArm#leftNode` | NODE_INDEX |  |
| `<baseName>.bottomArm#rightNode` | NODE_INDEX |  |
| `<baseName>.toolbar#filename` | STRING | `"$data/shared/assets/toolbars/toolbar...` |
| `<baseName>.steeringBars#leftNode` | NODE_INDEX |  |
| `<baseName>.steeringBars#rightNode` | NODE_INDEX |  |
| `<baseName>.steeringBars#forceUsage` | BOOL | `true` |
| `<baseName>.visuals#nodes` | NODE_INDICES |  |
| `<baseName>.visuals#hide` | NODE_INDICES |  |
| `<baseName>#delayedObjectChanges` | BOOL | `true` |
| `<baseName>#delayedObjectChangesOnAttach` | BOOL | `false` |
| `<baseName>#direction` | INT |  |
| `<baseName>#useTopLights` | BOOL | `"'true' if the attacher joint is on t...` |
| `<baseName>#rootNode` | NODE_INDEX | `"Parent component of attacher joint n...` |
| `<baseName>#comboTime` | FLOAT |  |
| `<baseName>.schema#position` | VECTOR_2 |  |
| `<baseName>.schema#liftedOffset` | VECTOR_2 | `"0 5"` |
| `<baseName>.schema#rotation` | ANGLE | `0` |
| `<baseName>.schema#invertX` | BOOL | `false` |

## vehicles/specializations/AutoLoadFork.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.autoLoadFork#triggerNode` | NODE_INDEX |  |
| `vehicle.autoLoadFork#jointNode` | NODE_INDEX |  |
| `vehicle.autoLoadFork.liftAnimation#name` | STRING |  |
| `vehicle.autoLoadFork.liftAnimation#speedScale` | FLOAT |  |
| `vehicles.vehicle(?).autoLoadFork#liftAnimationTime` | FLOAT |  |
| `vehicles.vehicle(?).autoLoadFork.mountedObject(?)#vehicleUniqueId` | INT |  |

## vehicles/specializations/AutoLoadForwarder.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.autoLoadForwarder#idlePositionNode` | NODE_INDEX |  |
| `vehicle.autoLoadForwarder#dropPositionNode` | NODE_INDEX |  |
| `vehicle.autoLoadForwarder#craneTreeJointNode` | NODE_INDEX |  |
| `vehicle.autoLoadForwarder.loadPlaces#fillUnitIndex` | INT |  |
| `vehicle.autoLoadForwarder.loadPlaces#dropOffset` | FLOAT | `0` |
| `vehicle.autoLoadForwarder.loadPlaces.loadPlace(?)#node` | NODE_INDEX |  |
| `vehicle.autoLoadForwarder.grabAnimation#name` | STRING |  |
| `vehicle.autoLoadForwarder.grabAnimation#speedScale` | FLOAT |  |
| `vehicle.autoLoadForwarder.grabAnimation#filledTime` | FLOAT |  |
| `vehicles.vehicle(?).autoLoadForwarder#treeI3DFilename` | STRING |  |

## vehicles/specializations/AutoLoader.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.autoLoader.areas.area(?)#node` | NODE_INDEX |  |
| `vehicle.autoLoader.areas.area(?).trigger(?)#node` | NODE_INDEX |  |
| `vehicle.autoLoader.areas.area(?).trigger(?)#alwaysActive` | BOOL |  |
| `vehicle.autoLoader.areas.area(?)#length` | FLOAT |  |
| `vehicle.autoLoader.areas.area(?)#width` | FLOAT |  |
| `vehicle.autoLoader.areas.area(?)#height` | FLOAT |  |
| `vehicle.autoLoader.areas.area(?)#spacing` | FLOAT |  |
| `vehicles.vehicle(?).autoLoader.mountedObject(?)#mountPosX` | FLOAT |  |
| `vehicles.vehicle(?).autoLoader.mountedObject(?)#mountPosZ` | FLOAT |  |
| `vehicles.vehicle(?).autoLoader.mountedObject(?)#mountSizeX` | FLOAT |  |
| `vehicles.vehicle(?).autoLoader.mountedObject(?)#mountSizeZ` | FLOAT |  |
| `vehicles.vehicle(?).autoLoader.mountedObject(?)#mountAreaIndex` | INT |  |
| `vehicles.vehicle(?).autoLoader.mountedObject(?)#vehicleUniqueId` | INT |  |

## vehicles/specializations/AutoLoaderBales.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.autoLoaderBales.trigger#node` | NODE_INDEX |  |
| `vehicle.autoLoaderBales.baleTypes.baleType(?)#fillTypes` | STRING |  |
| `vehicle.autoLoaderBales.baleTypes.baleType(?)#diameter` | FLOAT | `0` |
| `vehicle.autoLoaderBales.baleTypes.baleType(?)#width` | FLOAT | `0` |
| `vehicle.autoLoaderBales.baleTypes.baleType(?)#height` | FLOAT | `0` |
| `vehicle.autoLoaderBales.baleTypes.baleType(?)#length` | FLOAT | `0` |
| `vehicle.autoLoaderBales.baleTypes.baleType(?).spawnPlace#node` | NODE_INDEX |  |
| `vehicle.autoLoaderBales.baleTypes.baleType(?).spawnPlace#numBales` | INT | `1` |
| `vehicle.autoLoaderBales.baleTypes.baleType(?).spawnPlace#offsetDirection` | VECTOR_3 | `"0 1 0"` |
| `vehicle.autoLoaderBales.baleTypes.baleType(?).spawnPlace#mountBale` | BOOL | `true` |

## vehicles/specializations/AutomaticArmControlForwarder.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>#requiresEasyArmControl` | BOOL | `true` |
| `<basePath>#foldMinLimit` | FLOAT | `0` |
| `<basePath>#foldMaxLimit` | FLOAT | `1` |
| `<basePath>#rootNode` | NODE_INDEX |  |
| `<basePath>.treeTrigger(?)#node` | NODE_INDEX |  |
| `<basePath>.xAlignment#movingToolNode` | NODE_INDEX |  |
| `<basePath>.xAlignment#speedScale` | FLOAT | `1` |
| `<basePath>.xAlignment#offset` | FLOAT | `"Automatically calculated with the di...` |
| `<basePath>.xAlignment#threshold` | ANGLE | `1` |
| `<basePath>.zAlignment#movingToolNode` | NODE_INDEX |  |
| `<basePath>.zAlignment#speedScale` | FLOAT | `1` |
| `<basePath>.zAlignment#referenceNode` | NODE_INDEX |  |
| `<basePath>.yAlignment#movingToolNode` | NODE_INDEX |  |
| `<basePath>.yAlignment#speedScale` | FLOAT | `1` |
| `<basePath>.yAlignment#referenceNode` | NODE_INDEX |  |
| `<basePath>.yAlignment.moveUp#referenceNode` | NODE_INDEX |  |
| `<basePath>.yAlignment.moveUp#maxOffset` | FLOAT |  |
| `<basePath>.xToolAlignment#movingToolNode` | NODE_INDEX |  |
| `<basePath>.xToolAlignment#referenceNode` | NODE_INDEX |  |
| `<basePath>.xToolAlignment#speedScale` | FLOAT | `1` |
| `<basePath>.xToolAlignment#offset` | FLOAT | `"Automatically calculated with the di...` |
| `<basePath>.xToolAlignment#threshold` | ANGLE | `1` |
| `<basePath>.treeMarker#targetColor` | COLOR | `"2 2 0"` |
| `<basePath>.treeMarker#tooThickColor` | COLOR | `"2 0 0"` |

## vehicles/specializations/AutomaticArmControlHarvester.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>#requiresEasyArmControl` | BOOL | `true` |
| `<basePath>#foldMinLimit` | FLOAT | `0` |
| `<basePath>#foldMaxLimit` | FLOAT | `1` |
| `<basePath>#returnPositionNode` | NODE_INDEX |  |
| `<basePath>.treeDetectionNode#node` | NODE_INDEX |  |
| `<basePath>.treeDetectionNode#minRadius` | FLOAT | `5` |
| `<basePath>.treeDetectionNode#maxRadius` | FLOAT | `10` |
| `<basePath>.treeDetectionNode#maxAngle` | ANGLE | `45` |
| `<basePath>.treeDetectionNode#cutHeight` | FLOAT | `0.4` |
| `<basePath>.xAlignment#movingToolNode` | NODE_INDEX |  |
| `<basePath>.xAlignment#speedScale` | FLOAT | `1` |
| `<basePath>.xAlignment#offset` | FLOAT | `"Automatically calculated with the di...` |
| `<basePath>.xAlignment#threshold` | ANGLE | `1` |
| `<basePath>.zAlignment#movingToolNode` | NODE_INDEX |  |
| `<basePath>.zAlignment#speedScale` | FLOAT | `1` |
| `<basePath>.zAlignment#moveBackDistance` | FLOAT | `2` |
| `<basePath>.zAlignment#referenceNode` | NODE_INDEX |  |
| `<basePath>.yAlignment#movingToolNode` | NODE_INDEX |  |
| `<basePath>.yAlignment#speedScale` | FLOAT | `1` |
| `<basePath>.yAlignment#referenceNode` | NODE_INDEX |  |
| `<basePath>.alignmentNode(?)#movingToolNode` | NODE_INDEX |  |
| `<basePath>.alignmentNode(?)#rotation` | ANGLE |  |
| `<basePath>.alignmentNode(?)#translation` | FLOAT |  |
| `<basePath>.alignmentNode(?)#speedScale` | FLOAT | `1` |
| `<basePath>.alignmentNode(?)#isPrerequisite` | BOOL | `false` |
| `<basePath>.treeMarker#targetColor` | COLOR | `"2 2 0"` |
| `<basePath>.treeMarker#tooThickColor` | COLOR | `"2 0 0"` |
| `<basePath>.treeMarker#treeOffset` | FLOAT | `0.025` |

## vehicles/specializations/BaleCounter.lua

| Key | Type | Default |
|---|---|---|
| `vehicles.vehicle(?).baleCounter#sessionCounter` | INT |  |
| `vehicles.vehicle(?).baleCounter#lifetimeCounter` | INT |  |

## vehicles/specializations/BaleGrab.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.baleGrab#minSizeRound` | FLOAT |  |
| `vehicle.baleGrab#maxSizeRound` | FLOAT |  |
| `vehicle.baleGrab#minSizeSquare` | FLOAT |  |
| `vehicle.baleGrab#maxSizeSquare` | FLOAT |  |
| `vehicle.baleGrab#triggerNode` | NODE_INDEX |  |
| `vehicle.baleGrab#rootNode` | NODE_INDEX | `"Main component"` |
| `vehicle.baleGrab#dynamicMountType` | STRING | `"TYPE_FIX_ATTACH"` |
| `vehicle.baleGrab#forceAcceleration` | FLOAT | `20` |
| `vehicle.baleGrab.grab(?)#componentJointIndex` | INT |  |
| `vehicle.baleGrab.grab(?)#dampingFactor` | FLOAT | `20` |
| `vehicle.baleGrab.grab(?)#rotationAxis` | INT |  |
| `vehicle.baleGrab.grab(?)#rotationThreshold` | ANGLE | `5` |
| `vehicle.baleGrab.grab(?)#translationAxis` | INT |  |
| `vehicle.baleGrab.grab(?)#translationThreshold` | FLOAT | `0.05` |
| `vehicle.baleGrab.grab(?).movingTool(?)#node` | NODE_INDEX |  |
| `vehicle.baleGrab.grab(?).movingTool(?)#closingDirection` | INT | `1` |

## vehicles/specializations/BaleLoader.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.baleLoader.texts#transportPosition` | L10N_STRING | `"action_baleloaderTransportPosition"` |
| `vehicle.baleLoader.texts#operatingPosition` | L10N_STRING | `"action_baleloaderOperatingPosition"` |
| `vehicle.baleLoader.texts#unload` | L10N_STRING | `"action_baleloaderUnload"` |
| `vehicle.baleLoader.texts#tilting` | L10N_STRING | `"info_baleloaderTiltingTable"` |
| `vehicle.baleLoader.texts#lowering` | L10N_STRING | `"info_baleloaderLoweringTable"` |
| `vehicle.baleLoader.texts#lowerPlattform` | L10N_STRING | `"action_baleloaderLowerPlatform"` |
| `vehicle.baleLoader.texts#abortUnloading` | L10N_STRING | `"action_baleloaderAbortUnloading"` |
| `vehicle.baleLoader.texts#unloadHere` | L10N_STRING | `"action_baleloaderUnloadHere"` |
| `vehicle.baleLoader.texts#baleNotSupported` | L10N_STRING | `"warning_baleNotSupported"` |
| `vehicle.baleLoader.texts#baleDoNotAllowFillTypeMixing` | L10N_STRING | `"warning_baleDoNotAllowFillTypeMixing"` |
| `vehicle.baleLoader.texts#onlyOneBaleTypeWarning` | L10N_STRING | `"warning_baleLoaderOnlyAllowOnceSize"` |
| `vehicle.baleLoader.texts#minUnloadingFillLevelWarning` | L10N_STRING | `"warning_baleLoaderNotFullyLoaded"` |
| `vehicle.baleLoader#transportPositionAfterUnloading` | BOOL | `true` |
| `vehicle.baleLoader#useFoldingState` | BOOL | `false` |
| `vehicle.baleLoader#useBalePlaceAsLoadPosition` | BOOL | `false` |
| `vehicle.baleLoader#balePlaceOffset` | FLOAT | `0` |
| `vehicle.baleLoader#keepBaleRotationDuringLoad` | BOOL | `false` |
| `vehicle.baleLoader#automaticUnloading` | BOOL | `false` |
| `vehicle.baleLoader#fullAutomaticUnloading` | BOOL | `false` |
| `vehicle.baleLoader#minUnloadingFillLevel` | INT | `1` |
| `vehicle.baleLoader#allowKinematicMounting` | BOOL | `true` |
| `vehicle.baleLoader#consumePtoPower` | BOOL | `true` |
| `vehicle.baleLoader.dynamicMount#enabled` | BOOL | `false` |
| `vehicle.baleLoader.dynamicMount#doInterpolation` | BOOL | `false` |
| `vehicle.baleLoader.dynamicMount#interpolationTimeRot` | TIME | `1` |
| `vehicle.baleLoader.dynamicMount#interpolationSpeedTrans` | FLOAT | `0.1` |
| `vehicle.baleLoader.dynamicMount#minTransLimits` | VECTOR_TRANS |  |
| `vehicle.baleLoader.dynamicMount#maxTransLimits` | VECTOR_TRANS |  |
| `vehicle.baleLoader.dynamicBaleUnloading#enabled` | BOOL |  |
| `vehicle.baleLoader.dynamicBaleUnloading#connectedRows` | VECTOR_N |  |
| `vehicle.baleLoader.dynamicBaleUnloading#interConnectedRowStarts` | STRING |  |
| `vehicle.baleLoader.dynamicBaleUnloading#interConnectedRowEnds` | STRING |  |
| `vehicle.baleLoader.dynamicBaleUnloading#widthOffset` | FLOAT |  |
| `vehicle.baleLoader.dynamicBaleUnloading#heightOffset` | FLOAT |  |
| `vehicle.baleLoader.dynamicBaleUnloading#diameterOffset` | FLOAT |  |
| `vehicle.baleLoader.dynamicBaleUnloading#rowConnectionRotLimit` | ANGLE |  |
| `vehicle.baleLoader.dynamicBaleUnloading#rowInterConnectionRotLimit` | ANGLE |  |
| `vehicle.baleLoader.dynamicBaleUnloading.releaseAnimation#name` | STRING |  |
| `vehicle.baleLoader.dynamicBaleUnloading.releaseAnimation#time` | FLOAT | `1` |
| `vehicle.baleLoader.dynamicBaleUnloading.releaseAnimation#useUnloadingMoverTrigger` | BOOL | `false` |
| `vehicle.baleLoader#fillUnitIndex` | INT | `1` |
| `vehicle.baleLoader.grabber#grabNode` | NODE_INDEX |  |
| `vehicle.baleLoader.grabber#pickupRange` | FLOAT | `3.0` |
| `vehicle.baleLoader.grabber#triggerNode` | NODE_INDEX |  |
| `vehicle.baleLoader.grabber#effectDisableDuration` | TIME | `0.6` |
| `vehicle.baleLoader.balePlaces#startBalePlace` | NODE_INDEX |  |
| `vehicle.baleLoader.balePlaces.balePlace(?)#node` | NODE_INDEX |  |
| `vehicle.baleLoader.foldingAnimations#baseAnimation` | STRING | `"baleGrabberTransportToWork"` |
| `vehicle.baleLoader.foldingAnimations.foldingAnimation(?)#name` | STRING |  |
| `vehicle.baleLoader.foldingAnimations.foldingAnimation(?)#baleTypeIndex` | INT | `"'0' - any bale type"` |
| `vehicle.baleLoader.foldingAnimations.foldingAnimation(?)#minFillLevel` | FLOAT | `"-inf"` |
| `vehicle.baleLoader.foldingAnimations.foldingAnimation(?)#maxFillLevel` | FLOAT | `"inf"` |
| `vehicle.baleLoader.foldingAnimations.foldingAnimation(?)#minBalePlace` | FLOAT | `"-inf"` |
| `vehicle.baleLoader.foldingAnimations.foldingAnimation(?)#maxBalePlace` | FLOAT | `"inf"` |
| `vehicle.baleLoader.unloadingMoverNodes#trigger` | NODE_INDEX |  |
| `vehicle.baleLoader.unloadingMoverNodes.unloadingMoverNode(?)#node` | NODE_INDEX |  |
| `vehicle.baleLoader.unloadingMoverNodes.unloadingMoverNode(?)#speed` | FLOAT | `-1` |
| `vehicle.baleLoader.synchronization#numBitsPosition` | INT | `10` |
| `vehicle.baleLoader.synchronization#maxPosition` | FLOAT | `3` |
| `vehicle.baleLoader.baleTypes.baleType(?)#diameter` | FLOAT |  |
| `vehicle.baleLoader.baleTypes.baleType(?)#width` | FLOAT |  |
| `vehicle.baleLoader.baleTypes.baleType(?)#height` | FLOAT |  |
| `vehicle.baleLoader.baleTypes.baleType(?)#length` | FLOAT |  |
| `vehicle.baleLoader.baleTypes.baleType(?)#minDiameter` | FLOAT | `"diameter value"` |
| `vehicle.baleLoader.baleTypes.baleType(?)#maxDiameter` | FLOAT | `"diameter value"` |
| `vehicle.baleLoader.baleTypes.baleType(?)#minWidth` | FLOAT | `"width value"` |
| `vehicle.baleLoader.baleTypes.baleType(?)#maxWidth` | FLOAT | `"width value"` |
| `vehicle.baleLoader.baleTypes.baleType(?)#minHeight` | FLOAT | `"height value"` |
| `vehicle.baleLoader.baleTypes.baleType(?)#maxHeight` | FLOAT | `"height value"` |
| `vehicle.baleLoader.baleTypes.baleType(?)#minLength` | FLOAT | `"length value"` |
| `vehicle.baleLoader.baleTypes.baleType(?)#maxLength` | FLOAT | `"length value"` |
| `vehicle.baleLoader.baleTypes.baleType(?)#fillUnitIndex` | INT | `"baleLoader#fillUnitIndex"` |
| `vehicle.baleLoader.baleTypes.baleType(?)#mixedFillTypes` | BOOL | `true` |
| `vehicle.baleLoader.baleTypes.baleType(?).balePlaces#startBalePlace` | NODE_INDEX |  |
| `vehicle.baleLoader.baleTypes.baleType(?).balePlaces.balePlace(?)#node` | NODE_INDEX |  |
| `vehicle.baleLoader.balePacker#node` | NODE_INDEX |  |
| `vehicle.baleLoader.balePacker#packedFilename` | STRING |  |
| `vehicles.vehicle(?).baleLoader#lastFoldingAnimation` | STRING |  |
| `vehicles.vehicle(?).baleLoader#baleTypeIndex` | INT |  |
| `vehicles.vehicle(?).baleLoader#isInWorkPosition` | BOOL |  |
| `vehicles.vehicle(?).baleLoader.bale(?)#filename` | STRING |  |
| `vehicles.vehicle(?).baleLoader.bale(?)#position` | VECTOR_TRANS |  |
| `vehicles.vehicle(?).baleLoader.bale(?)#rotation` | VECTOR_ROT |  |
| `vehicles.vehicle(?).baleLoader.bale(?)#fillLevel` | FLOAT |  |
| `vehicles.vehicle(?).baleLoader.bale(?)#balePlace` | INT |  |
| `vehicles.vehicle(?).baleLoader.bale(?)#helper` | INT |  |
| `vehicles.vehicle(?).baleLoader.bale(?)#farmId` | INT |  |
| `<basePath>.animations.platform#rotate` | STRING | `"rotatePlatform"` |
| `<basePath>.animations.platform#rotateBack` | STRING | `"rotatePlatform"` |
| `<basePath>.animations.platform#rotateEmpty` | STRING | `"rotatePlatform"` |
| `<basePath>.animations.platform#allowPickupWhileMoving` | BOOL | `false` |
| `<basePath>.animations.baleGrabber#dropBaleReverseSpeed` | FLOAT | `5` |
| `<basePath>.animations.baleGrabber#dropToWork` | STRING |  |
| `<basePath>.animations.baleGrabber#workToDrop` | STRING | `"baleGrabberWorkToDrop"` |
| `<basePath>.animations.baleGrabber#dropBale` | STRING | `"baleGrabberDropBale"` |
| `<basePath>.animations.baleGrabber#transportToWork` | STRING | `"baleGrabberTransportToWork"` |
| `<basePath>.animations.pusher#emptyHide` | STRING | `"emptyHidePusher1"` |
| `<basePath>.animations.pusher#moveToEmpty` | STRING | `"moveBalePusherToEmpty"` |
| `<basePath>.animations.pusher#hidePusherOnEmpty` | BOOL | `true` |
| `<basePath>.animations.pusher#pushBalesOnEmpty` | BOOL | `false` |
| `<basePath>.animations.releaseFrontPlatform#name` | STRING | `"releaseFrontplattform"` |
| `<basePath>.animations.releaseFrontPlatform#fillLevelSpeed` | BOOL | `false` |
| `<basePath>.animations.moveBalePlaces#name` | STRING | `"moveBalePlaces"` |
| `<basePath>.animations.moveBalePlaces#extrasOnce` | STRING | `"moveBalePlaces"` |
| `<basePath>.animations.moveBalePlaces#empty` | STRING | `"moveBalePlaces"` |
| `<basePath>.animations.moveBalePlaces#emptySpeed` | FLOAT | `1.5` |
| `<basePath>.animations.moveBalePlaces#emptyReverseSpeed` | FLOAT | `-1` |
| `<basePath>.animations.moveBalePlaces#pushOffset` | FLOAT | `0` |
| `<basePath>.animations.moveBalePlaces#moveAfterRotatePlatform` | BOOL | `false` |
| `<basePath>.animations.moveBalePlaces#resetOnSink` | BOOL | `false` |
| `<basePath>.animations.moveBalePlaces#maxGrabberTime` | FLOAT | `"inf"` |
| `<basePath>.animations.moveBalePlaces#alwaysMove` | BOOL | `false` |
| `<basePath>.animations.emptyRotate#name` | STRING | `"emptyRotate"` |
| `<basePath>.animations.emptyRotate#reset` | BOOL | `true` |
| `<basePath>.animations#frontBalePusher` | STRING | `"frontBalePusher"` |
| `<basePath>.animations#balesToOtherRow` | STRING | `"balesToOtherRow"` |
| `<basePath>.animations#closeGrippers` | STRING | `"closeGrippers"` |

## vehicles/specializations/BaleWrapper.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.baleWrapper#foldMinLimit` | FLOAT | `0` |
| `vehicle.baleWrapper#foldMaxLimit` | FLOAT | `1` |
| `vehicle.baleWrapper.grabber#node` | NODE_INDEX |  |
| `vehicle.baleWrapper.grabber#triggerNode` | NODE_INDEX |  |
| `vehicle.baleWrapper.grabber#nearestDistance` | FLOAT | `3.0` |
| `vehicle.baleWrapper.automaticDrop#enabled` | BOOL | `"true on mobile"` |
| `vehicle.baleWrapper.automaticDrop#toggleable` | BOOL | `"false on mobile"` |
| `vehicle.baleWrapper.automaticDrop#textPos` | L10N_STRING | `"action_toggleAutomaticBaleDropPos"` |
| `vehicle.baleWrapper.automaticDrop#textNeg` | L10N_STRING | `"action_toggleAutomaticBaleDropNeg"` |
| `vehicles.vehicle(?).baleWrapper#wrapperTime` | FLOAT | `0` |
| `<basePath>.baleTypes.baleType(?)#fillType` | STRING |  |
| `<basePath>.baleTypes.baleType(?)#diameter` | FLOAT | `0` |
| `<basePath>.baleTypes.baleType(?)#width` | FLOAT | `0` |
| `<basePath>.baleTypes.baleType(?)#height` | FLOAT | `0` |
| `<basePath>.baleTypes.baleType(?)#length` | FLOAT | `0` |
| `<basePath>.baleTypes.baleType(?).textures#diffuse` | STRING |  |
| `<basePath>.baleTypes.baleType(?).textures#normal` | STRING |  |
| `<basePath>.baleTypes.baleType(?)#skipWrapping` | BOOL | `false` |
| `<basePath>.baleTypes.baleType(?)#forceWhileFolding` | BOOL | `false` |
| `<basePath>.baleTypes.baleType(?)#wrapUsage` | FLOAT | `0.1` |
| `<basePath>.baleTypes.baleType(?).wrappingState.key(?)#time` | FLOAT |  |
| `<basePath>.baleTypes.baleType(?).wrappingState.key(?)#wrappingState` | FLOAT |  |
| `<basePath>.baleTypes.baleType(?).dropAnimations.dropAnimation(?)#name` | STRING |  |
| `<basePath>.baleTypes.baleType(?).dropAnimations.dropAnimation(?)#animSpeed` | FLOAT | `1` |
| `<basePath>.baleTypes.baleType(?).dropAnimations.dropAnimation(?)#text` | L10N_STRING |  |
| `<basePath>.baleTypes.baleType(?).dropAnimations.dropAnimation(?)#inputAction` | STRING |  |
| `<basePath>.baleTypes.baleType(?).dropAnimations.dropAnimation(?)#liftOnDrop` | BOOL | `false` |
| `<basePath>#baleNode` | NODE_INDEX |  |
| `<basePath>#wrapperNode` | NODE_INDEX |  |
| `<basePath>#wrapperRotAxis` | INT | `2` |
| `<basePath>.wrapperAnimation.key(?)#time` | FLOAT |  |
| `<basePath>.wrapperAnimation.key(?)#baleRot` | VECTOR_ROT |  |
| `<basePath>.wrapperAnimation.key(?)#wrapperRot` | VECTOR_ROT | `"0 0 0"` |
| `<basePath>#wrappingTime` | FLOAT | `5` |
| `<basePath>.wrapAnimNodes.wrapAnimNode(?)#node` | NODE_INDEX |  |
| `<basePath>.wrapAnimNodes.wrapAnimNode(?)#repeatWrapperRot` | BOOL | `false` |
| `<basePath>.wrapAnimNodes.wrapAnimNode(?)#normalizeRotationOnBaleDrop` | INT | `0` |
| `<basePath>.wrapAnimNodes.wrapAnimNode(?).key(?)#wrapperRot` | FLOAT |  |
| `<basePath>.wrapAnimNodes.wrapAnimNode(?).key(?)#wrapperTime` | FLOAT |  |
| `<basePath>.wrapAnimNodes.wrapAnimNode(?).key(?)#trans` | VECTOR_TRANS | `"0 0 0"` |
| `<basePath>.wrapAnimNodes.wrapAnimNode(?).key(?)#rot` | VECTOR_ROT | `"0 0 0"` |
| `<basePath>.wrapAnimNodes.wrapAnimNode(?).key(?)#scale` | VECTOR_SCALE | `"1 1 1"` |
| `<basePath>.wrapNodes.wrapNode(?)#node` | NODE_INDEX |  |
| `<basePath>.wrapNodes.wrapNode(?)#wrapVisibility` | BOOL | `false` |
| `<basePath>.wrapNodes.wrapNode(?)#emptyVisibility` | BOOL | `false` |
| `<basePath>.wrapNodes.wrapNode(?)#maxWrapperRot` | FLOAT |  |
| `<basePath>.wrappingState.key(?)#time` | FLOAT |  |
| `<basePath>.wrappingState.key(?)#wrappingState` | FLOAT |  |
| `<basePath>.wrappingAnimationNodes#maxTime` | FLOAT | `"Wrapper anim time"` |
| `<basePath>.wrappingAnimationNodes.key(?)#node` | NODE_INDEX |  |
| `<basePath>.wrappingAnimationNodes.key(?)#rootNode` | NODE_INDEX |  |
| `<basePath>.wrappingAnimationNodes.key(?)#linkNode` | NODE_INDEX |  |
| `<basePath>.wrappingAnimationNodes.key(?)#time` | FLOAT |  |
| `<basePath>.wrappingAnimationNodes.key(?)#translation` | VECTOR_TRANS |  |
| `<basePath>.wrappingAnimationNodes#referenceNode` | NODE_INDEX |  |
| `<basePath>.wrappingAnimationNodes#referenceAxis` | INT | `1` |
| `<basePath>.wrappingAnimationNodes#minRot` | ANGLE | `0` |
| `<basePath>.wrappingAnimationNodes#maxRot` | ANGLE | `0` |
| `<basePath>.dropArea#node` | NODE_INDEX |  |
| `<basePath>.dropArea#width` | FLOAT | `1` |
| `<basePath>.dropArea#height` | FLOAT | `1` |
| `<basePath>.dropArea#length` | FLOAT | `1` |
| `<basePath>.blockWrapArea#node` | NODE_INDEX |  |
| `<basePath>.blockWrapArea#width` | FLOAT | `1` |
| `<basePath>.blockWrapArea#height` | FLOAT | `1` |
| `<basePath>.blockWrapArea#length` | FLOAT | `1` |
| `<basePath>.wrappingCollisions.collision(?)#node` | NODE_INDEX |  |
| `<basePath>.wrappingCollisions.collision(?)#activeCollisionMask` | INT |  |
| `<basePath>.wrappingCollisions.collision(?)#inActiveCollisionMask` | INT |  |
| `<basePath>#unloadBaleText` | L10N_STRING | `"'action_unloadRoundBale' for round b...` |
| `<basePath>#skipUnsupportedBales` | BOOL |  |
| `<basePath>.sounds#wrappingEndTime` | FLOAT | `1` |
| `<basePath>.animations.<name>#animName` | STRING | `1` |
| `<basePath>.animations.<name>#animSpeed` | FLOAT | `1` |
| `<basePath>.animations.<name>#reverseAfterMove` | BOOL | `true` |
| `<basePath>.animations.<name>#resetOnStart` | BOOL | `false` |
| `<basePath>.wrappingFoilAnimation#referenceNode` | NODE_INDEX |  |
| `<basePath>.wrappingFoilAnimation#referenceAxis` | INT |  |
| `<basePath>.wrappingFoilAnimation#minRot` | ANGLE |  |
| `<basePath>.wrappingFoilAnimation#maxRot` | ANGLE |  |
| `<basePath>.wrappingFoilAnimation#clipNode` | NODE_INDEX |  |
| `<basePath>.wrappingFoilAnimation#clipName` | STRING |  |

## vehicles/specializations/Baler.lua

| Key | Type | Default |
|---|---|---|
| `<FillUnit.ALARM_TRIGGER_XML_KEY>#needsBaleLoaded` | BOOL | `false` |
| `vehicles.vehicle(?).baler#numBales` | INT |  |
| `vehicles.vehicle(?).baler.bale(?)#filename` | STRING |  |
| `vehicles.vehicle(?).baler.bale(?)#variationId` | STRING |  |
| `vehicles.vehicle(?).baler.bale(?)#ownerFarmId` | INT |  |
| `vehicles.vehicle(?).baler.bale(?)#fillType` | STRING |  |
| `vehicles.vehicle(?).baler.bale(?)#fillLevel` | FLOAT |  |
| `vehicles.vehicle(?).baler.bale(?)#baleTime` | FLOAT |  |
| `vehicles.vehicle(?).baler#platformReadyToDrop` | BOOL | `false` |
| `vehicles.vehicle(?).baler#baleTypeIndex` | INT | `1` |
| `vehicles.vehicle(?).baler#preSelectedBaleTypeIndex` | INT | `1` |
| `vehicles.vehicle(?).baler#fillUnitCapacity` | FLOAT |  |
| `vehicles.vehicle(?).baler#bufferUnloadingStarted` | BOOL |  |
| `vehicles.vehicle(?).baler#workAreaMissionUniqueId` | STRING |  |
| `<basePath>#fillScale` | FLOAT | `1` |
| `<basePath>#fillUnitIndex` | INT | `1` |
| `<basePath>#consumableUsage` | FLOAT | `0.025` |
| `<basePath>#useDropLandOwnershipForBales` | BOOL | `false` |
| `<basePath>.baleAnimation#spacing` | FLOAT | `0` |
| `<basePath>.baleAnimation#enableCollision` | BOOL | `true` |
| `<basePath>.baleAnimation.key(?)#time` | FLOAT |  |
| `<basePath>.baleAnimation.key(?)#pos` | VECTOR_TRANS |  |
| `<basePath>.baleAnimation.key(?)#rot` | VECTOR_ROT |  |
| `<basePath>.baleAnimation#closeAnimationName` | STRING |  |
| `<basePath>.baleAnimation#closeAnimationSpeed` | FLOAT | `1` |
| `<basePath>.automaticDrop#enabled` | BOOL | `"true on mobile"` |
| `<basePath>.automaticDrop#toggleable` | BOOL | `"false on mobile"` |
| `<basePath>.baleTypes#changeText` | L10N_STRING | `"action_changeBaleSize"` |
| `<basePath>.baleTypes.baleType(?)#isRoundBale` | BOOL | `false` |
| `<basePath>.baleTypes.baleType(?)#width` | FLOAT | `1.2` |
| `<basePath>.baleTypes.baleType(?)#height` | FLOAT | `0.9` |
| `<basePath>.baleTypes.baleType(?)#length` | FLOAT | `2.4` |
| `<basePath>.baleTypes.baleType(?)#diameter` | FLOAT | `2.8` |
| `<basePath>.baleTypes.baleType(?)#isDefault` | BOOL | `false` |
| `<basePath>.baleTypes.baleType(?)#consumableUsage` | FLOAT | `0.025` |
| `<basePath>.baleTypes.baleType(?)#chamberBaleVariationId` | STRING | `"DEFAULT"` |
| `<basePath>.baleTypes.baleType(?)#defaultBaleVariationId` | STRING | `"DEFAULT"` |
| `<basePath>.baleTypes.baleType(?).nodes#baleNode` | NODE_INDEX |  |
| `<basePath>.baleTypes.baleType(?).nodes#baleRootNode` | NODE_INDEX | `"Same as baleNode"` |
| `<basePath>.baleTypes.baleType(?).nodes#scaleNode` | NODE_INDEX |  |
| `<basePath>.baleTypes.baleType(?).nodes#scaleComponents` | VECTOR_3 |  |
| `<basePath>.baleTypes.baleType(?).animations#fillAnimation` | STRING |  |
| `<basePath>.baleTypes.baleType(?).animations#unloadAnimation` | STRING |  |
| `<basePath>.baleTypes.baleType(?).animations#unloadAnimationSpeed` | FLOAT | `1` |
| `<basePath>.baleTypes.baleType(?).animations#dropAnimationTime` | TIME | `"At the end of the unloading animation"` |
| `<basePath>.baleTypes.baleType(?).detailVisibilityCutNode(?)#node` | NODE_INDEX |  |
| `<basePath>.baleTypes.baleType(?).detailVisibilityCutNode(?)#axis` | INT | `3` |
| `<basePath>.baleTypes.baleType(?).detailVisibilityCutNode(?)#direction` | INT | `1` |
| `<basePath>#unfinishedBaleThreshold` | FLOAT | `2000` |
| `<basePath>#canUnloadUnfinishedBale` | BOOL | `false` |
| `<basePath>.knotingAnimation#name` | STRING |  |
| `<basePath>.knotingAnimation#speed` | FLOAT | `1` |
| `<basePath>.compactingAnimation#name` | STRING |  |
| `<basePath>.compactingAnimation#interval` | FLOAT | `60` |
| `<basePath>.compactingAnimation#compactTime` | FLOAT | `5` |
| `<basePath>.compactingAnimation#speed` | FLOAT | `1` |
| `<basePath>.compactingAnimation#minFillLevelTime` | FLOAT | `1` |
| `<basePath>.compactingAnimation#maxFillLevelTime` | FLOAT | `0.1` |
| `<basePath>#maxPickupLitersPerSecond` | STRING | `500` |
| `<basePath>.baleUnloading#allowed` | BOOL | `false` |
| `<basePath>.baleUnloading#time` | FLOAT | `4` |
| `<basePath>.baleUnloading#foldThreshold` | FLOAT | `0.25` |
| `<basePath>.automaticDrop#textPos` | L10N_STRING | `"action_toggleAutomaticBaleDropPos"` |
| `<basePath>.automaticDrop#textNeg` | L10N_STRING | `"action_toggleAutomaticBaleDropNeg"` |
| `<basePath>.platform#animationName` | STRING |  |
| `<basePath>.platform#nextBaleTime` | FLOAT | `0` |
| `<basePath>.platform#automaticDrop` | BOOL | `"true on mobile"` |
| `<basePath>.platform#aiSpeed` | FLOAT | `3` |
| `<basePath>.buffer#fillUnitIndex` | INT |  |
| `<basePath>.buffer#unloadInfoIndex` | INT | `1` |
| `<basePath>.buffer#capacityPercentage` | FLOAT |  |
| `<basePath>.buffer#overloadingDuration` | TIME | `0.5` |
| `<basePath>.buffer#overloadingDelay` | TIME | `0` |
| `<basePath>.buffer#overloadingStartFillLevelPct` | FLOAT | `1` |
| `<basePath>.buffer#fillMainUnitAfterOverload` | BOOL | `false` |
| `<basePath>.buffer#balerDisplayType` | STRING |  |
| `<basePath>.buffer.dummyBale#node` | NODE_INDEX |  |
| `<basePath>.buffer.dummyBale#scaleComponents` | VECTOR_3 | `"1 1 0"` |
| `<basePath>.buffer.overloadAnimation#name` | STRING |  |
| `<basePath>.buffer.overloadAnimation#speedScale` | FLOAT | `1` |
| `<basePath>.buffer.loadingStateAnimation#name` | STRING |  |
| `<basePath>.buffer.loadingStateAnimation#speedScale` | FLOAT | `1` |
| `<basePath>.variableSpeedLimit#targetLiterPerSecond` | FLOAT | `200` |
| `<basePath>.variableSpeedLimit#changeInterval` | TIME | `1` |
| `<basePath>.variableSpeedLimit#minSpeedLimit` | FLOAT | `5` |
| `<basePath>.variableSpeedLimit#maxSpeedLimit` | FLOAT | `15` |
| `<basePath>.variableSpeedLimit#defaultSpeedLimit` | FLOAT | `10` |
| `<basePath>.variableSpeedLimit.target(?)#fillType` | STRING |  |
| `<basePath>.variableSpeedLimit.target(?)#targetLiterPerSecond` | FLOAT | `200` |
| `<basePath>.variableSpeedLimit.target(?)#defaultSpeedLimit` | FLOAT | `10` |
| `<basePath>.additives#fillUnitIndex` | INT |  |
| `<basePath>.additives#usage` | FLOAT | `0.0000275` |
| `<basePath>.additives#fillTypes` | STRING | `"GRASS_WINDROW"` |
| `<basePath>.additives#appliedByBufferOverloading` | BOOL | `false` |

## vehicles/specializations/BigBag.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.bigBag#fillUnitIndex` | INT |  |
| `vehicle.bigBag.sizeAnimation#name` | STRING |  |
| `vehicle.bigBag.sizeAnimation#minTime` | FLOAT | `0` |
| `vehicle.bigBag.sizeAnimation#maxTime` | FLOAT | `1` |
| `vehicle.bigBag.sizeAnimation#liftShrinkTime` | FLOAT | `0.2` |
| `vehicle.bigBag.componentJoint#index` | INT | `1` |
| `vehicle.bigBag.componentJoint#minRotLimit` | VECTOR_ROT |  |
| `vehicle.bigBag.componentJoint#maxRotLimit` | VECTOR_ROT |  |
| `vehicle.bigBag.componentJoint#minTransLimit` | VECTOR_TRANS |  |
| `vehicle.bigBag.componentJoint#maxTransLimit` | VECTOR_TRANS |  |
| `vehicle.bigBag.componentJoint#angularDamping` | FLOAT | `0.01` |

## vehicles/specializations/BunkerSiloCompacter.lua

| Key | Type | Default |
|---|---|---|
| `<BunkerSiloCompacter.XML_PATH>#compactingScale` | FLOAT | `1` |
| `<BunkerSiloCompacter.XML_PATH>#useSpeedLimit` | BOOL | `false` |

## vehicles/specializations/CCTDrivable.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.cctDrivable#cctRadius` | FLOAT | `1.0` |
| `vehicle.cctDrivable#cctHeight` | FLOAT | `1.0` |
| `vehicle.cctDrivable#cctSlopeLimit` | FLOAT | `25.0` |
| `vehicle.cctDrivable#cctStepOffset` | FLOAT | `0.35` |

## vehicles/specializations/ChainRollers.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.chainRollers#maxUpdateDistance` | FLOAT | `100` |
| `vehicle.chainRollers.chainRoller(?)#elementsNode` | NODE_INDEX |  |
| `vehicle.chainRollers.chainRoller(?)#endReferenceNode` | NODE_INDEX |  |
| `vehicle.chainRollers.chainRoller(?).splineNode(?)#node` | NODE_INDEX |  |

## vehicles/specializations/Combine.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.combine.warning#noCutter` | L10N_STRING | `"$l10n_warning_noCuttersAttached"` |
| `vehicle.combine#fillLevelBufferTime` | FLOAT | `2000` |
| `vehicle.combine#showTrailerWarning` | BOOL | `false` |
| `vehicle.combine#allowThreshingDuringRain` | BOOL | `false` |
| `vehicle.combine#fillUnitIndex` | INT | `1` |
| `vehicle.combine#turnOffWhenFull` | BOOL | `true` |
| `vehicle.combine.buffer#fillUnitIndex` | INT |  |
| `vehicle.combine.buffer#unloadingTime` | TIME | `0` |
| `vehicle.combine#loadInfoIndex` | INT | `1` |
| `vehicle.combine#threshingScale` | FLOAT | `1` |
| `vehicle.combine.buffer#loadingDelay` | TIME | `0` |
| `vehicle.combine.buffer#unloadingDelay` | TIME | `"same as #loadingDelay"` |
| `vehicle.combine.swath#available` | BOOL | `false` |
| `vehicle.combine.swath#isDefaultActive` | BOOL | `"true if available"` |
| `vehicle.combine.swath#workAreaIndex` | INT |  |
| `vehicle.combine.chopper#available` | BOOL | `false` |
| `vehicle.combine.chopper#isPowered` | BOOL | `true` |
| `vehicle.combine.chopper#workAreaIndex` | INT |  |
| `vehicle.combine.chopper#animName` | STRING |  |
| `vehicle.combine.chopper#animSpeedScale` | FLOAT | `1` |
| `vehicle.combine.ladder#animName` | STRING |  |
| `vehicle.combine.ladder#animSpeedScale` | FLOAT | `1` |
| `vehicle.combine.ladder#foldMinLimit` | FLOAT | `0.99` |
| `vehicle.combine.ladder#foldMaxLimit` | FLOAT | `1` |
| `vehicle.combine.ladder#foldDirection` | INT | `"signed animation speed"` |
| `vehicle.combine.ladder#unfoldWhileCutterAttached` | BOOL | `false` |
| `vehicle.combine#fillTimeThreshold` | TIME | `0.5` |
| `vehicle.combine.processing#toggleTime` | FLOAT | `0` |
| `vehicle.combine.threshingStartAnimation#name` | STRING |  |
| `vehicle.combine.threshingStartAnimation#speedScale` | FLOAT |  |
| `vehicle.combine.threshingStartAnimation#initialIsStarted` | BOOL |  |
| `vehicle.combine.additives#fillUnitIndex` | INT |  |
| `vehicle.combine.additives#usage` | FLOAT | `2` |
| `vehicle.combine.additives#fillTypes` | STRING | `"CHAFF GRASS_WINDROW"` |
| `vehicle.combine.automaticTilt.automaticTiltNode(?)#node` | NODE_INDEX |  |
| `vehicle.combine.automaticTilt.automaticTiltNode(?)#minAngle` | ANGLE | `-5` |
| `vehicle.combine.automaticTilt.automaticTiltNode(?)#maxAngle` | ANGLE | `5` |
| `vehicle.combine.automaticTilt.automaticTiltNode(?)#maxSpeed` | ANGLE | `2` |
| `vehicle.combine.automaticTilt.automaticTiltNode(?)#updateAttacherJoint` | BOOL |  |
| `vehicle.combine.automaticTilt.automaticTiltNode(?)#dependentAnimation` | STRING |  |
| `vehicle.combine.folding#fillLevelThresholdPct` | FLOAT | `0.15` |
| `vehicle.combine.folding#direction` | INT | `1` |
| `vehicle.combine.folding#allowWhileThreshing` | BOOL | `false` |
| `vehicle.combine.animationNodes#speedReverseFillLevel` | FLOAT |  |
| `<TurnOnVehicle.TURNED_ON_ANIMATION_XML_PATH>#activeChopper` | BOOL | `true` |
| `<TurnOnVehicle.TURNED_ON_ANIMATION_XML_PATH>#activeStrawDrop` | BOOL | `true` |
| `<TurnOnVehicle.TURNED_ON_ANIMATION_XML_PATH>#waitForStraw` | BOOL | `true` |
| `<WorkArea.WORK_AREA_XML_KEY>#strawDropPercentage` | FLOAT | `1` |
| `vehicles.vehicle(?).combine#isSwathActive` | BOOL |  |
| `vehicles.vehicle(?).combine#workedHectars` | FLOAT |  |
| `vehicles.vehicle(?).combine#numAttachedCutters` | INT |  |

## vehicles/specializations/ConnectedAttributes.lua

| Key | Type | Default |
|---|---|---|
| `<attributePath>#isActiveDirty` | BOOL | `false` |
| `<attributePath>#maxUpdateDistance` | FLOAT | `"always"` |
| `<attributePath>.updateByAnimation(?)#name` | STRING |  |
| `<attributePath>.updateByAnimation(?)#onStart` | BOOL | `false` |
| `<attributePath>.updateByAnimation(?)#onRun` | BOOL | `false` |
| `<attributePath>.updateByAnimation(?)#onStop` | BOOL | `false` |
| `<attributePath>.prerequisites.animation(?)#name` | STRING |  |
| `<attributePath>.prerequisites.animation(?)#minTime` | FLOAT | `0` |
| `<attributePath>.prerequisites.animation(?)#maxTime` | FLOAT | `1` |
| `<attributePath>.source(?)#node` | NODE_INDEX |  |
| `<attributePath>.source(?)#type` | STRING | `nil` |
| `<attributePath>.source(?)#values` | STRING |  |
| `<attributePath>.combine(?)#value` | STRING |  |
| `<attributePath>.combine(?)#operation` | STRING |  |
| `<attributePath>.combine(?)#values` | STRING |  |
| `<attributePath>.target(?)#node` | NODE_INDEX |  |
| `<attributePath>.target(?)#type` | STRING | `nil` |
| `<attributePath>.target(?)#values` | STRING |  |

## vehicles/specializations/ConnectionHoses.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.connectionHoses#maxUpdateDistance` | FLOAT | `ConnectionHoses.DEFAULT_MAX_UPDATE_DI...` |
| `vehicle.connectionHoses.sounds.connect(?)#type` | STRING |  |
| `vehicle.connectionHoses.sounds.disconnect(?)#type` | STRING |  |
| `<basePath>.skipNode(?)#node` | NODE_INDEX |  |
| `<basePath>.skipNode(?)#inputAttacherJointIndex` | INT | `1` |
| `<basePath>.skipNode(?)#attacherJointIndex` | INT | `1` |
| `<basePath>.skipNode(?)#type` | STRING |  |
| `<basePath>.skipNode(?)#specType` | STRING |  |
| `<basePath>.skipNode(?)#length` | FLOAT |  |
| `<basePath>.skipNode(?)#isTwoPointHose` | BOOL | `false` |
| `<basePath>.toolConnectorHose(?)#mountingNode` | NODE_INDEX |  |
| `<basePath>.toolConnectorHose(?)#moveNodes` | BOOL | `true` |
| `<basePath>.toolConnectorHose(?)#additionalHose` | BOOL | `true` |
| `<basePath>#node` | NODE_INDEX |  |
| `<basePath>#attacherJointIndices` | VECTOR_N |  |
| `<basePath>#attacherJointNodes` | NODE_INDICES |  |
| `<basePath>#type` | STRING |  |
| `<basePath>#specType` | STRING |  |
| `<basePath>#straighteningFactor` | FLOAT | `1` |
| `<basePath>#straighteningDirection` | VECTOR_3 | `"0 0 1"` |
| `<basePath>#socket` | STRING |  |
| `<basePath>#socketMaterialTemplateName` | VEHICLE_MATERIAL |  |
| `<basePath>#adapterType` | STRING | `"DEFAULT"` |
| `<basePath>#inputAttacherJointIndices` | VECTOR_N |  |
| `<basePath>#inputAttacherJointNodes` | NODE_INDICES |  |
| `<basePath>#hoseType` | STRING | `"DEFAULT"` |
| `<basePath>#isTwoPointHose` | BOOL | `false` |
| `<basePath>#isWorldSpaceHose` | BOOL | `true` |
| `<basePath>#dampingRange` | STRING | `0.05` |
| `<basePath>#dampingFactor` | FLOAT | `50` |
| `<basePath>#length` | FLOAT | `3` |
| `<basePath>#diameter` | FLOAT | `0.02` |
| `<basePath>#centerPointDropFactor` | FLOAT | `1` |
| `<basePath>#centerPointTension` | FLOAT | `0` |
| `<basePath>#minCenterPointAngle` | ANGLE | `"Defined on connectionHose xml, defau...` |
| `<basePath>#minCenterPointOffset` | VECTOR_TRANS | `"unlimited"` |
| `<basePath>#maxCenterPointOffset` | VECTOR_TRANS | `"unlimited"` |
| `<basePath>#minDeltaY` | FLOAT |  |
| `<basePath>#minDeltaYComponent` | NODE_INDEX |  |
| `<basePath>#materialTemplateName` | VEHICLE_MATERIAL |  |
| `<basePath>#adapterMaterialTemplateName` | VEHICLE_MATERIAL |  |
| `<basePath>#adapterNode` | NODE_INDEX |  |
| `<basePath>#outgoingAdapter` | STRING |  |
| `<basePath>#isActiveDirty` | BOOL | `false` |

## vehicles/specializations/Consumable.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.consumable.<configName>Configurations#typeName` | STRING |  |
| `vehicle.consumable.<configName>Configurations.<configName>Configuration(?)#consumableName` | STRING |  |
| `vehicle.consumable.type(?)#typeName` | STRING |  |
| `vehicle.consumable.type(?)#defaultConsumableName` | STRING |  |
| `vehicle.consumable.type(?)#fillUnitIndex` | INT | `1` |
| `vehicle.consumable.type(?)#allowRefillDialog` | BOOL | `true` |
| `vehicle.consumable.type(?)#showWarning` | BOOL | `true` |
| `vehicle.consumable.type(?).consuming#useScale` | BOOL | `false` |
| `vehicle.consumable.type(?).consuming#useAmount` | BOOL | `false` |
| `vehicle.consumable.type(?).consuming#useHideByIndex` | BOOL | `false` |
| `vehicle.consumable.type(?).consuming#hideByIndexOffset` | FLOAT | `0` |
| `vehicle.consumable.type(?).consuming.animation(?)#name` | STRING |  |
| `vehicle.consumable.type(?).consuming.animation(?)#numLoops` | FLOAT | `1` |
| `vehicle.consumable.type(?).consuming.animation(?)#numSteps` | INT |  |
| `vehicle.consumable.type(?).consuming.animation(?)#speedScale` | FLOAT | `1` |
| `vehicle.consumable.type(?).slot(?)#node` | NODE_INDEX |  |
| `vehicle.consumable.type(?).slot(?)#isConsumingSlot` | BOOL | `false` |
| `vehicle.consumable.type(?).slot(?)#useTensionBeltMesh` | BOOL | `"'true' for pallets"` |
| `vehicle.consumable.type(?).shaderParameterNode(?)#node` | NODE_INDEX |  |
| `<key>.type(?)#typeName` | STRING |  |
| `<key>.type(?)#consumingFillLevel` | FLOAT |  |
| `<key>.type(?)#consumingVariationName` | STRING |  |
| `<key>.type(?).storageSlot(?)#consumableVariation` | STRING |  |

## vehicles/specializations/ConveyorBelt.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.conveyorBelt#dischargeNodeIndex` | INT | `1` |
| `vehicle.conveyorBelt#startPercentage` | FLOAT | `0.9` |
| `vehicle.conveyorBelt.offset(?)#movingToolNode` | NODE_INDEX |  |
| `vehicle.conveyorBelt.offset(?).effect(?)#index` | INT | `0` |
| `vehicle.conveyorBelt.offset(?).effect(?)#minOffset` | FLOAT | `0` |
| `vehicle.conveyorBelt.offset(?).effect(?)#maxOffset` | FLOAT | `1` |
| `vehicle.conveyorBelt.offset(?).effect(?)#inverted` | BOOL | `false` |

## vehicles/specializations/Cover.lua

| Key | Type | Default |
|---|---|---|
| `<Cover.COVER_XML_KEY>#openAnimation` | STRING |  |
| `<Cover.COVER_XML_KEY>#openAnimationStopTime` | FLOAT |  |
| `<Cover.COVER_XML_KEY>#openAnimationStartTime` | FLOAT |  |
| `<Cover.COVER_XML_KEY>#closeAnimation` | STRING |  |
| `<Cover.COVER_XML_KEY>#closeAnimationStopTime` | FLOAT |  |
| `<Cover.COVER_XML_KEY>#openOnBuy` | BOOL | `false` |
| `<Cover.COVER_XML_KEY>#forceOpenOnTip` | BOOL | `true` |
| `<Cover.COVER_XML_KEY>#autoReactToTrigger` | BOOL | `true` |
| `<Cover.COVER_XML_KEY>#fillUnitIndices` | VECTOR_N |  |
| `<Cover.COVER_XML_KEY>#blockedToolTypes` | STRING | `"dischargeable bale trigger pallet"` |
| `vehicle.cover.coverConfigurations.coverConfiguration(?)#closeCoverIfNotAllowed` | BOOL | `false` |
| `vehicle.cover.coverConfigurations.coverConfiguration(?)#openCoverWhileTipping` | BOOL | `false` |
| `vehicle.pipe#coverMinState` | INT | `0` |
| `vehicle.pipe#coverMaxState` | INT | `"Max. cover state"` |
| `vehicles.vehicle(?).cover#state` | INT |  |

## vehicles/specializations/CrabSteering.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.crabSteering#distFromCompJointToCenterOfBackWheels` | FLOAT |  |
| `vehicle.crabSteering#aiSteeringModeIndex` | FLOAT | `1` |
| `vehicle.crabSteering#toggleSpeedFactor` | FLOAT | `1` |
| `vehicle.wheels.wheelConfigurations.wheelConfiguration(?).wheels#crabSteeringIndex` | INT |  |
| `vehicles.vehicle(?).crabSteering#state` | INT | `1` |
| `<basePath>#name` | L10N_STRING |  |
| `<basePath>#inputBindingName` | STRING |  |
| `<basePath>.wheel(?)#index` | INT |  |
| `<basePath>.wheel(?)#node` | NODE_INDEX |  |
| `<basePath>.wheel(?)#offset` | ANGLE | `0` |
| `<basePath>.wheel(?)#locked` | BOOL | `false` |
| `<basePath>.steeringCenter#node` | NODE_INDEX |  |
| `<basePath>.steeringCenter#turningRadius` | FLOAT |  |
| `<basePath>.aiAutomaticSteering#lookAheadDistance` | FLOAT |  |
| `<basePath>.steeringNode(?)#node` | NODE_INDEX |  |
| `<basePath>.steeringNode(?)#offset` | ANGLE | `0` |
| `<basePath>.steeringNode(?)#locked` | BOOL | `false` |
| `<basePath>.steeringNode(?)#rotScale` | FLOAT |  |
| `<basePath>.node(?)#node` | NODE_INDEX |  |
| `<basePath>.node(?)#rotation` | VECTOR_ROT |  |
| `<basePath>.node(?)#translation` | VECTOR_TRANS |  |
| `<basePath>.articulatedAxis#offset` | ANGLE | `0` |
| `<basePath>.articulatedAxis#locked` | BOOL | `false` |
| `<basePath>.articulatedAxis#wheelIndices` | VECTOR_N |  |
| `<basePath>.animation(?)#name` | STRING |  |
| `<basePath>.animation(?)#speed` | FLOAT | `1` |
| `<basePath>.animation(?)#stopTime` | FLOAT |  |
| `<basePath>.steeringWheel#node` | NODE_INDEX |  |
| `<basePath>.steeringWheel#indoorRotation` | ANGLE | `0` |
| `<basePath>.steeringWheel#outdoorRotation` | ANGLE | `0` |

## vehicles/specializations/Crawlers.lua

| Key | Type | Default |
|---|---|---|
| `<crawlerKey>#linkNode` | NODE_INDEX |  |
| `<crawlerKey>#linkWheelNodes` | NODE_INDICES |  |
| `<crawlerKey>#isLeft` | BOOL | `false` |
| `<crawlerKey>#trackWidth` | FLOAT | `1` |
| `<crawlerKey>#hasShallowWaterObstacle` | BOOL |  |
| `<crawlerKey>#filename` | STRING |  |
| `<crawlerKey>#offset` | VECTOR_TRANS |  |
| `<crawlerKey>#wheelIndex` | INT |  |
| `<crawlerKey>#wheelIndices` | VECTOR_N |  |
| `<crawlerKey>#wheelNodes` | NODE_INDICES |  |
| `<crawlerKey>#speedReferenceNode` | NODE_INDEX |  |
| `<crawlerKey>#fieldDirtMultiplier` | FLOAT | `75` |
| `<crawlerKey>#streetDirtMultiplier` | FLOAT | `-150` |
| `<crawlerKey>#waterWetnessFactor` | FLOAT | `20` |
| `<crawlerKey>#minDirtPercentage` | FLOAT | `0.35` |
| `<crawlerKey>#maxDirtOffset` | FLOAT | `0.5` |
| `<crawlerKey>#dirtColorChangeSpeed` | FLOAT | `20` |

## vehicles/specializations/CropRowAdjustedNodes.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.cropRowAdjustedNodes#maxUpdateDistance` | FLOAT | `100` |
| `<adjustedNodePath>#node` | NODE_INDEX |  |
| `<adjustedNodePath>#transAxis` | INT | `1` |
| `<adjustedNodePath>#minTrans` | FLOAT | `-0.25` |
| `<adjustedNodePath>#maxTrans` | FLOAT | `0.25` |
| `<adjustedNodePath>#moveSpeed` | FLOAT | `0.25` |
| `<adjustedNodePath>#betweenRows` | BOOL | `true` |
| `<adjustedNodePath>#fruitTypes` | STRING | `"maize potato sunflower"` |
| `<adjustedNodePath>.foldable#minLimit` | FLOAT | `0` |
| `<adjustedNodePath>.foldable#maxLimit` | FLOAT | `1` |

## vehicles/specializations/Cultivator.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.cultivator.directionNode#node` | NODE_INDEX |  |
| `vehicle.cultivator.onlyActiveWhenLowered#value` | BOOL | `true` |
| `vehicle.cultivator#isSubsoiler` | BOOL | `false` |
| `vehicle.cultivator#useDeepMode` | BOOL | `true` |
| `vehicle.cultivator#isPowerHarrow` | BOOL | `false` |

## vehicles/specializations/Cutter.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.cutter#fruitTypes` | STRING |  |
| `vehicle.cutter#fruitTypeCategories` | STRING |  |
| `vehicle.cutter#fruitTypeConverter` | STRING |  |
| `vehicle.cutter#fillTypeConverter` | STRING |  |
| `<Cutter.CUTTER_TILT_XML_KEY>.automaticTiltNode(?)#node` | NODE_INDEX |  |
| `<Cutter.CUTTER_TILT_XML_KEY>.automaticTiltNode(?)#minAngle` | ANGLE | `-5` |
| `<Cutter.CUTTER_TILT_XML_KEY>.automaticTiltNode(?)#maxAngle` | ANGLE | `5` |
| `<Cutter.CUTTER_TILT_XML_KEY>.automaticTiltNode(?)#maxSpeed` | ANGLE | `1` |
| `<Cutter.CUTTER_TILT_XML_KEY>#raycastNode1` | NODE_INDEX |  |
| `<Cutter.CUTTER_TILT_XML_KEY>#raycastNode2` | NODE_INDEX |  |
| `vehicle.cutter#allowsForageGrowthState` | BOOL | `false` |
| `vehicle.cutter#allowCuttingWhileRaised` | BOOL | `false` |
| `vehicle.cutter#movingDirection` | INT | `1` |
| `vehicle.cutter#strawRatio` | FLOAT | `1` |
| `vehicle.cutter.haulmDrop#delay` | TIME | `0` |
| `vehicle.cutter.spikedDrums.spikedDrum(?)#node` | NODE_INDEX |  |
| `vehicle.cutter.spikedDrums.spikedDrum(?)#spline` | NODE_INDEX |  |
| `vehicle.cutter.spikedDrums.spikedDrum(?).spike(?)#node` | NODE_INDEX |  |
| `<WorkArea.WORK_AREA_XML_KEY>.chopperArea#index` | INT |  |
| `<WorkArea.WORK_AREA_XML_CONFIG_KEY>.chopperArea#index` | INT |  |
| `<RandomlyMovingParts.RANDOMLY_MOVING_PART_XML_KEY>#moveOnlyIfCut` | BOOL | `false` |
| `<SpeedRotatingParts.SPEED_ROTATING_PART_XML_KEY>#rotateIfTurnedOn` | BOOL | `false` |
| `<Attachable.INPUT_ATTACHERJOINT_XML_KEY>#useFruitCutHeight` | BOOL | `true` |
| `<Attachable.INPUT_ATTACHERJOINT_CONFIG_XML_KEY>#useFruitCutHeight` | BOOL | `true` |
| `vehicles.vehicle(?).cutter#cutHeight` | FLOAT |  |

## vehicles/specializations/Cylindered.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.cylindered.movingTools#powerConsumingActiveTimeOffset` | TIME | `5` |
| `<toolKey>.controlGroups.controlGroup(?)#name` | L10N_STRING |  |
| `<dashboardKey>.dashboard(?)#axis` | STRING |  |
| `<dashboardKey>.dashboard(?)#attacherJointIndex` | INT |  |
| `<dashboardKey>.dashboard(?)#attacherJointNode` | NODE_INDEX |  |
| `<dashboardKey>.dashboard(?)#attacherJointNodes` | NODE_INDICES |  |
| `<key>#movingToolRotMaxActive` | ANGLE |  |
| `<key>#movingToolRotMaxInactive` | ANGLE |  |
| `<key>#movingToolRotMinActive` | ANGLE |  |
| `<key>#movingToolRotMinInactive` | ANGLE |  |
| `<key>#movingToolStartRotActive` | ANGLE |  |
| `<key>#movingToolStartRotInactive` | ANGLE |  |
| `<key>#movingToolTransMaxActive` | FLOAT |  |
| `<key>#movingToolTransMaxInactive` | FLOAT |  |
| `<key>#movingToolTransMinActive` | FLOAT |  |
| `<key>#movingToolTransMinInactive` | FLOAT |  |
| `<key>#movingToolStartTransActive` | FLOAT |  |
| `<key>#movingToolStartTransInactive` | FLOAT |  |
| `<key>#movingPartUpdateActive` | BOOL |  |
| `<key>#movingPartUpdateInactive` | BOOL |  |
| `<Dischargeable.DISCHARGE_NODE_XML_PATH>.movingToolActivation#node` | NODE_INDEX |  |
| `<Dischargeable.DISCHARGE_NODE_XML_PATH>.movingToolActivation#isInverted` | BOOL | `false` |
| `<Dischargeable.DISCHARGE_NODE_XML_PATH>.movingToolActivation#openFactor` | FLOAT | `1` |
| `<Dischargeable.DISCHARGE_NODE_XML_PATH>.movingToolActivation#openOffset` | FLOAT | `0` |
| `<Dischargeable.DISCHARGE_NODE_CONFIG_XML_PATH>.movingToolActivation#node` | NODE_INDEX |  |
| `<Dischargeable.DISCHARGE_NODE_CONFIG_XML_PATH>.movingToolActivation#isInverted` | BOOL | `false` |
| `<Dischargeable.DISCHARGE_NODE_CONFIG_XML_PATH>.movingToolActivation#openFactor` | FLOAT | `1` |
| `<Dischargeable.DISCHARGE_NODE_CONFIG_XML_PATH>.movingToolActivation#openOffset` | FLOAT | `0` |
| `<Shovel.SHOVEL_NODE_XML_KEY>.movingToolActivation#node` | NODE_INDEX |  |
| `<Shovel.SHOVEL_NODE_XML_KEY>.movingToolActivation#isInverted` | BOOL | `false` |
| `<Shovel.SHOVEL_NODE_XML_KEY>.movingToolActivation#openFactor` | FLOAT | `1` |
| `<DynamicMountAttacher.DYNAMIC_MOUNT_GRAB_XML_PATH>.movingToolActivation#node` | NODE_INDEX |  |
| `<DynamicMountAttacher.DYNAMIC_MOUNT_GRAB_XML_PATH>.movingToolActivation#isInverted` | BOOL | `false` |
| `<DynamicMountAttacher.DYNAMIC_MOUNT_GRAB_XML_PATH>.movingToolActivation#openFactor` | FLOAT | `1` |
| `vehicles.vehicle(?).cylindered.movingTool(?)#translation` | FLOAT |  |
| `vehicles.vehicle(?).cylindered.movingTool(?)#rotation` | ANGLE |  |
| `vehicles.vehicle(?).cylindered.movingTool(?)#animationTime` | FLOAT |  |
| `<baseKey>.actionSound(?)#actionNames` | STRING |  |
| `<baseKey>.actionSound(?)#nodes` | STRING |  |
| `<baseKey>.actionSound(?).pitch#dropOffFactor` | FLOAT | `1` |
| `<baseKey>.actionSound(?).pitch#dropOffTime` | FLOAT | `0` |
| `<key>#rootNode` | NODE_INDEX |  |
| `<key>#node` | NODE_INDEX |  |
| `<key>#targetNodeZ` | NODE_INDEX |  |
| `<key>#refNode` | NODE_INDEX |  |
| `<key>#maxTotalDistance` | FLOAT | `"automatically calculated"` |
| `<key>.targetMovement#speed` | FLOAT | `1` |
| `<key>.targetMovement#acceleration` | FLOAT | `50` |
| `<key>.zTranslationNodes#minMoveRatio` | FLOAT | `0.2` |
| `<key>.zTranslationNodes#maxMoveRatio` | FLOAT | `0.8` |
| `<key>.zTranslationNodes#moveRatioMinDir` | FLOAT | `0.0` |
| `<key>.zTranslationNodes#moveRatioMaxDir` | FLOAT | `1.0` |
| `<key>.zTranslationNodes#allowNegativeTrans` | BOOL | `false` |
| `<key>.zTranslationNodes#minNegativeTrans` | FLOAT | `0` |
| `<key>.zTranslationNodes.zTranslationNode(?)#node` | NODE_INDEX |  |
| `<key>.xRotationNodes.xRotationNode1#node` | NODE_INDEX |  |
| `<key>.xRotationNodes.xRotationNode2#node` | NODE_INDEX |  |
| `<toolKey>#node` | NODE_INDEX |  |
| `<toolKey>#isEasyControlTarget` | BOOL | `false` |
| `<toolKey>.rotation#rotSpeed` | ANGLE |  |
| `<toolKey>.rotation#rotAcceleration` | ANGLE |  |
| `<toolKey>.rotation#rotationAxis` | INT | `1` |
| `<toolKey>.rotation#rotMax` | ANGLE |  |
| `<toolKey>.rotation#rotMin` | ANGLE |  |
| `<toolKey>.rotation#startRot` | ANGLE |  |
| `<toolKey>.rotation#syncMaxRotLimits` | BOOL | `false` |
| `<toolKey>.rotation#syncMinRotLimits` | BOOL | `false` |
| `<toolKey>.rotation#rotSendNumBits` | INT | `"automatically calculated by rotation...` |
| `<toolKey>.rotation#attachRotMax` | ANGLE |  |
| `<toolKey>.rotation#attachRotMin` | ANGLE |  |
| `<toolKey>.rotation#detachingRotMaxLimit` | ANGLE |  |
| `<toolKey>.rotation#detachingRotMinLimit` | ANGLE |  |
| `<toolKey>.translation#transSpeed` | FLOAT |  |
| `<toolKey>.translation#transAcceleration` | FLOAT |  |
| `<toolKey>.translation#translationAxis` | INT |  |
| `<toolKey>.translation#transMax` | FLOAT |  |
| `<toolKey>.translation#transMin` | FLOAT |  |
| `<toolKey>.translation#startTrans` | FLOAT |  |
| `<toolKey>.translation#attachTransMax` | FLOAT |  |
| `<toolKey>.translation#attachTransMin` | FLOAT |  |
| `<toolKey>.translation#detachingTransMaxLimit` | FLOAT |  |
| `<toolKey>.translation#detachingTransMinLimit` | FLOAT |  |
| `<toolKey>#playSound` | BOOL | `false` |
| `<toolKey>.animation#animName` | STRING |  |
| `<toolKey>.animation#animSpeed` | FLOAT |  |
| `<toolKey>.animation#animAcceleration` | FLOAT |  |
| `<toolKey>.animation#animSendNumBits` | INT | `8` |
| `<toolKey>.animation#animMaxTime` | FLOAT | `1` |
| `<toolKey>.animation#animMinTime` | FLOAT | `0` |
| `<toolKey>.animation#animStartTime` | FLOAT |  |
| `<toolKey>.controls#iconName` | STRING |  |
| `<toolKey>.controls#groupIndex` | INT | `0` |
| `<toolKey>.controls#axis` | STRING |  |
| `<toolKey>.controls#invertAxis` | BOOL | `false` |
| `<toolKey>.controls#mouseSpeedFactor` | FLOAT | `1` |
| `<toolKey>#allowSaving` | BOOL | `true` |
| `<toolKey>#aiActivePosition` | FLOAT |  |
| `<toolKey>#isIntitialDirty` | BOOL | `true` |
| `<toolKey>#delayedNode` | NODE_INDEX |  |
| `<toolKey>#delayedFrames` | INT | `3` |
| `<toolKey>#isConsumingPower` | BOOL | `false` |
| `<toolKey>.dependentPart(?)#node` | NODE_INDEX |  |
| `<toolKey>.dependentPart(?)#maxUpdateDistance` | STRING | `"-"` |
| `<toolKey>#wheelIndices` | VECTOR_N |  |
| `<toolKey>#wheelNodes` | STRING |  |
| `<toolKey>.inputAttacherJoint#value` | BOOL |  |
| `<toolKey>.attacherJoint#jointIndices` | VECTOR_N |  |
| `<toolKey>.attacherJoint#ignoreWarning` | BOOL | `false` |
| `<toolKey>#fillUnitIndex` | INT |  |
| `<toolKey>#minFillLevel` | FLOAT |  |
| `<toolKey>#maxFillLevel` | FLOAT |  |
| `<toolKey>#foldMinLimit` | FLOAT | `0` |
| `<toolKey>#foldMaxLimit` | FLOAT | `1` |
| `<partKey>#node` | NODE_INDEX |  |
| `<partKey>#referenceFrame` | NODE_INDEX |  |
| `<partKey>#referencePoint` | NODE_INDEX |  |
| `<partKey>#referencePoints` | NODE_INDICES |  |
| `<partKey>#invertZ` | BOOL | `false` |
| `<partKey>#scaleZ` | BOOL | `false` |
| `<partKey>#limitedAxis` | INT |  |
| `<partKey>#isActiveDirty` | BOOL | `false` |
| `<partKey>#playSound` | BOOL | `false` |
| `<partKey>#moveToReferenceFrame` | BOOL | `false` |
| `<partKey>#doLineAlignment` | BOOL | `false` |
| `<partKey>#doInversedLineAlignment` | BOOL | `false` |
| `<partKey>#do3DLineAlignment` | BOOL | `false` |
| `<partKey>.orientationLine#partLength` | FLOAT | `0.5` |
| `<partKey>.orientationLine#referenceTransNode` | NODE_INDEX |  |
| `<partKey>.orientationLine#partLengthNode` | NODE_INDEX |  |
| `<partKey>.orientationLine.lineNode(?)#node` | NODE_INDEX |  |
| `<partKey>#doDirectionAlignment` | BOOL | `true` |
| `<partKey>#doRotationAlignment` | BOOL | `false` |
| `<partKey>#rotMultiplier` | FLOAT | `0` |
| `<partKey>#minRot` | ANGLE |  |
| `<partKey>#maxRot` | ANGLE |  |
| `<partKey>#alignToWorldY` | BOOL | `false` |
| `<partKey>#localReferencePoint` | NODE_INDEX |  |
| `<partKey>#referenceDistancePoint` | NODE_INDEX |  |
| `<partKey>#referenceDistance` | FLOAT |  |
| `<partKey>#localReferenceDistance` | FLOAT | `"calculated automatically"` |
| `<partKey>#updateLocalReferenceDistance` | BOOL | `false` |
| `<partKey>#dynamicLocalReferenceDistance` | BOOL | `false` |
| `<partKey>#localReferenceTranslate` | BOOL | `false` |
| `<partKey>#referenceDistanceThreshold` | FLOAT | `0.0001` |
| `<partKey>#useLocalOffset` | BOOL | `false` |
| `<partKey>#directionThreshold` | FLOAT | `0.0001` |
| `<partKey>#directionThresholdActive` | FLOAT | `0.0001` |
| `<partKey>#maxUpdateDistance` | STRING |  |
| `<partKey>#smoothedDirectionScale` | BOOL | `false` |
| `<partKey>#smoothedDirectionTime` | TIME | `2` |
| `<partKey>#debug` | BOOL | `false` |
| `<partKey>.dependentPart(?)#node` | NODE_INDEX |  |
| `<partKey>.dependentPart(?)#maxUpdateDistance` | STRING | `"-"` |
| `<partKey>#divideTranslatingDistance` | BOOL | `true` |
| `<partKey>.translatingPart(?)#node` | NODE_INDEX |  |
| `<partKey>.translatingPart(?)#referenceDistance` | FLOAT |  |
| `<partKey>.translatingPart(?)#minZTrans` | FLOAT |  |
| `<partKey>.translatingPart(?)#maxZTrans` | FLOAT |  |
| `<partKey>.translatingPart(?)#divideTranslatingDistance` | BOOL | `"movingPart#divideTranslatingDistance"` |
| `<partKey>#wheelIndices` | VECTOR_N |  |
| `<partKey>#wheelNodes` | STRING |  |
| `<partKey>.inputAttacherJoint#value` | BOOL |  |
| `<partKey>.attacherJoint#jointIndices` | VECTOR_N |  |
| `<partKey>.attacherJoint#ignoreWarning` | BOOL | `false` |
| `<basePath>.componentJoint(?)#index` | INT |  |
| `<basePath>.componentJoint(?)#ignoreWarning` | BOOL | `false` |
| `<basePath>.componentJoint(?)#anchorActor` | INT |  |
| `<basePath>.copyLocalDirectionPart(?)#node` | NODE_INDEX |  |
| `<basePath>.copyLocalDirectionPart(?)#dirScale` | VECTOR_3 |  |
| `<basePath>.copyLocalDirectionPart(?)#upScale` | VECTOR_3 |  |
| `<basePath>.dependentAnimation(?)#name` | STRING |  |
| `<basePath>.dependentAnimation(?)#translationAxis` | INT |  |
| `<basePath>.dependentAnimation(?)#rotationAxis` | INT |  |
| `<basePath>.dependentAnimation(?)#useTranslatingPartIndex` | INT |  |
| `<basePath>.dependentAnimation(?)#minValue` | FLOAT |  |
| `<basePath>.dependentAnimation(?)#maxValue` | FLOAT |  |
| `<basePath>.dependentAnimation(?)#invert` | BOOL | `false` |
| `<basePath>.dependentMovingTool(?)#node` | NODE_INDEX |  |
| `<basePath>.dependentMovingTool(?)#axis` | INT | `1` |
| `<basePath>.dependentMovingTool(?)#speedScale` | FLOAT |  |
| `<basePath>.dependentMovingTool(?)#requiresMovement` | BOOL | `false` |
| `<basePath>.dependentMovingTool(?).rotationBasedLimits.limit(?)#rotation` | ANGLE |  |
| `<basePath>.dependentMovingTool(?).rotationBasedLimits.limit(?)#rotMin` | ANGLE |  |
| `<basePath>.dependentMovingTool(?).rotationBasedLimits.limit(?)#rotMax` | ANGLE |  |
| `<basePath>.dependentMovingTool(?).rotationBasedLimits.limit(?)#transMin` | FLOAT |  |
| `<basePath>.dependentMovingTool(?).rotationBasedLimits.limit(?)#transMax` | FLOAT |  |
| `<basePath>.dependentMovingTool(?)#minTransLimits` | VECTOR_2 |  |
| `<basePath>.dependentMovingTool(?)#maxTransLimits` | VECTOR_2 |  |
| `<basePath>.dependentMovingTool(?)#minRotLimits` | VECTOR_ROT_2 |  |
| `<basePath>.dependentMovingTool(?)#maxRotLimits` | VECTOR_ROT_2 |  |

## vehicles/specializations/CylinderedFoldable.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.cylindered#loadMovingToolStatesAfterFolding` | BOOL | `false` |
| `vehicle.cylindered#loadMovingToolStatesFoldTime` | FLOAT |  |

## vehicles/specializations/Dashboard.lua

| Key | Type | Default |
|---|---|---|
| `<Dashboard.GROUP_XML_KEY>#name` | STRING |  |
| `vehicle.dashboard#maxUpdateDistance` | FLOAT | `Dashboard.DEFAULT_MAX_UPDATE_DISTANCE` |
| `vehicle.dashboard#maxUpdateDistanceCritical` | FLOAT | `Dashboard.DEFAULT_MAX_UPDATE_DISTANCE...` |
| `vehicle.dashboard.compounds.compound(?)#linkNode` | NODE_INDEX |  |
| `vehicle.dashboard.compounds.compound(?)#filename` | STRING |  |
| `vehicle.dashboard.compounds.compound(?)#name` | STRING |  |
| `vehicle.dashboard.compounds.compound(?)#configIds` | STRING_LIST |  |
| `vehicle.dashboard.compounds.compound(?).configurationDependency(?)#configName` | STRING |  |
| `vehicle.dashboard.compounds.compound(?).configurationDependency(?)#configIndex` | INT |  |
| `vehicle.dashboard.compounds.compound(?).configurationDependency(?)#additionalConfigIds` | STRING_LIST |  |
| `vehicle.dashboard.compounds.compound(?).configurationDependency(?)#disabledConfigIds` | STRING_LIST |  |
| `<basePath>.dashboard(?)#valueType` | STRING | `nil` |
| `<basePath>.dashboard(?)#displayType` | STRING | `nil` |
| `<basePath>.dashboard(?)#doInterpolation` | BOOL | `false` |
| `<basePath>.dashboard(?)#interpolationSpeed` | FLOAT | `0.005` |
| `<basePath>.dashboard(?)#idleValue` | FLOAT | `0` |
| `<basePath>.dashboard(?)#offsetValue` | FLOAT | `0` |
| `<basePath>.dashboard(?)#minActiveValue` | FLOAT |  |
| `<basePath>.dashboard(?)#maxActiveValue` | FLOAT |  |
| `<basePath>.dashboard(?).valueMapping(?)#sourceValue` | FLOAT |  |
| `<basePath>.dashboard(?).valueMapping(?)#dashboardValue` | FLOAT |  |
| `<basePath>.dashboard(?)#groups` | STRING |  |
| `<basePath>.dashboard(?)#node` | NODE_INDEX |  |
| `<basePath>.dashboard(?)#warningThresholdMin` | FLOAT |  |
| `<basePath>.dashboard(?)#warningThresholdMax` | FLOAT |  |

## vehicles/specializations/Dischargeable.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.dischargeable.dashboards.dashboard(?)#dischargeNodeIndex` | INT |  |
| `vehicles.vehicle(?).dischargeable#isAllowed` | BOOL | `nil` |
| `<basePath>#requiresTipOcclusionArea` | BOOL | `true` |
| `<basePath>#consumePower` | BOOL | `true` |
| `<basePath>#stopDischargeOnDeactivate` | BOOL | `true` |
| `<basePath>.dischargeNode(?)#node` | NODE_INDEX |  |
| `<basePath>.dischargeNode(?)#fillUnitIndex` | INT |  |
| `<basePath>.dischargeNode(?)#unloadInfoIndex` | INT | `1` |
| `<basePath>.dischargeNode(?)#stopDischargeOnEmpty` | BOOL | `true` |
| `<basePath>.dischargeNode(?)#canDischargeToGround` | BOOL | `true` |
| `<basePath>.dischargeNode(?)#canDischargeToObject` | BOOL | `true` |
| `<basePath>.dischargeNode(?)#canDischargeToVehicle` | BOOL | `"same as canDischargeToObject"` |
| `<basePath>.dischargeNode(?)#canStartDischargeAutomatically` | BOOL | `false` |
| `<basePath>.dischargeNode(?)#canStartGroundDischargeAutomatically` | BOOL | `false` |
| `<basePath>.dischargeNode(?)#stopDischargeIfNotPossible` | BOOL | `"default 'true' while having discharg...` |
| `<basePath>.dischargeNode(?)#canDischargeToGroundAnywhere` | BOOL | `false` |
| `<basePath>.dischargeNode(?)#emptySpeed` | FLOAT | `"fill unit capacity"` |
| `<basePath>.dischargeNode(?)#effectTurnOffThreshold` | TIME | `0.25` |
| `<basePath>.dischargeNode(?)#toolType` | STRING | `"dischargable"` |
| `<basePath>.dischargeNode(?).info#node` | NODE_INDEX | `"Discharge node"` |
| `<basePath>.dischargeNode(?).info#width` | FLOAT | `1` |
| `<basePath>.dischargeNode(?).info#length` | FLOAT | `1` |
| `<basePath>.dischargeNode(?).info#zOffset` | FLOAT | `0` |
| `<basePath>.dischargeNode(?).info#yOffset` | FLOAT | `2` |
| `<basePath>.dischargeNode(?).info#limitToGround` | BOOL | `true` |
| `<basePath>.dischargeNode(?).info#useRaycastHitPosition` | BOOL | `false` |
| `<basePath>.dischargeNode(?).raycast#node` | NODE_INDEX | `"Discharge node"` |
| `<basePath>.dischargeNode(?).raycast#useWorldNegYDirection` | BOOL | `false` |
| `<basePath>.dischargeNode(?).raycast#yOffset` | FLOAT | `0` |
| `<basePath>.dischargeNode(?).raycast#maxDistance` | FLOAT | `10` |
| `<basePath>.dischargeNode(?)#maxDistance` | FLOAT | `10` |
| `<basePath>.dischargeNode(?).fillType#converterName` | STRING |  |
| `<basePath>.dischargeNode(?).trigger#node` | NODE_INDEX |  |
| `<basePath>.dischargeNode(?).activationTrigger#node` | NODE_INDEX |  |
| `<basePath>.dischargeNode(?).distanceObjectChanges#threshold` | FLOAT | `0.5` |
| `<basePath>.dischargeNode(?)#playSound` | BOOL | `true` |
| `<basePath>.dischargeNode(?)#soundNode` | NODE_INDEX | `"Discharge node"` |
| `<basePath>.dischargeNode(?).animation#name` | STRING |  |
| `<basePath>.dischargeNode(?).animation#speed` | FLOAT | `1` |
| `<basePath>.dischargeNode(?).animation#resetSpeed` | FLOAT | `1` |
| `<basePath>.dischargeNode(?).dischargeSound#overwriteSharedSound` | BOOL | `false` |

## vehicles/specializations/Drivable.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.drivable#reverserDirection` | INT | `1` |
| `vehicle.drivable#steeringDirection` | INT | `1` |
| `vehicle.drivable.speedRotScale#scale` | FLOAT | `80` |
| `vehicle.drivable.speedRotScale#offset` | FLOAT | `0.7` |
| `vehicle.drivable.cruiseControl#maxSpeed` | FLOAT | `"Max. vehicle speed"` |
| `vehicle.drivable.cruiseControl#minSpeed` | FLOAT | `1` |
| `vehicle.drivable.cruiseControl#maxSpeedReverse` | FLOAT | `"Max. value reverse speed"` |
| `vehicle.drivable.cruiseControl#enabled` | BOOL | `true` |
| `vehicle.drivable.steeringWheel#node` | NODE_INDEX |  |
| `vehicle.drivable.steeringWheel#indoorRotation` | ANGLE | `0` |
| `vehicle.drivable.steeringWheel#outdoorRotation` | ANGLE | `0` |
| `vehicle.drivable.idleTurning#allowed` | BOOL | `false` |
| `vehicle.drivable.idleTurning#updateSteeringWheel` | BOOL | `true` |
| `vehicle.drivable.idleTurning#lockDirection` | BOOL | `true` |
| `vehicle.drivable.idleTurning#direction` | INT | `1` |
| `vehicle.drivable.idleTurning#maxSpeed` | FLOAT | `10` |
| `vehicle.drivable.idleTurning#steeringFactor` | FLOAT | `100` |
| `vehicle.drivable.idleTurning.wheel(?)#node` | NODE_INDEX |  |
| `vehicle.drivable.idleTurning.wheel(?)#steeringAngle` | ANGLE |  |
| `vehicle.drivable.idleTurning.wheel(?)#inverted` | BOOL | `false` |
| `vehicles.vehicle(?).drivable#cruiseControl` | INT |  |
| `vehicles.vehicle(?).drivable#cruiseControlReverse` | INT |  |

## vehicles/specializations/DynamicMountAttacher.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.dynamicMountAttacher#node` | NODE_INDEX |  |
| `vehicle.dynamicMountAttacher#forceLimitScale` | FLOAT | `1` |
| `vehicle.dynamicMountAttacher#timeToMount` | FLOAT | `1000` |
| `vehicle.dynamicMountAttacher#stateChangeMount` | BOOL | `false` |
| `vehicle.dynamicMountAttacher#numObjectBits` | INT | `5` |
| `vehicle.dynamicMountAttacher.grab#openMountType` | STRING | `"TYPE_FORK"` |
| `vehicle.dynamicMountAttacher.grab#closedMountType` | STRING | `"TYPE_AUTO_ATTACH_XYZ"` |
| `vehicle.dynamicMountAttacher.fork(?)#node` | NODE_INDEX |  |
| `vehicle.dynamicMountAttacher.fork(?)#mountType` | STRING | `"FORK"` |
| `vehicle.dynamicMountAttacher.fork(?)#forceLimitScale` | FLOAT | `1` |
| `vehicle.dynamicMountAttacher#triggerNode` | NODE_INDEX |  |
| `vehicle.dynamicMountAttacher#rootNode` | NODE_INDEX |  |
| `vehicle.dynamicMountAttacher#jointNode` | NODE_INDEX |  |
| `vehicle.dynamicMountAttacher#forceAcceleration` | FLOAT | `30` |
| `vehicle.dynamicMountAttacher#mountType` | STRING | `"TYPE_AUTO_ATTACH_XZ"` |
| `vehicle.dynamicMountAttacher#transferMass` | BOOL | `false` |
| `vehicle.dynamicMountAttacher.lockPosition(?)#xmlFilename` | STRING |  |
| `vehicle.dynamicMountAttacher.lockPosition(?)#jointNode` | NODE_INDEX |  |
| `vehicle.dynamicMountAttacher.animation#name` | STRING |  |
| `vehicle.dynamicMountAttacher.animation#speed` | FLOAT | `1` |
| `vehicle.dynamicMountAttacher#allowFoldingWhileMounted` | BOOL | `true` |

## vehicles/specializations/DynamicallyLoadedParts.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>#filename` | STRING |  |
| `<basePath>#node` | NODE_INDEX | `"0\|0"` |
| `<basePath>#linkNode` | NODE_INDEX | `"0>"` |
| `<basePath>#position` | VECTOR_TRANS | `"0 0 0"` |
| `<basePath>#rotationNode` | NODE_INDEX | `"node"` |
| `<basePath>#rotation` | VECTOR_ROT |  |
| `<basePath>#shaderParameterName` | STRING |  |
| `<basePath>#shaderParameter` | VECTOR_4 |  |

## vehicles/specializations/Enterable.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.enterable#isTabbable` | BOOL | `true` |
| `vehicle.enterable#canBeEnteredFromMenu` | BOOL | `"same as #isTabbable"` |
| `vehicle.enterable.forceSelectionOnEnter` | BOOL | `false` |
| `vehicle.enterable.enterReferenceNode#node` | NODE_INDEX |  |
| `vehicle.enterable.enterReferenceNode#interactionRadius` | FLOAT | `6` |
| `vehicle.enterable.exitPoint#node` | NODE_INDEX |  |
| `vehicle.enterable.nicknameRenderNode#node` | NODE_INDEX | `"root node"` |
| `vehicle.enterable.nicknameRenderNode#offset` | VECTOR_TRANS |  |
| `vehicle.enterable.reverb#referenceNode` | NODE_INDEX | `"center of vehicle +2m Y"` |
| `vehicle.enterable.enterAnimation#name` | STRING |  |
| `vehicle.enterable.additionalCharacter#node` | NODE_INDEX |  |
| `vehicle.enterable.characterTargetNodeModifier(?)#node` | NODE_INDEX |  |
| `vehicle.enterable.characterTargetNodeModifier(?)#poseId` | STRING |  |
| `vehicle.enterable.characterTargetNodeModifier(?).state(?)#node` | NODE_INDEX |  |
| `vehicle.enterable.characterTargetNodeModifier(?).state(?)#referenceNode` | NODE_INDEX |  |
| `vehicle.enterable.characterTargetNodeModifier(?).state(?)#directionReferenceNode` | NODE_INDEX |  |
| `vehicle.enterable.characterTargetNodeModifier(?).state(?)#referenceNodeMovement` | BOOL | `false` |
| `vehicle.enterable.characterTargetNodeModifier(?).state(?)#poseId` | STRING |  |
| `vehicle.enterable.characterTargetNodeModifier(?)#transitionTime` | FLOAT | `0.1` |
| `vehicle.enterable.characterTargetNodeModifier(?)#transitionIdleDelay` | FLOAT | `0.5` |
| `vehicle.enterable.mirrors.mirror(?)#node` | NODE_INDEX |  |
| `vehicle.enterable.mirrors.mirror(?)#prio` | INT | `2` |
| `<Dashboard.GROUP_XML_KEY>#isEntered` | BOOL |  |
| `vehicles.vehicle(?).enterable#activeCameraIndex` | INT | `1` |
| `vehicles.vehicle(?).enterable#isTabbable` | BOOL | `true` |
| `vehicles.vehicle(?).enterable#isLeavingAllowed` | BOOL | `true` |

## vehicles/specializations/EnterablePassenger.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>.passengerSeat(?)#node` | NODE_INDEX |  |
| `<basePath>.passengerSeat(?)#exitPoint` | NODE_INDEX |  |
| `<basePath>.passengerSeat(?)#outdoorCameraIndex` | INT |  |
| `<basePath>.passengerSeat(?)#nicknameOffset` | FLOAT | `1.5` |

## vehicles/specializations/ExternalVehicleControl.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.externalVehicleControl.trigger(?)#node` | NODE_INDEX |  |
| `<ExternalVehicleControl.FUNCTION_XML_PATH>#name` | STRING |  |

## vehicles/specializations/FellerBuncher.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.fellerBuncher#fillUnitIndex` | INT |  |
| `vehicle.fellerBuncher#maxRadius` | FLOAT | `1` |
| `vehicle.fellerBuncher#releaseInputAction` | STRING | `"IMPLEMENT_EXTRA2"` |
| `vehicle.fellerBuncher#cutInputAction` | STRING |  |
| `vehicle.fellerBuncher.cutNode#node` | NODE_INDEX |  |
| `vehicle.fellerBuncher.cutNode#sizeY` | FLOAT | `2` |
| `vehicle.fellerBuncher.cutNode#sizeZ` | FLOAT | `2` |
| `vehicle.fellerBuncher.cutNode#duration` | TIME | `1` |
| `vehicle.fellerBuncher.cutNode.cutCollision#node` | NODE_INDEX |  |
| `vehicle.fellerBuncher.cutNode.cutCollision#startTrans` | VECTOR_TRANS |  |
| `vehicle.fellerBuncher.cutNode.cutCollision#endTrans` | VECTOR_TRANS |  |
| `vehicle.fellerBuncher.mountNode#node` | NODE_INDEX |  |
| `vehicle.fellerBuncher.mountNode#sizeY` | FLOAT | `2` |
| `vehicle.fellerBuncher.mountNode#sizeZ` | FLOAT | `2` |
| `vehicle.fellerBuncher.treeMoveDirectionNode#node` | NODE_INDEX |  |
| `vehicle.fellerBuncher.treeMoveDirectionNode#distance` | FLOAT |  |
| `vehicle.fellerBuncher.treeMoveDirectionNode#liftDistance` | FLOAT |  |
| `vehicle.fellerBuncher.mainGrab#animationName` | STRING |  |
| `vehicle.fellerBuncher.mainGrab#speedScale` | FLOAT | `1` |
| `vehicle.fellerBuncher.mainGrab#releaseSpeedScale` | FLOAT | `1` |
| `vehicle.fellerBuncher.mainGrab#componentJointIndices` | VECTOR_N |  |
| `vehicle.fellerBuncher.mainGrab#dampingFactor` | FLOAT | `20` |
| `vehicle.fellerBuncher.cutAnimation#animationName` | STRING |  |
| `vehicle.fellerBuncher.cutAnimation#speedScale` | FLOAT | `1` |
| `vehicle.fellerBuncher.unmount#delay` | TIME | `0.4` |
| `vehicle.fellerBuncher.unmount#animationName` | STRING |  |
| `vehicle.fellerBuncher.unmount#speedScale` | FLOAT | `1` |
| `vehicle.fellerBuncher.treeSlot(?).grab#animationName` | STRING |  |
| `vehicle.fellerBuncher.treeSlot(?).grab#speedScale` | FLOAT | `1` |
| `vehicle.fellerBuncher.treeSlot(?).grab#releaseSpeedScale` | FLOAT | `1` |

## vehicles/specializations/FertilizingCultivator.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.fertilizingCultivator#needsSetIsTurnedOn` | BOOL | `false` |

## vehicles/specializations/FertilizingSowingMachine.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.fertilizingSowingMachine#needsSetIsTurnedOn` | BOOL | `false` |

## vehicles/specializations/FillTriggerVehicle.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.fillTriggerVehicle#triggerNode` | NODE_INDEX |  |
| `vehicle.fillTriggerVehicle#fillUnitIndex` | INT | `1` |
| `vehicle.fillTriggerVehicle#litersPerSecond` | FLOAT | `200` |

## vehicles/specializations/FillUnit.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.storeData.specs.fillTypes` | STRING |  |
| `vehicle.storeData.specs.fillTypeCategories` | STRING |  |
| `vehicle.storeData.specs.fruitTypes` | STRING |  |
| `vehicle.storeData.specs.fruitTypeCategories` | STRING |  |
| `vehicle.storeData.specs.capacity` | FLOAT |  |
| `<FillUnit.FILL_UNIT_CONFIG_XML_KEY>.fillUnits#removeVehicleIfEmpty` | BOOL | `false` |
| `<FillUnit.FILL_UNIT_CONFIG_XML_KEY>.fillUnits#removeVehicleThreshold` | FLOAT | `0` |
| `<FillUnit.FILL_UNIT_CONFIG_XML_KEY>.fillUnits#removeVehicleDelay` | TIME | `0` |
| `<FillUnit.FILL_UNIT_CONFIG_XML_KEY>.fillUnits#removeVehicleReward` | FLOAT | `0` |
| `<FillUnit.FILL_UNIT_CONFIG_XML_KEY>.fillUnits#allowFoldingWhileFilled` | BOOL | `true` |
| `<FillUnit.FILL_UNIT_CONFIG_XML_KEY>.fillUnits#allowFoldingThreshold` | FLOAT | `0.0001` |
| `<FillUnit.FILL_UNIT_CONFIG_XML_KEY>.fillUnits#fillTypeChangeThreshold` | FLOAT | `0.05` |
| `<FillUnit.FILL_UNIT_CONFIG_XML_KEY>.fillUnits.fillTrigger#litersPerSecond` | FLOAT | `200` |
| `<FillUnit.FILL_UNIT_CONFIG_XML_KEY>.fillUnits.fillTrigger#consumePtoPower` | BOOL | `false` |
| `<fillUnitPath>#capacity` | FLOAT | `"unlimited"` |
| `<fillUnitPath>#updateMass` | BOOL | `true` |
| `<fillUnitPath>#canBeUnloaded` | BOOL | `true` |
| `<fillUnitPath>#allowFoldingThreshold` | FLOAT | `"Value of fillUnits#allowFoldingThres...` |
| `<fillUnitPath>#showCapacityInShop` | BOOL | `true` |
| `<fillUnitPath>#showInShop` | BOOL | `true` |
| `<fillUnitPath>.exactFillRootNode#node` | NODE_INDEX |  |
| `<fillUnitPath>.exactFillRootNode#extraEffectDistance` | FLOAT | `0` |
| `<fillUnitPath>.autoAimTargetNode#node` | NODE_INDEX |  |
| `<fillUnitPath>.autoAimTargetNode#startZ` | FLOAT |  |
| `<fillUnitPath>.autoAimTargetNode#endZ` | FLOAT |  |
| `<fillUnitPath>.autoAimTargetNode#startPercentage` | FLOAT |  |
| `<fillUnitPath>.autoAimTargetNode#invert` | BOOL |  |
| `<fillUnitPath>#fillTypeCategories` | STRING |  |
| `<fillUnitPath>#fillTypes` | STRING |  |
| `<fillUnitPath>#startFillLevel` | FLOAT |  |
| `<fillUnitPath>#startFillType` | STRING |  |
| `<fillUnitPath>.fillRootNode#node` | NODE_INDEX | `"first component"` |
| `<fillUnitPath>.fillMassNode#node` | NODE_INDEX | `"first component"` |
| `<fillUnitPath>#updateFillLevelMass` | BOOL | `true` |
| `<fillUnitPath>#ignoreFillLimit` | BOOL | `false` |
| `<fillUnitPath>#synchronizeFillLevel` | BOOL | `true` |
| `<fillUnitPath>#synchronizeFullFillLevel` | BOOL | `false` |
| `<fillUnitPath>#synchronizationNumBits` | INT |  |
| `<fillUnitPath>#showOnHud` | BOOL | `true` |
| `<fillUnitPath>#showOnInfoHud` | BOOL | `true` |
| `<fillUnitPath>#uiPrecision` | INT | `0` |
| `<fillUnitPath>#uiCustomFillTypeName` | L10N_STRING |  |
| `<fillUnitPath>#uiDisplayType` | STRING | `"BAR"` |
| `<fillUnitPath>#blocksAutomatedTrainTravel` | BOOL | `false` |
| `<fillUnitPath>#fillAnimation` | STRING |  |
| `<fillUnitPath>#fillAnimationLoadTime` | FLOAT |  |
| `<fillUnitPath>#fillAnimationEmptyTime` | FLOAT |  |
| `<fillUnitPath>.fillLevelAnimation(?)#name` | STRING |  |
| `<fillUnitPath>.fillLevelAnimation(?)#resetOnEmpty` | BOOL | `true` |
| `<fillUnitPath>.fillLevelAnimation(?)#updateWhileFilled` | BOOL | `true` |
| `<fillUnitPath>.fillLevelAnimation(?)#useMaxStateIfEmpty` | BOOL | `true` |
| `<fillUnitPath>.alarmTriggers.alarmTrigger(?)#minFillLevel` | FLOAT |  |
| `<fillUnitPath>.alarmTriggers.alarmTrigger(?)#maxFillLevel` | FLOAT |  |
| `<fillUnitPath>.alarmTriggers.alarmTrigger(?)#needsTurnOn` | BOOL | `false` |
| `<fillUnitPath>.alarmTriggers.alarmTrigger(?)#turnOffInTrigger` | BOOL | `false` |
| `<fillUnitPath>.measurementNodes.measurementNode(?)#node` | NODE_INDEX |  |
| `<fillUnitPath>.fillPlane.node(?)#node` | NODE_INDEX |  |
| `<fillUnitPath>.fillPlane.node(?).key(?)#time` | FLOAT |  |
| `<fillUnitPath>.fillPlane.node(?).key(?)#translation` | VECTOR_TRANS |  |
| `<fillUnitPath>.fillPlane.node(?).key(?)#y` | FLOAT |  |
| `<fillUnitPath>.fillPlane.node(?).key(?)#rotation` | VECTOR_ROT |  |
| `<fillUnitPath>.fillPlane.node(?).key(?)#scale` | VECTOR_SCALE |  |
| `<fillUnitPath>.fillPlane.node(?)#minMaxY` | VECTOR_2 |  |
| `<fillUnitPath>.fillPlane.node(?)#alwaysVisible` | BOOL | `false` |
| `<fillUnitPath>.fillPlane#defaultFillType` | STRING |  |
| `<fillUnitPath>.fillTypeMaterials.material(?)#fillType` | STRING |  |
| `<fillUnitPath>.fillTypeMaterials.material(?)#node` | NODE_INDEX |  |
| `<fillUnitPath>.fillTypeMaterials.material(?)#refNode` | NODE_INDEX |  |
| `<fillUnitPath>.fillTypeMaterials.material(?)#materialSlotName` | STRING |  |
| `<fillUnitPath>.fillTypeMaterials.material(?)#diffuse` | FILENAME |  |
| `<FillUnit.FILL_UNIT_CONFIG_XML_KEY>.fillUnits.unloading(?)#node` | NODE_INDEX |  |
| `<FillUnit.FILL_UNIT_CONFIG_XML_KEY>.fillUnits.unloading(?)#width` | FLOAT | `15` |
| `<FillUnit.FILL_UNIT_CONFIG_XML_KEY>.fillUnits.unloading(?)#offset` | VECTOR_TRANS | `"0 0 0"` |
| `<Leveler.LEVELER_NODE_XML_KEY>#fillUnitIndex` | INT | `1` |
| `<Leveler.LEVELER_NODE_XML_KEY>#minFillLevel` | FLOAT | `0` |
| `<Leveler.LEVELER_NODE_XML_KEY>#maxFillLevel` | FLOAT | `1` |
| `vehicles.vehicle(?).fillUnit.unit(?)#index` | INT |  |
| `vehicles.vehicle(?).fillUnit.unit(?)#fillType` | STRING |  |
| `vehicles.vehicle(?).fillUnit.unit(?)#fillLevel` | FLOAT |  |
| `<key>#shopDisplayUnit` | STRING | `"LITER"` |
| `<key>#unitTextOverride` | STRING |  |

## vehicles/specializations/FillVolume.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>.volumes.volume(?)#node` | NODE_INDEX |  |
| `<basePath>.volumes.volume(?)#fillUnitIndex` | INT |  |
| `<basePath>.volumes.volume(?)#fillUnitFactor` | FLOAT | `1` |
| `<basePath>.volumes.volume(?)#useFullCapacity` | BOOL | `true` |
| `<basePath>.volumes.volume(?)#allSidePlanes` | BOOL | `true` |
| `<basePath>.volumes.volume(?)#retessellateTop` | BOOL | `false` |
| `<basePath>.volumes.volume(?)#defaultFillType` | STRING |  |
| `<basePath>.volumes.volume(?)#forcedVolumeFillType` | STRING |  |
| `<basePath>.volumes.volume(?)#maxDelta` | FLOAT | `1.0` |
| `<basePath>.volumes.volume(?)#maxAllowedHeapAngle` | ANGLE | `35` |
| `<basePath>.volumes.volume(?)#maxSurfaceDistanceError` | FLOAT | `0.05` |
| `<basePath>.volumes.volume(?)#maxSubDivEdgeLength` | FLOAT | `0.9` |
| `<basePath>.volumes.volume(?)#syncMaxSubDivEdgeLength` | FLOAT | `1.35` |
| `<basePath>.volumes.volume(?).deformNode(?)#node` | NODE_INDEX |  |
| `vehicle.fillVolume.heightNodes.heightNode(?)#fillVolumeIndex` | INT |  |
| `vehicle.fillVolume.heightNodes.heightNode(?).refNode(?)#node` | NODE_INDEX |  |
| `vehicle.fillVolume.heightNodes.heightNode(?).node(?)#node` | NODE_INDEX |  |
| `vehicle.fillVolume.heightNodes.heightNode(?).node(?)#baseScale` | VECTOR_SCALE | `"1 1 1"` |
| `vehicle.fillVolume.heightNodes.heightNode(?).node(?)#scaleAxis` | VECTOR_3 | `"0 0 0"` |
| `vehicle.fillVolume.heightNodes.heightNode(?).node(?)#scaleMax` | VECTOR_SCALE | `"0 0 0"` |
| `vehicle.fillVolume.heightNodes.heightNode(?).node(?)#transAxis` | VECTOR_3 | `"0 0 0"` |
| `vehicle.fillVolume.heightNodes.heightNode(?).node(?)#transMax` | VECTOR_TRANS | `"0 0 0"` |
| `vehicle.fillVolume.heightNodes.heightNode(?).node(?)#minHeight` | FLOAT | `0` |
| `vehicle.fillVolume.heightNodes.heightNode(?).node(?)#heightOffset` | FLOAT | `0` |
| `vehicle.fillVolume.heightNodes.heightNode(?).node(?)#orientateToWorldY` | BOOL | `false` |
| `<basePath>.node(?)#node` | NODE_INDEX |  |
| `<basePath>.node(?)#width` | FLOAT | `1.0` |
| `<basePath>.node(?)#length` | FLOAT | `1.0` |
| `<basePath>.node(?)#fillVolumeHeightIndex` | INT |  |
| `<basePath>.node(?)#priority` | INT | `1` |
| `<basePath>.node(?)#minHeight` | FLOAT |  |
| `<basePath>.node(?)#maxHeight` | FLOAT |  |
| `<basePath>.node(?)#minFillLevelPercentage` | FLOAT |  |
| `<basePath>.node(?)#maxFillLevelPercentage` | FLOAT |  |
| `<basePath>.node(?)#heightForTranslation` | FLOAT |  |
| `<basePath>.node(?)#translationStart` | VECTOR_TRANS |  |
| `<basePath>.node(?)#translationEnd` | VECTOR_TRANS |  |

## vehicles/specializations/Foldable.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.foldable.foldingConfigurations.foldingConfiguration(?)#workingWidth` | FLOAT |  |
| `<WorkArea.WORK_AREA_XML_KEY>#foldLimitedOuterRange` | BOOL | `false` |
| `<WorkArea.WORK_AREA_XML_KEY>.folding#minLimit` | FLOAT | `0` |
| `<WorkArea.WORK_AREA_XML_KEY>.folding#maxLimit` | FLOAT | `1` |
| `<WorkArea.WORK_AREA_XML_CONFIG_KEY>#foldLimitedOuterRange` | BOOL | `false` |
| `<WorkArea.WORK_AREA_XML_CONFIG_KEY>.folding#minLimit` | FLOAT | `0` |
| `<WorkArea.WORK_AREA_XML_CONFIG_KEY>.folding#maxLimit` | FLOAT | `1` |
| `<GroundReference.GROUND_REFERENCE_XML_KEY>.folding#minLimit` | FLOAT | `0` |
| `<GroundReference.GROUND_REFERENCE_XML_KEY>.folding#maxLimit` | FLOAT | `1` |
| `<SpeedRotatingParts.SPEED_ROTATING_PART_XML_KEY>#foldLimitedOuterRange` | BOOL | `false` |
| `<SpeedRotatingParts.SPEED_ROTATING_PART_XML_KEY>#foldMinLimit` | FLOAT | `0` |
| `<SpeedRotatingParts.SPEED_ROTATING_PART_XML_KEY>#foldMaxLimit` | FLOAT | `1` |
| `<Leveler.LEVELER_NODE_XML_KEY>#foldLimitedOuterRange` | BOOL | `false` |
| `<Leveler.LEVELER_NODE_XML_KEY>#foldMinLimit` | FLOAT | `0` |
| `<Leveler.LEVELER_NODE_XML_KEY>#foldMaxLimit` | FLOAT | `1` |
| `<GroundAdjustedNodes.GROUND_ADJUSTED_NODE_XML_KEY>.foldable#minLimit` | FLOAT | `0` |
| `<GroundAdjustedNodes.GROUND_ADJUSTED_NODE_XML_KEY>.foldable#maxLimit` | FLOAT | `1` |
| `<Sprayer.SPRAY_TYPE_XML_KEY>#foldMinLimit` | FLOAT | `0` |
| `<Sprayer.SPRAY_TYPE_XML_KEY>#foldMaxLimit` | FLOAT | `1` |
| `<Sprayer.SPRAY_TYPE_XML_KEY>#foldingConfigurationIndex` | INT |  |
| `<Sprayer.SPRAY_TYPE_XML_KEY>#foldingConfigurationIndices` | VECTOR_N |  |
| `<Attachable.INPUT_ATTACHERJOINT_XML_KEY>#foldMinLimit` | FLOAT | `0` |
| `<Attachable.INPUT_ATTACHERJOINT_XML_KEY>#foldMaxLimit` | FLOAT | `1` |
| `<Attachable.INPUT_ATTACHERJOINT_CONFIG_XML_KEY>#foldMinLimit` | FLOAT | `0` |
| `<Attachable.INPUT_ATTACHERJOINT_CONFIG_XML_KEY>#foldMaxLimit` | FLOAT | `1` |
| `<Attachable.INPUT_ATTACHERJOINT_XML_KEY>.heightNode(?)#foldMinLimit` | FLOAT | `0` |
| `<Attachable.INPUT_ATTACHERJOINT_XML_KEY>.heightNode(?)#foldMaxLimit` | FLOAT | `1` |
| `<Attachable.INPUT_ATTACHERJOINT_CONFIG_XML_KEY>.heightNode(?)#foldMinLimit` | FLOAT | `0` |
| `<Attachable.INPUT_ATTACHERJOINT_CONFIG_XML_KEY>.heightNode(?)#foldMaxLimit` | FLOAT | `1` |
| `<Enterable.ADDITIONAL_CHARACTER_XML_KEY>#foldMinLimit` | FLOAT | `0` |
| `<Enterable.ADDITIONAL_CHARACTER_XML_KEY>#foldMaxLimit` | FLOAT | `1` |
| `<Attachable.STEERING_AXLE_XML_KEY>.folding#minLimit` | FLOAT | `0` |
| `<Attachable.STEERING_AXLE_XML_KEY>.folding#maxLimit` | FLOAT | `1` |
| `<Wheels.WHEEL_XML_PATH>#versatileFoldMinLimit` | FLOAT | `0` |
| `<Wheels.WHEEL_XML_PATH>#versatileFoldMaxLimit` | FLOAT | `1` |
| `<FillUnit.FILL_UNIT_XML_KEY>#foldMinLimit` | FLOAT | `0` |
| `<FillUnit.FILL_UNIT_XML_KEY>#foldMaxLimit` | FLOAT | `1` |
| `<TurnOnVehicle.TURNED_ON_ANIMATION_XML_PATH>#foldMinLimit` | FLOAT | `0` |
| `<TurnOnVehicle.TURNED_ON_ANIMATION_XML_PATH>#foldMaxLimit` | FLOAT | `1` |
| `<Pickup.PICKUP_XML_KEY>#foldMinLimit` | FLOAT | `0` |
| `<Pickup.PICKUP_XML_KEY>#foldMaxLimit` | FLOAT | `1` |
| `<Cutter.CUTTER_TILT_XML_KEY>#foldMinLimit` | FLOAT | `0` |
| `<Cutter.CUTTER_TILT_XML_KEY>#foldMaxLimit` | FLOAT | `1` |
| `<VinePrepruner.PRUNER_NODE_XML_KEY>#foldMinLimit` | FLOAT | `0` |
| `<VinePrepruner.PRUNER_NODE_XML_KEY>#foldMaxLimit` | FLOAT | `1` |
| `<Shovel.SHOVEL_NODE_XML_KEY>#foldMinLimit` | FLOAT | `0` |
| `<Shovel.SHOVEL_NODE_XML_KEY>#foldMaxLimit` | FLOAT | `1` |
| `<Attachable.STEERING_ANGLE_NODE_XML_KEY>#foldMinLimit` | FLOAT | `0` |
| `<Attachable.STEERING_ANGLE_NODE_XML_KEY>#foldMaxLimit` | FLOAT | `1` |
| `<WoodHarvester.HEADER_JOINT_TILT_XML_KEY>#foldMinLimit` | FLOAT | `0` |
| `<WoodHarvester.HEADER_JOINT_TILT_XML_KEY>#foldMaxLimit` | FLOAT | `1` |
| `<Suspensions.SUSPENSION_NODE_XML_KEY>#foldMinLimit` | FLOAT | `0` |
| `<Suspensions.SUSPENSION_NODE_XML_KEY>#foldMaxLimit` | FLOAT | `1` |
| `vehicles.vehicle(?).foldable#foldAnimTime` | FLOAT |  |
| `vehicles.vehicle(?).foldable#isAllowed` | BOOL |  |
| `<basePath>#objectText` | L10N_STRING | `"vehicle typeDesc"` |
| `<basePath>#posDirectionText` | L10N_STRING | `"$l10n_action_foldOBJECT"` |
| `<basePath>#negDirectionText` | L10N_STRING | `"$l10n_action_unfoldOBJECT"` |
| `<basePath>#middlePosDirectionText` | L10N_STRING | `"$l10n_action_liftOBJECT"` |
| `<basePath>#middleNegDirectionText` | L10N_STRING | `"$l10n_action_lowerOBJECT"` |
| `<basePath>#startAnimTime` | FLOAT | `"Depending on startMoveDirection"` |
| `<basePath>#startMoveDirection` | INT | `0` |
| `<basePath>#turnOnFoldDirection` | INT |  |
| `<basePath>#allowUnfoldingByAI` | BOOL | `true` |
| `<basePath>#foldInputButton` | STRING | `"IMPLEMENT_EXTRA2"` |
| `<basePath>#foldMiddleInputButton` | STRING | `"LOWER_IMPLEMENT"` |
| `<basePath>#foldMiddleAnimTime` | FLOAT |  |
| `<basePath>#foldMiddleDirection` | INT | `1` |
| `<basePath>#foldMiddleAIRaiseDirection` | INT | `"same as foldMiddleDirection"` |
| `<basePath>#turnOnFoldMaxLimit` | FLOAT | `1` |
| `<basePath>#turnOnFoldMinLimit` | FLOAT | `0` |
| `<basePath>#toggleCoverMaxLimit` | FLOAT | `1` |
| `<basePath>#toggleCoverMinLimit` | FLOAT | `0` |
| `<basePath>#detachingMaxLimit` | FLOAT | `1` |
| `<basePath>#detachingMinLimit` | FLOAT | `0` |
| `<basePath>#attachingMaxLimit` | FLOAT | `1` |
| `<basePath>#attachingMinLimit` | FLOAT | `0` |
| `<basePath>#allowDetachingWhileFolding` | BOOL | `false` |
| `<basePath>#loweringMaxLimit` | FLOAT | `1` |
| `<basePath>#loweringMinLimit` | FLOAT | `0` |
| `<basePath>#loadMovingToolStatesMaxLimit` | FLOAT | `1` |
| `<basePath>#loadMovingToolStatesMinLimit` | FLOAT | `0` |
| `<basePath>#dynamicMountMaxLimit` | FLOAT | `1` |
| `<basePath>#dynamicMountMinLimit` | FLOAT | `0` |
| `<basePath>#crabSteeringMinLimit` | FLOAT | `1` |
| `<basePath>#crabSteeringMaxLimit` | FLOAT | `0` |
| `<basePath>#unfoldWarning` | L10N_STRING | `"$l10n_warning_firstUnfoldTheTool"` |
| `<basePath>#detachWarning` | L10N_STRING | `"$l10n_warning_doNotDetachWhileFolding"` |
| `<basePath>#useParentFoldingState` | BOOL | `false` |
| `<basePath>#ignoreFoldMiddleWhileFolded` | BOOL | `false` |
| `<basePath>#lowerWhileDetach` | BOOL | `false` |
| `<basePath>#foldWhileDetach` | BOOL | `false` |
| `<basePath>#keepFoldingWhileDetached` | BOOL | `"true for mobile platform, otherwise ...` |
| `<basePath>#releaseBrakesWhileFolding` | BOOL | `false` |
| `<basePath>#requiresPower` | BOOL | `true` |
| `<basePath>#allowControlWhileFolding` | BOOL | `true` |
| `<basePath>.foldingPart(?)#speedScale` | FLOAT | `1` |
| `<basePath>.foldingPart(?)#componentJointIndex` | INT |  |
| `<basePath>.foldingPart(?)#anchorActor` | INT | `0` |
| `<basePath>.foldingPart(?)#rootNode` | NODE_INDEX |  |
| `<basePath>.foldingPart(?)#animationClip` | STRING |  |
| `<basePath>.foldingPart(?)#animationName` | STRING |  |
| `<basePath>.foldingPart(?)#delayDistance` | FLOAT |  |
| `<basePath>.foldingPart(?)#previousDuration` | FLOAT | `1` |
| `<basePath>.foldingPart(?)#loweringDuration` | FLOAT | `1` |
| `<basePath>.foldingPart(?)#maxDelayDuration` | FLOAT | `7.5` |
| `<basePath>.foldingPart(?)#aiSkipDelay` | BOOL | `false` |
| `<basePath>.foldingPart(?)#skipDelayOnReverse` | BOOL | `true` |

## vehicles/specializations/FoldableSteps.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.foldableSteps#animationName` | STRING |  |
| `vehicle.foldableSteps#animationSpeed` | FLOAT | `1` |
| `vehicle.foldableSteps#fillUnitIndex` | INT |  |
| `vehicle.foldableSteps.controls#action` | STRING | `"IMPLEMENT_EXTRA2"` |
| `vehicle.foldableSteps.controls#actionPos` | STRING |  |
| `vehicle.foldableSteps.controls#actionNeg` | STRING |  |
| `vehicle.foldableSteps.controls#posText` | L10N_STRING |  |
| `vehicle.foldableSteps.controls#negText` | L10N_STRING |  |
| `vehicle.foldableSteps.state(?)#time` | FLOAT |  |
| `vehicle.foldableSteps.state(?)#posText` | L10N_STRING |  |
| `vehicle.foldableSteps.state(?)#posContext` | STRING | `"VEHICLE"` |
| `vehicle.foldableSteps.state(?)#negText` | L10N_STRING |  |
| `vehicle.foldableSteps.state(?)#negContext` | STRING | `"VEHICLE"` |
| `vehicle.foldableSteps.state(?)#allowTurnOn` | BOOL | `false` |
| `vehicle.foldableSteps.state(?)#allowInfoHud` | BOOL | `false` |
| `vehicle.foldableSteps.state(?)#allowFilling` | BOOL | `false` |
| `vehicles.vehicle(?).foldableSteps#animTime` | FLOAT |  |
| `vehicles.vehicle(?).foldableSteps#state` | INT |  |
| `vehicles.vehicle(?).foldableSteps#targetState` | INT |  |

## vehicles/specializations/FoliageBending.lua

| Key | Type | Default |
|---|---|---|
| `<key>#node` | NODE_INDEX |  |
| `<key>#minX` | FLOAT |  |
| `<key>#maxX` | FLOAT |  |
| `<key>#minZ` | FLOAT |  |
| `<key>#maxZ` | FLOAT |  |
| `<key>#yOffset` | FLOAT |  |
| `<basePath>.foliageBendingModifier(?)#index` | INT |  |
| `<basePath>.foliageBendingModifier(?)#indices` | VECTOR_N |  |
| `<basePath>.foliageBendingModifier(?)#minX` | FLOAT |  |
| `<basePath>.foliageBendingModifier(?)#maxX` | FLOAT |  |
| `<basePath>.foliageBendingModifier(?)#minZ` | FLOAT |  |
| `<basePath>.foliageBendingModifier(?)#maxZ` | FLOAT |  |
| `<basePath>.foliageBendingModifier(?)#yOffset` | FLOAT |  |
| `<basePath>.foliageBendingModifier(?)#isActive` | BOOL | `true` |
| `<basePath>.foliageBendingModifier(?)#overwrite` | BOOL | `true` |

## vehicles/specializations/ForageWagon.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.forageWagon#workAreaIndex` | INT | `1` |
| `vehicle.forageWagon#fillUnitIndex` | INT | `1` |
| `vehicle.forageWagon#loadInfoIndex` | INT | `1` |
| `vehicle.forageWagon#maxPickupLitersPerSecond` | FLOAT | `500` |
| `vehicle.forageWagon.additives#fillUnitIndex` | INT |  |
| `vehicle.forageWagon.additives#usage` | FLOAT | `0.0000275` |
| `vehicle.forageWagon.additives#fillTypes` | STRING | `"GRASS_WINDROW"` |
| `vehicle.forageWagon.startFillEffect#fillStartDelay` | FLOAT | `0` |
| `vehicle.forageWagon.startFillEffect#fillStartFadeOff` | FLOAT | `0` |
| `vehicle.forageWagon.fillVolume#loadScrollSpeed` | VECTOR_3 | `"0 0 0"` |
| `vehicle.forageWagon.fillVolume#dischargeScrollSpeed` | VECTOR_3 | `"0 0 0"` |
| `<SpeedRotatingParts.SPEED_ROTATING_PART_XML_KEY>#rotateOnlyIfFillLevelIncreased` | BOOL | `false` |

## vehicles/specializations/FrontloaderAttacher.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>.attacherJoint#frontAxisLimitJoint` | BOOL | `true` |
| `<basePath>.attacherJoint#frontAxisJoint` | INT | `1` |

## vehicles/specializations/FruitExtraObjects.lua

| Key | Type | Default |
|---|---|---|
| `vehicles.vehicle(?).fruitExtraObjects#lastFruitType` | STRING |  |
| `vehicles.vehicle(?).fruitExtraObjects#lastFillType` | STRING |  |
| `<basePath>.fruitExtraObject(?)#node` | NODE_INDEX |  |
| `<basePath>.fruitExtraObject(?)#animationName` | STRING |  |
| `<basePath>.fruitExtraObject(?)#animationSpeed` | FLOAT | `1` |
| `<basePath>.fruitExtraObject(?)#isDefault` | BOOL | `false` |
| `<basePath>.fruitExtraObject(?)#fruitType` | STRING |  |
| `<basePath>.fruitExtraObject(?)#fillType` | STRING |  |
| `<basePath>#hideOnDetach` | BOOL | `false` |
| `<basePath>#hideOnMount` | BOOL | `false` |

## vehicles/specializations/FruitPreparer.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.fruitPreparer#fruitType` | STRING |  |
| `vehicle.fruitPreparer#fruitTypes` | STRING_LIST |  |
| `vehicle.fruitPreparer#aiUsePreparedState` | BOOL | `"true if vehicle has also the Cutter ...` |
| `<WorkArea.WORK_AREA_XML_KEY>.fruitPreparer#dropWorkAreaIndex` | INT |  |
| `<WorkArea.WORK_AREA_XML_CONFIG_KEY>.fruitPreparer#dropWorkAreaIndex` | INT |  |
| `<RandomlyMovingParts.RANDOMLY_MOVING_PART_XML_KEY>#moveOnlyIfPreparerCut` | BOOL | `false` |

## vehicles/specializations/GroundAdjustedNodes.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.groundAdjustedNodes#maxUpdateDistance` | FLOAT | `100` |
| `vehicle.groundAdjustedNodes#maxUpdateDistanceWobble` | FLOAT | `50` |
| `vehicle.groundAdjustedNodes#adjustToWater` | BOOL | `false` |
| `vehicle.groundAdjustedNodes#onlyActiveWhileAttached` | BOOL | `true` |
| `<basePath>#activationTime` | FLOAT | `0` |
| `<basePath>#yOffset` | FLOAT |  |
| `<basePath>.raycastNode(?)#node` | NODE_INDEX |  |
| `<basePath>.raycastNode(?)#distance` | FLOAT | `4` |
| `<basePath>.raycastNode(?)#updateFrame` | INT | `"Number of raycasts"` |
| `<basePath>.raycastNode(?)#yOffset` | FLOAT | `0` |
| `<basePath>#node` | NODE_INDEX |  |
| `<basePath>#minY` | FLOAT | `"translation in i3d - 1"` |
| `<basePath>#maxY` | FLOAT | `"minY + 1"` |
| `<basePath>#moveSpeed` | FLOAT | `1` |
| `<basePath>#resetIfNotActive` | BOOL | `true` |
| `<basePath>#moveSpeedStateChange` | FLOAT | `"#moveSpeed"` |
| `<basePath>#updateThreshold` | FLOAT | `0.002` |
| `<basePath>#inActiveOffsetY` | FLOAT | `0` |
| `<basePath>#inActiveY` | FLOAT | `"Position in i3d file"` |
| `<basePath>#averageInActivePosY` | BOOL | `false` |

## vehicles/specializations/GroundReference.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>#node` | NODE_INDEX |  |
| `<basePath>#threshold` | FLOAT | `0` |
| `<basePath>#onlyActiveWhenLowered` | BOOL | `true` |
| `<basePath>#chargeValue` | FLOAT | `1` |
| `<basePath>#forceFactor` | FLOAT |  |
| `<basePath>#maxActivationDepth` | FLOAT | `10` |
| `<SpeedRotatingParts.SPEED_ROTATING_PART_XML_KEY>#groundReferenceNodeIndex` | INT |  |

## vehicles/specializations/HUDInfoTrigger.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.hudInfoTrigger#triggerNode` | NODE_INDEX |  |

## vehicles/specializations/HeadlandAnimation.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.headlandAnimation#activationDelay` | TIME | `0.5` |
| `vehicle.headlandAnimation#deactivationDelay` | TIME | `4` |
| `vehicle.headlandAnimation#activationAngle` | FLOAT | `0.2` |
| `vehicle.headlandAnimation#deactivationAngle` | FLOAT | `0.13` |
| `vehicle.headlandAnimation#requiredGroundTypes` | STRING |  |
| `vehicle.headlandAnimation.animation(?)#name` | STRING |  |
| `vehicle.headlandAnimation.animation(?)#speed` | FLOAT |  |

## vehicles/specializations/HookLiftContainer.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.hookLiftContainer#tiltContainerOnDischarge` | BOOL | `true` |

## vehicles/specializations/HookLiftTrailer.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.hookLiftTrailer.jointLimits.key(?)#time` | FLOAT |  |
| `vehicle.hookLiftTrailer.jointLimits.key(?)#rotLimit` | VECTOR_ROT | `"0 0 0"` |
| `vehicle.hookLiftTrailer.jointLimits.key(?)#transLimit` | VECTOR_TRANS | `"0 0 0"` |
| `vehicle.hookLiftTrailer.jointLimits#refAnimation` | STRING | `"unfoldHand"` |
| `vehicle.hookLiftTrailer.unloadingAnimation#name` | STRING | `"unloading"` |
| `vehicle.hookLiftTrailer.unloadingAnimation#speed` | FLOAT | `1` |
| `vehicle.hookLiftTrailer.unloadingAnimation#reverseSpeed` | FLOAT | `-1` |
| `vehicle.hookLiftTrailer.texts#unloadContainer` | STRING | `"unload_container"` |
| `vehicle.hookLiftTrailer.texts#loadContainer` | STRING | `"load_container"` |
| `vehicle.hookLiftTrailer.texts#unloadArm` | STRING | `"unload_arm"` |
| `vehicle.hookLiftTrailer.texts#loadArm` | STRING | `"load_arm"` |

## vehicles/specializations/HydraulicHammer.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.hydraulicHammer.workNode#node` | NODE_INDEX |  |
| `vehicle.hydraulicHammer.workNode#hitAlignedNode` | NODE_INDEX |  |
| `vehicle.hydraulicHammer.workNode#destructionAmountPerHit` | FLOAT | `5` |
| `vehicle.hydraulicHammer.workNode#hitIntervalMin` | TIME | `0.15` |
| `vehicle.hydraulicHammer.workNode#hitIntervalMax` | TIME | `0.25` |
| `vehicle.hydraulicHammer.workNode#raycastDistance` | FLOAT | `0.3` |
| `vehicle.hydraulicHammer.workNode#supportedTypes` | STRING |  |
| `vehicle.hydraulicHammer.sounds.work.progressPitch#factor` | FLOAT |  |
| `vehicle.hydraulicHammer.hitAnimation#name` | STRING |  |

## vehicles/specializations/InlineWrapper.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.inlineWrapper.baleTrigger#node` | NODE_INDEX |  |
| `vehicle.inlineWrapper.baleTrigger#minFoldTime` | FLOAT | `0` |
| `vehicle.inlineWrapper.baleTrigger#maxFoldTime` | FLOAT | `1` |
| `vehicle.inlineWrapper.wrapTrigger#node` | NODE_INDEX |  |
| `vehicle.inlineWrapper.baleTypes.baleType(?)#startNode` | NODE_INDEX |  |
| `vehicle.inlineWrapper.baleTypes.baleType(?)#wrapUsage` | FLOAT | `0.1` |
| `vehicle.inlineWrapper.baleTypes.baleType(?).railing#width` | FLOAT |  |
| `vehicle.inlineWrapper.baleTypes.baleType(?).inlineBale#filename` | STRING |  |
| `vehicle.inlineWrapper.baleTypes.baleType(?).size#diameter` | FLOAT |  |
| `vehicle.inlineWrapper.baleTypes.baleType(?).size#width` | FLOAT |  |
| `vehicle.inlineWrapper.baleTypes.baleType(?).size#height` | FLOAT |  |
| `vehicle.inlineWrapper.baleTypes.baleType(?).size#length` | FLOAT |  |
| `vehicle.inlineWrapper.railings#animation` | STRING |  |
| `vehicle.inlineWrapper.railings#animStartX` | FLOAT |  |
| `vehicle.inlineWrapper.railings#animEndX` | FLOAT |  |
| `vehicle.inlineWrapper.railings#defaultX` | FLOAT | `1` |
| `vehicle.inlineWrapper.wrapping#startNode` | NODE_INDEX |  |
| `vehicle.inlineWrapper.steeringNodes.steeringNode(?)#node` | NODE_INDEX |  |
| `vehicle.inlineWrapper.wrappingNodes.wrappingNode(?)#node` | NODE_INDEX |  |
| `vehicle.inlineWrapper.wrappingNodes.wrappingNode(?)#target` | NODE_INDEX |  |
| `vehicle.inlineWrapper.wrappingNodes.wrappingNode(?)#startTrans` | VECTOR_TRANS |  |
| `vehicle.inlineWrapper.animations#pusher` | STRING | `"pusherAnimation"` |
| `vehicle.inlineWrapper.animations#wrapping` | STRING | `"wrappingAnimation"` |
| `vehicle.inlineWrapper.animations#pushOff` | STRING | `"pushOffAnimation"` |
| `vehicle.inlineWrapper.pushing#brakeForce` | STRING | `0` |
| `vehicle.inlineWrapper.pushing#openBrakeTime` | FLOAT | `0.1` |
| `vehicle.inlineWrapper.pushing#closeBrakeTime` | FLOAT | `0.5` |
| `vehicle.inlineWrapper.pushing#minBaleAmount` | INT | `4` |
| `vehicle.inlineWrapper#baleMovedThreshold` | FLOAT | `0.05` |
| `vehicle.inlineWrapper#numObjectBits` | INT | `4` |

## vehicles/specializations/JigglingParts.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>#node` | NODE_INDEX |  |
| `<basePath>#speedScale` | FLOAT | `1` |
| `<basePath>#shaderParameter` | STRING | `"amplFreq"` |
| `<basePath>#shaderParameterPrev` | STRING | `"prevAmplFreq"` |
| `<basePath>#shaderParameterComponentSpeed` | INT | `4` |
| `<basePath>#shaderParameterComponentAmplitude` | INT | `1` |
| `<basePath>#amplitudeScale` | FLOAT | `4` |
| `<basePath>#refNodeIndex` | INT |  |

## vehicles/specializations/Leveler.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>#node` | NODE_INDEX |  |
| `<basePath>#width` | FLOAT |  |
| `<basePath>#zOffset` | FLOAT | `0` |
| `<basePath>#yOffset` | FLOAT | `0` |
| `<basePath>#minDropWidth` | FLOAT | `"half of width"` |
| `<basePath>#maxDropWidth` | FLOAT | `"width value"` |
| `<basePath>#minDropDirOffset` | FLOAT | `0.7` |
| `<basePath>#maxDropDirOffset` | FLOAT | `0.7` |
| `<basePath>#numHeightLimitChecks` | INT | `6` |
| `<basePath>#alignToWorldY` | BOOL | `true` |
| `<basePath>.smoothing#allowed` | BOOL | `true` |
| `<basePath>.smoothing#radius` | FLOAT | `0.5` |
| `<basePath>.smoothing#overlap` | FLOAT | `1.7` |
| `<basePath>.smoothing#direction` | INT | `-1` |
| `<basePath>#fillUnitIndex` | INT | `"Value of vehicle.leveler#fillUnitIndex"` |
| `<basePath>.occlusionAreas.occlusionArea(?)#startNode` | NODE_INDEX |  |
| `<basePath>.occlusionAreas.occlusionArea(?)#widthNode` | NODE_INDEX |  |
| `<basePath>.occlusionAreas.occlusionArea(?)#heightNode` | NODE_INDEX |  |
| `vehicle.leveler.pickUpDirection` | INT | `1` |
| `vehicle.leveler#fillUnitIndex` | INT |  |
| `vehicle.leveler#maxFillLevelPerMS` | FLOAT | `20` |
| `vehicle.leveler.force#node` | NODE_INDEX |  |
| `vehicle.leveler.force#directionNode` | NODE_INDEX |  |
| `vehicle.leveler.force#maxForce` | FLOAT | `0` |
| `vehicle.leveler.force#direction` | INT | `1` |
| `vehicle.leveler#ignoreFarmlandState` | BOOL | `false` |

## vehicles/specializations/LicensePlates.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.licensePlates#defaultPlacement` | STRING | `false` |
| `vehicle.licensePlates.licensePlate(?)#node` | NODE_INDEX |  |
| `vehicle.licensePlates.licensePlate(?)#preferedType` | STRING |  |
| `vehicle.licensePlates.licensePlate(?)#placementArea` | STRING |  |
| `vehicle.licensePlates.licensePlate(?)#position` | STRING | `"ANY"` |
| `vehicle.licensePlates.licensePlate(?)#frame` | BOOL | `true` |
| `vehicles.vehicle(?).licensePlates#variation` | INT | `1` |
| `vehicles.vehicle(?).licensePlates#characters` | STRING |  |
| `vehicles.vehicle(?).licensePlates#colorIndex` | INT | `1` |
| `vehicles.vehicle(?).licensePlates#placementIndex` | INT | `1` |

## vehicles/specializations/Lights.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.lights#reverseLightActivationSpeed` | FLOAT | `1` |
| `vehicle.lights.states.state(?)#lightTypes` | VECTOR_N |  |
| `vehicle.lights.states.automaticState#lightTypes` | VECTOR_N | `"0"` |
| `vehicle.lights.states.automaticState#lightTypesWork` | VECTOR_N | `"0 1 2"` |
| `vehicle.lights.beaconLights.beaconLight(?)#alwaysActive` | BOOL | `false` |
| `vehicle.lights.beaconLightConfigurations.beaconLightConfiguration(?).beaconLight(?)#alwaysActive` | BOOL | `false` |
| `<key>#isTopLight` | BOOL | `false` |
| `<key>#isBottomLight` | BOOL | `false` |
| `<Dashboard.GROUP_XML_KEY>#lightTypes` | VECTOR_N |  |
| `<Dashboard.GROUP_XML_KEY>#excludedLightTypes` | VECTOR_N |  |

## vehicles/specializations/LivestockTrailer.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.livestockTrailer.animal(?)#type` | STRING |  |
| `vehicle.livestockTrailer.animal(?)#node` | NODE_INDEX |  |
| `vehicle.livestockTrailer.animal(?)#numSlots` | INT |  |
| `vehicle.livestockTrailer.loadTrigger#node` | NODE_INDEX |  |
| `vehicle.livestockTrailer.spawnPlaces.spawnPlace(?)#node` | NODE_INDEX |  |
| `vehicle.livestockTrailer.spawnPlaces.spawnPlace(?)#width` | FLOAT | `15` |

## vehicles/specializations/Locomotive.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.locomotive.powerArm#node` | NODE_INDEX |  |

## vehicles/specializations/LogGrab.lua

| Key | Type | Default |
|---|---|---|
| `<key>.grab(?)#state` | BOOL |  |
| `<basePath>#jointNode` | NODE_INDEX |  |
| `<basePath>#jointRoot` | NODE_INDEX |  |
| `<basePath>#lockAllAxis` | BOOL | `false` |
| `<basePath>#limitYAxis` | BOOL | `false` |
| `<basePath>#rotLimit` | ANGLE | `10` |
| `<basePath>#unmountOnTreeCut` | BOOL | `false` |
| `<basePath>#foldMinLimit` | FLOAT | `0` |
| `<basePath>#foldMaxLimit` | FLOAT | `1` |
| `<basePath>.trigger#node` | NODE_INDEX |  |
| `<basePath>.claw(?)#componentJointIndex` | INT |  |
| `<basePath>.claw(?)#dampingFactor` | FLOAT | `20` |
| `<basePath>.claw(?)#axis` | INT | `1` |
| `<basePath>.claw(?)#rotationOffsetThreshold` | ANGLE | `10` |
| `<basePath>.claw(?)#rotationOffsetInverted` | BOOL | `false` |
| `<basePath>.claw(?)#rotationOffsetTime` | FLOAT | `1000` |
| `<basePath>.claw(?).movingTool(?)#node` | NODE_INDEX |  |
| `<basePath>.claw(?).movingTool(?)#direction` | FLOAT | `1` |
| `<basePath>.claw(?).movingTool(?)#closeDirection` | INT |  |
| `<basePath>.clawAnimation#name` | STRING |  |
| `<basePath>.clawAnimation#speedScale` | FLOAT | `1` |
| `<basePath>.clawAnimation#initialState` | BOOL | `true` |
| `<basePath>.clawAnimation#lockTime` | FLOAT | `1` |
| `<basePath>.clawAnimation#inputAction` | STRING | `"IMPLEMENT_EXTRA2"` |
| `<basePath>.clawAnimation#controlGroupIndex` | INT |  |
| `<basePath>.clawAnimation#textPos` | L10N_STRING | `"action_foldBenchPos"` |
| `<basePath>.clawAnimation#textNeg` | L10N_STRING | `"action_foldBenchNeg"` |
| `<basePath>.clawAnimation#foldMinLimit` | FLOAT | `0` |
| `<basePath>.clawAnimation#foldMaxLimit` | FLOAT | `1` |
| `<basePath>.clawAnimation#openDuringFolding` | BOOL | `false` |
| `<basePath>.clawAnimation#closeDuringFolding` | BOOL | `false` |
| `<basePath>.lockAnimation#name` | STRING |  |
| `<basePath>.lockAnimation#speedScale` | FLOAT | `1` |
| `<basePath>.lockAnimation#unlockSpeedScale` | FLOAT | `"negative #speedScale"` |
| `<basePath>.treeDetection#node` | NODE_INDEX |  |
| `<basePath>.treeDetection#sizeY` | FLOAT | `2` |
| `<basePath>.treeDetection#sizeZ` | FLOAT | `2` |
| `<basePath>.componentJointLimit(?)#jointIndex` | INT | `1` |
| `<basePath>.componentJointLimit(?)#limitActive` | VECTOR_ROT |  |
| `<basePath>.componentJointLimit(?)#limitInactive` | VECTOR_ROT |  |
| `<basePath>.componentJointMassSetting(?)#jointIndex` | INT | `1` |
| `<basePath>.componentJointMassSetting(?)#minMass` | FLOAT | `0` |
| `<basePath>.componentJointMassSetting(?)#maxMass` | FLOAT | `1` |
| `<basePath>.componentJointMassSetting(?)#minMaxRotDriveForce` | VECTOR_3 |  |
| `<basePath>.componentJointMassSetting(?)#maxMaxRotDriveForce` | VECTOR_3 |  |

## vehicles/specializations/ManureBarrel.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.manureBarrel#attacherJointIndex` | INT |  |

## vehicles/specializations/MixerWagon.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.mixerWagon.baleTriggers.baleTrigger(?)#node` | NODE_INDEX |  |
| `vehicle.mixerWagon.baleTriggers.baleTrigger(?)#pickupSpeed` | FLOAT | `500` |
| `vehicle.mixerWagon.baleTriggers.baleTrigger(?)#needsSetIsTurnedOn` | BOOL | `false` |
| `vehicle.mixerWagon.baleTriggers.baleTrigger(?)#useEffect` | BOOL | `false` |
| `vehicle.mixerWagon#mixingTime` | TIME | `5` |
| `vehicle.mixerWagon#fillUnitIndex` | INT | `1` |
| `vehicle.mixerWagon#recipe` | STRING |  |
| `vehicles.vehicle(?).mixerWagon.fillType(?)#fillLevel` | FLOAT | `0` |

## vehicles/specializations/Motorbike.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.motorbike.tilt#node` | NODE_INDEX |  |
| `vehicle.motorbike.tilt#maxTilt` | ANGLE | `0` |
| `vehicle.motorbike.tilt#idleTilt` | ANGLE | `0` |
| `vehicle.motorbike.tilt#backwardTilt` | ANGLE | `0` |
| `vehicle.motorbike.tilt#tiltSpeed` | ANGLE | `5` |
| `vehicle.motorbike.footAnimation#name` | STRING |  |
| `vehicle.motorbike.footAnimation#speed` | FLOAT | `1` |
| `vehicle.motorbike.footAnimation#speedThreshold` | FLOAT | `1` |
| `vehicle.motorbike.backwardAnimation#name` | STRING |  |
| `vehicle.motorbike.backwardAnimation#speed` | FLOAT | `1` |
| `vehicle.motorbike.steering#highSpeedScale` | FLOAT | `0.5` |
| `vehicle.motorbike.steering#highSpeedThreshold` | FLOAT | `20` |

## vehicles/specializations/Motorized.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.motorized.reverseDriveSound#threshold` | FLOAT | `4` |
| `vehicle.motorized.brakeCompressor#capacity` | FLOAT | `6` |
| `vehicle.motorized.brakeCompressor#refillFillLevel` | FLOAT | `"half of capacity"` |
| `vehicle.motorized.brakeCompressor#fillSpeed` | FLOAT | `0.6` |
| `vehicle.motorized.exhaustParticleSystems#minScale` | FLOAT | `0.5` |
| `vehicle.motorized.exhaustParticleSystems#maxScale` | FLOAT | `1` |
| `vehicle.motorized.exhaustFlap(?)#node` | NODE_INDEX |  |
| `vehicle.motorized.exhaustFlap(?)#maxRot` | ANGLE | `0` |
| `vehicle.motorized.exhaustFlap(?)#rotationAxis` | INT | `1` |
| `vehicle.motorized.exhaustEffects.exhaustEffect(?)#node` | NODE_INDEX |  |
| `vehicle.motorized.exhaustEffects.exhaustEffect(?)#filename` | STRING |  |
| `vehicle.motorized.exhaustEffects.exhaustEffect(?)#minRpmColor` | VECTOR_4 | `"0 0 0 1"` |
| `vehicle.motorized.exhaustEffects.exhaustEffect(?)#maxRpmColor` | VECTOR_4 | `"0.0384 0.0359 0.0627 2.0"` |
| `vehicle.motorized.exhaustEffects.exhaustEffect(?)#minRpmScale` | FLOAT | `0.25` |
| `vehicle.motorized.exhaustEffects.exhaustEffect(?)#maxRpmScale` | FLOAT | `0.95` |
| `vehicle.motorized.exhaustEffects.exhaustEffect(?)#upFactor` | FLOAT | `0.75` |
| `vehicle.motorized.motorStartDuration` | FLOAT | `"Duration motor takes to start. After...` |
| `vehicle.motorized.brakeForce#force` | FLOAT | `0` |
| `vehicle.motorized.brakeForce#maxForce` | FLOAT | `0` |
| `vehicle.motorized.brakeForce#maxForceMass` | FLOAT | `0` |
| `vehicle.motorized.brakeForce#includeAttachables` | BOOL | `false` |
| `vehicle.motorized#clutchNoEngagedWarning` | L10N_STRING | `"warning_motorClutchNoEngaged"` |
| `vehicle.motorized#clutchCrackingGearWarning` | L10N_STRING | `"action_clutchCrackingGear"` |
| `vehicle.motorized#clutchCrackingGroupWarning` | L10N_STRING | `"action_clutchCrackingGroup"` |
| `vehicle.motorized#turnOnText` | L10N_STRING | `"action_startMotor"` |
| `vehicle.motorized#turnOffText` | L10N_STRING | `"action_stopMotor"` |
| `vehicle.motorized.gearLevers.gearLever(?)#node` | NODE_INDEX |  |
| `vehicle.motorized.gearLevers.gearLever(?)#centerAxis` | INT |  |
| `vehicle.motorized.gearLevers.gearLever(?)#changeTime` | TIME | `0.5` |
| `vehicle.motorized.gearLevers.gearLever(?)#handsOnDelay` | TIME | `0` |
| `vehicle.motorized.gearLevers.gearLever(?).state(?)#gear` | INT |  |
| `vehicle.motorized.gearLevers.gearLever(?).state(?)#group` | INT |  |
| `vehicle.motorized.gearLevers.gearLever(?).state(?)#xRot` | ANGLE |  |
| `vehicle.motorized.gearLevers.gearLever(?).state(?)#yRot` | ANGLE |  |
| `vehicle.motorized.gearLevers.gearLever(?).state(?)#zRot` | ANGLE |  |
| `vehicle.storeData.specs.power` | FLOAT |  |
| `vehicle.storeData.specs.maxSpeed` | FLOAT |  |
| `vehicle.motorized#statsType` | STRING | `"tractor"` |
| `vehicle.motorized#forceSpeedHudDisplay` | BOOL | `false` |
| `vehicle.motorized#forceRpmHudDisplay` | BOOL | `false` |
| `<Dashboard.GROUP_XML_KEY>#isMotorStarting` | BOOL |  |
| `<Dashboard.GROUP_XML_KEY>#isMotorRunning` | BOOL |  |
| `<Dashboard.GROUP_XML_KEY>#electronicsStarting` | BOOL | `false` |
| `<Dashboard.GROUP_XML_KEY>#electronicsStartingTime` | TIME | `2` |
| `<Dashboard.GROUP_XML_KEY>#electronicsRunning` | BOOL | `false` |
| `<baseKey>.motor#type` | STRING | `"vehicle"` |
| `<baseKey>.motor#startAnimationName` | STRING | `"vehicle"` |
| `<baseKey>.motor#minRpm` | FLOAT | `1000` |
| `<baseKey>.motor#maxRpm` | FLOAT | `1800` |
| `<baseKey>.motor#minSpeed` | FLOAT | `1` |
| `<baseKey>.motor#maxForwardSpeed` | FLOAT |  |
| `<baseKey>.motor#maxBackwardSpeed` | FLOAT |  |
| `<baseKey>.motor#accelerationLimit` | FLOAT | `2.0` |
| `<baseKey>.motor#brakeForce` | FLOAT | `10` |
| `<baseKey>.motor#lowBrakeForceScale` | FLOAT | `0.5` |
| `<baseKey>.motor#lowBrakeForceSpeedLimit` | FLOAT | `1` |
| `<baseKey>.motor#torqueScale` | FLOAT | `1` |
| `<baseKey>.motor#ptoMotorRpmRatio` | FLOAT | `4` |
| `<baseKey>.transmission#minForwardGearRatio` | FLOAT |  |
| `<baseKey>.transmission#maxForwardGearRatio` | FLOAT |  |
| `<baseKey>.transmission#minBackwardGearRatio` | FLOAT |  |
| `<baseKey>.transmission#maxBackwardGearRatio` | FLOAT |  |
| `<baseKey>.transmission#gearChangeTime` | TIME |  |
| `<baseKey>.transmission#autoGearChangeTime` | TIME |  |
| `<baseKey>.transmission#axleRatio` | FLOAT | `1` |
| `<baseKey>.transmission#startGearThreshold` | FLOAT | `VehicleMotor.GEAR_START_THRESHOLD` |
| `<baseKey>.motor.torque(?)#normRpm` | FLOAT |  |
| `<baseKey>.motor.torque(?)#rpm` | FLOAT |  |
| `<baseKey>.motor.torque(?)#torque` | FLOAT |  |
| `<baseKey>.motor#rotInertia` | FLOAT | `"Peak. motor torque / 600"` |
| `<baseKey>.motor#dampingRateScale` | FLOAT | `1` |
| `<baseKey>.motor#rpmSpeedLimit` | FLOAT |  |
| `<baseKey>.transmission.forwardGear(?)#gearRatio` | FLOAT |  |
| `<baseKey>.transmission.forwardGear(?)#maxSpeed` | FLOAT |  |
| `<baseKey>.transmission.forwardGear(?)#defaultGear` | BOOL |  |
| `<baseKey>.transmission.forwardGear(?)#name` | STRING |  |
| `<baseKey>.transmission.forwardGear(?)#reverseName` | STRING |  |
| `<baseKey>.transmission.forwardGear(?)#dashboardName` | STRING |  |
| `<baseKey>.transmission.forwardGear(?)#dashboardReverseName` | STRING |  |
| `<baseKey>.transmission.forwardGear(?)#actionName` | STRING | `"SHIFT_GEAR_SELECT_X"` |
| `<baseKey>.transmission.backwardGear(?)#gearRatio` | FLOAT |  |
| `<baseKey>.transmission.backwardGear(?)#maxSpeed` | FLOAT |  |
| `<baseKey>.transmission.backwardGear(?)#defaultGear` | BOOL |  |
| `<baseKey>.transmission.backwardGear(?)#name` | STRING |  |
| `<baseKey>.transmission.backwardGear(?)#reverseName` | STRING |  |
| `<baseKey>.transmission.backwardGear(?)#dashboardName` | STRING |  |
| `<baseKey>.transmission.backwardGear(?)#dashboardReverseName` | STRING |  |
| `<baseKey>.transmission.backwardGear(?)#actionName` | STRING | `"SHIFT_GEAR_SELECT_X"` |
| `<baseKey>.transmission.groups#type` | STRING | `"default"` |
| `<baseKey>.transmission.groups#changeTime` | TIME | `0.5` |
| `<baseKey>.transmission.groups.group(?)#ratio` | FLOAT |  |
| `<baseKey>.transmission.groups.group(?)#isDefault` | BOOL | `false` |
| `<baseKey>.transmission.groups.group(?)#name` | STRING |  |
| `<baseKey>.transmission.groups.group(?)#dashboardName` | STRING |  |
| `<baseKey>.transmission.groups.group(?)#actionName` | STRING | `"SHIFT_GROUP_SELECT_X"` |
| `<baseKey>.transmission.directionChange#useGroup` | BOOL | `false` |
| `<baseKey>.transmission.directionChange#reverseGroupIndex` | INT | `1` |
| `<baseKey>.transmission.directionChange#useGear` | BOOL | `false` |
| `<baseKey>.transmission.directionChange#reverseGearIndex` | INT | `1` |
| `<baseKey>.transmission.directionChange#changeTime` | TIME | `0.5` |
| `<baseKey>.transmission.manualShift#gears` | BOOL | `true` |
| `<baseKey>.transmission.manualShift#groups` | BOOL | `true` |
| `<baseKey>.transmission#name` | L10N_STRING |  |
| `<baseKey>.transmission#param` | STRING |  |
| `<baseKey>.motorStartDuration` | FLOAT | `"Duration motor takes to start. After...` |
| `<baseKey>.differentials.differential(?)#torqueRatio` | FLOAT | `0.5` |
| `<baseKey>.differentials.differential(?)#maxSpeedRatio` | FLOAT | `1.3` |
| `<baseKey>.differentials.differential(?)#wheelIndex1` | INT |  |
| `<baseKey>.differentials.differential(?)#wheelIndex2` | INT |  |
| `<baseKey>.differentials.differential(?)#differentialIndex1` | INT |  |
| `<baseKey>.differentials.differential(?)#differentialIndex2` | INT |  |
| `<baseKey>#consumersEmptyWarning` | L10N_STRING | `"warning_motorFuelEmpty"` |
| `<baseKey>.consumer(?)#fillUnitIndex` | INT | `1` |
| `<baseKey>.consumer(?)#fillType` | STRING |  |
| `<baseKey>.consumer(?)#usage` | FLOAT | `1` |
| `<baseKey>.consumer(?)#permanentConsumption` | BOOL | `1` |
| `<baseKey>.consumer(?)#refillLitersPerSecond` | FLOAT | `0` |
| `<baseKey>.consumer(?)#refillCapacityPercentage` | FLOAT | `0` |
| `<baseKey>.consumer(?)#capacity` | FLOAT |  |

## vehicles/specializations/Mountable.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.dynamicMount#forceLimitScale` | FLOAT | `1` |
| `vehicle.dynamicMount#triggerNode` | NODE_INDEX |  |
| `vehicle.dynamicMount#jointNode` | NODE_INDEX |  |
| `vehicle.dynamicMount#triggerForceAcceleration` | FLOAT | `4` |
| `vehicle.dynamicMount#singleAxisFreeY` | BOOL |  |
| `vehicle.dynamicMount#singleAxisFreeX` | BOOL |  |
| `vehicle.dynamicMount#jointTransY` | FLOAT | `"not defined"` |
| `vehicle.dynamicMount#jointLimitToRotY` | BOOL | `false` |
| `vehicle.dynamicMount#additionalMountDistance` | FLOAT | `0` |
| `vehicle.dynamicMount#allowMassReduction` | BOOL | `true` |
| `vehicle.dynamicMount.lockPosition(?)#xmlFilename` | STRING |  |
| `vehicle.dynamicMount.lockPosition(?)#jointNode` | STRING | `"vehicle root node"` |
| `vehicle.dynamicMount.lockPosition(?)#transOffset` | VECTOR_TRANS | `"0 0 0"` |
| `vehicle.dynamicMount.lockPosition(?)#rotOffset` | VECTOR_ROT | `"0 0 0"` |

## vehicles/specializations/Mower.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.mower.dropEffects.dropEffect(?)#dropAreaIndex` | INT | `1` |
| `vehicle.mower.dropEffects.dropEffect(?)#workAreaIndex` | INT | `1` |
| `vehicle.mower#fruitTypeConverter` | STRING |  |
| `vehicle.mower#fillUnitIndex` | INT |  |
| `vehicle.mower#pickupFillScale` | FLOAT | `1` |
| `vehicle.mower.toggleWindrowDrop#enableText` | L10N_STRING |  |
| `vehicle.mower.toggleWindrowDrop#disableText` | L10N_STRING |  |
| `vehicle.mower.toggleWindrowDrop#animationName` | STRING |  |
| `vehicle.mower.toggleWindrowDrop#animationEnableSpeed` | FLOAT | `1` |
| `vehicle.mower.toggleWindrowDrop#animationDisableSpeed` | FLOAT | `"inversed 'animationEnableSpeed'"` |
| `vehicle.mower.toggleWindrowDrop#startEnabled` | BOOL | `false` |
| `<WorkArea.WORK_AREA_XML_KEY>.mower#dropWindrow` | BOOL | `true` |
| `<WorkArea.WORK_AREA_XML_KEY>.mower#dropAreaIndex` | INT | `1` |
| `<WorkArea.WORK_AREA_XML_CONFIG_KEY>.mower#dropWindrow` | BOOL | `true` |
| `<WorkArea.WORK_AREA_XML_CONFIG_KEY>.mower#dropAreaIndex` | INT | `1` |

## vehicles/specializations/Mulcher.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.mulcher.effects.effect(?)#workAreaIndex` | INT | `1` |
| `vehicle.mulcher.effects.effect(?)#activeDirection` | INT | `0` |

## vehicles/specializations/MultipleItemPurchase.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.multipleItemPurchase#filename` | STRING |  |
| `vehicle.multipleItemPurchase#isVehicle` | BOOL | `false` |
| `vehicle.multipleItemPurchase#fillType` | STRING | `"STRAW"` |
| `vehicle.multipleItemPurchase#baleIsWrapped` | BOOL | `false` |
| `vehicle.multipleItemPurchase#baleVariationId` | STRING | `"DEFAULT"` |
| `vehicle.multipleItemPurchase.offsets.offset(?)#offset` | VECTOR_TRANS |  |
| `vehicle.multipleItemPurchase.offsets.offset(?)#amount` | FLOAT |  |
| `vehicle.multipleItemPurchase.itemPositions.itemPosition(?)#position` | VECTOR_TRANS |  |
| `vehicle.multipleItemPurchase.itemPositions.itemPosition(?)#rotation` | VECTOR_ROT |  |

## vehicles/specializations/Pallet.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.pallet#fillUnitIndex` | INT | `1` |
| `vehicle.pallet#node` | NODE_INDEX |  |
| `vehicle.pallet#linkNode` | NODE_INDICES |  |
| `vehicle.pallet#filename` | FILENAME | `"$data/objects/pallets/shared/euroPal...` |
| `vehicle.pallet.texture(?)#diffuse` | FILENAME |  |
| `vehicle.pallet.content(?)#fillUnitIndex` | INT | `"pallet#fillUnitIndex"` |
| `vehicle.pallet.content(?).object(?)#node` | NODE_INDEX |  |
| `vehicle.pallet.content(?).object(?)#tensionBeltNode` | NODE_INDEX |  |
| `vehicle.pallet.content(?).object(?)#useAsTensionBeltMesh` | BOOL | `true` |
| `vehicle.pallet.straps.strap(?)#startNode` | NODE_INDEX |  |
| `vehicle.pallet.straps.strap(?)#endNode` | NODE_INDEX |  |
| `vehicle.pallet.straps.strap(?)#tensionBeltType` | STRING | `"basic"` |
| `vehicle.pallet.straps.strap(?).intersectionNode(?)#node` | NODE_INDEX |  |
| `<key>#age` | FLOAT |  |

## vehicles/specializations/PalletFiller.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>.pickupTrigger#node` | NODE_INDEX |  |
| `<basePath>.pallet#filename` | STRING |  |
| `<basePath>.pallet#spacing` | FLOAT | `0.5` |
| `<basePath>.palletRow#node` | NODE_INDEX |  |
| `<basePath>.palletRow#maxNumPallets` | INT | `1` |
| `<basePath>.palletRow#minTransZ` | FLOAT | `0` |
| `<basePath>.palletRow#maxTransZ` | FLOAT | `0` |
| `<basePath>.palletRow#moveSpeed` | FLOAT | `1` |
| `<basePath>.palletRow#pickupTime` | TIME | `2` |
| `<basePath>.palletRow#loadingDelay` | TIME | `0` |
| `<basePath>.palletRow.rotLimit#startLimit` | VECTOR_ROT | `"0 0 0"` |
| `<basePath>.palletRow.rotLimit#endLimit` | VECTOR_ROT | `"0 0 0"` |
| `<basePath>.palletRow.rotLimit#unloadLimit` | VECTOR_ROT | `"0 0 25"` |
| `<basePath>.palletRow.transLimit#startLimit` | VECTOR_TRANS | `"0.25 2 0.25"` |
| `<basePath>.palletRow.transLimit#endLimit` | VECTOR_TRANS | `"0.05 2 0"` |
| `<basePath>.palletRow.transLimit#unloadLimit` | VECTOR_TRANS | `"0.25 2 0"` |
| `<basePath>.palletRow.fillStep(?)#transZ` | FLOAT | `0` |
| `<basePath>.palletRow.fillStep(?)#palletIndex` | INT | `1` |
| `<basePath>.palletRow.fillStep(?)#dischargeNodeIndex` | INT | `1` |
| `<basePath>.fillDeflectorAnimation#name` | STRING |  |
| `<basePath>.fillDeflectorAnimation#speed` | FLOAT | `1` |
| `<basePath>.platformAnimation#name` | STRING |  |
| `<basePath>.platformAnimation#speed` | FLOAT | `1` |
| `<basePath>.platformAnimation#middleTime` | FLOAT | `0.5` |
| `<basePath>.platformAnimation#automaticLift` | BOOL | `false` |
| `<basePath>.platformAnimation#lowerToUnload` | BOOL | `false` |
| `<basePath>.foldable#minLimit` | FLOAT | `0` |
| `<basePath>.foldable#maxLimit` | FLOAT | `1` |
| `<key>#deflectorState` | BOOL |  |
| `<key>.palletSlot(?)#slotIndex` | INT |  |
| `<key>.palletSlot(?)#objectUniqueId` | STRING |  |
| `<key>.palletSlot(?)#translation` | VECTOR_TRANS |  |
| `<key>.palletSlot(?)#rotation` | VECTOR_ROT |  |

## vehicles/specializations/Pickup.lua

| Key | Type | Default |
|---|---|---|
| `<Pickup.PICKUP_XML_KEY>.animation#name` | STRING |  |
| `<Pickup.PICKUP_XML_KEY>.animation#lowerSpeed` | FLOAT |  |
| `<Pickup.PICKUP_XML_KEY>.animation#liftSpeed` | FLOAT |  |
| `<Pickup.PICKUP_XML_KEY>.animation#isDefaultLowered` | BOOL |  |

## vehicles/specializations/Pipe.lua

| Key | Type | Default |
|---|---|---|
| `<Cover.COVER_XML_KEY>#minPipeState` | INT | `0` |
| `<Cover.COVER_XML_KEY>#maxPipeState` | INT | `"inf."` |
| `vehicles.vehicle(?).pipe#state` | INT |  |
| `vehicles.vehicle(?).pipe#isStateChangeAllowed` | BOOL |  |
| `<basePath>#pipeInText` | L10N_STRING | `"action_pipeIn"` |
| `<basePath>#pipeOutText` | L10N_STRING | `"action_pipeOut"` |
| `<basePath>#turnOnStateWarning` | L10N_STRING | `"warning_firstSetPipeState"` |
| `<basePath>#dischargeNodeIndex` | INT | `1` |
| `<basePath>#forceDischargeNodeIndex` | BOOL | `true` |
| `<basePath>#automaticDischarge` | BOOL | `true` |
| `<basePath>#toggleableDischargeToGround` | BOOL | `false` |
| `<basePath>#defaultDischargeToGroundState` | BOOL | `false` |
| `<basePath>.unloadingTriggers.unloadingTrigger(?)#node` | NODE_INDEX |  |
| `<basePath>.animation#name` | STRING |  |
| `<basePath>.animation#speedScale` | FLOAT | `1` |
| `<basePath>.states#num` | INT | `0` |
| `<basePath>.pipeNodes.pipeNode(?)#node` | NODE_INDEX |  |
| `<basePath>.pipeNodes.pipeNode(?)#subPipeNode` | NODE_INDEX |  |
| `<basePath>.pipeNodes.pipeNode(?)#subPipeNodeRatio` | FLOAT | `"Calculated based on rotation in i3d ...` |
| `<basePath>.pipeNodes.pipeNode(?)#autoAimXRotation` | BOOL | `false` |
| `<basePath>.pipeNodes.pipeNode(?)#autoAimYRotation` | BOOL | `false` |
| `<basePath>.pipeNodes.pipeNode(?)#autoAimInvertZ` | BOOL | `false` |
| `<basePath>.pipeNodes.pipeNode(?).state(?)#translation` | VECTOR_TRANS |  |
| `<basePath>.pipeNodes.pipeNode(?).state(?)#rotation` | VECTOR_ROT |  |
| `<basePath>.pipeNodes.pipeNode(?)#translationSpeeds` | VECTOR_TRANS |  |
| `<basePath>.pipeNodes.pipeNode(?)#rotationSpeeds` | VECTOR_ROT |  |
| `<basePath>.pipeNodes.pipeNode(?)#minRotationLimits` | VECTOR_ROT |  |
| `<basePath>.pipeNodes.pipeNode(?)#maxRotationLimits` | VECTOR_ROT |  |
| `<basePath>.pipeNodes.pipeNode(?)#foldPriority` | INT | `0` |
| `<basePath>.pipeNodes.pipeNode(?)#bendingRegulation` | FLOAT | `0` |
| `<basePath>.pipeNodes.pipeNode(?).bendingRegulationNode(?)#node` | NODE_INDEX | `0` |
| `<basePath>.pipeNodes.pipeNode(?).bendingRegulationNode(?)#axis` | INT | `0` |
| `<basePath>.pipeNodes.pipeNode(?).bendingRegulationNode(?)#direction` | INT | `0` |
| `<basePath>.states#unloading` | VECTOR_N |  |
| `<basePath>.states#autoAiming` | VECTOR_N |  |
| `<basePath>.states#turnOnAllowed` | VECTOR_N |  |
| `<basePath>.states.state(?)#stateIndex` | INT |  |
| `<basePath>.states.state(?)#dischargeNodeIndex` | INT |  |
| `<basePath>#foldMinLimit` | FLOAT | `0` |
| `<basePath>#foldMaxLimit` | FLOAT | `1` |
| `<basePath>#foldMinState` | INT | `1` |
| `<basePath>#foldMaxState` | INT | `"Num. of states"` |
| `<basePath>#aiFoldedPipeUsesTrailerSpace` | BOOL | `false` |

## vehicles/specializations/Plow.lua

| Key | Type | Default |
|---|---|---|
| `<SpeedRotatingParts.SPEED_ROTATING_PART_XML_KEY>#disableOnTurn` | BOOL | `true` |
| `<SpeedRotatingParts.SPEED_ROTATING_PART_XML_KEY>#turnAnimLimit` | FLOAT | `0` |
| `<SpeedRotatingParts.SPEED_ROTATING_PART_XML_KEY>#turnAnimLimitSide` | FLOAT | `0` |
| `<SpeedRotatingParts.SPEED_ROTATING_PART_XML_KEY>#invertDirectionOnRotation` | BOOL | `true` |
| `vehicles.vehicle(?).plow#rotationMax` | BOOL |  |
| `vehicles.vehicle(?).plow#turnAnimTime` | FLOAT |  |
| `<basePath>.rotationPart#turnAnimationName` | STRING |  |
| `<basePath>.rotationPart#foldMinLimit` | FLOAT | `0` |
| `<basePath>.rotationPart#foldMaxLimit` | FLOAT | `1` |
| `<basePath>.rotationPart#limitFoldRotationMax` | BOOL |  |
| `<basePath>.rotationPart#foldRotationMinLimit` | FLOAT | `0` |
| `<basePath>.rotationPart#foldRotationMaxLimit` | FLOAT | `1` |
| `<basePath>.rotationPart#rotationFoldMinLimit` | FLOAT | `0` |
| `<basePath>.rotationPart#rotationFoldMaxLimit` | FLOAT | `1` |
| `<basePath>.rotationPart#detachMinLimit` | FLOAT | `0` |
| `<basePath>.rotationPart#detachMaxLimit` | FLOAT | `1` |
| `<basePath>.rotationPart#rotationAllowedIfLowered` | BOOL | `true` |
| `<basePath>.rotationPart#detachWarning` | L10N_STRING | `"warning_detachNotAllowedPlowTurn"` |
| `<basePath>.directionNode#node` | NODE_INDEX |  |
| `<basePath>.ai#centerPosition` | FLOAT | `0.5` |
| `<basePath>.ai#rotateToCenterHeadlandPos` | FLOAT | `0.5` |
| `<basePath>.ai#rotateCompletelyHeadlandPos` | FLOAT | `0.5` |
| `<basePath>.ai#stopDuringTurn` | BOOL | `true` |
| `<basePath>.ai#allowTurnWhileReversing` | BOOL | `true` |
| `<basePath>.rotateLeftToMax#value` | BOOL | `true` |
| `<basePath>.onlyActiveWhenLowered#value` | BOOL | `true` |

## vehicles/specializations/PlowPacker.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.plow.packer#inputAction` | STRING | `"IMPLEMENT_EXTRA4"` |
| `vehicle.plow.packer#deactivateLeft` | STRING |  |
| `vehicle.plow.packer#deactivateRight` | STRING |  |
| `vehicle.plow.packer#animationSpeed` | FLOAT | `1` |
| `vehicle.plow.packer#foldingConfig` | INT | `1` |
| `vehicle.plow.packer#partialDeactivated` | BOOL | `false` |
| `vehicle.plow.packer.lowerAnimation#name` | STRING |  |
| `vehicle.plow.packer.lowerAnimation#speed` | FLOAT | `1` |
| `vehicles.vehicle(?).plowPacker#packerState` | BOOL |  |
| `vehicles.vehicle(?).plowPacker#lastPackerState` | BOOL |  |

## vehicles/specializations/PowerConsumer.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.storeData.specs.neededPower` | INT |  |
| `vehicle.storeData.specs.neededPower#maxPower` | INT |  |
| `vehicle.powerConsumer.powerConsumerConfigurations.powerConsumerConfiguration(?)#neededPower` | INT |  |
| `<basePath>#forceNode` | NODE_INDEX |  |
| `<basePath>#forceDirNode` | NODE_INDEX | `"Force node"` |
| `<basePath>#forceFactor` | FLOAT | `1` |
| `<basePath>#maxForce` | FLOAT | `0` |
| `<basePath>#forceDir` | FLOAT | `1` |
| `<basePath>#useTurnOnState` | BOOL | `true` |
| `<basePath>#turnOnPeakPowerMultiplier` | FLOAT | `3` |
| `<basePath>#turnOnPeakPowerDuration` | TIME | `2` |
| `<basePath>#turnOnNotAllowedWarning` | L10N_STRING | `"warning_insufficientPowerOutput"` |
| `<basePath>#neededMaxPtoPower` | FLOAT | `0` |
| `<basePath>#neededMinPtoPower` | FLOAT | `"neededMaxPtoPower"` |
| `<basePath>#ptoRpm` | FLOAT | `0` |
| `<basePath>#virtualPowerMultiplicator` | FLOAT | `1` |
| `<basePath>.speedLimitModifier(?)#offset` | FLOAT |  |
| `<basePath>.speedLimitModifier(?)#minPowerHp` | FLOAT | `0` |
| `<basePath>.speedLimitModifier(?)#maxPowerHp` | FLOAT | `0` |

## vehicles/specializations/PowerTakeOffs.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.powerTakeOffs#ignoreInvalidJointIndices` | BOOL | `false` |
| `vehicle.powerTakeOffs#maxUpdateDistance` | FLOAT | `PowerTakeOffs.DEFAULT_MAX_UPDATE_DIST...` |
| `<basePath>#skipToInputAttacherIndex` | INT |  |
| `<basePath>#outputNode` | NODE_INDEX |  |
| `<basePath>#attacherJointIndices` | VECTOR_N |  |
| `<basePath>#attacherJointNodes` | NODE_INDICES |  |
| `<basePath>#ptoName` | STRING | `"DEFAULT_PTO"` |
| `<basePath>#inputNode` | NODE_INDEX |  |
| `<basePath>#inputAttacherJointIndices` | VECTOR_N |  |
| `<basePath>#inputAttacherJointNodes` | NODE_INDICES |  |
| `<basePath>#detachNode` | NODE_INDEX |  |
| `<basePath>#aboveAttacher` | BOOL | `true` |
| `<basePath>#materialTemplateName` | VEHICLE_MATERIAL |  |
| `<basePath>#decalMaterialTemplateName` | VEHICLE_MATERIAL |  |
| `<basePath>#length` | FLOAT |  |
| `<basePath>#filename` | STRING | `"$data/shared/assets/powerTakeOffs/wa...` |

## vehicles/specializations/ProtectedBundleVehicle.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.protectedBundleVehicle#isBundleRoot` | BOOL | `false` |
| `vehicle.protectedBundleVehicle#isBundleChild` | BOOL | `false` |
| `vehicle.protectedBundleVehicle#bundleFilename` | STRING |  |

## vehicles/specializations/PushHandTool.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.pushHandTool.raycast#node1` | NODE_INDEX |  |
| `vehicle.pushHandTool.raycast#node2` | NODE_INDEX |  |
| `vehicle.pushHandTool.raycast#playerNode` | NODE_INDEX |  |
| `vehicle.pushHandTool.raycast#positionSmoothnessFactor` | FLOAT | `1` |
| `vehicle.pushHandTool.raycast#positionSmoothnessFactorReverse` | FLOAT | `"same as #positionSmoothnessFactor"` |
| `vehicle.pushHandTool.raycast#positionSmoothnessFactorSteering` | FLOAT | `0.15` |
| `vehicle.pushHandTool.wheels#front` | VECTOR_N |  |
| `vehicle.pushHandTool.wheels#back` | VECTOR_N |  |
| `vehicle.pushHandTool.handle#node` | NODE_INDEX |  |
| `vehicle.pushHandTool.handle#upperLimit` | FLOAT | `0.4` |
| `vehicle.pushHandTool.handle#lowerLimit` | FLOAT | `0.4` |
| `vehicle.pushHandTool.handle#interpolateDistance` | FLOAT | `0.4` |
| `vehicle.pushHandTool.handle#minRot` | ANGLE | `-20` |
| `vehicle.pushHandTool.handle#maxRot` | ANGLE | `20` |
| `vehicle.pushHandTool.spine#rotationForward` | ANGLE |  |
| `vehicle.pushHandTool.spine#rotationBackward` | ANGLE |  |
| `vehicle.pushHandTool.spine#rotationIdle` | ANGLE |  |
| `vehicle.pushHandTool.spine#speed` | ANGLE | `10` |
| `vehicle.pushHandTool.spine#ratio` | VECTOR_3 | `"0.33 0.33 0.33"` |
| `vehicle.pushHandTool.driveMode#animationName` | STRING | `0` |
| `vehicle.pushHandTool.driveMode#animationSpeed` | FLOAT | `1` |
| `vehicle.pushHandTool.driveMode#maxSpeed` | FLOAT |  |
| `vehicle.pushHandTool.driveMode#gearRatio` | FLOAT |  |
| `vehicle.pushHandTool.customChainLimits.customChainLimit(?)#chainId` | STRING | `20` |
| `vehicle.pushHandTool.customChainLimits.customChainLimit(?)#nodeIndex` | INT |  |
| `vehicle.pushHandTool.customChainLimits.customChainLimit(?)#minRx` | ANGLE |  |
| `vehicle.pushHandTool.customChainLimits.customChainLimit(?)#maxRx` | ANGLE |  |
| `vehicle.pushHandTool.customChainLimits.customChainLimit(?)#minRy` | ANGLE |  |
| `vehicle.pushHandTool.customChainLimits.customChainLimit(?)#maxRy` | ANGLE |  |
| `vehicle.pushHandTool.customChainLimits.customChainLimit(?)#minRz` | ANGLE |  |
| `vehicle.pushHandTool.customChainLimits.customChainLimit(?)#maxRz` | ANGLE |  |
| `vehicle.pushHandTool.customChainLimits.customChainLimit(?)#damping` | FLOAT |  |
| `vehicle.pushHandTool.customChainLimits.customChainLimit(?)#localLimits` | BOOL |  |
| `vehicles.vehicle(?).pushHandTool#driveModeIsActive` | BOOL |  |

## vehicles/specializations/RandomlyMovingParts.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.randomlyMovingParts#maxUpdateDistance` | FLOAT |  |
| `<RandomlyMovingParts.RANDOMLY_MOVING_PART_XML_KEY>#node` | NODE_INDEX |  |
| `<RandomlyMovingParts.RANDOMLY_MOVING_PART_XML_KEY>#refNodeIndex` | INT |  |
| `<RandomlyMovingParts.RANDOMLY_MOVING_PART_XML_KEY>#speedScale` | FLOAT | `1` |
| `<RandomlyMovingParts.RANDOMLY_MOVING_PART_XML_KEY>#speedVariance` | FLOAT | `0.1` |
| `<RandomlyMovingParts.RANDOMLY_MOVING_PART_XML_KEY>#fadeTime` | TIME | `1` |
| `<RandomlyMovingParts.RANDOMLY_MOVING_PART_XML_KEY>#preset` | STRING | `"SOWINGMACHINE"` |
| `<RandomlyMovingParts.RANDOMLY_MOVING_PART_XML_KEY>#noiseFrequency` | VECTOR_3 | `"used from preset"` |
| `<RandomlyMovingParts.RANDOMLY_MOVING_PART_XML_KEY>#noiseAmount` | VECTOR_3 | `"used from preset"` |
| `<RandomlyMovingParts.RANDOMLY_MOVING_PART_XML_KEY>#hasBumps` | BOOL | `"used from preset"` |
| `<RandomlyMovingParts.RANDOMLY_MOVING_PART_XML_KEY>#bumpFrequency` | TIME | `"used from preset"` |
| `<RandomlyMovingParts.RANDOMLY_MOVING_PART_XML_KEY>#bumpDuration` | TIME | `"used from preset"` |
| `<RandomlyMovingParts.RANDOMLY_MOVING_PART_XML_KEY>#rotAxis` | INT |  |
| `<RandomlyMovingParts.RANDOMLY_MOVING_PART_XML_KEY>#rotMax` | ANGLE |  |
| `<RandomlyMovingParts.RANDOMLY_MOVING_PART_XML_KEY>#rotMin` | ANGLE | `"Inverted rotMax value"` |
| `<RandomlyMovingParts.RANDOMLY_MOVING_PART_XML_KEY>#rotStart` | ANGLE | `"Current value from i3d"` |
| `<RandomlyMovingParts.RANDOMLY_MOVING_PART_XML_KEY>#transAxis` | INT |  |
| `<RandomlyMovingParts.RANDOMLY_MOVING_PART_XML_KEY>#transMax` | FLOAT |  |
| `<RandomlyMovingParts.RANDOMLY_MOVING_PART_XML_KEY>#transMin` | FLOAT | `"Inverted rotMax value"` |
| `<RandomlyMovingParts.RANDOMLY_MOVING_PART_XML_KEY>#transStart` | FLOAT | `"Current value from i3d"` |
| `<RandomlyMovingParts.RANDOMLY_MOVING_PART_XML_KEY>#isSpeedDependent` | BOOL | `true` |
| `<RandomlyMovingParts.RANDOMLY_MOVING_PART_XML_KEY>.node(?)#node` | NODE_INDEX |  |
| `<RandomlyMovingParts.RANDOMLY_MOVING_PART_XML_KEY>.node(?)#scale` | FLOAT | `1` |
| `<RandomlyMovingParts.RANDOMLY_MOVING_PART_XML_KEY>.node(?)#rotAxis` | INT |  |
| `<RandomlyMovingParts.RANDOMLY_MOVING_PART_XML_KEY>.node(?)#rotMax` | ANGLE |  |
| `<RandomlyMovingParts.RANDOMLY_MOVING_PART_XML_KEY>.node(?)#rotMin` | ANGLE | `"Inverted rotMax value"` |
| `<RandomlyMovingParts.RANDOMLY_MOVING_PART_XML_KEY>.node(?)#rotStart` | ANGLE | `"Current value from i3d"` |
| `<RandomlyMovingParts.RANDOMLY_MOVING_PART_XML_KEY>.node(?)#transAxis` | INT |  |
| `<RandomlyMovingParts.RANDOMLY_MOVING_PART_XML_KEY>.node(?)#transMax` | FLOAT |  |
| `<RandomlyMovingParts.RANDOMLY_MOVING_PART_XML_KEY>.node(?)#transMin` | FLOAT | `"Inverted rotMax value"` |
| `<RandomlyMovingParts.RANDOMLY_MOVING_PART_XML_KEY>.node(?)#transStart` | FLOAT | `"Current value from i3d"` |

## vehicles/specializations/ReceivingHopper.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.receivingHopper#fillUnitIndex` | INT | `1` |
| `vehicle.receivingHopper.boxes#spawnPlaceNode` | NODE_INDEX |  |
| `vehicle.receivingHopper.boxes.box(?)#fillType` | STRING |  |
| `vehicle.receivingHopper.boxes.box(?)#filename` | STRING |  |
| `vehicles.vehicle(?).receivingHopper#createBoxes` | BOOL |  |

## vehicles/specializations/ReverseDriving.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.reverseDriving.steeringWheel#node` | NODE_INDEX |  |
| `vehicle.reverseDriving.steeringWheel#indoorRotation` | ANGLE | `"vehicle.drivable.steeringWheel#indoo...` |
| `vehicle.reverseDriving.steeringWheel#outdoorRotation` | ANGLE | `"vehicle.drivable.steeringWheel#outdo...` |
| `vehicle.reverseDriving#animationName` | STRING | `"reverseDriving"` |
| `vehicle.reverseDriving#hideCharacterOnChange` | BOOL | `true` |
| `vehicle.reverseDriving#inverseTransmission` | BOOL | `false` |
| `vehicle.reverseDriving#initialInversed` | BOOL | `false` |
| `vehicle.reverseDriving#disablingAttacherJointIndices` | VECTOR_N |  |
| `vehicle.reverseDriving.ai#steeringNode` | NODE_INDEX |  |
| `<Dashboard.GROUP_XML_KEY>#isReverseDriving` | BOOL |  |
| `<key>#enableDirection` | INT |  |
| `vehicles.vehicle(?).reverseDriving#isActive` | BOOL |  |
| `<configurationKey>.reverseDriving#isAllowed` | BOOL | `true` |

## vehicles/specializations/Rideable.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.rideable#speedBackwards` | FLOAT | `-1` |
| `vehicle.rideable#speedWalk` | FLOAT | `2.5` |
| `vehicle.rideable#speedCanter` | FLOAT | `3.5` |
| `vehicle.rideable#speedTrot` | FLOAT | `5.0` |
| `vehicle.rideable#speedGallop` | FLOAT | `10.0` |
| `vehicle.rideable#minTurnRadiusBackwards` | FLOAT | `1` |
| `vehicle.rideable#minTurnRadiusWalk` | FLOAT | `1` |
| `vehicle.rideable#minTurnRadiusCanter` | FLOAT | `2.5` |
| `vehicle.rideable#minTurnRadiusTrot` | FLOAT | `5` |
| `vehicle.rideable#minTurnRadiusGallop` | FLOAT | `10` |
| `vehicle.rideable#turnSpeed` | ANGLE | `45` |
| `vehicle.rideable#jumpHeight` | FLOAT | `2` |
| `vehicle.rideable#proxy` | NODE_INDEX |  |
| `vehicle.rideable.modelInfo.hoofFrontLeft#node` | NODE_INDEX |  |
| `vehicle.rideable.modelInfo.hoofFrontLeft.particleSystemSlow#node` | NODE_INDEX |  |
| `vehicle.rideable.modelInfo.hoofFrontLeft.particleSystemSlow#particleType` | STRING |  |
| `vehicle.rideable.modelInfo.hoofFrontLeft.particleSystemFast#node` | NODE_INDEX |  |
| `vehicle.rideable.modelInfo.hoofFrontLeft.particleSystemFast#particleType` | STRING |  |
| `vehicle.rideable.modelInfo.hoofFrontRight#node` | NODE_INDEX |  |
| `vehicle.rideable.modelInfo.hoofFrontRight.particleSystemSlow#node` | NODE_INDEX |  |
| `vehicle.rideable.modelInfo.hoofFrontRight.particleSystemSlow#particleType` | STRING |  |
| `vehicle.rideable.modelInfo.hoofFrontRight.particleSystemFast#node` | NODE_INDEX |  |
| `vehicle.rideable.modelInfo.hoofFrontRight.particleSystemFast#particleType` | STRING |  |
| `vehicle.rideable.modelInfo.hoofBackLeft#node` | NODE_INDEX |  |
| `vehicle.rideable.modelInfo.hoofBackLeft.particleSystemSlow#node` | NODE_INDEX |  |
| `vehicle.rideable.modelInfo.hoofBackLeft.particleSystemSlow#particleType` | STRING |  |
| `vehicle.rideable.modelInfo.hoofBackLeft.particleSystemFast#node` | NODE_INDEX |  |
| `vehicle.rideable.modelInfo.hoofBackLeft.particleSystemFast#particleType` | STRING |  |
| `vehicle.rideable.modelInfo.hoofBackRight#node` | NODE_INDEX |  |
| `vehicle.rideable.modelInfo.hoofBackRight.particleSystemSlow#node` | NODE_INDEX |  |
| `vehicle.rideable.modelInfo.hoofBackRight.particleSystemSlow#particleType` | STRING |  |
| `vehicle.rideable.modelInfo.hoofBackRight.particleSystemFast#node` | NODE_INDEX |  |
| `vehicle.rideable.modelInfo.hoofBackRight.particleSystemFast#particleType` | STRING |  |
| `vehicle.rideable.modelInfo#animationNode` | NODE_INDEX |  |
| `vehicle.rideable.modelInfo#meshNode` | NODE_INDEX |  |
| `vehicle.rideable.modelInfo#equipmentNode` | NODE_INDEX |  |
| `vehicle.rideable.modelInfo#reinsNode` | NODE_INDEX |  |
| `vehicle.rideable.modelInfo#reinLeftNode` | NODE_INDEX |  |
| `vehicle.rideable.modelInfo#reinRightNode` | NODE_INDEX |  |
| `vehicle.rideable.sounds#breathIntervalNoEffort` | FLOAT | `1` |
| `vehicle.rideable.sounds#breathIntervalEffort` | FLOAT | `1` |
| `vehicle.rideable.sounds#minBreathIntervalIdle` | FLOAT | `1` |
| `vehicle.rideable.sounds#maxBreathIntervalIdle` | FLOAT | `1` |

## vehicles/specializations/RidgeMarker.lua

| Key | Type | Default |
|---|---|---|
| `<SpeedRotatingParts.SPEED_ROTATING_PART_XML_KEY>#ridgeMarkerAnim` | STRING |  |
| `<SpeedRotatingParts.SPEED_ROTATING_PART_XML_KEY>#ridgeMarkerAnimTimeMax` | FLOAT | `0.99` |
| `vehicles.vehicle(?).ridgeMarker#state` | INT |  |
| `<baseKey>#inputButton` | STRING | `"IMPLEMENT_EXTRA4"` |
| `<baseKey>.marker(?)#animName` | STRING |  |
| `<baseKey>.marker(?)#minWorkLimit` | FLOAT | `0.99` |
| `<baseKey>.marker(?)#maxWorkLimit` | FLOAT | `1` |
| `<baseKey>.marker(?)#liftedAnimTime` | FLOAT |  |
| `<baseKey>.marker(?)#workAreaIndex` | INT |  |
| `<baseKey>#foldMinLimit` | FLOAT | `0` |
| `<baseKey>#foldMaxLimit` | FLOAT | `1` |
| `<baseKey>#foldDisableDirection` | INT |  |
| `<baseKey>#onlyActiveWhenLowered` | BOOL | `true` |
| `<baseKey>#directionNode` | NODE_INDEX |  |
| `<baseKey>.ridgeMarkerArea#node` | NODE_INDEX |  |
| `<baseKey>.ridgeMarkerArea#size` | FLOAT | `0.25` |
| `<baseKey>.ridgeMarkerArea#testAreaOffset` | FLOAT | `0.2` |

## vehicles/specializations/Roller.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>.directionNode#node` | NODE_INDEX |  |
| `<basePath>#onlyActiveWhenLowered` | BOOL | `true` |
| `<basePath>#isSoilRoller` | BOOL | `true` |
| `<basePath>#isGrassRoller` | BOOL | `false` |
| `<basePath>#usingAIRequirements` | BOOL | `true` |

## vehicles/specializations/Ropes.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.ropes.rope(?)#baseNode` | NODE_INDEX |  |
| `vehicle.ropes.rope(?)#targetNode` | NODE_INDEX |  |
| `vehicle.ropes.rope(?)#baseParameters` | VECTOR_4 |  |
| `vehicle.ropes.rope(?)#targetParameters` | VECTOR_4 |  |
| `vehicle.ropes.rope(?).baseParameterAdjuster(?)#node` | NODE_INDEX |  |
| `vehicle.ropes.rope(?).baseParameterAdjuster(?)#rotationAxis` | INT |  |
| `vehicle.ropes.rope(?).baseParameterAdjuster(?)#rotationRange` | VECTOR_ROT_2 |  |
| `vehicle.ropes.rope(?).baseParameterAdjuster(?)#translationAxis` | INT |  |
| `vehicle.ropes.rope(?).baseParameterAdjuster(?)#translationRange` | VECTOR_2 |  |
| `vehicle.ropes.rope(?).baseParameterAdjuster(?)#minTargetParameters` | VECTOR_4 |  |
| `vehicle.ropes.rope(?).baseParameterAdjuster(?)#maxTargetParameters` | VECTOR_4 |  |
| `vehicle.ropes.rope(?).targetParameterAdjuster(?)#node` | NODE_INDEX |  |
| `vehicle.ropes.rope(?).targetParameterAdjuster(?)#rotationAxis` | INT |  |
| `vehicle.ropes.rope(?).targetParameterAdjuster(?)#rotationRange` | VECTOR_ROT_2 |  |
| `vehicle.ropes.rope(?).targetParameterAdjuster(?)#translationAxis` | INT |  |
| `vehicle.ropes.rope(?).targetParameterAdjuster(?)#translationRange` | VECTOR_2 |  |
| `vehicle.ropes.rope(?).targetParameterAdjuster(?)#minTargetParameters` | VECTOR_4 |  |
| `vehicle.ropes.rope(?).targetParameterAdjuster(?)#maxTargetParameters` | VECTOR_4 |  |

## vehicles/specializations/SaltSpreader.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.saltSpreader#fillUnitIndex` | INT | `1` |
| `vehicle.saltSpreader#unloadInfoIndex` | INT | `1` |
| `vehicle.saltSpreader#usageWorkArea` | INT |  |
| `vehicle.saltSpreader#usage` | FLOAT | `1` |

## vehicles/specializations/SeedTreater.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.seedTreater#fillUnitIndex` | INT | `1` |
| `vehicle.seedTreater#dischargeNodeIndex` | INT | `1` |
| `vehicle.seedTreater#usagePerLiter` | FLOAT | `0.1` |
| `vehicle.seedTreater#fillFromTriggerThreshold` | FLOAT | `5` |
| `vehicle.seedTreater#treatmentSpeedFactor` | FLOAT | `0.1` |

## vehicles/specializations/ShallowWaterObstacles.lua

| Key | Type | Default |
|---|---|---|
| `<key>#node` | NODE_INDEX |  |
| `<key>#directionNode` | NODE_INDEX | `"Same as #node"` |
| `<key>#size` | VECTOR_3 | `"1 1 1"` |
| `<key>#offset` | VECTOR_TRANS | `"0 0 0"` |

## vehicles/specializations/Shovel.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.shovel#ignoreFillUnitFillType` | BOOL | `false` |
| `vehicle.shovel#useSpeedLimit` | BOOL | `false` |
| `<Shovel.SHOVEL_NODE_XML_KEY>#node` | NODE_INDEX |  |
| `<Shovel.SHOVEL_NODE_XML_KEY>#fillUnitIndex` | INT | `1` |
| `<Shovel.SHOVEL_NODE_XML_KEY>#loadInfoIndex` | INT | `1` |
| `<Shovel.SHOVEL_NODE_XML_KEY>#width` | FLOAT | `1` |
| `<Shovel.SHOVEL_NODE_XML_KEY>#length` | FLOAT | `0.5` |
| `<Shovel.SHOVEL_NODE_XML_KEY>#yOffset` | FLOAT | `0` |
| `<Shovel.SHOVEL_NODE_XML_KEY>#zOffset` | FLOAT | `0` |
| `<Shovel.SHOVEL_NODE_XML_KEY>#needsMovement` | BOOL | `true` |
| `<Shovel.SHOVEL_NODE_XML_KEY>#fillLitersPerSecond` | FLOAT | `"inf."` |
| `<Shovel.SHOVEL_NODE_XML_KEY>#maxPickupAngle` | ANGLE |  |
| `<Shovel.SHOVEL_NODE_XML_KEY>#needsAttacherVehicle` | BOOL | `true` |
| `<Shovel.SHOVEL_NODE_XML_KEY>#resetFillLevel` | BOOL | `false` |
| `<Shovel.SHOVEL_NODE_XML_KEY>#ignoreFillLevel` | BOOL | `false` |
| `<Shovel.SHOVEL_NODE_XML_KEY>#ignoreFarmlandState` | BOOL | `false` |
| `<Shovel.SHOVEL_NODE_XML_KEY>.smoothing#allowed` | BOOL | `false` |
| `<Shovel.SHOVEL_NODE_XML_KEY>.smoothing#radius` | FLOAT | `0.5` |
| `<Shovel.SHOVEL_NODE_XML_KEY>.smoothing#overlap` | FLOAT | `1.7` |
| `vehicle.shovel.dischargeInfo#dischargeNodeIndex` | INT | `1` |
| `vehicle.shovel.dischargeInfo#node` | NODE_INDEX |  |
| `vehicle.shovel.dischargeInfo#minSpeedAngle` | ANGLE |  |
| `vehicle.shovel.dischargeInfo#maxSpeedAngle` | ANGLE |  |

## vehicles/specializations/SlopeCompensation.lua

| Key | Type | Default |
|---|---|---|
| `vehicles.vehicle(?).slopeCompensation.compensationNode(?)#lastAngle` | ANGLE |  |
| `<basePath>#threshold` | ANGLE | `0.1` |
| `<basePath>#highUpdateFrequency` | BOOL | `false` |
| `<compensationNodePath>#wheel1` | INT |  |
| `<compensationNodePath>#wheel2` | INT |  |
| `<compensationNodePath>#wheelNode1` | NODE_INDEX |  |
| `<compensationNodePath>#wheelNode2` | NODE_INDEX |  |
| `<compensationNodePath>#wheelNodes1` | NODE_INDICES |  |
| `<compensationNodePath>#wheelNodes2` | NODE_INDICES |  |
| `<compensationNodePath>#maxAngle` | ANGLE | `5` |
| `<compensationNodePath>#minAngle` | ANGLE | `"Negative #maxAngle"` |
| `<compensationNodePath>#speed` | ANGLE | `5` |
| `<compensationNodePath>#inverted` | BOOL | `false` |
| `<compensationNodePath>#inActiveHeight` | FLOAT | `0` |
| `<compensationNodePath>#initialHeight` | FLOAT | `1` |
| `<compensationNodePath>#animationName` | STRING |  |
| `<compensationNodePath>#referenceNode` | NODE_INDEX |  |
| `<compensationNodePath>#referenceAxis` | INT | `1` |
| `<compensationNodePath>#rotationNode` | NODE_INDEX |  |
| `<compensationNodePath>#rotationAxis` | INT | `1` |
| `<compensationNodePath>.animationPart(?)#node` | NODE_INDEX |  |
| `<compensationNodePath>.animationPart(?)#isLeft` | BOOL |  |
| `<compensationNodePath>.animationPart(?)#rotMin` | VECTOR_ROT |  |
| `<compensationNodePath>.animationPart(?)#rotMax` | VECTOR_ROT |  |
| `<compensationNodePath>.animationPart(?)#transMin` | VECTOR_TRANS |  |
| `<compensationNodePath>.animationPart(?)#transMax` | VECTOR_TRANS |  |

## vehicles/specializations/SmartAttach.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.smartAttach#jointType` | STRING |  |
| `vehicle.smartAttach#trigger` | NODE_INDEX |  |

## vehicles/specializations/SowingMachine.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.sowingMachine.allowFillFromAirWhileTurnedOn#value` | BOOL |  |
| `vehicle.sowingMachine.directionNode#node` | NODE_INDEX |  |
| `vehicle.sowingMachine.useDirectPlanting#value` | BOOL | `false` |
| `vehicle.sowingMachine.waterSeeding#value` | BOOL | `false` |
| `vehicle.sowingMachine.seedFruitTypeCategories` | STRING |  |
| `vehicle.sowingMachine.seedFruitTypes` | STRING |  |
| `vehicle.sowingMachine.seedFillType` | STRING | `"SEEDS"` |
| `vehicle.sowingMachine.needsActivation#value` | BOOL | `false` |
| `vehicle.sowingMachine.requiresFilling#value` | BOOL | `true` |
| `vehicle.sowingMachine.fieldGroundType#value` | STRING | `"SOWN"` |
| `vehicle.sowingMachine.fieldGroundType#ridgeSeeding` | BOOL | `false` |
| `vehicle.sowingMachine.changeSeedInputButton` | STRING | `"IMPLEMENT_EXTRA3"` |
| `vehicle.sowingMachine#fillUnitIndex` | INT | `1` |
| `vehicle.sowingMachine#unloadInfoIndex` | INT | `1` |
| `vehicle.sowingMachine#consumableName` | STRING |  |
| `vehicle.sowingMachine#seedUsageScale` | FLOAT | `1` |
| `vehicle.storeData.specs.seedFruitTypeCategories` | STRING |  |
| `vehicle.storeData.specs.seedFruitTypes` | STRING |  |
| `vehicles.vehicle(?).sowingMachine#selectedSeedFruitType` | STRING |  |
| `vehicles.vehicle(?).sowingMachine#allowsSeedChanging` | BOOL |  |

## vehicles/specializations/SpeedRotatingParts.lua

| Key | Type | Default |
|---|---|---|
| `<SpeedRotatingParts.SPEED_ROTATING_PART_XML_KEY>#node` | NODE_INDEX |  |
| `<SpeedRotatingParts.SPEED_ROTATING_PART_XML_KEY>#nodes` | NODE_INDICES |  |
| `<SpeedRotatingParts.SPEED_ROTATING_PART_XML_KEY>#shaderNode` | NODE_INDEX |  |
| `<SpeedRotatingParts.SPEED_ROTATING_PART_XML_KEY>#useRotation` | BOOL | `true` |
| `<SpeedRotatingParts.SPEED_ROTATING_PART_XML_KEY>#scrollScale` | VECTOR_2 |  |
| `<SpeedRotatingParts.SPEED_ROTATING_PART_XML_KEY>#shaderComponent` | INT | `"Default based on available shader at...` |
| `<SpeedRotatingParts.SPEED_ROTATING_PART_XML_KEY>#shaderComponentSpeeds` | VECTOR_N |  |
| `<SpeedRotatingParts.SPEED_ROTATING_PART_XML_KEY>#scrollLength` | FLOAT |  |
| `<SpeedRotatingParts.SPEED_ROTATING_PART_XML_KEY>#driveNode` | NODE_INDEX | `"speedRotatingPart#node"` |
| `<SpeedRotatingParts.SPEED_ROTATING_PART_XML_KEY>#refComponentIndex` | INT |  |
| `<SpeedRotatingParts.SPEED_ROTATING_PART_XML_KEY>#wheelIndex` | INT |  |
| `<SpeedRotatingParts.SPEED_ROTATING_PART_XML_KEY>#wheelNodes` | NODE_INDICES |  |
| `<SpeedRotatingParts.SPEED_ROTATING_PART_XML_KEY>#hasConfigWheels` | BOOL | `false` |
| `<SpeedRotatingParts.SPEED_ROTATING_PART_XML_KEY>#dirRefNode` | NODE_INDEX |  |
| `<SpeedRotatingParts.SPEED_ROTATING_PART_XML_KEY>#dirFrameNode` | NODE_INDEX |  |
| `<SpeedRotatingParts.SPEED_ROTATING_PART_XML_KEY>#alignDirection` | BOOL | `false` |
| `<SpeedRotatingParts.SPEED_ROTATING_PART_XML_KEY>#applySteeringAngle` | BOOL | `false` |
| `<SpeedRotatingParts.SPEED_ROTATING_PART_XML_KEY>#useWheelReprTranslation` | BOOL | `true` |
| `<SpeedRotatingParts.SPEED_ROTATING_PART_XML_KEY>#updateXDrive` | BOOL | `true` |
| `<SpeedRotatingParts.SPEED_ROTATING_PART_XML_KEY>#versatileYRot` | BOOL | `false` |
| `<SpeedRotatingParts.SPEED_ROTATING_PART_XML_KEY>#minYRot` | ANGLE |  |
| `<SpeedRotatingParts.SPEED_ROTATING_PART_XML_KEY>#maxYRot` | ANGLE |  |
| `<SpeedRotatingParts.SPEED_ROTATING_PART_XML_KEY>#wheelScale` | FLOAT |  |
| `<SpeedRotatingParts.SPEED_ROTATING_PART_XML_KEY>#radius` | FLOAT | `1` |
| `<SpeedRotatingParts.SPEED_ROTATING_PART_XML_KEY>#onlyActiveWhenLowered` | BOOL | `false` |
| `<SpeedRotatingParts.SPEED_ROTATING_PART_XML_KEY>#stopIfNotActive` | BOOL | `false` |
| `<SpeedRotatingParts.SPEED_ROTATING_PART_XML_KEY>#fadeOutTime` | FLOAT | `3` |
| `<SpeedRotatingParts.SPEED_ROTATING_PART_XML_KEY>#activationSpeed` | FLOAT | `1` |
| `<SpeedRotatingParts.SPEED_ROTATING_PART_XML_KEY>#speedReferenceNode` | NODE_INDEX |  |
| `<SpeedRotatingParts.SPEED_ROTATING_PART_XML_KEY>#hasTireTracks` | BOOL | `false` |
| `<SpeedRotatingParts.SPEED_ROTATING_PART_XML_KEY>#tireTrackAtlasIndex` | INT | `0` |
| `<SpeedRotatingParts.SPEED_ROTATING_PART_XML_KEY>#tireTrackWidth` | FLOAT | `0.5` |
| `<SpeedRotatingParts.SPEED_ROTATING_PART_XML_KEY>#tireTrackInverted` | BOOL | `false` |
| `<SpeedRotatingParts.SPEED_ROTATING_PART_XML_KEY>#tireTrackWheelNode` | NODE_INDEX |  |
| `<SpeedRotatingParts.SPEED_ROTATING_PART_XML_KEY>#maxUpdateDistance` | FLOAT | `SpeedRotatingParts.DEFAULT_MAX_UPDATE...` |

## vehicles/specializations/SplineVehicle.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.splineVehicle.dollies#frontNode` | NODE_INDEX |  |
| `vehicle.splineVehicle.dollies#backNode` | NODE_INDEX |  |
| `vehicle.splineVehicle.dollies#dolly1Node` | NODE_INDEX |  |
| `vehicle.splineVehicle.dollies#dolly2Node` | NODE_INDEX |  |
| `vehicle.splineVehicle.dollies#alignDollys` | BOOL | `true` |
| `<Dischargeable.DISCHARGE_NODE_XML_PATH>#needsIsEntered` | BOOL | `true` |
| `<Dischargeable.DISCHARGE_NODE_CONFIG_XML_PATH>#needsIsEntered` | BOOL | `true` |

## vehicles/specializations/Sprayer.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.sprayer#allowsSpraying` | BOOL | `true` |
| `vehicle.sprayer#activateTankOnLowering` | BOOL | `false` |
| `vehicle.sprayer#activateOnLowering` | BOOL | `false` |
| `vehicle.sprayer.usageScales#scale` | FLOAT | `1` |
| `vehicle.sprayer.usageScales#workingWidth` | FLOAT | `12` |
| `vehicle.sprayer.usageScales#workAreaIndex` | INT |  |
| `vehicle.sprayer.usageScales.sprayUsageScale(?)#fillType` | STRING |  |
| `vehicle.sprayer.usageScales.sprayUsageScale(?)#scale` | FLOAT |  |
| `<Sprayer.SPRAY_TYPE_XML_KEY>#fillUnitIndex` | INT |  |
| `<Sprayer.SPRAY_TYPE_XML_KEY>#unloadInfoIndex` | INT |  |
| `<Sprayer.SPRAY_TYPE_XML_KEY>#fillVolumeIndex` | INT |  |
| `<Sprayer.SPRAY_TYPE_XML_KEY>.turnedAnimation#name` | STRING |  |
| `<Sprayer.SPRAY_TYPE_XML_KEY>.turnedAnimation#turnOnSpeedScale` | FLOAT | `1` |
| `<Sprayer.SPRAY_TYPE_XML_KEY>.turnedAnimation#turnOffSpeedScale` | FLOAT | `"Inversed #turnOnSpeedScale"` |
| `<Sprayer.SPRAY_TYPE_XML_KEY>.turnedAnimation#externalFill` | BOOL | `true` |
| `<Sprayer.SPRAY_TYPE_XML_KEY>#fillTypes` | STRING |  |
| `<Sprayer.SPRAY_TYPE_XML_KEY>.usageScales#workingWidth` | FLOAT | `12` |
| `<Sprayer.SPRAY_TYPE_XML_KEY>.usageScales#workAreaIndex` | INT |  |
| `vehicle.sprayer.animation#name` | STRING |  |
| `vehicle.sprayer#fillUnitIndex` | INT | `1` |
| `vehicle.sprayer#unloadInfoIndex` | INT | `1` |
| `vehicle.sprayer#fillVolumeIndex` | INT |  |
| `vehicle.sprayer#fillVolumeDischargeScrollSpeed` | VECTOR_3 | `"0 0 0"` |
| `vehicle.sprayer.doubledAmount#decreasedSpeed` | FLOAT | `"automatically calculated"` |
| `vehicle.sprayer.doubledAmount#decreaseFactor` | FLOAT | `0.5` |
| `vehicle.sprayer.doubledAmount#toggleButton` | STRING | `"IMPLEMENT_EXTRA4"` |
| `vehicle.sprayer.doubledAmount#deactivateText` | L10N_STRING | `"action_deactivateDoubledSprayAmount"` |
| `vehicle.sprayer.doubledAmount#activateText` | L10N_STRING | `"action_activateDoubledSprayAmount"` |
| `vehicle.sprayer.turnedAnimation#name` | STRING |  |
| `vehicle.sprayer.turnedAnimation#turnOnSpeedScale` | FLOAT | `1` |
| `vehicle.sprayer.turnedAnimation#turnOffSpeedScale` | FLOAT | `"Inversed #turnOnSpeedScale"` |
| `vehicle.sprayer.turnedAnimation#externalFill` | BOOL | `true` |
| `<WorkArea.WORK_AREA_XML_KEY>#sprayType` | INT |  |
| `<WorkArea.WORK_AREA_XML_CONFIG_KEY>#sprayType` | INT |  |

## vehicles/specializations/StonePicker.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.stonePicker#fillUnitIndex` | INT |  |
| `vehicle.stonePicker#loadInfoIndex` | INT |  |
| `vehicle.stonePicker.directionNode#node` | NODE_INDEX |  |
| `vehicle.stonePicker.onlyActiveWhenLowered#value` | BOOL | `true` |
| `vehicle.stonePicker.needsActivation#value` | BOOL | `true` |

## vehicles/specializations/StrawBlower.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.strawBlower.baleTrigger#node` | NODE_INDEX |  |
| `vehicle.strawBlower#fillUnitIndex` | INT | `1` |

## vehicles/specializations/StumpCutter.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.stumpCutter.cutNode(?)#node` | NODE_INDEX |  |
| `vehicle.stumpCutter.cutNode(?)#cutSizeY` | FLOAT | `1` |
| `vehicle.stumpCutter.cutNode(?)#cutSizeZ` | FLOAT | `1` |
| `vehicle.stumpCutter.cutNode(?)#maxCutTime` | TIME | `4` |
| `vehicle.stumpCutter.cutNode(?)#maxResetCutTime` | TIME | `4` |
| `vehicle.stumpCutter.cutNode(?)#cutFullTreeThreshold` | FLOAT | `0.4` |
| `vehicle.stumpCutter.cutNode(?)#cutPartThreshold` | FLOAT | `0.2` |
| `vehicle.stumpCutter.cutNode(?)#workAreaIndex` | INT |  |
| `vehicle.stumpCutter.cutNode(?)#cutDuration` | TIME | `1` |

## vehicles/specializations/StumpCutterLight.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.stumpCutterLight#cutNode` | NODE_INDEX |  |
| `vehicle.stumpCutterLight#cutRadius` | FLOAT | `1` |
| `vehicle.stumpCutterLight#cutTime` | TIME | `1` |

## vehicles/specializations/SupportVehicle.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.supportVehicle#filename` | STRING |  |
| `vehicle.supportVehicle#attacherJointIndex` | INT | `1` |
| `vehicle.supportVehicle#inputAttacherJointIndex` | INT | `1` |
| `vehicle.supportVehicle#terrainOffset` | FLOAT | `0.2` |
| `vehicle.supportVehicle#spawnOffset` | FLOAT | `0.75` |
| `vehicle.supportVehicle.configuration(?)#name` | STRING |  |
| `vehicle.supportVehicle.configuration(?)#id` | INT |  |

## vehicles/specializations/Suspensions.lua

| Key | Type | Default |
|---|---|---|
| `<key>#node` | NODE_INDEX |  |
| `<key>#useCharacterTorso` | BOOL |  |
| `<key>#weight` | FLOAT | `500` |
| `<key>#minRotation` | VECTOR_ROT |  |
| `<key>#maxRotation` | VECTOR_ROT |  |
| `<key>#startTranslationOffset` | VECTOR_TRANS |  |
| `<key>#minTranslation` | VECTOR_TRANS |  |
| `<key>#maxTranslation` | VECTOR_TRANS |  |
| `<key>#maxVelocityDifference` | FLOAT | `0.1` |
| `<key>#suspensionParametersX` | VECTOR_2 | `"0 0"` |
| `<key>#suspensionParametersY` | VECTOR_2 | `"0 0"` |
| `<key>#suspensionParametersZ` | VECTOR_2 | `"0 0"` |
| `<key>#inverseMovement` | BOOL | `false` |
| `<key>#serverOnly` | BOOL | `false` |
| `vehicle.suspensions#maxUpdateDistance` | FLOAT | `Suspensions.DEFAULT_MAX_UPDATE_DISTANCE` |

## vehicles/specializations/Tedder.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.tedder#fillTypeConverter` | STRING |  |
| `vehicle.tedder.effects.effect(?)#workAreaIndex` | INT | `1` |
| `<WorkArea.WORK_AREA_XML_KEY>.tedder#dropWindrowWorkAreaIndex` | INT | `1` |
| `<WorkArea.WORK_AREA_XML_CONFIG_KEY>.tedder#dropWindrowWorkAreaIndex` | INT | `1` |

## vehicles/specializations/TensionBeltObject.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.tensionBeltObject#supportsTensionBelts` | BOOL | `true` |
| `vehicle.tensionBeltObject.meshNodes.meshNode(?)#node` | NODE_INDEX |  |

## vehicles/specializations/TensionBelts.lua

| Key | Type | Default |
|---|---|---|
| `<key>#totalInteractionRadius` | FLOAT | `6` |
| `<key>#interactionRadius` | FLOAT | `1` |
| `<key>#interactionBaseNode` | NODE_INDEX | `"Vehicle root node"` |
| `<key>#activationTrigger` | NODE_INDEX |  |
| `<key>#tensionBeltType` | STRING | `"basic"` |
| `<key>#width` | FLOAT | `"Used from belt definitions"` |
| `<key>#ratchetPosition` | FLOAT |  |
| `<key>#useHooks` | BOOL | `true` |
| `<key>#maxEdgeLength` | FLOAT | `0.1` |
| `<key>#geometryBias` | FLOAT | `0.01` |
| `<key>#defaultOffsetSide` | FLOAT | `0.1` |
| `<key>#defaultOffset` | FLOAT | `0` |
| `<key>#defaultHeight` | FLOAT | `5` |
| `<key>#allowFoldingWhileFasten` | BOOL | `true` |
| `<key>#allowDischargeWhileFasten` | BOOL | `true` |
| `<key>#linkNode` | NODE_INDEX |  |
| `<key>#rootNode` | NODE_INDEX | `"Root component"` |
| `<key>#jointNode` | NODE_INDEX | `"rootNode"` |
| `<key>.tensionBelt(?)#startNode` | NODE_INDEX |  |
| `<key>.tensionBelt(?)#endNode` | NODE_INDEX |  |
| `<key>.tensionBelt(?)#offsetLeft` | FLOAT |  |
| `<key>.tensionBelt(?)#offsetRight` | FLOAT |  |
| `<key>.tensionBelt(?)#offset` | FLOAT |  |
| `<key>.tensionBelt(?)#height` | FLOAT |  |
| `<key>.tensionBelt(?)#linkNode` | NODE_INDEX |  |
| `<key>.tensionBelt(?)#jointNode` | NODE_INDEX |  |
| `<key>.tensionBelt(?).intersectionNode(?)#node` | NODE_INDEX |  |
| `vehicles.vehicle(?).tensionBelts.belt(?)#isActive` | BOOL | `false` |

## vehicles/specializations/TestAreas.lua

| Key | Type | Default |
|---|---|---|
| `<WorkArea.WORK_AREA_XML_KEY>.testAreas#autoGenerate` | BOOL | `false` |
| `<WorkArea.WORK_AREA_XML_KEY>.testAreas#rootNode` | NODE_INDEX |  |
| `<WorkArea.WORK_AREA_XML_KEY>.testAreas#startNode` | NODE_INDEX |  |
| `<WorkArea.WORK_AREA_XML_KEY>.testAreas#widthNode` | NODE_INDEX |  |
| `<WorkArea.WORK_AREA_XML_KEY>.testAreas#zOffset` | FLOAT | `0` |
| `<WorkArea.WORK_AREA_XML_KEY>.testAreas#xOffset` | FLOAT | `0` |
| `<WorkArea.WORK_AREA_XML_KEY>.testAreas#length` | FLOAT | `0.5` |
| `<WorkArea.WORK_AREA_XML_KEY>.testAreas#numAreas` | INT | `10` |
| `<WorkArea.WORK_AREA_XML_KEY>.testAreas#areaWidthScale` | FLOAT | `0.9` |
| `<WorkArea.WORK_AREA_XML_KEY>.testAreas#scale` | FLOAT | `1` |
| `<WorkArea.WORK_AREA_XML_KEY>.testAreas.testArea(?)#startNode` | NODE_INDEX |  |
| `<WorkArea.WORK_AREA_XML_KEY>.testAreas.testArea(?)#widthNode` | NODE_INDEX |  |
| `<WorkArea.WORK_AREA_XML_KEY>.testAreas.testArea(?)#heightNode` | NODE_INDEX |  |
| `<WorkArea.WORK_AREA_XML_CONFIG_KEY>.testAreas#autoGenerate` | BOOL | `false` |
| `<WorkArea.WORK_AREA_XML_CONFIG_KEY>.testAreas#rootNode` | NODE_INDEX |  |
| `<WorkArea.WORK_AREA_XML_CONFIG_KEY>.testAreas#startNode` | NODE_INDEX |  |
| `<WorkArea.WORK_AREA_XML_CONFIG_KEY>.testAreas#widthNode` | NODE_INDEX |  |
| `<WorkArea.WORK_AREA_XML_CONFIG_KEY>.testAreas#zOffset` | FLOAT | `0` |
| `<WorkArea.WORK_AREA_XML_CONFIG_KEY>.testAreas#xOffset` | FLOAT | `0` |
| `<WorkArea.WORK_AREA_XML_CONFIG_KEY>.testAreas#length` | FLOAT | `0.5` |
| `<WorkArea.WORK_AREA_XML_CONFIG_KEY>.testAreas#numAreas` | INT | `10` |
| `<WorkArea.WORK_AREA_XML_CONFIG_KEY>.testAreas#areaWidthScale` | FLOAT | `0.9` |
| `<WorkArea.WORK_AREA_XML_CONFIG_KEY>.testAreas#scale` | FLOAT | `1` |
| `<WorkArea.WORK_AREA_XML_CONFIG_KEY>.testAreas.testArea(?)#startNode` | NODE_INDEX |  |
| `<WorkArea.WORK_AREA_XML_CONFIG_KEY>.testAreas.testArea(?)#widthNode` | NODE_INDEX |  |
| `<WorkArea.WORK_AREA_XML_CONFIG_KEY>.testAreas.testArea(?)#heightNode` | NODE_INDEX |  |

## vehicles/specializations/TipOccluder.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.tipOccluder.occlusionArea(?)#start` | NODE_INDEX |  |
| `vehicle.tipOccluder.occlusionArea(?)#width` | NODE_INDEX |  |
| `vehicle.tipOccluder.occlusionArea(?)#height` | NODE_INDEX |  |

## vehicles/specializations/Trailer.lua

| Key | Type | Default |
|---|---|---|
| `<key>#infoText` | L10N_STRING | `"action_toggleTipSide"` |
| `<key>.tipSide(?)#name` | STRING |  |
| `<key>.tipSide(?)#dischargeNodeIndex` | INT |  |
| `<key>.tipSide(?)#canTipIfEmpty` | BOOL | `true` |
| `<key>.tipSide(?)#canTip` | BOOL | `true` |
| `<key>.tipSide(?).manualTipToggle#enabled` | BOOL | `false` |
| `<key>.tipSide(?).manualTipToggle#stopOnDeactivate` | BOOL | `true` |
| `<key>.tipSide(?).manualTipToggle#inputAction` | STRING | `"IMPLEMENT_EXTRA4"` |
| `<key>.tipSide(?).manualTipToggle#inputActionTextPos` | L10N_STRING | `"action_startTipping"` |
| `<key>.tipSide(?).manualTipToggle#inputActionTextNeg` | L10N_STRING | `"action_stopTipping"` |
| `<key>.tipSide(?).manualDoorToggle#enabled` | BOOL | `false` |
| `<key>.tipSide(?).manualDoorToggle#openWhileTipping` | BOOL | `false` |
| `<key>.tipSide(?).manualDoorToggle#inputAction` | STRING | `"IMPLEMENT_EXTRA3"` |
| `<key>.tipSide(?).manualDoorToggle#inputActionTextPos` | L10N_STRING | `"action_openBackDoor"` |
| `<key>.tipSide(?).manualDoorToggle#inputActionTextNeg` | L10N_STRING | `"action_closeBackDoor"` |
| `<key>.tipSide(?).manualDoorToggle.fillUnit#index` | INT |  |
| `<key>.tipSide(?).manualDoorToggle.fillUnit#allowWhileFilled` | BOOL | `true` |
| `<key>.tipSide(?).animation#name` | STRING |  |
| `<key>.tipSide(?).animation#speedScale` | FLOAT | `1` |
| `<key>.tipSide(?).animation#closeSpeedScale` | FLOAT | `"inversed speed scale"` |
| `<key>.tipSide(?).animation#startTipTime` | FLOAT | `0` |
| `<key>.tipSide(?).animation#resetTipSideChange` | BOOL | `false` |
| `<key>.tipSide(?).doorAnimation#name` | STRING |  |
| `<key>.tipSide(?).doorAnimation#speedScale` | FLOAT | `1` |
| `<key>.tipSide(?).doorAnimation#closeSpeedScale` | FLOAT | `"inversed speed scale"` |
| `<key>.tipSide(?).doorAnimation#startTipTime` | FLOAT | `0` |
| `<key>.tipSide(?).doorAnimation#delayedClosing` | BOOL | `false` |
| `<key>.tipSide(?).tippingAnimation#name` | STRING |  |
| `<key>.tipSide(?).tippingAnimation#speedScale` | FLOAT | `1` |
| `<key>.tipSide(?).fillLevel#fillUnitIndex` | INT |  |
| `<key>.tipSide(?).fillLevel#minFillLevelPct` | FLOAT | `1` |
| `<key>.tipSide(?).fillLevel#maxFillLevelPct` | FLOAT | `1` |
| `<Pickup.PICKUP_XML_KEY>#allowWhileTipping` | BOOL | `true` |
| `<TurnOnVehicle.TURNED_ON_ANIMATION_XML_PATH>#playWhileTipping` | BOOL | `false` |
| `vehicles.vehicle(?).trailer#tipSideIndex` | INT |  |
| `vehicles.vehicle(?).trailer#doorState` | BOOL |  |
| `vehicles.vehicle(?).trailer#tipState` | INT |  |
| `vehicles.vehicle(?).trailer#tipAnimationTime` | FLOAT |  |

## vehicles/specializations/TreePlanter.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.treePlanter#inputAction` | STRING |  |
| `vehicle.treePlanter#node` | NODE_INDEX |  |
| `vehicle.treePlanter#minDistance` | FLOAT | `20` |
| `vehicle.treePlanter#palletTrigger` | NODE_INDEX |  |
| `vehicle.treePlanter#refNodeIndex` | INT | `1` |
| `vehicle.treePlanter#saplingPalletGrabNode` | NODE_INDEX |  |
| `vehicle.treePlanter#saplingPalletMountNode` | NODE_INDEX |  |
| `vehicle.treePlanter#fillUnitIndex` | INT |  |
| `vehicle.treePlanter#palletMountingRange` | FLOAT | `6` |
| `vehicle.treePlanter.saplingNodes.saplingNode(?)#node` | NODE_INDEX |  |
| `vehicle.treePlanter.plantAnimation#name` | STRING |  |
| `vehicle.treePlanter.plantAnimation#speedScale` | FLOAT | `1` |
| `vehicle.treePlanter.magazineAnimation#name` | STRING |  |
| `vehicle.treePlanter.magazineAnimation#speedScale` | FLOAT | `1` |
| `vehicle.treePlanter.magazineAnimation#numRows` | INT | `1` |
| `vehicles.vehicle(?).treePlanter#lastTreePos` | VECTOR_TRANS |  |
| `vehicles.vehicle(?).treePlanter#palletHadBeenMounted` | BOOL |  |
| `vehicles.vehicle(?).treePlanter#currentTreeType` | STRING |  |
| `vehicles.vehicle(?).treePlanter#currentTreeVariation` | STRING |  |

## vehicles/specializations/TreeSaplingPallet.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.treeSaplingPallet#fillUnitIndex` | INT | `1` |
| `vehicle.treeSaplingPallet#treeType` | STRING | `"spruce1"` |
| `vehicle.treeSaplingPallet#variationName` | STRING | `"DEFAULT"` |
| `vehicle.treeSaplingPallet#filename` | FILENAME |  |
| `vehicle.treeSaplingPallet.saplingNodes.saplingNode(?)#node` | NODE_INDEX |  |
| `vehicle.treeSaplingPallet.saplingNodes.saplingNode(?)#randomize` | BOOL | `true` |
| `vehicle.treeSaplingPallet.treeSaplingTypeConfigurations.treeSaplingTypeConfiguration(?).saplingNodes.saplingNode(?)#node` | NODE_INDEX |  |
| `vehicle.treeSaplingPallet.treeSaplingTypeConfigurations.treeSaplingTypeConfiguration(?).saplingNodes.saplingNode(?)#randomize` | BOOL | `true` |
| `vehicles.vehicle(?).treeSaplingPallet#treeTypeName` | STRING |  |
| `vehicles.vehicle(?).treeSaplingPallet#variationName` | STRING |  |

## vehicles/specializations/TreeSaw.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.treeSaw.cutNode#node` | NODE_INDEX |  |
| `vehicle.treeSaw.cutNode#sizeY` | FLOAT | `1` |
| `vehicle.treeSaw.cutNode#sizeZ` | FLOAT | `1` |
| `vehicle.treeSaw.cutNode#lengthAboveThreshold` | FLOAT | `0.3` |
| `vehicle.treeSaw.cutNode#lengthBelowThreshold` | FLOAT | `0.3` |
| `vehicle.treeSaw.cutNode#timer` | FLOAT | `1` |

## vehicles/specializations/TurnOnVehicle.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.turnOnVehicle#toggleButton` | STRING | `"IMPLEMENT_EXTRA"` |
| `vehicle.turnOnVehicle#turnOffText` | L10N_STRING | `"action_turnOffOBJECT"` |
| `vehicle.turnOnVehicle#turnOnText` | L10N_STRING | `"action_turnOnOBJECT"` |
| `vehicle.turnOnVehicle#isAlwaysTurnedOn` | BOOL | `false` |
| `vehicle.turnOnVehicle#turnedOnByAttacherVehicle` | BOOL | `false` |
| `vehicle.turnOnVehicle#turnOffIfNotAllowed` | BOOL | `true` |
| `vehicle.turnOnVehicle#turnOffOnDeactivate` | BOOL | `true` |
| `vehicle.turnOnVehicle#aiRequiresTurnOn` | BOOL | `true` |
| `vehicle.turnOnVehicle#requiresTurnOn` | BOOL | `true` |
| `vehicle.turnOnVehicle.turnedAnimation#name` | STRING |  |
| `vehicle.turnOnVehicle.turnedAnimation#turnOnSpeedScale` | FLOAT | `1` |
| `vehicle.turnOnVehicle.turnedAnimation#turnOffSpeedScale` | FLOAT | `"Inversed turnOnSpeedScale"` |
| `<TurnOnVehicle.TURNED_ON_ANIMATION_XML_PATH>#name` | STRING |  |
| `<TurnOnVehicle.TURNED_ON_ANIMATION_XML_PATH>#turnOnFadeTime` | FLOAT | `1` |
| `<TurnOnVehicle.TURNED_ON_ANIMATION_XML_PATH>#turnOffFadeTime` | FLOAT | `1` |
| `<TurnOnVehicle.TURNED_ON_ANIMATION_XML_PATH>#speedScale` | FLOAT | `1` |
| `vehicle.turnOnVehicle.activatableFillUnits.activatableFillUnit(?)#index` | INT |  |
| `<Attachable.INPUT_ATTACHERJOINT_XML_KEY>#canBeTurnedOn` | BOOL | `true` |
| `<Attachable.INPUT_ATTACHERJOINT_CONFIG_XML_KEY>#canBeTurnedOn` | BOOL | `true` |
| `<WorkArea.WORK_AREA_XML_KEY>#needsSetIsTurnedOn` | BOOL | `true` |
| `<WorkArea.WORK_AREA_XML_CONFIG_KEY>#needsSetIsTurnedOn` | BOOL | `true` |
| `<FillUnit.ALARM_TRIGGER_XML_KEY>#needsTurnOn` | BOOL | `false` |
| `<FillUnit.ALARM_TRIGGER_XML_KEY>#turnOffInTrigger` | BOOL | `false` |
| `<Shovel.SHOVEL_NODE_XML_KEY>#needsActivation` | BOOL | `false` |
| `<Dischargeable.DISCHARGE_NODE_XML_PATH>#needsSetIsTurnedOn` | BOOL | `false` |
| `<Dischargeable.DISCHARGE_NODE_XML_PATH>#turnOnActivateNode` | BOOL | `false` |
| `<Dischargeable.DISCHARGE_NODE_CONFIG_XML_PATH>#needsSetIsTurnedOn` | BOOL | `false` |
| `<Dischargeable.DISCHARGE_NODE_CONFIG_XML_PATH>#turnOnActivateNode` | BOOL | `false` |
| `<BunkerSiloCompacter.XML_PATH>#turnedOnCompactingScale` | FLOAT | `"normal scale"` |
| `vehicle.turnOnVehicle.turnedOnSpeed#fadeInTime` | TIME | `1` |
| `vehicle.turnOnVehicle.turnedOnSpeed#fadeOutTime` | TIME | `1` |
| `vehicle.turnOnVehicle.turnedOnSpeed#variance` | FLOAT | `0.02` |
| `vehicle.turnOnVehicle.turnedOnSpeed#varianceSpeed` | FLOAT | `1` |
| `vehicle.turnOnVehicle.dashboards.dashboard(?)#minRpm` | FLOAT | `0` |
| `vehicle.turnOnVehicle.dashboards.dashboard(?)#maxRpm` | FLOAT | `1000` |

## vehicles/specializations/VariableWorkWidth.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.variableWorkWidth#widthReferenceWorkAreaIndex` | INT | `1` |
| `vehicle.variableWorkWidth#defaultStateLeft` | INT | `"Max. possible state"` |
| `vehicle.variableWorkWidth#defaultStateRight` | INT | `"Max. possible state"` |
| `vehicle.variableWorkWidth#aiKeepCurrentWidth` | BOOL | `false` |
| `vehicle.variableWorkWidth#aiStateLeft` | INT | `"Max. possible state"` |
| `vehicle.variableWorkWidth#aiStateRight` | INT | `"Max. possible state"` |
| `<WorkArea.WORK_AREA_XML_KEY>.section#index` | INT |  |
| `<WorkArea.WORK_AREA_XML_CONFIG_KEY>.section#index` | INT |  |
| `vehicles.vehicle(?).variableWorkWidth#leftSide` | INT | `"Max. state"` |
| `vehicles.vehicle(?).variableWorkWidth#rightSide` | INT | `"Max. state"` |
| `<basePath>.sections.section(?)#isLeft` | BOOL | `false` |
| `<basePath>.sections.section(?)#isCenter` | BOOL | `false` |
| `<basePath>.sections.section(?)#width` | FLOAT | `"Automatically calculated"` |
| `<basePath>.sections.section(?)#maxWidthNode` | NODE_INDEX |  |
| `<basePath>.sections.section(?).effect(?)#node` | NODE_INDEX |  |
| `<basePath>.sectionNodes.sectionNode(?)#node` | NODE_INDEX |  |
| `<basePath>.sectionNodes.sectionNode(?)#isLeft` | BOOL |  |
| `<basePath>.sectionNodes.sectionNode(?)#minTrans` | VECTOR_TRANS |  |
| `<basePath>.sectionNodes.sectionNode(?)#minTransX` | FLOAT |  |
| `<basePath>.sectionNodes.sectionNode(?)#maxTrans` | VECTOR_TRANS |  |
| `<basePath>.sectionNodes.sectionNode(?)#maxTransX` | FLOAT |  |
| `<basePath>.sectionNodes.sectionNode(?)#minRot` | VECTOR_ROT |  |
| `<basePath>.sectionNodes.sectionNode(?)#endRot` | VECTOR_ROT |  |
| `<basePath>.sectionNodes.sectionNode(?)#workAreaIndex` | INT | `1` |

## vehicles/specializations/VineCutter.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.vineCutter#fruitType` | STRING |  |
| `vehicle.vineCutter.vineCutterConfigurations.vineCutterConfiguration(?)#fruitType` | STRING |  |

## vehicles/specializations/VineDetector.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.vineDetector.raycast#node` | NODE_INDEX |  |
| `vehicle.vineDetector.raycast#maxDistance` | FLOAT | `1` |

## vehicles/specializations/VinePrepruner.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.vinePrepruner#fruitType` | STRING |  |
| `<nodeKey>#node` | NODE_INDEX |  |
| `<nodeKey>#offset` | FLOAT | `0.5` |
| `<nodeKey>#axis` | INT | `1` |
| `<nodeKey>#direction` | INT | `1` |
| `<nodeKey>#transMin` | FLOAT | `0` |
| `<nodeKey>#transMax` | FLOAT | `1` |
| `<nodeKey>#transSpeed` | FLOAT | `0.5` |
| `<nodeKey>#numBits` | INT | `8` |
| `vehicle.vinePrepruner.poleAnimation#name` | STRING |  |
| `vehicle.vinePrepruner.poleAnimation#speedScale` | FLOAT | `1` |
| `vehicle.vinePrepruner.poleAnimation#poleThreshold` | FLOAT | `0.1` |

## vehicles/specializations/Washable.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.washable#dirtDuration` | FLOAT | `90` |
| `vehicle.washable#washDuration` | FLOAT | `1` |
| `vehicle.washable#rainWashDuration` | FLOAT | `10` |
| `vehicle.washable#wetDuration` | FLOAT | `2` |
| `vehicle.washable#dryDuration` | FLOAT | `10` |
| `vehicle.washable#workMultiplier` | FLOAT | `4` |
| `vehicle.washable#fieldMultiplier` | FLOAT | `2` |
| `vehicle.washable#wetMultiplier` | FLOAT | `5` |
| `vehicle.washable#blockedWashTypes` | STRING |  |
| `vehicle.washable.wetnessIgnoreNode(?)#node` | NODE_INDEX |  |
| `vehicles.vehicle(?).washable.dirtNode(?)#amount` | FLOAT |  |
| `vehicles.vehicle(?).washable.dirtNode(?)#snowScale` | FLOAT |  |
| `vehicles.vehicle(?).washable.dirtNode(?)#wetness` | FLOAT |  |

## vehicles/specializations/WaterTrailer.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.waterTrailer#fillUnitIndex` | INT |  |
| `vehicle.waterTrailer#fillLitersPerSecond` | FLOAT | `500` |
| `vehicle.waterTrailer#fillNode` | NODE_INDEX | `"Root component"` |

## vehicles/specializations/Wearable.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.wearable#wearDuration` | FLOAT | `600` |
| `vehicle.wearable#workMultiplier` | FLOAT | `20` |
| `vehicle.wearable#fieldMultiplier` | FLOAT | `2` |
| `vehicle.wearable#showOnHud` | BOOL | `true` |
| `vehicles.vehicle(?).wearable.wearNode(?)#amount` | FLOAT |  |
| `vehicles.vehicle(?).wearable#damage` | FLOAT |  |

## vehicles/specializations/Weeder.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.weeder#isHoe` | BOOL | `false` |
| `vehicle.weeder#isGrasslandWeeder` | BOOL | `false` |
| `<WorkParticles.PARTICLE_MAPPING_XML_PATH>#adjustColor` | BOOL | `false` |

## vehicles/specializations/Wheels.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.wheels.wheelConfigurations#tireCategories` | STRING |  |
| `vehicle.wheels.wheelConfigurations#customBrandOrder` | STRING_LIST |  |
| `vehicle.wheels.wheelConfigurations.tireCombination(?)#brand` | STRING |  |
| `vehicle.wheels.wheelConfigurations.tireCombination(?)#names` | STRING |  |
| `<Wheels.CONFIG_XML_PATH>(?)#numDynamicConfigurations` | INT | `"unlimited"` |
| `<Wheels.CONFIG_XML_PATH>(?)#tireCategories` | STRING |  |
| `<Wheels.CONFIG_XML_PATH>(?).tireCombination(?)#brand` | STRING |  |
| `<Wheels.CONFIG_XML_PATH>(?).tireCombination(?)#names` | STRING |  |
| `<configKey>#autoRotateBackSpeed` | FLOAT | `1` |
| `<configKey>#speedDependentRotateBack` | BOOL | `true` |
| `<configKey>#differentialIndex` | INT |  |
| `<configKey>#ackermannSteeringIndex` | INT |  |
| `<configKey>#ackermannSteeringAngle` | FLOAT |  |
| `<configKey>#isCareWheelConfiguration` | BOOL |  |
| `<configKey>#baseConfig` | STRING |  |
| `<configKey>#hasSurfaceSounds` | BOOL | `true` |
| `<configKey>#surfaceSoundTireType` | STRING | `"Tire type of first wheel"` |
| `<configKey>#surfaceSoundLinkNode` | NODE_INDEX | `"Root component"` |
| `vehicle.wheels.rimMaterial#useBaseColor` | BOOL | `false` |
| `vehicle.wheels.rimMaterial#useDesignColorIndex` | INT |  |
| `vehicle.wheels.innerRimMaterial#useBaseColor` | BOOL | `false` |
| `vehicle.wheels.innerRimMaterial#useDesignColorIndex` | INT |  |
| `vehicle.wheels.outerRimMaterial#useBaseColor` | BOOL | `false` |
| `vehicle.wheels.outerRimMaterial#useDesignColorIndex` | INT |  |
| `vehicle.wheels.additionalMaterial#useBaseColor` | BOOL | `false` |
| `vehicle.wheels.additionalMaterial#useDesignColorIndex` | INT |  |
| `vehicle.wheels.hubMaterial#useBaseColor` | BOOL | `false` |
| `vehicle.wheels.hubMaterial#useDesignColorIndex` | INT |  |
| `vehicle.wheels.hubMaterial#useRimColor` | BOOL | `false` |
| `vehicle.wheels.hubBoltMaterial#useBaseColor` | BOOL | `false` |
| `vehicle.wheels.hubBoltMaterial#useDesignColorIndex` | INT |  |
| `vehicle.wheels.hubBoltMaterial#useRimColor` | BOOL | `false` |
| `vehicle.wheels.hubs.material#useBaseColor` | BOOL | `false` |
| `vehicle.wheels.hubs.material#useDesignColorIndex` | INT |  |
| `vehicle.wheels.hubs.material#useRimColor` | BOOL | `false` |
| `vehicle.wheels.hubs.hub(?)#linkNode` | NODE_INDEX |  |
| `vehicle.wheels.hubs.hub(?)#filename` | STRING |  |
| `vehicle.wheels.hubs.hub(?)#isLeft` | BOOL | `false` |
| `vehicle.wheels.hubs.hub(?)#offset` | FLOAT |  |
| `vehicle.wheels.hubs.hub(?)#scale` | VECTOR_SCALE |  |
| `vehicle.wheels.hubs.hub(?).material#useBaseColor` | BOOL | `false` |
| `vehicle.wheels.hubs.hub(?).material#useDesignColorIndex` | INT |  |
| `vehicle.wheels.hubs.hub(?).material#useRimColor` | BOOL | `false` |
| `vehicle.wheels.hubs.hub(?).boltMaterial#useBaseColor` | BOOL | `false` |
| `vehicle.wheels.hubs.hub(?).boltMaterial#useDesignColorIndex` | INT |  |
| `vehicle.wheels.hubs.hub(?).boltMaterial#useRimColor` | BOOL | `false` |
| `vehicle.wheels.hubs.hub(?).additionalMaterial#useBaseColor` | BOOL | `false` |
| `vehicle.wheels.hubs.hub(?).additionalMaterial#useDesignColorIndex` | INT |  |
| `vehicle.wheels.hubs.hub(?).additionalMaterial#useRimColor` | BOOL | `false` |
| `vehicle.wheels.hubs.hub(?).boltAdditionalMaterial#useBaseColor` | BOOL | `false` |
| `vehicle.wheels.hubs.hub(?).boltAdditionalMaterial#useDesignColorIndex` | INT |  |
| `vehicle.wheels.hubs.hub(?).boltAdditionalMaterial#useRimColor` | BOOL | `false` |
| `<dynamicallyLoadedWheelKey>#linkNode` | NODE_INDEX |  |
| `<dynamicallyLoadedWheelKey>#isLeft` | BOOL | `false` |
| `<dynamicallyLoadedWheelKey>#filename` | STRING |  |
| `<dynamicallyLoadedWheelKey>#configId` | STRING | `"default"` |
| `<dynamicallyLoadedWheelKey>#isShallowWaterObstacle` | BOOL | `false` |
| `vehicle.wheels.steeringNodes.steeringNode(?)#node` | NODE_INDEX |  |
| `vehicle.wheels.steeringNodes.steeringNode(?)#rotScale` | FLOAT | `1` |
| `vehicle.wheels.steeringNodes.steeringNode(?)#rotChangeSpeed` | ANGLE | `45` |
| `<FoliageBending.BENDING_NODE_XML_KEY>#wheelIndices` | VECTOR_N |  |
| `vehicles.vehicle(?).wheels#lastConfigId` | STRING |  |
| `<key>#rotSpeed` | FLOAT |  |
| `<key>#rotMax` | FLOAT |  |
| `<key>#rotCenterWheel1` | INT |  |
| `<key>#rotCenterWheel2` | INT |  |
| `<key>#rotCenterWheels` | VECTOR_N |  |
| `<key>#rotCenterNode` | NODE_INDEX |  |
| `<key>#rotCenter` | VECTOR_2 |  |
| `<key>#minTurningRadius` | FLOAT |  |

## vehicles/specializations/Winch.lua

| Key | Type | Default |
|---|---|---|
| `<baseKey>#controlGroupIndex` | INT |  |
| `<baseKey>.rope(?)#maxNumTrees` | INT | `1` |
| `<baseKey>.rope(?)#maxTreeMass` | FLOAT | `1` |
| `<baseKey>.rope(?)#node` | NODE_INDEX |  |
| `<baseKey>.rope(?)#triggerNode` | NODE_INDEX |  |
| `<baseKey>.rope(?)#minLength` | FLOAT | `1` |
| `<baseKey>.rope(?)#maxLength` | FLOAT | `30` |
| `<baseKey>.rope(?)#maxSubLength` | FLOAT | `2` |
| `<baseKey>.rope(?)#speed` | FLOAT | `1.5` |
| `<baseKey>.rope(?)#acceleration` | FLOAT | `1.5` |
| `<baseKey>.rope(?).componentJoint(?)#jointIndex` | INT |  |
| `<baseKey>.rope(?).componentJoint(?)#limitActive` | VECTOR_ROT |  |
| `<baseKey>.rope(?).componentJoint(?)#limitInactive` | VECTOR_ROT |  |
| `<baseKey>.rope(?).attach#node` | NODE_INDEX |  |
| `<baseKey>.rope(?).attach#time` | TIME | `0.5` |
| `<key>.rope(?)#index` | INT |  |
| `<key>.rope(?).attachedTree(?)#translation` | VECTOR_TRANS |  |
| `<key>.rope(?).attachedTree(?)#splitShapePart1` | INT |  |
| `<key>.rope(?).attachedTree(?)#splitShapePart2` | INT |  |
| `<key>.rope(?).attachedTree(?)#splitShapePart3` | INT |  |

## vehicles/specializations/WindBending.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.windBending.windBendingNodes.windBendingNode(?)#node` | NODE_INDEX |  |
| `vehicle.windBending.windBendingNodes.windBendingNode(?)#decalNode` | NODE_INDEX |  |
| `vehicle.windBending.windBendingNodes.windBendingNode(?)#speedReferenceNode` | NODE_INDEX |  |
| `vehicle.windBending.windBendingNodes.windBendingNode(?)#maxBending` | FLOAT | `0.15` |
| `vehicle.windBending.windBendingNodes.windBendingNode(?)#maxBendingNeg` | FLOAT | `"same as #maxBending"` |
| `vehicle.windBending.windBendingNodes.windBendingNode(?)#maxBendingSpeed` | FLOAT | `20` |

## vehicles/specializations/Windrower.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.windrower.effects.effect(?)#workAreaIndex` | INT | `1` |
| `vehicle.windrower.effects.effect(?)#dropAreaIndex` | INT |  |
| `vehicle.windrower#limitToLineHeight` | BOOL | `false` |
| `vehicle.windrower#fillTypeCategories` | STRING |  |
| `vehicle.windrower#fillTypes` | STRING |  |
| `<WorkArea.WORK_AREA_XML_KEY>.windrower#particleSystemIndex` | INT |  |
| `<WorkArea.WORK_AREA_XML_KEY>.windrower#dropWindrowWorkAreaIndex` | INT | `1` |
| `<WorkArea.WORK_AREA_XML_CONFIG_KEY>.windrower#particleSystemIndex` | INT |  |
| `<WorkArea.WORK_AREA_XML_CONFIG_KEY>.windrower#dropWindrowWorkAreaIndex` | INT | `1` |

## vehicles/specializations/Wipers.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.wipers.wiper(?)#animName` | STRING |  |
| `vehicle.wipers.wiper(?).state(?)#animSpeed` | FLOAT |  |
| `vehicle.wipers.wiper(?).state(?)#animPause` | FLOAT |  |

## vehicles/specializations/WoodCrusher.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.woodCrusher#moveColDisableCollisionPairs` | BOOL | `true` |
| `vehicle.woodCrusher#fillUnitIndex` | INT | `1` |
| `<key>#cutNode` | NODE_INDEX |  |
| `<key>#mainDrumRefNode` | NODE_INDEX |  |
| `<key>#mainDrumRefNodeMaxY` | FLOAT |  |
| `<key>.moveTriggers.trigger(?)#node` | NODE_INDEX |  |
| `<key>.moveCollisions.collision(?)#node` | NODE_INDEX |  |
| `<key>#moveVelocityZ` | FLOAT | `0.8` |
| `<key>#moveMaxForce` | FLOAT | `7` |
| `<key>#shapeSizeDetectionNode` | NODE_INDEX |  |
| `<key>#cutSizeY` | FLOAT | `1` |
| `<key>#cutSizeZ` | FLOAT | `1` |
| `<key>.downForceNodes.downForceNode(?)#node` | NODE_INDEX |  |
| `<key>.downForceNodes.downForceNode(?)#trigger` | NODE_INDEX |  |
| `<key>.downForceNodes.downForceNode(?)#force` | FLOAT | `2` |
| `<key>.downForceNodes.downForceNode(?)#sizeY` | FLOAT | `"Cut size Y"` |
| `<key>.downForceNodes.downForceNode(?)#sizeZ` | FLOAT | `"Cut size Z"` |
| `<key>#automaticallyTurnOn` | BOOL | `false` |

## vehicles/specializations/WoodHarvester.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.woodHarvester.cutNode#node` | NODE_INDEX |  |
| `vehicle.woodHarvester.cutNode#maxRadius` | FLOAT | `1` |
| `vehicle.woodHarvester.cutNode#sizeY` | FLOAT | `1` |
| `vehicle.woodHarvester.cutNode#sizeZ` | FLOAT | `1` |
| `vehicle.woodHarvester.cutNode#attachNode` | NODE_INDEX |  |
| `vehicle.woodHarvester.cutNode#attachReferenceNode` | NODE_INDEX |  |
| `vehicle.woodHarvester.cutNode#attachMoveSpeed` | FLOAT | `3` |
| `vehicle.woodHarvester.cutNode#releasedComponentJointIndex` | INT |  |
| `vehicle.woodHarvester.cutNode#releasedComponentJointRotLimitXSpeed` | ANGLE | `100` |
| `vehicle.woodHarvester.cutNode#releasedComponentJoint2Index` | INT |  |
| `<WoodHarvester.HEADER_JOINT_TILT_XML_KEY>#animationName` | STRING |  |
| `<WoodHarvester.HEADER_JOINT_TILT_XML_KEY>#speedFactor` | FLOAT | `1` |
| `vehicle.woodHarvester.delimbNode#node` | NODE_INDEX |  |
| `vehicle.woodHarvester.delimbNode#sizeX` | FLOAT | `0.1` |
| `vehicle.woodHarvester.delimbNode#sizeY` | FLOAT | `1` |
| `vehicle.woodHarvester.delimbNode#sizeZ` | FLOAT | `1` |
| `vehicle.woodHarvester.delimbNode#delimbOnCut` | BOOL | `false` |
| `vehicle.woodHarvester.cutLengths#min` | FLOAT | `1` |
| `vehicle.woodHarvester.cutLengths#max` | FLOAT | `5` |
| `vehicle.woodHarvester.cutLengths#step` | FLOAT | `0.5` |
| `vehicle.woodHarvester.cutLengths#values` | VECTOR_N |  |
| `vehicle.woodHarvester.cutLengths#startIndex` | INT | `1` |
| `vehicle.woodHarvester.cutAnimation#name` | STRING |  |
| `vehicle.woodHarvester.cutAnimation#speedScale` | FLOAT |  |
| `vehicle.woodHarvester.cutAnimation#cutTime` | FLOAT |  |
| `vehicle.woodHarvester.grabAnimation#name` | STRING |  |
| `vehicle.woodHarvester.grabAnimation#speedScale` | FLOAT |  |
| `vehicle.woodHarvester.treeSizeMeasure#node` | NODE_INDEX |  |
| `vehicle.woodHarvester.treeSizeMeasure#rotMaxRadius` | FLOAT | `1` |
| `vehicle.woodHarvester.treeSizeMeasure#rotMaxAnimTime` | FLOAT | `1` |
| `vehicles.vehicle(?).woodHarvester#currentCutLengthIndex` | INT | `1` |
| `vehicles.vehicle(?).woodHarvester#isTurnedOn` | BOOL | `false` |
| `vehicles.vehicle(?).woodHarvester#lastTreeSize` | VECTOR_4 |  |
| `vehicles.vehicle(?).woodHarvester#lastCutAttachDirection` | INT |  |
| `vehicles.vehicle(?).woodHarvester#lastTreeJointPos` | VECTOR_3 |  |
| `vehicles.vehicle(?).woodHarvester#hasAttachedSplitShape` | BOOL | `false` |

## vehicles/specializations/WoodHarvesterLight.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.woodHarvesterLight.cutNode#node` | NODE_INDEX |  |
| `vehicle.woodHarvesterLight.cutNode#maxRadius` | FLOAT | `1` |
| `vehicle.woodHarvesterLight.cutNode#sizeY` | FLOAT | `1` |
| `vehicle.woodHarvesterLight.cutNode#sizeZ` | FLOAT | `1` |
| `vehicle.woodHarvesterLight.cutAnimation#name` | STRING |  |
| `vehicle.woodHarvesterLight.cutAnimation#speedScale` | FLOAT |  |
| `vehicle.woodHarvesterLight.grabAnimation#name` | STRING |  |
| `vehicle.woodHarvesterLight.grabAnimation#speedScale` | FLOAT |  |
| `vehicle.woodHarvesterLight.logSpawner#startNode` | NODE_INDEX |  |
| `vehicle.woodHarvesterLight.logSpawner#offset` | FLOAT | `1` |
| `vehicle.woodHarvesterLight.logSpawner#maxSpawnWidth` | FLOAT | `10` |
| `vehicle.woodHarvesterLight.logSpawner#additionalLength` | FLOAT | `4` |

## vehicles/specializations/WorkArea.lua

| Key | Type | Default |
|---|---|---|
| `<SpeedRotatingParts.SPEED_ROTATING_PART_XML_KEY>#workAreaIndex` | INT |  |
| `<basePath>#type` | STRING | `"DEFAULT"` |
| `<basePath>#requiresGroundContact` | BOOL | `true` |
| `<basePath>#disableBackwards` | BOOL | `true` |
| `<basePath>#requiresOwnedFarmland` | BOOL | `true` |
| `<basePath>#functionName` | STRING |  |
| `<basePath>#preprocessFunctionName` | STRING |  |
| `<basePath>#postprocessFunctionName` | STRING |  |
| `<basePath>.area#startNode` | NODE_INDEX |  |
| `<basePath>.area#widthNode` | NODE_INDEX |  |
| `<basePath>.area#heightNode` | NODE_INDEX |  |
| `<basePath>.groundReferenceNode#index` | INT |  |
| `<basePath>.onlyActiveWhenLowered#value` | BOOL | `false` |

## vehicles/specializations/WorkMode.lua

| Key | Type | Default |
|---|---|---|
| `vehicles.vehicle(?).workMode#state` | INT | `1` |
| `<basePath>#foldMaxLimit` | FLOAT | `1` |
| `<basePath>#foldMinLimit` | FLOAT | `0` |
| `<basePath>#allowChangeOnLowered` | BOOL | `true` |
| `<basePath>#allowChangeWhileTurnedOn` | BOOL | `true` |
| `<basePath>.workMode(?)#name` | L10N_STRING |  |
| `<basePath>.workMode(?)#inputBindingName` | STRING |  |
| `<basePath>.workMode(?).turnedOnAnimations.turnedOnAnimation(?)#name` | STRING |  |
| `<basePath>.workMode(?).turnedOnAnimations.turnedOnAnimation(?)#turnOnFadeTime` | FLOAT | `1` |
| `<basePath>.workMode(?).turnedOnAnimations.turnedOnAnimation(?)#turnOffFadeTime` | FLOAT | `1` |
| `<basePath>.workMode(?).turnedOnAnimations.turnedOnAnimation(?)#speedScale` | FLOAT | `1` |
| `<basePath>.workMode(?).loweringAnimations.loweringAnimation(?)#name` | STRING |  |
| `<basePath>.workMode(?).loweringAnimations.loweringAnimation(?)#speed` | FLOAT | `1` |
| `<basePath>.workMode(?).workAreas.workArea(?)#workAreaIndex` | INT |  |
| `<basePath>.workMode(?).workAreas.workArea(?)#dropAreaIndex` | INT |  |
| `<basePath>.workMode(?).animation(?)#name` | STRING |  |
| `<basePath>.workMode(?).animation(?)#speed` | FLOAT | `1` |
| `<basePath>.workMode(?).animation(?)#stopTime` | FLOAT |  |
| `<basePath>.workMode(?).animation(?)#repeatAfterUnfolding` | BOOL | `false` |
| `<basePath>.workMode(?).animation(?)#repeatStartTime` | FLOAT |  |
| `<basePath>.workMode(?).movingToolLimit#node` | NODE_INDEX |  |
| `<basePath>.workMode(?).movingToolLimit#minRot` | ANGLE | `0` |
| `<basePath>.workMode(?).movingToolLimit#maxRot` | ANGLE | `0` |
| `<Sprayer.SPRAY_TYPE_XML_KEY>#workModeIndex` | INT |  |

## vehicles/specializations/WorkParticles.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.workParticles.particleAnimation(?)#file` | STRING |  |
| `vehicle.workParticles.particleAnimation(?)#speedThreshold` | FLOAT | `0` |
| `vehicle.workParticles.particle(?)#file` | STRING |  |
| `vehicle.workParticles#requireField` | BOOL | `true` |
| `vehicle.workParticles.effect(?)#speedThreshold` | FLOAT | `0.5` |
| `vehicle.workParticles.effect(?)#activeDirection` | INT | `1` |
| `vehicle.workParticles.effect(?)#workAreaIndex` | INT |  |
| `vehicle.workParticles.effect(?)#groundReferenceNodeIndex` | INT |  |
| `vehicle.workParticles.effect(?)#needsSetIsTurnedOn` | BOOL | `false` |
| `<GroundReference.GROUND_REFERENCE_XML_KEY>#depthNode` | NODE_INDEX |  |
| `<key>#node` | NODE_INDEX |  |
| `<key>#refNodeIndex` | INT |  |
| `<key>#animMeshNode` | STRING |  |
| `<key>#materialType` | STRING |  |
| `<key>#materialId` | INT | `1` |
| `<key>#maxDepth` | FLOAT | `-0.1` |
| `<key>#particleNode` | STRING |  |
| `<key>#particleType` | STRING |  |
| `<key>#fillType` | STRING | `"UNKNOWN"` |
| `<key>#speedThreshold` | FLOAT | `0.5` |
| `<key>#movingDirection` | INT |  |

## vehicles/specializations/YarderCarriage.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.yarderCarriage#maxNumTrees` | INT | `4` |
| `vehicle.yarderCarriage#maxTreeMass` | FLOAT | `1` |
| `vehicle.yarderCarriage#length` | FLOAT | `2` |
| `vehicle.yarderCarriage#rollSpacing` | FLOAT | `0.75` |
| `vehicle.yarderCarriage#liftSpeed` | FLOAT | `2` |
| `vehicle.yarderCarriage#liftAcceleration` | FLOAT | `0.75` |
| `vehicle.yarderCarriage#pullRopeTargetNode` | NODE_INDEX |  |
| `vehicle.yarderCarriage#pushRopeTargetNode` | NODE_INDEX |  |
| `vehicle.yarderCarriage.ropeAlignmentNode(?)#node` | NODE_INDEX |  |
| `vehicle.yarderCarriage.joint#node` | NODE_INDEX |  |
| `vehicle.yarderCarriage.joint#attachTime` | TIME | `0.5` |
| `vehicle.yarderCarriage.joint#minDistance` | FLOAT | `0.5` |
| `vehicle.yarderCarriage.joint#maxDistance` | FLOAT | `10` |
| `vehicle.yarderCarriage.rope#originNode` | NODE_INDEX |  |
| `vehicle.yarderCarriage.rope#rootHook` | NODE_INDEX |  |
| `vehicle.yarderCarriage.rope#rootHookReferenceNode` | NODE_INDEX |  |
| `vehicle.yarderCarriage.rope#treeRopeLength` | FLOAT | `1` |
| `vehicle.yarderCarriage.rope.attach#mainNode` | NODE_INDEX |  |
| `vehicle.yarderCarriage.rope.attach#additionalNode` | NODE_INDEX |  |
| `vehicle.yarderCarriage.rope.componentJoint#index` | INT |  |
| `vehicle.yarderCarriage.rope.componentJoint#rotLimitInactive` | VECTOR_ROT |  |
| `vehicle.yarderCarriage.rope.componentJoint#rotLimitActive` | VECTOR_ROT |  |
| `vehicle.yarderCarriage.additionalRopes.additionalRope(?)#referenceNode` | NODE_INDEX |  |
| `vehicle.yarderCarriage.additionalRopes.additionalRope(?).hookNode(?)#node` | NODE_INDEX |  |
| `vehicle.yarderCarriage.additionalRopes.additionalRope(?).hookNode(?)#alignYRot` | BOOL | `false` |
| `vehicle.yarderCarriage.additionalRopes.additionalRope(?).hookNode(?)#alignXRot` | BOOL | `false` |
| `vehicle.yarderCarriage.additionalRopes.additionalRope(?).hookNode(?)#minRot` | ANGLE | `-180` |
| `vehicle.yarderCarriage.additionalRopes.additionalRope(?).hookNode(?)#maxRot` | ANGLE | `180` |
| `vehicle.yarderCarriage.additionalRopes.additionalRope(?).hookNode(?)#alignToTarget` | BOOL | `true` |
| `vehicle.yarderCarriage.treeHook#offset` | FLOAT | `0.01` |
| `vehicle.yarderCarriage.treeHook#tensionBeltType` | STRING | `"forestryTreeBelt"` |
| `<basePath>.attachedTree(?)#translation` | VECTOR_TRANS |  |
| `<basePath>.attachedTree(?)#splitShapePart1` | INT |  |
| `<basePath>.attachedTree(?)#splitShapePart2` | INT |  |
| `<basePath>.attachedTree(?)#splitShapePart3` | INT |  |

## vehicles/specializations/YarderTower.lua

| Key | Type | Default |
|---|---|---|
| `vehicle.yarderTower#controlTrigger` | NODE_INDEX |  |
| `vehicle.yarderTower#requiresAttacherVehicle` | BOOL | `false` |
| `vehicle.yarderTower#requiresLowering` | BOOL | `false` |
| `vehicle.yarderTower#foldMinLimit` | FLOAT | `0` |
| `vehicle.yarderTower#foldMaxLimit` | FLOAT | `1` |
| `vehicle.yarderTower.placement#height` | FLOAT | `10` |
| `vehicle.yarderTower.placement#minHeightOffset` | STRING | `"-1"` |
| `vehicle.yarderTower.carriage#maxSpeed` | FLOAT | `20` |
| `vehicle.yarderTower.carriage#acceleration` | FLOAT | `0.01` |
| `vehicle.yarderTower.carriage#deceleration` | FLOAT | `0.05` |
| `vehicle.yarderTower.carriage#startOffset` | FLOAT | `1` |
| `vehicle.yarderTower.carriage#endOffset` | FLOAT | `1` |
| `vehicle.yarderTower.carriage#filename` | STRING |  |
| `vehicle.yarderTower.carriage#maxTreeMass` | FLOAT |  |
| `vehicle.yarderTower.ropes.setupRope#node` | NODE_INDEX |  |
| `vehicle.yarderTower.ropes.setupRope#colorInvalid` | COLOR |  |
| `vehicle.yarderTower.ropes.setupRope#colorValid` | COLOR |  |
| `vehicle.yarderTower.ropes.setupRope#diameterTree` | FLOAT | `0.015` |
| `vehicle.yarderTower.ropes.setupRope#diameterPlayer` | FLOAT | `0.015` |
| `vehicle.yarderTower.ropes.mainRope#node` | NODE_INDEX |  |
| `vehicle.yarderTower.ropes.mainRope#maxAngle` | ANGLE | `80` |
| `vehicle.yarderTower.ropes.mainRope#maxLength` | FLOAT | `100` |
| `vehicle.yarderTower.ropes.mainRope#clearance` | FLOAT | `2` |
| `vehicle.yarderTower.ropes.mainRope#minTreeDiameter` | FLOAT | `0.2` |
| `vehicle.yarderTower.ropes.pullRope#node` | NODE_INDEX |  |
| `vehicle.yarderTower.ropes.pushRope#yOffset` | FLOAT | `1.5` |
| `vehicle.yarderTower.ropes.supportRopes#centerNode` | NODE_INDEX |  |
| `vehicle.yarderTower.ropes.supportRopes#treeRadius` | FLOAT | `25` |
| `vehicle.yarderTower.ropes.supportRopes.supportRope(?)#node` | NODE_INDEX |  |
| `vehicle.yarderTower.ropes.supportRopes.supportRope(?)#raycastNode` | NODE_INDEX | `"#node"` |
| `vehicle.yarderTower.ropes.supportRopes.supportRope(?)#angleReferenceNode` | NODE_INDEX |  |
| `vehicle.yarderTower.ropes.supportRopes.supportRope(?)#maxAngle` | ANGLE | `15` |
| `vehicle.yarderTower.ropes.supportRopes.supportRope(?)#raycastRotY` | ANGLE |  |
| `vehicle.yarderTower.ropes.supportRopes.supportRope(?)#treeYOffset` | FLOAT | `1` |
| `<key>#isActive` | BOOL |  |
| `<key>#position` | FLOAT |  |
| `<key>.target#x` | FLOAT |  |
| `<key>.target#y` | FLOAT |  |
| `<key>.target#z` | FLOAT |  |
| `<baseKey>#maxOffset` | FLOAT | `0.1` |
| `<baseKey>#offsetReferenceLength` | FLOAT | `5` |
| `<baseKey>#filename` | STRING |  |
| `<baseKey>#ropeNode` | STRING | `"0\|0"` |
| `<baseKey>#diameter` | FLOAT | `0.015` |
| `<baseKey>#rotNode` | NODE_INDEX |  |
| `<baseKey>#rotNodeAllAxis` | BOOL | `false` |
| `<baseKey>.ropeLengthNode(?)#node` | NODE_INDEX |  |
| `<baseKey>.ropeLengthNode(?)#minLength` | FLOAT | `0` |
| `<baseKey>.ropeLengthNode(?)#maxLength` | FLOAT | `10` |
| `<baseKey>.ropeLengthNode(?)#minRot` | VECTOR_ROT |  |
| `<baseKey>.ropeLengthNode(?)#maxRot` | VECTOR_ROT |  |
| `<baseKey>.ropeLengthNode(?)#minTrans` | VECTOR_TRANS |  |
| `<baseKey>.ropeLengthNode(?)#maxTrans` | VECTOR_TRANS |  |
| `<baseKey>.ropeLengthNode(?)#minScale` | VECTOR_SCALE |  |
| `<baseKey>.ropeLengthNode(?)#maxScale` | VECTOR_SCALE |  |
| `<baseKey>.ropeLengthNode(?)#shaderParameterName` | STRING |  |
| `<baseKey>.ropeLengthNode(?)#minShaderParameter` | VECTOR_4 |  |
| `<baseKey>.ropeLengthNode(?)#maxShaderParameter` | VECTOR_4 |  |

## vehicles/specializations/components/AttacherJointTopArm.lua

| Key | Type | Default |
|---|---|---|
| `<baseKey>#filename` | FILENAME |  |
| `<baseKey>#baseNode` | NODE_INDEX |  |
| `<baseKey>#zScale` | INT | `1` |
| `<baseKey>#toggleVisibility` | BOOL | `false` |
| `<baseKey>#useMountArm` | BOOL | `true` |
| `<baseKey>#mountArmRotation` | VECTOR_ROT |  |
| `<baseKey>#materialTemplateName` | VEHICLE_MATERIAL |  |
| `<baseKey>#materialTemplateName2` | VEHICLE_MATERIAL |  |
| `<baseKey>#decalMaterialTemplateName` | VEHICLE_MATERIAL |  |
| `<baseKey>#secondPartUseMainColor` | BOOL | `true` |
| `<baseKey>#useBrandDecal` | BOOL | `true` |
| `<baseKey>#rotationNode` | NODE_INDEX |  |
| `<baseKey>#translationNode` | NODE_INDEX |  |
| `<baseKey>#referenceNode` | NODE_INDEX |  |
| `topArm.filename` | FILENAME |  |
| `topArm.rootNode#node` | NODE_INDEX |  |
| `topArm.translation#node` | NODE_INDEX |  |
| `topArm.translation#referenceNode` | NODE_INDEX |  |
| `topArm.scale#node` | NODE_INDEX |  |
| `topArm.scale#referenceNode` | NODE_INDEX |  |
| `topArm.brandDecal#node` | NODE_INDEX |  |
| `topArm.mountArm#node` | NODE_INDEX |  |

## vehicles/specializations/components/BeaconLight.lua

| Key | Type | Default |
|---|---|---|
| `beaconLight.filename` | STRING | `nil` |
| `beaconLight.rootNode#node` | NODE_INDEX |  |
| `beaconLight.mountTypes.mountType(?)#name` | STRING |  |
| `beaconLight.mountTypes.mountType(?)#node` | NODE_INDEX |  |
| `beaconLight.mountTypes.mountType(?)#yOffset` | FLOAT | `0` |
| `beaconLight.variations.variation(?)#name` | STRING |  |
| `beaconLight.variations.variation(?)#rootNode` | NODE_INDEX |  |
| `<basePath>.rotator#node` | NODE_INDEX |  |
| `<basePath>.rotator#speed` | FLOAT | `0.015` |
| `<basePath>.staticLight(?)#node` | NODE_INDEX |  |
| `<basePath>.staticLight(?)#intensity` | FLOAT | `100` |
| `<basePath>.staticLight(?)#multiBlink` | BOOL | `false` |
| `<basePath>.staticLight(?)#multiBlinkParameters` | VECTOR_4 | `"2 5 50 0"` |
| `<basePath>.staticLight(?)#uvOffsetParameter` | INT | `0` |
| `<basePath>.staticLight(?)#minDistance` | FLOAT | `0` |
| `<basePath>.staticLight(?).intensityScale#minDistance` | FLOAT |  |
| `<basePath>.staticLight(?).intensityScale#minIntensity` | FLOAT |  |
| `<basePath>.staticLight(?).intensityScale#maxDistance` | FLOAT |  |
| `<basePath>.staticLight(?).intensityScale#maxIntensity` | FLOAT |  |
| `<basePath>.realLight#node` | NODE_INDEX |  |
| `<basePath>.realLight#useRealLight` | BOOL | `true` |
| `<basePath>#node` | NODE_INDEX |  |
| `<basePath>#filename` | FILENAME |  |
| `<basePath>#speed` | FLOAT |  |
| `<basePath>#useRealLights` | BOOL | `true` |
| `<basePath>#realLight` | NODE_INDEX |  |
| `<basePath>#realLightRange` | FLOAT | `1` |
| `<basePath>#intensity` | INT | `1` |
| `<basePath>#mountType` | STRING |  |
| `<basePath>#variationName` | STRING |  |

## vehicles/specializations/components/RealLight.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>#node` | NODE_INDEX |  |
| `<basePath>#intensityScale` | FLOAT | `1` |
| `<basePath>#excludedLightTypes` | VECTOR_N |  |
| `<basePath>#lightTypes` | VECTOR_N |  |
| `<basePath>#hasShadows` | BOOL | `"Automatically when range is greater ...` |
| `<basePath>#shadowLightOffset` | VECTOR_TRANS |  |
| `<basePath>#iesProfile` | STRING |  |
| `<basePath>#useLightScattering` | BOOL | `"automatically calculated based on li...` |

## vehicles/specializations/components/SharedLight.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>#filename` | STRING |  |
| `<basePath>#linkNode` | NODE_INDEX | `"0>"` |
| `<basePath>#lightTypes` | VECTOR_N |  |
| `<basePath>#excludedLightTypes` | VECTOR_N |  |
| `<basePath>.rotationNode(?)#name` | STRING |  |
| `<basePath>.rotationNode(?)#rotation` | VECTOR_ROT |  |
| `<basePath>#reverseLight` | BOOL | `false` |
| `<basePath>#turnLightLeft` | BOOL | `false` |
| `<basePath>#turnLightRight` | BOOL | `false` |
| `<basePath>.function(?)#name` | STRING | `nil` |
| `<basePath>.function(?)#uvSlotIndex` | INT |  |
| `<basePath>.function(?)#uvOffset` | INT | `0` |
| `<basePath>.function(?)#intensityScale` | FLOAT |  |
| `<basePath>.function(?)#lightType` | STRING | `nil` |
| `light.filename` | STRING | `nil` |
| `light.rootNode#node` | NODE_INDEX | `"0"` |
| `light.rotationNode(?)#name` | STRING |  |
| `light.rotationNode(?)#node` | NODE_INDEX |  |

## vehicles/specializations/components/StaticLight.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>#node` | NODE_INDEX |  |
| `<basePath>#shaderNode` | NODE_INDEX |  |
| `<basePath>#uvSlotIndex` | INT | `"if not defined, all slots will be se...` |
| `<basePath>#intensity` | FLOAT | `5` |
| `<basePath>#toggleVisibility` | BOOL | `false` |
| `<basePath>#excludedLightTypes` | VECTOR_N |  |
| `<basePath>#lightTypes` | VECTOR_N |  |

## vehicles/specializations/components/StaticLightCompound.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>#bottomLightAsHighBeam` | BOOL | `true` |
| `<basePath>#topLightAsHighBeam` | BOOL | `true` |
| `<basePath>#useSliderTurnLights` | BOOL | `false` |
| `<basePath>.node(?)#node` | NODE_INDEX |  |
| `<basePath>.node(?)#intensity` | FLOAT | `5` |
| `<basePath>.node(?)#useSliderTurnLights` | BOOL | `false` |
| `<basePath>.node(?)#lightTypeBitMask` | INT |  |
| `<basePath>.function(?)#name` | STRING | `nil` |
| `<basePath>.function(?)#uvSlotIndex` | INT |  |
| `<basePath>.function(?)#uvOffset` | INT | `0` |
| `<basePath>.function(?)#intensityScale` | FLOAT |  |
| `<basePath>.function(?)#lightType` | STRING | `nil` |
| `<basePath>#lightTypeBitMask` | INT | `"Default mask is '20480' with blinkin...` |
