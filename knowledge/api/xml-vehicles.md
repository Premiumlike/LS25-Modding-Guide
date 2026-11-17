# XML keys – vehicles

Source: `github.com/MyGameSteamOfficial/fs25-lua-api` (commit 9478ee9, 2025-02-26 – older than the current patch). Extracted automatically: names, XML keys, types, defaults only – no code. Status 📖 (read from source, not verified in game).

## vehicles/LicensePlate.lua

| Key | Type | Default |
|---|---|---|
| `<baseName>#filename` | STRING |  |
| `<baseName>#node` | NODE_INDEX |  |
| `<baseName>#type` | STRING | `"ELONGATED"` |
| `<baseName>#width` | FLOAT | `1` |
| `<baseName>#height` | FLOAT | `0.2` |
| `<baseName>.font#size` | FLOAT | `0.1` |
| `<baseName>.font#scaleX` | FLOAT | `1` |
| `<baseName>.font#scaleY` | FLOAT | `1` |
| `<baseName>.variations.variation(?).value(?)#node` | STRING |  |
| `<baseName>.variations.variation(?).value(?)#posX` | FLOAT |  |
| `<baseName>.variations.variation(?).value(?)#posY` | FLOAT |  |
| `<baseName>.variations.variation(?).value(?)#posZ` | FLOAT |  |
| `<baseName>.variations.variation(?).value(?)#nextSection` | BOOL | `false` |
| `<baseName>.variations.variation(?).value(?)#character` | STRING |  |
| `<baseName>.variations.variation(?).value(?)#numerical` | BOOL | `false` |
| `<baseName>.variations.variation(?).value(?)#alphabetical` | BOOL | `false` |
| `<baseName>.variations.variation(?).value(?)#special` | BOOL | `false` |
| `<baseName>.variations.variation(?).value(?)#isStatic` | BOOL | `"is static if 'numerical' and 'alphab...` |
| `<baseName>.variations.variation(?).value(?)#locked` | BOOL | `"locked when character is defined"` |
| `<baseName>.variations.variation(?).value(?)#position` | STRING | `"ANY"` |
| `<baseName>.frame#node` | STRING |  |
| `<baseName>.frame#widthOffset` | FLOAT | `0` |
| `<baseName>.frame#heightOffsetTop` | FLOAT | `0` |
| `<baseName>.frame#heightOffsetBot` | FLOAT | `0` |

## vehicles/LicensePlateManager.lua

| Key | Type | Default |
|---|---|---|
| `licensePlates.font#name` | STRING | `"GENERIC"` |
| `licensePlates.colorConfigurations#materialName` | STRING | `"licensePlateColored_mat"` |
| `licensePlates.colorConfigurations#shaderParameterCharacters` | STRING | `"colorSale"` |
| `licensePlates.colorConfigurations#useDefaultColors` | BOOL | `false` |
| `licensePlates.colorConfigurations#defaultColorIndex` | INT |  |
| `licensePlates.colorConfigurations#defaultColorMaxBrightness` | FLOAT | `0.55` |
| `licensePlates.colorConfigurations.colorConfiguration(?)#name` | L10N_STRING |  |
| `licensePlates.colorConfigurations.colorConfiguration(?)#color` | COLOR |  |
| `licensePlates.colorConfigurations.colorConfiguration(?)#isDefault` | BOOL |  |
| `licensePlates.placement#defaultType` | STRING | `"both"` |

## vehicles/Vehicle.lua

| Key | Type | Default |
|---|---|---|
| `<configuration.configurationKey>(?)#workingWidth` | FLOAT |  |
| `<configuration.configurationKey>(?)#typeDesc` | L10N_STRING |  |
| `vehicle#type` | STRING |  |
| `vehicle.annotation` | STRING | `nil` |
| `vehicle.storeData.specs.workingWidth` | STRING |  |
| `vehicle.storeData.specs.combination(?)#xmlFilename` | STRING |  |
| `vehicle.storeData.specs.combination(?)#filterCategory` | STRING |  |
| `vehicle.storeData.specs.combination(?)#filterSpec` | STRING |  |
| `vehicle.storeData.specs.combination(?)#filterSpecMin` | FLOAT |  |
| `vehicle.storeData.specs.combination(?)#filterSpecMax` | FLOAT |  |
| `vehicle.storeData.specs.weight#ignore` | BOOL | `false` |
| `vehicle.storeData.specs.weight#minValue` | FLOAT |  |
| `vehicle.storeData.specs.weight#maxValue` | FLOAT |  |
| `vehicle.storeData.specs.weight.config(?)#name` | STRING |  |
| `vehicle.storeData.specs.weight.config(?)#index` | INT |  |
| `vehicle.storeData.specs.weight.config(?)#value` | FLOAT |  |
| `vehicle.base.filename` | STRING | `nil` |
| `vehicle.base.typeDesc` | L10N_STRING | `nil` |
| `vehicle.base.synchronizePosition` | BOOL | `true` |
| `vehicle.base.supportsPickUp` | BOOL | `false` |
| `vehicle.base.canBeReset` | BOOL | `true` |
| `vehicle.base.showInVehicleMenu` | BOOL | `true` |
| `vehicle.base.supportsRadio` | BOOL | `true` |
| `vehicle.base.input#allowed` | BOOL | `true` |
| `vehicle.base.selection#allowed` | BOOL | `true` |
| `vehicle.base.tailwaterDepth#warning` | FLOAT | `"25% of vehicle height"` |
| `vehicle.base.tailwaterDepth#threshold` | FLOAT | `"75% of vehicle height"` |
| `vehicle.base.mapHotspot#type` | STRING | `nil` |
| `vehicle.base.mapHotspot#available` | BOOL | `true` |
| `vehicle.base.speedLimit#value` | FLOAT |  |
| `vehicle.base.size#width` | FLOAT | `nil` |
| `vehicle.base.size#length` | FLOAT | `nil` |
| `vehicle.base.size#height` | FLOAT |  |
| `vehicle.base.size#widthOffset` | FLOAT |  |
| `vehicle.base.size#lengthOffset` | FLOAT |  |
| `vehicle.base.size#heightOffset` | FLOAT |  |
| `vehicle.base.size#yRotation` | ANGLE | `0` |
| `vehicle.base.steeringAxle#node` | NODE_INDEX |  |
| `vehicle.base.sounds#filename` | STRING |  |
| `vehicle.base.sounds#volumeFactor` | FLOAT |  |
| `vehicle.base.schemaOverlay#attacherJointPosition` | VECTOR_2 |  |
| `vehicle.base.schemaOverlay#basePosition` | VECTOR_2 |  |
| `vehicle.base.schemaOverlay#name` | STRING |  |
| `vehicle.base.schemaOverlay#invisibleBorderRight` | FLOAT |  |
| `vehicle.base.schemaOverlay#invisibleBorderLeft` | FLOAT |  |
| `vehicle.vehicleTypeConfigurations.vehicleTypeConfiguration(?)#vehicleType` | STRING |  |
| `vehicle.designConfigurations#preLoad` | BOOL | `false` |
| `vehicles#loadAnyFarmInSingleplayer` | BOOL | `false` |
| `vehicles.vehicle(?)#filename` | STRING |  |
| `vehicles.vehicle(?)#modName` | STRING |  |
| `vehicles.vehicle(?)#isBroken` | BOOL | `false` |
| `vehicles.vehicle(?)#defaultFarmProperty` | BOOL | `false` |
| `vehicles.vehicle(?)#id` | INT |  |
| `vehicles.vehicle(?)#tourId` | STRING |  |
| `vehicles.vehicle(?)#farmId` | INT |  |
| `vehicles.vehicle(?)#uniqueId` | STRING |  |
| `vehicles.vehicle(?)#age` | FLOAT |  |
| `vehicles.vehicle(?)#price` | FLOAT |  |
| `vehicles.vehicle(?)#operatingTime` | FLOAT |  |
| `vehicles.vehicle(?)#selectedObjectIndex` | INT |  |
| `vehicles.vehicle(?)#subSelectedObjectIndex` | INT |  |
| `vehicles.vehicle(?).component(?)#index` | INT |  |
| `vehicles.vehicle(?).component(?)#position` | VECTOR_TRANS |  |
| `vehicles.vehicle(?).component(?)#rotation` | VECTOR_ROT |  |
| `vehicles.attachments(?)#rootVehicleId` | INT |  |
| `<basePath>#numComponents` | INT | `"number of components the i3d contains"` |
| `<basePath>#maxMass` | FLOAT | `"unlimited"` |
| `<basePath>#directionReferenceNode` | NODE_INDEX |  |
| `<basePath>.component(?)#index` | INT |  |
| `<basePath>.component(?)#mass` | FLOAT | `"Mass of component in i3d"` |
| `<basePath>.component(?)#centerOfMass` | VECTOR_TRANS | `"Center of mass in i3d"` |
| `<basePath>.component(?)#inertiaScale` | VECTOR_TRANS | `"1 1 1"` |
| `<basePath>.component(?)#solverIterationCount` | INT |  |
| `<basePath>.component(?)#motorized` | BOOL | `"set by motorized specialization"` |
| `<basePath>.component(?)#collideWithAttachables` | BOOL | `false` |
| `<basePath>.joint(?)#component1` | INT |  |
| `<basePath>.joint(?)#component2` | INT |  |
| `<basePath>.joint(?)#node` | NODE_INDEX |  |
| `<basePath>.joint(?)#nodeActor1` | NODE_INDEX | `"Joint node"` |
| `<basePath>.joint(?)#rotLimit` | VECTOR_3 | `"0 0 0"` |
| `<basePath>.joint(?)#transLimit` | VECTOR_3 | `"0 0 0"` |
| `<basePath>.joint(?)#rotMinLimit` | VECTOR_3 | `"inversed rotation limit"` |
| `<basePath>.joint(?)#transMinLimit` | VECTOR_3 | `"inversed translation limit"` |
| `<basePath>.joint(?)#rotLimitSpring` | VECTOR_3 | `"0 0 0"` |
| `<basePath>.joint(?)#rotLimitDamping` | VECTOR_3 | `"1 1 1"` |
| `<basePath>.joint(?)#rotLimitForceLimit` | VECTOR_3 | `"-1 -1 -1"` |
| `<basePath>.joint(?)#transLimitForceLimit` | VECTOR_3 | `"-1 -1 -1"` |
| `<basePath>.joint(?)#transLimitSpring` | VECTOR_3 | `"0 0 0"` |
| `<basePath>.joint(?)#transLimitDamping` | VECTOR_3 | `"1 1 1"` |
| `<basePath>.joint(?)#zRotationNode` | NODE_INDEX |  |
| `<basePath>.joint(?)#breakable` | BOOL | `false` |
| `<basePath>.joint(?)#breakForce` | FLOAT | `10` |
| `<basePath>.joint(?)#breakTorque` | FLOAT | `10` |
| `<basePath>.joint(?)#enableCollision` | BOOL | `false` |
| `<basePath>.joint(?)#maxRotDriveForce` | VECTOR_3 | `"0 0 0"` |
| `<basePath>.joint(?)#rotDriveVelocity` | VECTOR_3 |  |
| `<basePath>.joint(?)#rotDriveRotation` | VECTOR_3 |  |
| `<basePath>.joint(?)#rotDriveSpring` | VECTOR_3 | `"0 0 0"` |
| `<basePath>.joint(?)#rotDriveDamping` | VECTOR_3 | `"0 0 0"` |
| `<basePath>.joint(?)#transDriveVelocity` | VECTOR_3 |  |
| `<basePath>.joint(?)#transDrivePosition` | VECTOR_3 |  |
| `<basePath>.joint(?)#transDriveSpring` | VECTOR_3 | `"0 0 0"` |
| `<basePath>.joint(?)#transDriveDamping` | VECTOR_3 | `"1 1 1"` |
| `<basePath>.joint(?)#maxTransDriveForce` | VECTOR_3 | `"0 0 0"` |
| `<basePath>.joint(?)#initComponentPosition` | BOOL | `true` |
| `<basePath>.collisionPair(?)#enabled` | BOOL |  |
| `<basePath>.collisionPair(?)#component1` | INT |  |
| `<basePath>.collisionPair(?)#component2` | INT |  |

## vehicles/VehicleActionController.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>#lastDirection` | INT |  |
| `<basePath>#numActions` | INT |  |
| `<basePath>.action(?)#name` | STRING |  |
| `<basePath>.action(?)#identifier` | STRING |  |
| `<basePath>.action(?)#lastDirection` | INT |  |

## vehicles/VehicleCamera.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>#node` | NODE_INDEX |  |
| `<basePath>#rotatable` | BOOL | `false` |
| `<basePath>#limit` | BOOL | `false` |
| `<basePath>#rotMinX` | FLOAT |  |
| `<basePath>#rotMaxX` | FLOAT |  |
| `<basePath>#transMin` | FLOAT |  |
| `<basePath>#transMax` | FLOAT |  |
| `<basePath>#isInside` | BOOL | `false` |
| `<basePath>#allowHeadTracking` | BOOL | `"isInside value"` |
| `<basePath>#shadowFocusBox` | NODE_INDEX |  |
| `<basePath>#useOutdoorSounds` | BOOL | `"false for 'isInside' cameras, otherw...` |
| `<basePath>#rotateNode` | NODE_INDEX |  |
| `<basePath>#rotation` | VECTOR_ROT |  |
| `<basePath>#translation` | VECTOR_TRANS |  |
| `<basePath>#useMirror` | BOOL | `false` |
| `<basePath>#useWorldXZRotation` | BOOL |  |
| `<basePath>#resetCameraOnVehicleSwitch` | BOOL |  |
| `<basePath>#suspensionNodeIndex` | INT |  |
| `<basePath>#useDefaultPositionSmoothing` | BOOL | `true` |
| `<basePath>#positionSmoothingParameter` | FLOAT | `"0.128 for indoor / 0.016 for outside"` |
| `<basePath>#lookAtSmoothingParameter` | FLOAT | `"0.176 for indoor / 0.022 for outside"` |
| `<basePath>#rotYSteeringRotSpeed` | ANGLE | `0` |
| `<basePath>.raycastNode(?)#node` | NODE_INDEX |  |
| `<basePath>#zoom` | FLOAT |  |
| `<basePath>#fovY` | ANGLE |  |
| `<basePath>#lodDebugActive` | BOOL |  |
| `<basePath>#lodDebugZoom` | FLOAT |  |
| `<basePath>#cameraYDebugActive` | BOOL |  |
| `<basePath>#cameraYDebugHeight` | FLOAT |  |

## vehicles/VehicleCharacter.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>#node` | NODE_INDEX |  |
| `<basePath>#cameraMinDistance` | FLOAT | `1.5` |
| `<basePath>#distanceRefNode` | NODE_INDEX | `"Character root node"` |
| `<basePath>#useAnimation` | BOOL | `false` |
| `<basePath>#useIdleAnimation` | BOOL | `"set if #useAnimation not set"` |
| `<basePath>#spineRotationOffset` | VECTOR_ROT |  |
| `<basePath>#speedDependedSpine` | BOOL | `false` |
| `<basePath>#spineNodeMinRot` | ANGLE | `10` |
| `<basePath>#spineNodeMaxRot` | ANGLE | `-10` |
| `<basePath>#spineNodeMinAcc` | FLOAT | `-1` |
| `<basePath>#spineNodeMaxAcc` | FLOAT | `1` |
| `<basePath>#spineNodeAccDeadZone` | FLOAT | `0.2` |
| `<basePath>#maxUpdateDistance` | FLOAT | `VehicleCharacter.DEFAULT_MAX_UPDATE_D...` |
| `<basePath>#clipDistance` | FLOAT | `VehicleCharacter.DEFAULT_CLIP_DISTANCE` |

## vehicles/VehicleMaterial.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>#materialSlotName` | STRING |  |
| `<basePath>#materialTemplateName` | STRING |  |
| `<basePath>#materialTemplateUseColorOnly` | BOOL | `false` |
| `<basePath>.colorScale#value` | STRING |  |
| `<basePath>.smoothness#value` | FLOAT |  |
| `<basePath>.metalness#value` | FLOAT |  |
| `<basePath>.clearCoat#smoothness` | FLOAT |  |
| `<basePath>.clearCoat#intensity` | FLOAT |  |
| `<basePath>.detail#diffuse` | FILENAME |  |
| `<basePath>.detail#normal` | FILENAME |  |
| `<basePath>.detail#specular` | FILENAME |  |
| `<basePath>.textures#diffuse` | FILENAME |  |
| `<basePath>.textures#normal` | FILENAME |  |
| `<basePath>.textures#specular` | FILENAME |  |
| `<basePath>#materialTemplateNameColor` | STRING |  |

## vehicles/VehicleMaterialManager.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>#id` | STRING |  |
| `<basePath>#name` | STRING |  |
| `<basePath>#parentTemplateDefault` | STRING |  |
| `<basePath>#parentTemplateFilename` | STRING |  |
| `<basePath>.template(?)#name` | STRING |  |
| `<basePath>.template(?)#title` | STRING |  |
| `<basePath>.template(?)#description` | STRING |  |
| `<basePath>.template(?)#usage` | INT |  |
| `<basePath>.template(?)#parentTemplate` | STRING | `"templates#parentTemplateDefault"` |
| `<basePath>.template(?)#brand` | STRING |  |
| `<basePath>.template(?)#colorScale` | VECTOR_3 |  |
| `<basePath>.template(?)#smoothnessScale` | FLOAT |  |
| `<basePath>.template(?)#metalnessScale` | FLOAT |  |
| `<basePath>.template(?)#clearCoatSmoothness` | FLOAT |  |
| `<basePath>.template(?)#clearCoatIntensity` | FLOAT |  |
| `<basePath>.template(?)#porosity` | FLOAT |  |
| `<basePath>.template(?)#category` | STRING |  |
| `<basePath>.template(?)#iconFilename` | STRING |  |
| `<basePath>.template(?)#detailDiffuse` | STRING |  |
| `<basePath>.template(?)#detailNormal` | STRING |  |
| `<basePath>.template(?)#detailSpecular` | STRING |  |
| `<basePath>.template(?).colorScan#filename` | STRING |  |
| `<basePath>.template(?).colorScan#channelR` | BOOL | `true` |
| `<basePath>.template(?).colorScan#channelG` | BOOL | `true` |
| `<basePath>.template(?).colorScan#channelB` | BOOL | `true` |
| `<basePath>.template(?).colorScan#channelSmoothness` | BOOL | `true` |
| `<basePath>.template(?).colorScan#channelMetalness` | BOOL | `true` |

## vehicles/configurations/VehicleConfigurationItem.lua

| Key | Type | Default |
|---|---|---|
| `<rootPath>#title` | L10N_STRING |  |
| `<rootPath>#isYesNoOption` | BOOL | `false` |
| `<configPath>#name` | L10N_STRING |  |
| `<configPath>#params` | STRING |  |
| `<configPath>#desc` | L10N_STRING |  |
| `<configPath>#price` | FLOAT | `0` |
| `<configPath>#dailyUpkeep` | FLOAT | `0` |
| `<configPath>#isDefault` | BOOL | `false` |
| `<configPath>#isSelectable` | BOOL | `true` |
| `<configPath>#saveId` | STRING | `"Number of configuration"` |
| `<configPath>#displayBrand` | STRING |  |
| `<configPath>#vehicleBrand` | STRING |  |
| `<configPath>#vehicleName` | L10N_STRING |  |
| `<configPath>#vehicleIcon` | STRING |  |
| `<configPath>.shopOffset#translation` | VECTOR_TRANS |  |
| `<configPath>.shopOffset#rotation` | VECTOR_ROT |  |
| `<basePath>#name` | STRING |  |
| `<basePath>#id` | STRING |  |
| `<basePath>#isActive` | BOOL |  |

## vehicles/configurations/VehicleConfigurationItemColor.lua

| Key | Type | Default |
|---|---|---|
| `<rootPath>#defaultColorIndex` | INT |  |
| `<rootPath>#useDefaultColors` | BOOL | `false` |
| `<rootPath>#price` | INT | `0` |
| `<rootPath>#defaultColorMaterialTemplateName` | STRING | `"calibratedPaint"` |
| `<configPath>#color` | STRING | `"1 1 1 1"` |
| `<configPath>#uiColor` | COLOR | `"1 1 1 1"` |
| `<configPath>#isMetallic` | BOOL | `false` |
| `<configPath>#isMat` | BOOL | `false` |
| `<configPath>#materialTemplateName` | STRING |  |
| `<basePath>#color` | VECTOR_3 | `"1 1 1"` |
| `<basePath>#materialTemplateName` | STRING |  |

## vehicles/configurations/VehicleConfigurationItemMotor.lua

| Key | Type | Default |
|---|---|---|
| `<configPath>#hp` | FLOAT |  |
| `<configPath>#maxSpeed` | FLOAT |  |
| `<configPath>#consumerConfigurationIndex` | INT |  |

## vehicles/configurations/VehicleConfigurationItemTreeSapling.lua

| Key | Type | Default |
|---|---|---|
| `<configPath>#useMapTreeTypes` | BOOL | `false` |
| `<configPath>#fillUnitIndex` | INT | `1` |
| `<configPath>#treeType` | STRING | `"spruce"` |
| `<configPath>#variationName` | STRING | `"DEFAULT"` |
| `<configPath>#filename` | FILENAME |  |

## vehicles/configurations/VehicleConfigurationItemVehicleType.lua

| Key | Type | Default |
|---|---|---|
| `<configPath>#vehicleType` | STRING |  |

## vehicles/configurations/VehicleConfigurationItemWheel.lua

| Key | Type | Default |
|---|---|---|
| `<configPath>#brand` | STRING |  |
| `<configPath>#maxForwardSpeed` | FLOAT |  |
| `<configPath>#maxForwardSpeedShop` | FLOAT |  |

## vehicles/configurations/data/VehicleConfigurationDataAdditionalMass.lua

| Key | Type | Default |
|---|---|---|
| `<configPath>.component#node` | NODE_INDEX |  |
| `<configPath>.component#additionalMassNode` | NODE_INDEX |  |
| `<configPath>.component#additionalMassOffset` | VECTOR_TRANS |  |
| `<configPath>.component#additionalMass` | FLOAT |  |
| `<configPath>.component#useTotalMassReference` | BOOL | `true` |
| `<configPath>.component.dependentComponentJoint#index` | INT |  |
| `<configPath>.component.dependentComponentJoint#transSpringFactor` | FLOAT |  |
| `<configPath>.component.dependentComponentJoint#transDampingFactor` | FLOAT |  |

## vehicles/configurations/data/VehicleConfigurationDataDependentConfig.lua

| Key | Type | Default |
|---|---|---|
| `<configPath>.dependentConfiguration(?)#name` | STRING |  |
| `<configPath>.dependentConfiguration(?)#index` | INT |  |

## vehicles/configurations/data/VehicleConfigurationDataMaterial.lua

| Key | Type | Default |
|---|---|---|
| `<materialKey>#ignoreWarning` | BOOL | `false` |
| `<materialKey>#node` | NODE_INDEX |  |
| `<materialKey>#sourceMaterialSlotName` | STRING |  |
| `<materialKey>#targetMaterialSlotName` | STRING |  |

## vehicles/configurations/data/VehicleConfigurationDataObjectChange.lua

| Key | Type | Default |
|---|---|---|
| `<rootPath>#postLoadObjectChange` | BOOL | `false` |

## vehicles/configurations/data/VehicleConfigurationDataSize.lua

| Key | Type | Default |
|---|---|---|
| `<sizeKey>#width` | FLOAT |  |
| `<sizeKey>#length` | FLOAT |  |
| `<sizeKey>#height` | FLOAT |  |
| `<sizeKey>#widthOffset` | FLOAT |  |
| `<sizeKey>#lengthOffset` | FLOAT |  |
| `<sizeKey>#heightOffset` | FLOAT |  |

## vehicles/wheels/Wheel.lua

| Key | Type | Default |
|---|---|---|
| `<key>.physics#repr` | NODE_INDEX |  |
| `<key>.physics#driveNode` | NODE_INDEX |  |
| `<key>.physics#linkNode` | NODE_INDEX |  |
| `<key>.physics#transRatio` | FLOAT | `0` |
| `<key>#color` | COLOR |  |
| `<key>#material` | INT |  |
| `<key>#additionalColor` | COLOR |  |
| `<key>#additionalMaterial` | INT |  |
| `<key>#isLeft` | BOOL | `true` |
| `<key>#rimOffset` | FLOAT | `0` |
| `<key>#filename` | STRING |  |
| `<key>#dimensions` | STRING |  |
| `<key>#configId` | STRING | `"default"` |
| `<additionalWheelKey>#filename` | STRING |  |
| `<additionalWheelKey>#isLeft` | BOOL | `"Same value as parent wheel"` |
| `<additionalWheelKey>#configId` | STRING | `"default"` |
| `<additionalWheelKey>#offset` | FLOAT |  |

## vehicles/wheels/WheelChock.lua

| Key | Type | Default |
|---|---|---|
| `<key>#filename` | STRING | `"$data/shared/assets/wheelChocks/whee...` |
| `<key>#scale` | VECTOR_SCALE | `"1 1 1"` |
| `<key>#parkingNode` | NODE_INDEX |  |
| `<key>#isInverted` | BOOL | `false` |
| `<key>#isParked` | BOOL | `false` |
| `<key>#offset` | VECTOR_TRANS | `"0 0 0"` |

## vehicles/wheels/WheelDestruction.lua

| Key | Type | Default |
|---|---|---|
| `<key>#isCareWheel` | BOOL | `false` |
| `<key>.physics#smoothGroundRadius` | FLOAT | `"width * 0.75"` |

## vehicles/wheels/WheelEffects.lua

| Key | Type | Default |
|---|---|---|
| `<key>#hasTireTracks` | BOOL | `false` |
| `<key>#hasParticles` | BOOL | `false` |
| `<key>#hasWaterParticles` | BOOL | `"true if visual wheel is defined"` |
| `<key>#waterParticleDirection` | INT | `0` |
| `<key>#isShallowWaterObstacle` | BOOL | `true` |
| `<key>.tire#tireTrackAtlasIndex` | FLOAT | `0` |
| `<key>.wheelParticleSystem#psOffset` | VECTOR_TRANS | `"0 0 0"` |
| `<key>.wheelParticleSystem#minSpeed` | FLOAT | `3` |
| `<key>.wheelParticleSystem#maxSpeed` | FLOAT | `20` |
| `<key>.wheelParticleSystem#minScale` | FLOAT | `0.1` |
| `<key>.wheelParticleSystem#maxScale` | FLOAT | `1` |
| `<key>.wheelParticleSystem#direction` | INT | `0` |
| `<key>.wheelParticleSystem#onlyActiveOnGroundContact` | BOOL | `true` |

## vehicles/wheels/WheelPhysics.lua

| Key | Type | Default |
|---|---|---|
| `<key>.physics#xOffset` | FLOAT | `0` |
| `<key>.physics#yOffset` | FLOAT | `0` |
| `<key>.physics#zOffset` | FLOAT | `0` |
| `<key>.physics#useReprOffset` | BOOL | `false` |
| `<key>.physics#showSteeringAngle` | BOOL | `true` |
| `<key>.physics#suspTravel` | FLOAT | `0.01` |
| `<key>.physics#initialCompression` | FLOAT |  |
| `<key>.physics#deltaY` | FLOAT | `0` |
| `<key>.physics#spring` | FLOAT | `0` |
| `<key>.physics#brakeFactor` | FLOAT | `1` |
| `<key>.physics#autoHoldBrakeFactor` | FLOAT | `"brakeFactor"` |
| `<key>.physics#damper` | FLOAT | `0` |
| `<key>.physics#damperCompressionLowSpeed` | FLOAT |  |
| `<key>.physics#damperCompressionHighSpeed` | FLOAT |  |
| `<key>.physics#damperCompressionLowSpeedThreshold` | FLOAT | `0.1016` |
| `<key>.physics#damperRelaxationLowSpeed` | FLOAT |  |
| `<key>.physics#damperRelaxationHighSpeed` | FLOAT |  |
| `<key>.physics#damperRelaxationLowSpeedThreshold` | FLOAT | `0.1524` |
| `<key>.physics#forcePointRatio` | FLOAT | `0` |
| `<key>.physics#driveMode` | INT | `0` |
| `<key>.physics#isSynchronized` | BOOL | `true` |
| `<key>.physics#tipOcclusionAreaGroupId` | INT |  |
| `<key>.physics#useReprDirection` | BOOL | `false` |
| `<key>.physics#useDriveNodeDirection` | BOOL | `false` |
| `<key>.physics#mass` | FLOAT | `0.1` |
| `<key>.physics#radius` | FLOAT | `0.5` |
| `<key>.physics#width` | FLOAT | `0.6` |
| `<key>.physics#visualOffset` | FLOAT |  |
| `<key>.physics#widthOffset` | FLOAT | `0` |
| `<key>.physics#restLoad` | FLOAT | `1.0` |
| `<key>.physics#maxLongStiffness` | FLOAT |  |
| `<key>.physics#maxLatStiffness` | FLOAT |  |
| `<key>.physics#maxLatStiffnessLoad` | FLOAT |  |
| `<key>.physics#frictionScale` | FLOAT | `1.0` |
| `<key>.physics#rotationDamping` | FLOAT | `"mass * 0.035"` |
| `<key>.physics#tireType` | STRING |  |
| `<key>.physics#fieldDirtMultiplier` | FLOAT | `75` |
| `<key>.physics#streetDirtMultiplier` | FLOAT | `-150` |
| `<key>.physics#waterWetnessFactor` | FLOAT | `20` |
| `<key>.physics#minDirtPercentage` | FLOAT | `0.35` |
| `<key>.physics#maxDirtOffset` | FLOAT | `0.5` |
| `<key>.physics#dirtColorChangeSpeed` | FLOAT | `20` |
| `<key>.physics#versatileYRot` | BOOL | `false` |
| `<key>.physics#forceVersatility` | BOOL | `false` |
| `<key>.physics#supportsWheelSink` | BOOL | `true` |
| `<key>.physics.extraSink#supported` | BOOL | `false` |
| `<key>.physics.extraSink#maxValue` | FLOAT | `"20% of the wheel radius"` |
| `<key>.physics#rotSpeed` | ANGLE |  |
| `<key>.physics#rotSpeedNeg` | ANGLE |  |
| `<key>.physics#rotMax` | ANGLE |  |
| `<key>.physics#rotMin` | ANGLE |  |
| `<key>.physics#invertRotLimit` | BOOL |  |
| `<key>.physics#rotSpeedLimit` | FLOAT |  |
| `<key>.physics#maxInnerSpacing` | FLOAT |  |

## vehicles/wheels/WheelSteering.lua

| Key | Type | Default |
|---|---|---|
| `<key>.steering#node` | NODE_INDEX |  |
| `<key>.steering#rotNode` | NODE_INDEX |  |
| `<key>.steering#nodeMinTransX` | FLOAT |  |
| `<key>.steering#nodeMaxTransX` | FLOAT |  |
| `<key>.steering#nodeMinRotY` | ANGLE |  |
| `<key>.steering#nodeMaxRotY` | ANGLE |  |
| `<key>.fender(?)#node` | NODE_INDEX |  |
| `<key>.fender(?)#rotMax` | ANGLE |  |
| `<key>.fender(?)#rotMin` | ANGLE |  |
| `<key>.steeringAxle#scale` | FLOAT |  |
| `<key>.steeringAxle#rotMax` | ANGLE |  |
| `<key>.steeringAxle#rotMin` | ANGLE |  |

## vehicles/wheels/WheelVisual.lua

| Key | Type | Default |
|---|---|---|
| `<key>.physics#radius` | FLOAT | `0.5` |
| `<key>.physics#width` | FLOAT | `0.6` |
| `<key>#rimMaterialTemplateName` | STRING |  |

## vehicles/wheels/WheelVisualPart.lua

| Key | Type | Default |
|---|---|---|
| `<key>#filename` | STRING |  |
| `<key>#node` | STRING | `"0\|0"` |
| `<key>#nodeLeft` | STRING | `"0\|0"` |
| `<key>#nodeRight` | STRING | `"0\|0"` |
| `<key>#widthAndDiam` | VECTOR_2 |  |
| `<key>#scale` | VECTOR_SCALE |  |
| `<key>#offset` | FLOAT | `false` |
| `<key>#mass` | FLOAT |  |
| `<key>#isInverted` | BOOL | `false` |

## vehicles/wheels/WheelVisualPartConnector.lua

| Key | Type | Default |
|---|---|---|
| `<key>#useWidthAndDiam` | BOOL | `false` |
| `<key>#usePosAndScale` | BOOL | `false` |
| `<key>#diameter` | FLOAT |  |
| `<key>#offset` | FLOAT | `0` |
| `<key>#width` | FLOAT |  |
| `<key>#startPos` | FLOAT |  |
| `<key>#endPos` | FLOAT |  |
| `<key>#startPosOffset` | FLOAT |  |
| `<key>#endPosOffset` | FLOAT |  |
| `<key>#uniformScale` | FLOAT |  |

## vehicles/wheels/WheelVisualPartTire.lua

| Key | Type | Default |
|---|---|---|
| `<key>#maxDeformation` | FLOAT | `0` |
| `<key>#initialDeformation` | FLOAT | `"min. 0.04 and max. 60% of the deform...` |
| `<key>#hasMudMesh` | BOOL | `false` |
