# XML keys – shop

Source: `github.com/MyGameSteamOfficial/fs25-lua-api` (commit 9478ee9, 2025-02-26 – older than the current patch). Extracted automatically: names, XML keys, types, defaults only – no code. Status 📖 (read from source, not verified in game).

## shop/StoreItemUtil.lua

| Key | Type | Default |
|---|---|---|
| `<baseKey>#title` | L10N_STRING |  |
| `<baseKey>#isYesNoOption` | BOOL | `false` |
| `<setKey>#name` | L10N_STRING |  |
| `<setKey>#params` | STRING |  |
| `<setKey>#isDefault` | BOOL |  |
| `<setKey>.configuration(?)#name` | STRING |  |
| `<setKey>.configuration(?)#index` | INT |  |

## shop/StoreManager.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>.storeData.name` | L10N_STRING | `nil` |
| `<basePath>.storeData.name#params` | STRING |  |
| `<basePath>.storeData.species` | STRING | `speciesDefaultValue` |
| `<basePath>.storeData.image` | STRING | `nil` |
| `<basePath>.storeData.brand` | STRING | `"LIZARD"` |
| `<basePath>.storeData.brand#customIcon` | STRING |  |
| `<basePath>.storeData.brand#imageOffset` | STRING |  |
| `<basePath>.storeData.canBeSold` | BOOL | `true` |
| `<basePath>.storeData.showInStore` | BOOL | `true` |
| `<basePath>.storeData.allowLeasing` | BOOL | `true` |
| `<basePath>.storeData.maxItemCount` | INT |  |
| `<basePath>.storeData.rotation` | ANGLE | `0` |
| `<basePath>.storeData.spawnRotationOffset` | VECTOR_ROT |  |
| `<basePath>.storeData.spawnSizeOffset` | VECTOR_3 |  |
| `<basePath>.storeData.category` | STRING_LIST | `"misc"` |
| `<basePath>.storeData.storePacks.storePack(?)` | STRING |  |
| `<basePath>.storeData.price` | FLOAT | `10000` |
| `<basePath>.storeData.dailyUpkeep` | FLOAT | `0` |
| `<basePath>.storeData.runningLeasingFactor` | FLOAT | `EconomyManager.DEFAULT_RUNNING_LEASIN...` |
| `<basePath>.storeData.lifetime` | FLOAT | `600` |
| `<basePath>.storeData.shopDynamicTitle` | BOOL | `false` |
| `<basePath>.storeData.shopTranslationOffset` | VECTOR_TRANS | `"0 0 0"` |
| `<basePath>.storeData.shopRotationOffset` | VECTOR_ROT | `"0 0 0"` |
| `<basePath>.storeData.shopIgnoreLastComponentPositions` | BOOL | `false` |
| `<basePath>.storeData.shopLoadingDelay#initial` | TIME |  |
| `<basePath>.storeData.shopLoadingDelay#config` | TIME |  |
| `<basePath>.storeData.shopHeight` | FLOAT | `0` |
| `<basePath>.storeData.financeCategory` | STRING |  |
| `<basePath>.storeData.shopFoldingState` | INT | `0` |
| `<basePath>.storeData.shopFoldingTime` | FLOAT |  |
| `<basePath>.storeData.vertexBufferMemoryUsage` | INT | `0` |
| `<basePath>.storeData.indexBufferMemoryUsage` | INT | `0` |
| `<basePath>.storeData.textureMemoryUsage` | INT | `0` |
| `<basePath>.storeData.instanceVertexBufferMemoryUsage` | INT | `0` |
| `<basePath>.storeData.instanceIndexBufferMemoryUsage` | INT | `0` |
| `<basePath>.storeData.ignoreVramUsage` | BOOL | `false` |
| `<basePath>.storeData.audioMemoryUsage` | INT | `0` |
| `<basePath>.storeData.bundleElements.bundleElement(?).xmlFilename` | STRING |  |
| `<basePath>.storeData.bundleElements.bundleElement(?).offset` | VECTOR_TRANS |  |
| `<basePath>.storeData.bundleElements.bundleElement(?).rotationOffset` | VECTOR_ROT |  |
| `<basePath>.storeData.bundleElements.bundleElement(?).yRotation` | ANGLE |  |
| `<basePath>.storeData.bundleElements.bundleElement(?).configurations.configuration(?)#name` | STRING |  |
| `<basePath>.storeData.bundleElements.bundleElement(?).configurations.configuration(?)#value` | INT |  |
| `<basePath>.storeData.bundleElements.bundleElement(?).configurations.configuration(?)#saveId` | STRING |  |
| `<basePath>.storeData.bundleElements.bundleElement(?).configurations.configuration(?)#allowChange` | BOOL | `false` |
| `<basePath>.storeData.bundleElements.bundleElement(?).configurations.configuration(?)#hideOption` | BOOL | `false` |
| `<basePath>.storeData.bundleElements.bundleElement(?).configurations.configuration(?)#disableOption` | BOOL | `false` |
| `<basePath>.storeData.attacherInfo.attach(?)#bundleElement0` | INT |  |
| `<basePath>.storeData.attacherInfo.attach(?)#bundleElement1` | INT |  |
| `<basePath>.storeData.attacherInfo.attach(?)#attacherJointIndex` | INT |  |
| `<basePath>.storeData.attacherInfo.attach(?)#inputAttacherJointIndex` | INT |  |
| `<basePath>.storeData.functions.function(?)` | L10N_STRING |  |
| `<basePath>.storeData.brush.type` | STRING |  |
| `<basePath>.storeData.brush.category` | STRING |  |
| `<basePath>.storeData.brush.tab` | STRING |  |
| `<basePath>.storeData.brush.parameters.parameter(?)` | STRING |  |
| `<basePath>.storeData.brush.parameters.parameter(?)#isFilename` | STRING |  |
| `<basePath>.storeData.storeIconRendering.settings#cameraYRot` | ANGLE | `"Setting from Icon Generator"` |
| `<basePath>.storeData.storeIconRendering.settings#cameraXRot` | ANGLE | `"Setting from Icon Generator"` |
| `<basePath>.storeData.storeIconRendering.settings#advancedBoundingBox` | BOOL | `"Setting from Icon Generator"` |
| `<basePath>.storeData.storeIconRendering.settings#centerIcon` | BOOL | `"Setting from Icon Generator"` |
| `<basePath>.storeData.storeIconRendering.settings#zoomFactor` | FLOAT |  |
| `<basePath>.storeData.storeIconRendering.settings#lightIntensity` | FLOAT | `"Setting from Icon Generator"` |
| `<basePath>.storeData.storeIconRendering.settings#showTriggerMarkers` | BOOL | `false` |
| `<basePath>.storeData.storeIconRendering.objectBundle#useClipPlane` | BOOL |  |
| `<basePath>.storeData.storeIconRendering.objectBundle.object(?)#filename` | STRING |  |
| `<basePath>.storeData.storeIconRendering.objectBundle.object(?).node(?)#node` | NODE_INDEX |  |
| `<basePath>.storeData.storeIconRendering.objectBundle.object(?).node(?)#translation` | VECTOR_TRANS | `"0 0 0"` |
| `<basePath>.storeData.storeIconRendering.objectBundle.object(?).node(?)#rotation` | VECTOR_ROT | `"0 0 0"` |
| `<basePath>.storeData.storeIconRendering.objectBundle.object(?).node(?)#scale` | VECTOR_SCALE | `"1 1 1"` |
| `<basePath>.storeData.storeIconRendering.shaderParameter(?)#name` | STRING |  |
| `<basePath>.storeData.storeIconRendering.shaderParameter(?)#values` | STRING |  |
