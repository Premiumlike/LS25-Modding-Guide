# XML keys – placeable-specializations

Source: `github.com/MyGameSteamOfficial/fs25-lua-api` (commit 9478ee9, 2025-02-26 – older than the current patch). Extracted automatically: names, XML keys, types, defaults only – no code. Status 📖 (read from source, not verified in game).

## placeables/specializations/PlaceableAI.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>.ai.updateAreas.updateArea(?)#startNode` | NODE_INDEX |  |
| `<basePath>.ai.updateAreas.updateArea(?)#endNode` | NODE_INDEX |  |
| `<basePath>.ai.splines.spline(?)#node` | NODE_INDEX |  |
| `<basePath>.ai.splines.spline(?)#maxWidth` | FLOAT |  |
| `<basePath>.ai.splines.spline(?)#maxHeight` | FLOAT |  |
| `<basePath>.ai.splines.spline(?)#maxTurningRadius` | FLOAT |  |
| `<basePath>.ai.obstacles.obstacle(?)#node` | NODE_INDEX | `nil` |
| `<basePath>.ai.obstacles.obstacle(?)#size` | VECTOR_3 |  |
| `<basePath>.ai.obstacles.obstacle(?)#offset` | VECTOR_3 |  |
| `<basePath>.ai.obstacles.obstacle(?).animatedObject#index` | INT | `nil` |
| `<basePath>.ai.obstacles.obstacle(?).animatedObject#startTime` | FLOAT | `nil` |
| `<basePath>.ai.obstacles.obstacle(?).animatedObject#endTime` | FLOAT | `nil` |

## placeables/specializations/PlaceableAnimatedObjects.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>.animatedObjects.animatedObject(?).dependency(?)#animatedObjectIndex` | INT |  |
| `<basePath>.animatedObjects.animatedObject(?).dependency(?)#minTime` | FLOAT |  |
| `<basePath>.animatedObjects.animatedObject(?).dependency(?)#maxTime` | FLOAT |  |

## placeables/specializations/PlaceableBeehive.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>.beehive#actionRadius` | FLOAT |  |
| `<basePath>.beehive#litersHoneyPerDay` | FLOAT |  |

## placeables/specializations/PlaceableBeehivePalletSpawner.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>.beehivePalletSpawner#pendingLiters` | FLOAT |  |

## placeables/specializations/PlaceableBoatyard.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>.boatyard#spline` | NODE_INDEX |  |
| `<basePath>.boatyard#linkNode` | NODE_INDEX |  |
| `<basePath>.boatyard#playerTrigger` | NODE_INDEX |  |
| `<basePath>.boatyard.boat#filename` | STRING |  |
| `<basePath>.boatyard.boat#reward` | INT |  |
| `<basePath>.boatyard.boat.progressiveVisibilityMesh.mesh(?)#node` | NODE_INDEX |  |
| `<basePath>.boatyard.boat.progressiveVisibilityMesh.mesh(?)#id` | STRING |  |
| `<basePath>.boatyard.boat.progressiveVisibilityMesh.mesh(?)#indexMin` | INT |  |
| `<basePath>.boatyard.boat.progressiveVisibilityMesh.mesh(?)#indexMax` | INT |  |
| `<basePath>.boatyard.stateMachine.states.state(?)#name` | STRING |  |
| `<basePath>.boatyard.stateMachine.states.state(?)#class` | STRING |  |
| `<basePath>.boatyard.stateMachine.transitions.transition(?)#from` | STRING |  |
| `<basePath>.boatyard.stateMachine.transitions.transition(?)#to` | STRING |  |
| `<basePath>.boatyard.sailingSplines#bobbingFreq` | FLOAT |  |
| `<basePath>.boatyard.sailingSplines#bobbingAmount` | FLOAT |  |
| `<basePath>.boatyard.sailingSplines#swayingFreq` | FLOAT |  |
| `<basePath>.boatyard.sailingSplines#swayingAmount` | FLOAT |  |
| `<basePath>.boatyard.sailingSplines.spline(?)#node` | NODE_INDEX |  |
| `<basePath>.state#index` | INT |  |
| `<basePath>#splineTime` | FLOAT |  |

## placeables/specializations/PlaceableBunkerSilo.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>.bunkerSilo#isExtendable` | BOOL | `false` |
| `<basePath>.bunkerSilo#siloToSiloDistance` | FLOAT |  |
| `<basePath>.bunkerSilo#snapDistance` | FLOAT | `"siloToSiloDistance * 1.1"` |
| `<basePath>.bunkerSilo#sellWarningText` | STRING |  |

## placeables/specializations/PlaceableBuyable.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>.buyable.trigger#node` | NODE_INDEX | `nil` |
| `<basePath>.buyable.marker#node` | NODE_INDEX | `nil` |

## placeables/specializations/PlaceableCartridgePlayer.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>.cartridgePlayer#itemsNode` | NODE_INDEX |  |
| `<basePath>.cartridgePlayer#monitorNode` | NODE_INDEX |  |
| `<basePath>.cartridgePlayer#monitorLightNode` | NODE_INDEX |  |
| `<basePath>.cartridgePlayer#connectorNode` | NODE_INDEX |  |
| `<basePath>.cartridgePlayer#triggerNode` | NODE_INDEX |  |

## placeables/specializations/PlaceableClearAreas.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>.clearAreas.clearArea(?)#startNode` | NODE_INDEX |  |
| `<basePath>.clearAreas.clearArea(?)#widthNode` | NODE_INDEX |  |
| `<basePath>.clearAreas.clearArea(?)#heightNode` | NODE_INDEX |  |

## placeables/specializations/PlaceableConstructible.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>.constructible.stateMachine.states.state(?)#name` | STRING |  |
| `<basePath>.constructible.stateMachine.states.state(?)#class` | STRING |  |
| `<basePath>.constructible.stateMachine.states.state(?)#isStartState` | BOOL |  |
| `<basePath>.constructible.stateMachine.states.state(?)#isPreviewState` | BOOL |  |
| `<basePath>.constructible.stateMachine.transitions.transition(?)#from` | STRING |  |
| `<basePath>.constructible.stateMachine.transitions.transition(?)#to` | STRING |  |
| `<basePath>.state#index` | INT |  |
| `<basePath>.state#name` | STRING |  |

## placeables/specializations/PlaceableDeletedNodes.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>.deletedNodes.deletedNode(?)#node` | NODE_INDEX |  |

## placeables/specializations/PlaceableDestructible.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>.destructible.trigger#node` | NODE_INDEX | `nil` |
| `<basePath>.destructible.destruct.transition(?)#from` | STRING | `nil` |
| `<basePath>.destructible.destruct.transition(?)#to` | STRING | `nil` |
| `<basePath>.destructible.repair#bonus` | FLOAT | `nil` |
| `<basePath>.destructible.repair.transition(?)#from` | STRING | `nil` |
| `<basePath>.destructible.repair.transition(?)#to` | STRING | `nil` |
| `<basePath>.repairingFarm#id` | INT |  |

## placeables/specializations/PlaceableDoghouse.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>.dogHouse.dog#node` | NODE_INDEX |  |
| `<basePath>.dogHouse.dog#xmlFilename` | STRING |  |
| `<basePath>.dogHouse.nameplate#node` | NODE_INDEX |  |
| `<basePath>.dogHouse.ball#node` | NODE_INDEX |  |
| `<basePath>.dogHouse.ball#filename` | STRING |  |
| `<basePath>.dogHouse.playerInteractionTrigger#node` | NODE_INDEX |  |
| `<basePath>.dogHouse.bowl#foodNode` | NODE_INDEX |  |

## placeables/specializations/PlaceableDynamicallyLoadedParts.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>#filename` | STRING |  |
| `<basePath>#node` | NODE_INDEX | `"0"` |
| `<basePath>#linkNode` | NODE_INDEX | `"0>"` |
| `<basePath>#position` | VECTOR_TRANS |  |
| `<basePath>#rotationNode` | NODE_INDEX | `"node"` |
| `<basePath>#rotation` | VECTOR_ROT |  |
| `<basePath>#shaderParameterName` | STRING |  |
| `<basePath>#shaderParameter` | VECTOR_4 |  |

## placeables/specializations/PlaceableFactory.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>.factory#playerTrigger` | NODE_INDEX |  |
| `<basePath>.factory.item#linkNode` | NODE_INDEX |  |
| `<basePath>.factory.item#filename` | STRING |  |
| `<basePath>.factory.item#reward` | INT |  |
| `<basePath>.factory.item.progressiveVisibilityMesh.mesh(?)#node` | NODE_INDEX |  |
| `<basePath>.factory.item.progressiveVisibilityMesh.mesh(?)#id` | STRING |  |
| `<basePath>.factory.item.progressiveVisibilityMesh.mesh(?)#indexMin` | INT |  |
| `<basePath>.factory.item.progressiveVisibilityMesh.mesh(?)#indexMax` | INT |  |
| `<basePath>.factory.production.input(?)#fillType` | STRING |  |
| `<basePath>.factory.production.input(?)#amount` | FLOAT |  |
| `<basePath>.factory.production.input(?)#usagePerHour` | FLOAT |  |
| `<basePath>.factory.production.output#fillType` | STRING |  |
| `<basePath>.factory.production#meshId` | STRING |  |
| `<basePath>.input(?)#fillType` | STRING |  |
| `<basePath>.input(?)#remainingAmount` | FLOAT |  |

## placeables/specializations/PlaceableFarmhouse.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>.farmhouse#spawnNode` | NODE_INDEX |  |
| `<basePath>.farmhouse.sleeping#triggerNode` | NODE_INDEX |  |
| `<basePath>.farmhouse.sleeping#cameraNode` | NODE_INDEX |  |
| `<basePath>.farmhouse.sleeping#isFreeForAll` | BOOL |  |
| `<basePath>#isFreeForAll` | BOOL |  |

## placeables/specializations/PlaceableFence.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>.fence.poles#node` | NODE_INDEX |  |
| `<basePath>.fence.panels#node` | NODE_INDEX |  |
| `<basePath>.fence.panels#length` | FLOAT | `1` |
| `<basePath>.fence.panels#fixedLength` | BOOL | `false` |
| `<basePath>.fence#maxVerticalAngle` | ANGLE |  |
| `<basePath>.fence#maxVerticalGateAngle` | ANGLE |  |
| `<basePath>.fence#boundingCheckWidth` | FLOAT | `0.25` |
| `<basePath>.fence#snapDistance` | FLOAT | `nil` |
| `<basePath>.fence#snapAngle` | INT | `nil` |
| `<basePath>.fence#snapCheckDistance` | FLOAT | `nil` |
| `<basePath>.fence#extendingOnly` | BOOL | `false` |
| `<basePath>.fence#maxCornerAngle` | ANGLE | `180` |
| `<basePath>.fence#supportsParallelSnapping` | BOOL | `false` |
| `<basePath>.fence#hasInvisiblePoles` | BOOL | `false` |
| `<basePath>.fence.gate(?)#node` | NODE_INDEX |  |
| `<basePath>.fence.gate(?)#length` | FLOAT | `1` |
| `<basePath>.fence.gate(?)#triggerNode` | INT |  |
| `<basePath>.fence.gate(?)#openText` | STRING |  |
| `<basePath>.fence.gate(?)#closeText` | STRING |  |
| `<basePath>.fence.gate(?)#openDuration` | FLOAT |  |
| `<basePath>.fence.gate(?).door(?)#node` | INT |  |
| `<basePath>.fence.gate(?).door(?)#openRotation` | VECTOR_ROT |  |
| `<basePath>.fence.gate(?).door(?)#openTranslation` | VECTOR_TRANS |  |
| `<basePath>.segments.segment(?)#start` | VECTOR_2 |  |
| `<basePath>.segments.segment(?)#end` | VECTOR_2 |  |
| `<basePath>.segments.segment(?)#first` | BOOL | `true` |
| `<basePath>.segments.segment(?)#last` | BOOL | `true` |
| `<basePath>.segments.segment(?)#gateIndex` | INT |  |

## placeables/specializations/PlaceableFoliageAreas.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>.foliageAreas.foliageArea(?)#startNode` | NODE_INDEX |  |
| `<basePath>.foliageAreas.foliageArea(?)#widthNode` | NODE_INDEX |  |
| `<basePath>.foliageAreas.foliageArea(?)#heightNode` | NODE_INDEX |  |
| `<basePath>.foliageAreas.foliageArea(?)#fruitType` | STRING |  |
| `<basePath>.foliageAreas.foliageArea(?)#growthStateName` | STRING |  |
| `<basePath>.foliageAreas.foliageArea(?)#decoFoliage` | STRING |  |
| `<basePath>.foliageAreas.foliageArea(?)#state` | INT |  |

## placeables/specializations/PlaceableGreenhouse.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>.greenhouse.plants.plant(?)#fillType` | STRING |  |
| `<basePath>.greenhouse.plants.plant(?)#xmlFilename` | STRING |  |
| `<basePath>.greenhouse.plantSpaces.space(?)#node` | NODE_INDEX |  |
| `<basePath>.greenhouse.plantSpaces.space(?)#useRandomYRot` | BOOL | `true` |
| `<basePath>.greenhouse.plantSpaces.spacesParent(?)#node` | NODE_INDEX |  |
| `<basePath>.greenhouse.plantSpaces.spacesParent(?)#useRandomYRot` | BOOL | `true` |

## placeables/specializations/PlaceableHeapSpawner.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>.heapSpawner.spawnArea(?).area#startNode` | NODE_INDEX |  |
| `<basePath>.heapSpawner.spawnArea(?).area#widthNode` | NODE_INDEX |  |
| `<basePath>.heapSpawner.spawnArea(?).area#heightNode` | NODE_INDEX |  |
| `<basePath>.heapSpawner.spawnArea(?)#fillType` | STRING |  |
| `<basePath>.heapSpawner.spawnArea(?)#litersPerHour` | FLOAT |  |

## placeables/specializations/PlaceableHotspots.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>.hotspots.hotspot(?)#linkNode` | NODE_INDEX |  |
| `<basePath>.hotspots.hotspot(?)#teleportNode` | NODE_INDEX |  |
| `<basePath>.hotspots.hotspot(?)#type` | STRING | `"UNLOADING"` |
| `<basePath>.hotspots.hotspot(?)#worldPosition` | VECTOR_2 |  |
| `<basePath>.hotspots.hotspot(?)#teleportWorldPosition` | VECTOR_3 |  |
| `<basePath>.hotspots.hotspot(?)#text` | STRING |  |

## placeables/specializations/PlaceableIncomePerHour.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>.incomePerHour.incomePerHourConfigurations.incomePerHourConfiguration(?)#incomePerHour` | FLOAT |  |
| `<basePath>.incomePerHour` | FLOAT |  |

## placeables/specializations/PlaceableIndoorAreas.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>.indoorAreas.indoorArea(?)#startNode` | NODE_INDEX |  |
| `<basePath>.indoorAreas.indoorArea(?)#widthNode` | NODE_INDEX |  |
| `<basePath>.indoorAreas.indoorArea(?)#heightNode` | NODE_INDEX |  |

## placeables/specializations/PlaceableInfoTrigger.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>.infoTrigger#triggerNode` | NODE_INDEX | `nil` |
| `<basePath>.infoTrigger#showAllPlayers` | BOOL | `false` |

## placeables/specializations/PlaceableLeveling.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>.leveling#requireLeveling` | BOOL | `false` |
| `<basePath>.leveling#maxSmoothDistance` | FLOAT | `3` |
| `<basePath>.leveling#maxSlope` | ANGLE | `45` |
| `<basePath>.leveling#maxEdgeAngle` | ANGLE | `45` |
| `<basePath>.leveling#smoothingGroundType` | STRING |  |
| `<basePath>.leveling.levelAreas.levelArea(?)#startNode` | NODE_INDEX |  |
| `<basePath>.leveling.levelAreas.levelArea(?)#widthNode` | NODE_INDEX |  |
| `<basePath>.leveling.levelAreas.levelArea(?)#heightNode` | NODE_INDEX |  |
| `<basePath>.leveling.levelAreas.levelArea(?)#groundType` | STRING |  |
| `<basePath>.leveling.paintAreas.paintArea(?)#startNode` | NODE_INDEX |  |
| `<basePath>.leveling.paintAreas.paintArea(?)#widthNode` | NODE_INDEX |  |
| `<basePath>.leveling.paintAreas.paintArea(?)#heightNode` | NODE_INDEX |  |
| `<basePath>.leveling.paintAreas.paintArea(?)#groundType` | STRING |  |

## placeables/specializations/PlaceableLights.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>.lights.sharedLight(?)#filename` | STRING |  |
| `<basePath>.lights.sharedLight(?)#groupIndex` | INT | `1` |
| `<basePath>.lights.sharedLight(?)#linkNode` | NODE_INDEX |  |
| `<basePath>.lights.sharedLight(?)#color` | COLOR |  |
| `<basePath>.lights.sharedLight(?).rotationNode(?)#name` | STRING |  |
| `<basePath>.lights.sharedLight(?).rotationNode(?)#rotation` | VECTOR_ROT |  |
| `<basePath>.lights.lightShape(?)#groupIndex` | INT | `1` |
| `<basePath>.lights.lightShape(?)#node` | NODE_INDEX |  |
| `<basePath>.lights.lightShape(?)#intensity` | FLOAT | `5` |
| `<basePath>.lights.realLights.low.light(?)#node` | NODE_INDEX |  |
| `<basePath>.lights.realLights.low.light(?)#groupIndex` | INT | `1` |
| `<basePath>.lights.realLights.high.light(?)#node` | NODE_INDEX |  |
| `<basePath>.lights.realLights.high.light(?)#groupIndex` | INT | `1` |
| `<basePath>.lights.group(?)#triggerNode` | NODE_INDEX |  |
| `<basePath>.lights.group(?)#inputAction` | STRING | `"INTERACT"` |
| `<basePath>.lights.group(?)#name` | L10N_STRING | `"action_placeableLightShed"` |
| `<basePath>.lights.group(?)#activateText` | L10N_STRING | `"action_placeableLightPos"` |
| `<basePath>.lights.group(?)#deactivateText` | L10N_STRING | `"action_placeableLightNeg"` |
| `<basePath>.lights.group(?)#activateTime` | STRING |  |
| `<basePath>.lights.group(?)#deactivateTime` | STRING |  |
| `<basePath>.lights.group(?)#weatherRequiredFlags` | STRING |  |
| `<basePath>.lights.group(?)#weatherPreventFlags` | STRING |  |

## placeables/specializations/PlaceableManureHeap.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>.manureHeap#isExtension` | BOOL | `true` |

## placeables/specializations/PlaceableObjectStorage.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>.objectStorage.playerTrigger#node` | NODE_INDEX |  |
| `<basePath>.objectStorage.objectTrigger#node` | NODE_INDEX |  |
| `<basePath>.objectStorage#fillTypeCategories` | STRING |  |
| `<basePath>.objectStorage#fillTypes` | STRING |  |
| `<basePath>.objectStorage#supportsBales` | BOOL | `true` |
| `<basePath>.objectStorage#supportsPallets` | BOOL | `true` |
| `<basePath>.objectStorage.supportedObject(?)#filename` | STRING |  |
| `<basePath>.objectStorage.supportedObject(?)#amount` | INT | `"unlimited"` |
| `<basePath>.objectStorage.supportedObject(?)#fillType` | STRING |  |
| `<basePath>.objectStorage#capacity` | INT | `250` |
| `<basePath>.objectStorage#maxLength` | FLOAT | `"unlimited"` |
| `<basePath>.objectStorage#maxHeight` | FLOAT | `"unlimited"` |
| `<basePath>.objectStorage#maxWidth` | FLOAT | `"unlimited"` |
| `<basePath>.objectStorage#maxUnloadAmount` | INT | `25` |
| `<basePath>.objectStorage.spawnAreas.spawnArea(?)#startNode` | NODE_INDEX |  |
| `<basePath>.objectStorage.spawnAreas.spawnArea(?)#endNode` | NODE_INDEX |  |
| `<basePath>.objectStorage.spawnAreas.spawnArea(?)#maxHeight` | FLOAT | `4` |
| `<basePath>.objectStorage.storageAreas.storageArea(?)#startNode` | NODE_INDEX |  |
| `<basePath>.objectStorage.storageAreas.storageArea(?)#endNode` | NODE_INDEX |  |
| `<basePath>.objectStorage.storageAreas.storageArea(?)#maxHeight` | FLOAT | `4` |
| `<basePath>.object(?)#className` | STRING |  |

## placeables/specializations/PlaceablePlacement.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>.placement#pos1Node` | NODE_INDEX |  |
| `<basePath>.placement#pos2Node` | NODE_INDEX |  |
| `<basePath>.placement#pos3Node` | NODE_INDEX |  |
| `<basePath>.placement.testAreas.testArea(?)#startNode` | NODE_INDEX |  |
| `<basePath>.placement.testAreas.testArea(?)#endNode` | NODE_INDEX |  |
| `<basePath>.placement#useRandomYRotation` | BOOL | `false` |
| `<basePath>.placement#useManualYRotation` | BOOL | `false` |
| `<basePath>.placement#alignToWorldY` | BOOL | `true` |
| `<basePath>.placement#placementPositionSnapSize` | FLOAT | `0` |
| `<basePath>.placement#placementPositionSnapOffset` | FLOAT | `0` |
| `<basePath>.placement#placementRotationSnapAngle` | ANGLE | `0` |

## placeables/specializations/PlaceablePointOfInterest.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>.pointOfInterest.point(?)#class` | STRING |  |

## placeables/specializations/PlaceableRiceField.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>.riceField.area#groundType` | STRING | `"dirt"` |
| `<basePath>.riceField.area#offsetFromRidge` | FLOAT | `"-0.5"` |
| `<basePath>.riceField.ridge#groundType` | STRING | `"grass"` |
| `<basePath>.riceField.ridge#height` | FLOAT | `0.35` |
| `<basePath>.riceField.ridge#levelingWidth` | FLOAT | `0.45` |
| `<basePath>.riceField.ridge#paintWidth` | FLOAT | `1` |
| `<basePath>.riceField.ridge#foliageType` | STRING |  |
| `<basePath>.riceField.ridge#foliageGrowthState` | INT | `2` |
| `<basePath>.riceField.ridge#foliageGrowthStateName` | STRING |  |
| `<basePath>.riceField.ridge#foliageWidth` | FLOAT | `"paintWidth / 2"` |
| `<basePath>.riceField.ridge#foliageOffsetFromRidge` | FLOAT | `"0.5"` |
| `<basePath>.riceField.water#maxLevel` | FLOAT | `"80% or ridge height"` |
| `<basePath>.riceField.water#fillDurationGameMinutes` | FLOAT |  |
| `<basePath>.riceField.water#underwaterFogColor` | VECTOR_4 |  |
| `<basePath>.riceField.water#underwaterFogDepth` | VECTOR_4 |  |
| `<basePath>.riceField.pump#filename` | FILENAME |  |
| `<basePath>.riceField.pump.filling#water` | NODE_INDEX |  |
| `<basePath>.riceField.pump.filling#splash` | NODE_INDEX |  |
| `<basePath>.riceField.pump.filling#yOffset` | FLOAT | `0.07` |
| `<basePath>.riceField.pump.emptying#water` | NODE_INDEX |  |
| `<basePath>.riceField.pump.emptying#splash` | NODE_INDEX |  |
| `<basePath>.riceField.playerTrigger#node` | NODE_INDEX |  |
| `<basePath>.riceField.foliage#fruitTypes` | STRING |  |
| `<basePath>.riceField.foliage#offsetFromRidge` | FLOAT |  |
| `<basePath>.fields.field(?)#worldHeight` | FLOAT |  |
| `<basePath>.fields.field(?)#waterHeight` | FLOAT |  |
| `<basePath>.fields.field(?)#waterHeightTarget` | FLOAT |  |
| `<basePath>.fields.field(?)#initialFruit` | STRING |  |
| `<basePath>.fields.field(?)#initialFruitGrowthState` | INT |  |
| `<basePath>.fields.field(?).v(?)` | STRING |  |
| `<basePath>.fields.field(?).waterLevels(?)#period` | INT |  |
| `<basePath>.fields.field(?).waterLevels(?)#levelPerSqm` | FLOAT |  |

## placeables/specializations/PlaceableRollercoaster.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>.rollercoaster.animation.clip#rootNode` | NODE_INDEX |  |
| `<basePath>.rollercoaster.animation.clip#name` | STRING |  |
| `<basePath>.rollercoaster.animation.clip#filename` | STRING |  |
| `<basePath>.rollercoaster.animation#speedScale` | FLOAT |  |
| `<basePath>.rollercoaster.movingSounds.sound(?)#node` | NODE_INDEX |  |
| `<basePath>.rollercoaster.movingSounds.sound(?)#filename` | STRING |  |
| `<basePath>.rollercoaster.movingSounds.sound(?)#innerRadius` | FLOAT |  |
| `<basePath>.rollercoaster.movingSounds.sound(?)#radius` | FLOAT |  |
| `<basePath>.rollercoaster.movingSounds.sound(?)#volume` | FLOAT |  |
| `<basePath>.rollercoaster.playerTrigger#node` | NODE_INDEX |  |
| `<basePath>.rollercoaster.exitPoints.exitPoint(?)#node` | NODE_INDEX |  |
| `<basePath>.rollercoaster.hotspot#linkNode` | NODE_INDEX |  |
| `<basePath>.rollercoaster.hotspot#teleportNode` | NODE_INDEX |  |
| `<basePath>.rollercoaster.carts.cart(?)#node` | NODE_INDEX |  |
| `<basePath>.rollercoaster.carts.cart(?).seat(?)#node` | NODE_INDEX |  |
| `<basePath>.state#index` | INT |  |
| `<basePath>#splineTime` | FLOAT |  |
| `<basePath>.player(?)#uniqueUserId` | STRING |  |
| `<basePath>.player(?)#rideCount` | INT |  |

## placeables/specializations/PlaceableSilo.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>.silo#sellWarningText` | STRING |  |
| `<basePath>.silo#playerActionTrigger` | NODE_INDEX |  |
| `<basePath>.silo.storages#perFarm` | BOOL | `false` |
| `<basePath>.silo.storages#foreignSilo` | BOOL | `false` |
| `<basePath>.silo.storages.storage(?)#node` | NODE_INDEX |  |
| `<basePath>.storage(?)#index` | INT |  |

## placeables/specializations/PlaceableSiloExtension.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>.siloExtension.storage#foreignSilo` | BOOL | `false` |
| `<basePath>.siloExtension#nearSiloWarning` | L10N_STRING |  |
| `<basePath>.siloExtension.storage#node` | NODE_INDEX |  |

## placeables/specializations/PlaceableSolarPanels.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>#headNode` | NODE_INDEX |  |
| `<basePath>#randomHeadOffsetRange` | ANGLE | `15` |
| `<basePath>#rotationSpeed` | ANGLE | `5` |
| `<basePath>#isActive` | BOOL | `false` |
| `<basePath>#incomePerHour` | FLOAT |  |
| `<basePath>#headRotationRandom` | FLOAT |  |

## placeables/specializations/PlaceableTipOcclusionAreas.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>.tipOcclusionUpdateArea#sizeX` | FLOAT |  |
| `<basePath>.tipOcclusionUpdateArea#sizeZ` | FLOAT |  |
| `<basePath>.tipOcclusionUpdateArea#centerX` | FLOAT | `0` |
| `<basePath>.tipOcclusionUpdateArea#centerZ` | FLOAT | `0` |
| `<basePath>.tipOcclusionUpdateAreas.tipOcclusionUpdateArea(?)#startNode` | NODE_INDEX |  |
| `<basePath>.tipOcclusionUpdateAreas.tipOcclusionUpdateArea(?)#endNode` | NODE_INDEX |  |

## placeables/specializations/PlaceableTrainSystem.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>.trainSystem.rent#pricePerHour` | FLOAT | `0` |
| `<basePath>.trainSystem.spline#node` | NODE_INDEX |  |
| `<basePath>.trainSystem.spline#splineYOffset` | FLOAT | `0` |
| `<basePath>.trainSystem.drivingRange#startNode` | NODE_INDEX |  |
| `<basePath>.trainSystem.drivingRange#endNode` | NODE_INDEX |  |
| `<basePath>.trainSystem.drivingRange#sellingStationId` | STRING |  |
| `<basePath>.trainSystem.electricitySpline#node` | NODE_INDEX |  |
| `<basePath>.trainSystem.electricitySpline#splineYOffset` | FLOAT | `0` |
| `<basePath>.trainSystem.train.vehicle(?)#xmlFilename` | STRING |  |
| `<basePath>#splineTime` | FLOAT |  |
| `<basePath>#isRented` | BOOL |  |
| `<basePath>#rentFarmId` | INT |  |
| `<basePath>#currentPrice` | FLOAT |  |
| `<basePath>.railroadVehicle(?)#vehicleUniqueId` | STRING |  |
| `<basePath>.railroadObjects(?)#index` | INT |  |

## placeables/specializations/PlaceableTriggerMarkers.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>.triggerMarkers.triggerMarker(?)#node` | NODE_INDEX |  |
| `<basePath>.triggerMarkers.triggerMarker(?)#filename` | FILENAME |  |
| `<basePath>.triggerMarkers.triggerMarker(?)#adjustToGround` | BOOL |  |
| `<basePath>.triggerMarkers.triggerMarker(?)#groundOffset` | FLOAT | `0.03` |
| `<basePath>.triggerMarkers.triggerMarker(?)#showAllPlayers` | BOOL | `false` |
| `<basePath>.triggerMarkers.triggerMarker(?)#showOnlyIfOwned` | BOOL | `false` |

## placeables/specializations/PlaceableVehicle.lua

| Key | Type | Default |
|---|---|---|
| `placeable.placeableVehicle.vehicle(?)#xmlFilename` | FILENAME |  |
| `placeable.placeableVehicle.vehicle(?)#linkNode` | NODE_INDEX |  |

## placeables/specializations/PlaceableVine.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>.vine#fruitType` | STRING |  |
| `<basePath>.vine#width` | FLOAT |  |
| `<basePath>.vine#length` | FLOAT |  |
| `<basePath>.vine#thresholdFactor` | FLOAT |  |
| `<basePath>.vine#numLODOffsets` | INT |  |
| `<basePath>.vine#numSections` | INT |  |
| `<basePath>.vine.growthStates#previewNodeIndex` | INT |  |
| `<basePath>.vine.growthStates.growthState(?)#nodeIndex` | STRING |  |
| `<basePath>.vine.growthStates.growthState(?).foliage(?)#state` | INT |  |
| `<basePath>.vine.growthStates.growthState(?).foliage(?)#sectionState` | INT |  |
| `<basePath>.vine.resetStates.resetState(?)#state` | INT |  |
| `<basePath>.vine.resetStates.resetState(?)#targetState` | INT |  |
| `<basePath>.vine.resetStates.resetState(?)#threshold` | FLOAT |  |
| `<basePath>#startGrowthState` | INT |  |

## placeables/specializations/PlaceableWardrobe.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>.wardrobe#triggerNode` | NODE_INDEX |  |
| `<basePath>.wardrobe#isFreeForAll` | BOOL | `"false if owned by a specific farm, t...` |
| `<basePath>#isFreeForAll` | BOOL |  |

## placeables/specializations/PlaceableWeighingStation.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>.weighingStation#triggerNode` | NODE_INDEX |  |
| `<basePath>.weighingStation.display(?)#node` | NODE_INDEX |  |
| `<basePath>.weighingStation.display(?)#font` | STRING |  |
| `<basePath>.weighingStation.display(?)#alignment` | STRING |  |
| `<basePath>.weighingStation.display(?)#size` | FLOAT |  |
| `<basePath>.weighingStation.display(?)#scaleX` | FLOAT |  |
| `<basePath>.weighingStation.display(?)#scaleY` | FLOAT |  |
| `<basePath>.weighingStation.display(?)#mask` | STRING |  |
| `<basePath>.weighingStation.display(?)#emissiveScale` | FLOAT |  |
| `<basePath>.weighingStation.display(?)#color` | COLOR |  |
| `<basePath>.weighingStation.display(?)#hiddenColor` | COLOR |  |

## placeables/specializations/PlaceableWindTurbine.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>.windTurbine#headNode` | NODE_INDEX |  |
| `<basePath>.windTurbine#headAdjustToWind` | BOOL |  |
| `<basePath>.windTurbine#rotationNode` | NODE_INDEX |  |
| `<basePath>.windTurbine#optimalWindSpeed` | FLOAT |  |
| `<basePath>.windTurbine#incomePerHour` | FLOAT |  |
| `<basePath>#headRotation` | ANGLE |  |
