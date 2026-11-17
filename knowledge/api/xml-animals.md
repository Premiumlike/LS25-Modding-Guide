# XML keys – animals

Source: `github.com/MyGameSteamOfficial/fs25-lua-api` (commit 9478ee9, 2025-02-26 – older than the current patch). Extracted automatically: names, XML keys, types, defaults only – no code. Status 📖 (read from source, not verified in game).

## animals/AnimalLoadingTrigger.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>#node` | NODE_INDEX |  |
| `<basePath>#isDealer` | BOOL | `false` |
| `<basePath>#animalTypes` | STRING |  |
| `<basePath>#title` | STRING | `"ui_farm"` |

## animals/Dog.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>#name` | STRING |  |

## animals/husbandry/placeables/PlaceableHusbandry.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>.husbandry#saveId` | STRING |  |
| `<basePath>.husbandry#hasStatistics` | BOOL | `false` |
| `<basePath>.husbandry.production#threshold` | FLOAT | `0.5` |
| `<basePath>.husbandry.production#increasePerHour` | FLOAT | `0.1` |
| `<basePath>.husbandry.production#decreasePerHour` | FLOAT | `0.2` |
| `<basePath>.module(?)#name` | STRING |  |
| `<basePath>#globalProductionFactor` | FLOAT |  |
| `<basePath>#productionFactor` | FLOAT |  |

## animals/husbandry/placeables/PlaceableHusbandryAnimals.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>.navigation#rootNode` | NODE_INDEX |  |
| `<basePath>.navigation#node` | NODE_INDEX |  |
| `<basePath>.navigation#shape` | NODE_INDEX |  |
| `<basePath>.navigation#filename` | STRING |  |
| `<basePath>.navigation#nodePath` | STRING |  |
| `<basePath>#type` | STRING |  |
| `<basePath>#filename` | STRING |  |
| `<basePath>#placementRaycastDistance` | FLOAT | `2` |
| `<basePath>#maxNumAnimals` | INT | `16` |
| `<basePath>#baseMaxNumAnimals` | INT | `16` |
| `<basePath>#sqmPerAnimal` | INT |  |
| `<basePath>#maxNumVisualAnimals` | INT |  |
| `<basePath>.loadingTrigger#node` | NODE_INDEX |  |
| `<basePath>.deliveryAreas.deliveryArea(?)#startNode` | NODE_INDEX |  |
| `<basePath>.deliveryAreas.deliveryArea(?)#widthNode` | NODE_INDEX |  |
| `<basePath>.deliveryAreas.deliveryArea(?)#heightNode` | NODE_INDEX |  |

## animals/husbandry/placeables/PlaceableHusbandryFeedingRobot.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>#linkNode` | NODE_INDEX |  |
| `<basePath>#class` | STRING |  |
| `<basePath>#filename` | STRING |  |
| `<basePath>.splines.spline(?)#node` | NODE_INDEX |  |
| `<basePath>.splines.spline(?)#direction` | INT |  |
| `<basePath>.splines.spline(?)#isFeeding` | BOOL |  |
| `<basePath>.animatedObjects.animatedObject(?)#index` | INT |  |
| `<basePath>.animatedObjects.animatedObject(?)#direction` | INT |  |

## animals/husbandry/placeables/PlaceableHusbandryFence.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>#xmlFilename` | STRING |  |
| `<basePath>.sections.section(?)#segmentId` | STRING | `nil` |
| `<basePath>.sections.section(?)#isReversed` | BOOL |  |
| `<basePath>.sections.section(?)#customizable` | BOOL |  |
| `<basePath>.sections.section(?).node(?)#node` | NODE_INDEX |  |

## animals/husbandry/placeables/PlaceableHusbandryFood.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>#capacity` | INT | `5000` |
| `<basePath>.foodPlaces.foodPlace(?)#node` | NODE_INDEX |  |
| `<basePath>.dynamicFoodPlane#node` | NODE_INDEX |  |
| `<basePath>.dynamicFoodPlane#defaultFillType` | STRING |  |
| `<basePath>.foodPlane#defaultFillType` | STRING |  |
| `<basePath>.fillLevel(?)#fillType` | STRING |  |
| `<basePath>.fillLevel(?)#fillLevel` | FLOAT |  |

## animals/husbandry/placeables/PlaceableHusbandryLiquidManure.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>.manure#factor` | FLOAT | `1` |
| `<basePath>.manure#active` | BOOL | `true` |

## animals/husbandry/placeables/PlaceableHusbandryMeadow.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>.fruitType(?)#name` | STRING |  |
| `<basePath>.fruitType(?)#eatableStartGrowthState` | STRING |  |
| `<basePath>.fruitType(?)#eatableEndGrowthState` | STRING |  |
| `<basePath>.fruitType(?)#eatenGrowthState` | STRING |  |
| `<basePath>.clearTask.polygon.node(?)#node` | NODE_INDEX | `nil` |
| `<basePath>.fillType(?)#name` | STRING |  |
| `<basePath>.fillType(?)#fillLevel` | FLOAT |  |
| `<basePath>.fillType(?)#capacity` | FLOAT |  |

## animals/husbandry/placeables/PlaceableHusbandryMilk.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>.milkingRobots.milkingRobot(?)#linkNode` | NODE_INDEX |  |
| `<basePath>.milkingRobots.milkingRobot(?)#class` | STRING |  |
| `<basePath>.milkingRobots.milkingRobot(?)#filename` | STRING |  |

## animals/husbandry/placeables/PlaceableHusbandryPallets.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>.palletTrigger(?)#node` | NODE_INDEX |  |
| `<basePath>#unitText` | STRING |  |
| `<basePath>#maxNumPallets` | INT |  |
| `<basePath>.pendingLiters(?)#fillType` | STRING |  |
| `<basePath>.pendingLiters(?)#liters` | FLOAT |  |

## animals/husbandry/placeables/PlaceableHusbandryStraw.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>.manure#factor` | FLOAT | `1` |
| `<basePath>.manure#active` | BOOL | `true` |

## animals/husbandry/placeables/PlaceableHusbandryWater.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>#automaticWaterSupply` | BOOL | `false` |
| `<basePath>.waterPlaces.waterPlace(?)#node` | NODE_INDEX |  |
