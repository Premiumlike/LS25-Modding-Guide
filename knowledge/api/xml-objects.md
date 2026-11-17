# XML keys – objects

Source: `github.com/MyGameSteamOfficial/fs25-lua-api` (commit 9478ee9, 2025-02-26 – older than the current patch). Extracted automatically: names, XML keys, types, defaults only – no code. Status 📖 (read from source, not verified in game).

## objects/AnimatedObject.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>#saveId` | STRING | `"AnimatedObject_[nodeName]"` |
| `<basePath>.animation#duration` | FLOAT | `3` |
| `<basePath>.animation.part(?)#node` | NODE_INDEX |  |
| `<basePath>.animation.part(?).keyFrame(?)#time` | FLOAT |  |
| `<basePath>.animation.part(?).keyFrame(?)#rotation` | VECTOR_ROT | `"values read from i3d node"` |
| `<basePath>.animation.part(?).keyFrame(?)#translation` | VECTOR_TRANS | `"values read from i3d node"` |
| `<basePath>.animation.part(?).keyFrame(?)#scale` | VECTOR_SCALE | `"values read from i3d node"` |
| `<basePath>.animation.part(?).keyFrame(?)#visibility` | BOOL | `true` |
| `<basePath>.animation.shader(?)#node` | NODE_INDEX |  |
| `<basePath>.animation.shader(?)#parameterName` | STRING |  |
| `<basePath>.animation.shader(?).keyFrame(?)#time` | FLOAT |  |
| `<basePath>.animation.shader(?).keyFrame(?)#values` | STRING |  |
| `<basePath>.animation.clip#rootNode` | NODE_INDEX |  |
| `<basePath>.animation.clip#name` | STRING |  |
| `<basePath>.animation.clip#filename` | STRING |  |
| `<basePath>.animation#initialTime` | FLOAT | `0` |
| `<basePath>.openingHours#startTime` | FLOAT |  |
| `<basePath>.openingHours#endTime` | FLOAT |  |
| `<basePath>.openingHours#disableIfClosed` | BOOL |  |
| `<basePath>.openingHours#closedText` | L10N_STRING |  |
| `<basePath>.controls#triggerNode` | NODE_INDEX |  |
| `<basePath>.controls#posAction` | STRING |  |
| `<basePath>.controls#posText` | STRING |  |
| `<basePath>.controls#negText` | STRING |  |
| `<basePath>.controls#negAction` | STRING |  |
| `<basePath>#time` | FLOAT |  |
| `<basePath>#direction` | INT | `0` |

## objects/BgaSellStation.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>#appearsOnStats` | BOOL | `false` |

## objects/BunkerSilo.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>.area#startNode` | NODE_INDEX |  |
| `<basePath>.area#widthNode` | NODE_INDEX |  |
| `<basePath>.area#heightNode` | NODE_INDEX |  |
| `<basePath>.innerArea#startNode` | NODE_INDEX |  |
| `<basePath>.innerArea#widthNode` | NODE_INDEX |  |
| `<basePath>.innerArea#heightNode` | NODE_INDEX |  |
| `<basePath>.wallLeft#node` | NODE_INDEX |  |
| `<basePath>.wallLeft#collision` | NODE_INDEX |  |
| `<basePath>.wallRight#node` | NODE_INDEX |  |
| `<basePath>.wallRight#collision` | NODE_INDEX |  |
| `<basePath>.interactionTrigger#node` | NODE_INDEX |  |
| `<basePath>#acceptedFillTypes` | STRING | `"chaff grass_windrow dryGrass_windrow"` |
| `<basePath>#inputFillType` | STRING | `"chaff"` |
| `<basePath>#outputFillType` | STRING | `"silage"` |
| `<basePath>#distanceToCompactedFillLevel` | FLOAT | `100` |
| `<basePath>#openingLength` | FLOAT | `5` |
| `<basePath>#state` | INT | `0` |
| `<basePath>#fillLevel` | FLOAT |  |
| `<basePath>#compactedFillLevel` | FLOAT |  |
| `<basePath>#fermentingTime` | FLOAT |  |
| `<basePath>#openedAtFront` | BOOL | `false` |
| `<basePath>#openedAtBack` | BOOL | `false` |

## objects/BuyingStation.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>.fillType(?)#name` | STRING |  |
| `<basePath>.fillType(?)#statsName` | STRING | `"other"` |
| `<basePath>.fillType(?)#priceScale` | FLOAT | `1` |

## objects/DigitalDisplay.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>#baseNode` | NODE_INDEX | `false` |
| `<basePath>#precision` | INT | `0` |
| `<basePath>#showZero` | BOOL | `true` |

## objects/LoadingStation.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>#node` | NODE_INDEX |  |
| `<basePath>#stationName` | STRING | `"LoadingStation"` |
| `<basePath>#storageRadius` | FLOAT | `50` |
| `<basePath>#supportsExtension` | BOOL | `false` |
| `<basePath>#fillTypes` | STRING |  |
| `<basePath>#fillTypeCategories` | STRING |  |
| `<basePath>.loadTrigger(?)#class` | STRING |  |

## objects/ProductionPoint.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>#name` | STRING | `"unnamed production point"` |
| `<basePath>.productions#sharedThroughputCapacity` | BOOL | `true` |
| `<basePath>.productions.production(?)#id` | STRING | `nil` |
| `<basePath>.productions.production(?)#name` | L10N_STRING | `"unnamed production"` |
| `<basePath>.productions.production(?)#params` | STRING |  |
| `<basePath>.productions.production(?)#cyclesPerMonth` | FLOAT | `1440` |
| `<basePath>.productions.production(?)#cyclesPerHour` | FLOAT | `60` |
| `<basePath>.productions.production(?)#cyclesPerMinute` | FLOAT | `1` |
| `<basePath>.productions.production(?)#costsPerActiveMonth` | FLOAT | `1440` |
| `<basePath>.productions.production(?)#costsPerActiveHour` | FLOAT | `60` |
| `<basePath>.productions.production(?)#costsPerActiveMinute` | FLOAT | `1` |
| `<basePath>.productions.production(?).inputs.input(?)#fillType` | STRING | `nil` |
| `<basePath>.productions.production(?).inputs.input(?)#amount` | FLOAT | `1` |
| `<basePath>.productions.production(?).outputs.output(?)#fillType` | STRING | `nil` |
| `<basePath>.productions.production(?).outputs.output(?)#amount` | FLOAT | `1` |
| `<basePath>.productions.production(?).outputs.output(?)#sellDirectly` | BOOL | `false` |
| `<basePath>.playerTrigger#node` | NODE_INDEX | `""` |
| `<basePath>#palletSpawnCooldown` | INT |  |
| `<basePath>#productionCostsToClaim` | FLOAT |  |
| `<basePath>.directSellFillType(?)` | STRING |  |
| `<basePath>.autoDeliverFillType(?)` | STRING |  |
| `<basePath>.production(?)#id` | STRING |  |
| `<basePath>.production(?)#isEnabled` | BOOL |  |

## objects/SellingStation.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>#appearsOnStats` | BOOL | `false` |
| `<basePath>#suppressWarnings` | BOOL | `false` |
| `<basePath>#allowMissions` | BOOL | `true` |
| `<basePath>#hasDynamic` | BOOL | `true` |
| `<basePath>#litersForFullPriceDrop` | INT |  |
| `<basePath>#fullPriceRecoverHours` | FLOAT |  |
| `<basePath>#fillTypeCategories` | STRING |  |
| `<basePath>#fillTypes` | STRING |  |
| `<basePath>#incomeName` | STRING |  |
| `<basePath>.fillType(?)#name` | STRING |  |
| `<basePath>.fillType(?)#priceScale` | FLOAT | `1` |
| `<basePath>.fillType(?)#supportsGreatDemand` | BOOL | `true` |
| `<basePath>.fillType(?)#disablePriceDrop` | BOOL | `false` |
| `<basePath>.stats(?)#fillType` | STRING |  |
| `<basePath>.stats(?)#received` | FLOAT | `0` |
| `<basePath>.stats(?)#paid` | FLOAT | `0` |

## objects/Storage.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>#node` | NODE_INDEX |  |
| `<basePath>#capacity` | FLOAT | `100000` |
| `<basePath>#fillLevelSyncThreshold` | FLOAT | `1` |
| `<basePath>#supportsMultipleFillTypes` | BOOL | `true` |
| `<basePath>#costsPerFillLevelAndDay` | FLOAT | `0` |
| `<basePath>#fillTypeCategories` | STRING |  |
| `<basePath>#fillTypes` | STRING |  |
| `<basePath>#isExtension` | BOOL |  |
| `<basePath>.capacity(?)#fillType` | STRING |  |
| `<basePath>.capacity(?)#capacity` | FLOAT |  |
| `<basePath>.startFillLevel(?)#fillType` | STRING |  |
| `<basePath>.startFillLevel(?)#fillLevel` | FLOAT |  |
| `<basePath>.fillPlane(?)#fillType` | STRING |  |
| `<basePath>.dynamicFillPlane#defaultFillType` | STRING |  |
| `<basePath>#farmId` | INT | `0` |
| `<basePath>.node(?)#fillType` | STRING |  |
| `<basePath>.node(?)#fillLevel` | FLOAT | `0` |

## objects/UnloadingStation.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>#node` | NODE_INDEX |  |
| `<basePath>#stationName` | STRING | `"LoadingStation"` |
| `<basePath>#storageRadius` | FLOAT | `50` |
| `<basePath>#hideFromPricesMenu` | BOOL | `false` |
| `<basePath>#supportsExtension` | BOOL | `false` |
| `<basePath>#isTrainStation` | BOOL | `false` |
| `<basePath>#isPalletStation` | BOOL | `false` |
| `<basePath>.simpleFillplane(?)#node` | NODE_INDEX |  |

## objects/VehicleSellingPoint.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>#playerTriggerNode` | NODE_INDEX |  |
| `<basePath>#iconNode` | NODE_INDEX |  |
| `<basePath>#sellTriggerNode` | NODE_INDEX |  |
| `<basePath>#ownWorkshop` | BOOL | `false` |
| `<basePath>#mobileWorkshop` | BOOL | `false` |

## objects/WashingStation.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>.trigger#node` | NODE_INDEX |  |
| `<basePath>#washDuration` | FLOAT |  |
| `<basePath>#pricePerWash` | INT |  |
