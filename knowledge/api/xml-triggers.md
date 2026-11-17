# XML keys – triggers

Source: `github.com/MyGameSteamOfficial/fs25-lua-api` (commit 9478ee9, 2025-02-26 – older than the current patch). Extracted automatically: names, XML keys, types, defaults only – no code. Status 📖 (read from source, not verified in game).

## triggers/BaleUnloadTrigger.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>#triggerNode` | NODE_INDEX |  |
| `<basePath>#deleteLitersPerSecond` | FLOAT | `4000` |

## triggers/FillPlane.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>#node` | NODE_INDEX |  |
| `<basePath>#minY` | FLOAT |  |
| `<basePath>#maxY` | FLOAT |  |
| `<basePath>#minRotX` | ANGLE |  |
| `<basePath>#maxRotX` | ANGLE |  |
| `<basePath>#changeVisibility` | BOOL |  |
| `<basePath>#colorChange` | BOOL | `false` |

## triggers/LoadTrigger.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>#triggerNode` | NODE_INDEX |  |
| `<basePath>#fillLitersPerSecond` | FLOAT |  |
| `<basePath>#dischargeNode` | NODE_INDEX |  |
| `<basePath>#dischargeWidth` | FLOAT | `0.5` |
| `<basePath>#dischargeLength` | FLOAT | `0.5` |
| `<basePath>#fillSoundIdentifier` | STRING |  |
| `<basePath>#fillSoundNode` | NODE_INDEX |  |
| `<basePath>#scrollerNode` | NODE_INDEX |  |
| `<basePath>#shaderParameterName` | STRING | `"uvScrollSpeed"` |
| `<basePath>#scrollerScrollSpeed` | VECTOR_2 | `"0 -0.75"` |
| `<basePath>#fillTypeCategories` | STRING |  |
| `<basePath>#fillTypes` | STRING |  |
| `<basePath>#autoStart` | BOOL | `false` |
| `<basePath>#infiniteCapacity` | BOOL | `false` |
| `<basePath>#requiresExactFillRootNode` | BOOL | `true` |
| `<basePath>#startFillText` | STRING |  |
| `<basePath>#stopFillText` | STRING |  |
| `<basePath>#aiNode` | NODE_INDEX |  |

## triggers/PalletUnloadTrigger.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>#triggerNode` | NODE_INDEX |  |
| `<basePath>#autoUnload` | BOOL | `true` |
| `<basePath>#autoUnloadStrapped` | BOOL | `false` |

## triggers/PointOfInterest.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>#triggerNode` | NODE_INDEX |  |
| `<basePath>#text` | STRING |  |
| `<basePath>#textFormat` | STRING |  |
| `<basePath>#textParams` | STRING |  |
| `<basePath>#showOwner` | BOOL |  |
| `<basePath>#showEveryone` | BOOL |  |

## triggers/UnloadTrigger.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>#exactFillRootNode` | NODE_INDEX |  |
| `<basePath>#priceScale` | FLOAT |  |
| `<basePath>#acceptedToolTypes` | STRING |  |
| `<basePath>#aiNode` | NODE_INDEX |  |
| `<basePath>.fillTypeConversion(?)#incomingFillType` | STRING |  |
| `<basePath>.fillTypeConversion(?)#outgoingFillType` | STRING |  |
| `<basePath>.fillTypeConversion(?)#ratio` | FLOAT | `1` |

## triggers/WoodUnloadTrigger.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>#triggerNode` | NODE_INDEX |  |
| `<basePath>#activationTriggerNode` | NODE_INDEX |  |
| `<basePath>#autoUnload` | BOOL | `false` |
| `<basePath>#trainSystemId` | STRING |  |
