# XML keys – misc

Source: `github.com/MyGameSteamOfficial/fs25-lua-api` (commit 9478ee9, 2025-02-26 – older than the current patch). Extracted automatically: names, XML keys, types, defaults only – no code. Status 📖 (read from source, not verified in game).

## misc/BaleManager.lua

| Key | Type | Default |
|---|---|---|
| `bale.filename` | STRING |  |
| `bale.size#isRoundbale` | BOOL | `true` |
| `bale.size#width` | FLOAT | `0` |
| `bale.size#height` | FLOAT | `0` |
| `bale.size#length` | FLOAT | `0` |
| `bale.size#diameter` | FLOAT | `0` |
| `bale.size#maxStackHeight` | INT | `"2 or round bales and 3 for square ba...` |
| `bale.size#visualWidth` | FLOAT | `"Same as #width"` |
| `bale.size#visualHeight` | FLOAT | `"Same as #height"` |
| `bale.size#visualLength` | FLOAT | `"Same as #length"` |
| `bale.size#visualDiameter` | FLOAT | `"Same as #diameter"` |
| `bale.mountableObject#triggerNode` | NODE_INDEX |  |
| `bale.mountableObject#forceAcceleration` | FLOAT | `4` |
| `bale.mountableObject#forceLimitScale` | FLOAT | `1` |
| `bale.mountableObject#axisFreeY` | BOOL | `false` |
| `bale.mountableObject#axisFreeX` | BOOL | `false` |
| `bale.uvId` | STRING | `"DEFAULT"` |
| `bale.baleMeshes.baleMesh(?)#node` | NODE_INDEX |  |
| `bale.baleMeshes.baleMesh(?)#supportsWrapping` | BOOL |  |
| `bale.baleMeshes.baleMesh(?)#fillTypes` | STRING |  |
| `bale.baleMeshes.baleMesh(?)#isTensionBeltMesh` | BOOL | `false` |
| `bale.baleMeshes.baleMesh(?)#isAlphaMesh` | BOOL | `false` |
| `bale.fillTypes.fillType(?)#name` | STRING |  |
| `bale.fillTypes.fillType(?)#capacity` | FLOAT |  |
| `bale.fillTypes.fillType(?)#mass` | FLOAT | `500` |
| `bale.fillTypes.fillType(?)#forceAcceleration` | FLOAT | `"bale.mountableObject#forceAcceleration"` |
| `bale.fillTypes.fillType(?)#supportsWrapping` | BOOL |  |
| `bale.fillTypes.fillType(?)#materialName` | STRING |  |
| `bale.fillTypes.fillType(?)#alphaMaterialName` | STRING |  |
| `bale.variations.variation(?)#id` | STRING |  |
| `bale.fillTypes.fillType(?).fermenting#outputFillType` | STRING |  |
| `bale.fillTypes.fillType(?).fermenting#requiresWrapping` | BOOL | `true` |
| `bale.fillTypes.fillType(?).fermenting#time` | FLOAT | `1` |
| `bale.packedBale#singleBale` | STRING |  |
| `bale.packedBale.singleBale(?)#node` | NODE_INDEX |  |
| `<basePath>.diffuse#filename` | FILENAME |  |
| `<basePath>.diffuse#useFillTypeArray` | BOOL | `false` |
| `<basePath>.normal#filename` | FILENAME |  |
| `<basePath>.normal#useFillTypeArray` | BOOL | `false` |
| `<basePath>.alpha#filename` | FILENAME |  |
| `<basePath>.baleNormal#filename` | FILENAME |  |
| `<basePath>.netWrapDiffuse#filename` | FILENAME |  |
| `<basePath>.netWrapNormal#filename` | FILENAME |  |
| `map.bales.bale(?)#filename` | STRING |  |
| `map.bales.bale(?)#isAvailable` | STRING |  |

## misc/ConnectionHoseManager.lua

| Key | Type | Default |
|---|---|---|
| `connectionHoses.basicHoses.basicHose(?)#filename` | STRING |  |
| `connectionHoses.basicHoses.basicHose(?)#node` | NODE_INDEX |  |
| `connectionHoses.basicHoses.basicHose(?)#startStraightening` | FLOAT | `2` |
| `connectionHoses.basicHoses.basicHose(?)#endStraightening` | FLOAT | `2` |
| `connectionHoses.basicHoses.basicHose(?)#minCenterPointAngle` | ANGLE | `90` |
| `connectionHoses.basicHoses.basicHose(?)#length` | FLOAT |  |
| `connectionHoses.basicHoses.basicHose(?)#realLength` | FLOAT |  |
| `connectionHoses.basicHoses.basicHose(?)#diameter` | FLOAT |  |
| `connectionHoses.connectionHoseTypes.connectionHoseType(?)#name` | STRING |  |
| `connectionHoses.connectionHoseTypes.connectionHoseType(?).adapter(?)#name` | STRING |  |
| `connectionHoses.connectionHoseTypes.connectionHoseType(?).adapter(?)#filename` | STRING |  |
| `connectionHoses.connectionHoseTypes.connectionHoseType(?).adapter(?)#node` | NODE_INDEX |  |
| `connectionHoses.connectionHoseTypes.connectionHoseType(?).adapter(?)#detachedNode` | NODE_INDEX |  |
| `connectionHoses.connectionHoseTypes.connectionHoseType(?).material(?)#name` | STRING |  |
| `connectionHoses.connectionHoseTypes.connectionHoseType(?).material(?)#filename` | STRING |  |
| `connectionHoses.connectionHoseTypes.connectionHoseType(?).material(?)#materialNode` | NODE_INDEX |  |
| `connectionHoses.connectionHoseTypes.connectionHoseType(?).material(?)#uvMinMax` | VECTOR_2 |  |
| `connectionHoses.connectionHoseTypes.connectionHoseType(?).material(?)#uvLengthScale` | FLOAT | `1` |
| `connectionHoses.connectionHoseTypes.connectionHoseType(?).material(?)#uvRandomOffset` | VECTOR_2 | `"0 0"` |
| `connectionHoses.connectionHoseTypes.connectionHoseType(?).material(?)#materialTemplateName` | VEHICLE_MATERIAL |  |
| `connectionHoses.sockets.socket(?)#name` | STRING |  |
| `connectionHoses.sockets.socket(?)#filename` | STRING |  |
| `connectionHoses.sockets.socket(?)#node` | NODE_INDEX |  |
| `connectionHoses.sockets.socket(?)#referenceNode` | STRING |  |
| `connectionHoses.sockets.socket(?).cap(?)#node` | STRING |  |
| `connectionHoses.sockets.socket(?).cap(?)#openedRotation` | VECTOR_ROT |  |
| `connectionHoses.sockets.socket(?).cap(?)#closedRotation` | VECTOR_ROT |  |
| `connectionHoses.sockets.socket(?).cap(?)#openedVisibility` | BOOL | `true` |
| `connectionHoses.sockets.socket(?).cap(?)#closedVisibility` | BOOL | `true` |

## misc/ConsumableManager.lua

| Key | Type | Default |
|---|---|---|
| `consumable.consumableVariation(?)#type` | STRING |  |
| `consumable.consumableVariation(?)#price` | FLOAT | `0` |
| `consumable.consumableVariation(?)#name` | STRING |  |
| `consumable.consumableVariation(?)#title` | L10N_STRING |  |
| `consumable.consumableVariation(?)#capacity` | FLOAT | `1` |
| `consumable.consumableVariation(?)#unitText` | L10N_STRING |  |
| `consumable.consumableVariation(?).object#filename` | STRING |  |
| `consumable.consumableVariation(?).object#node` | STRING |  |
| `consumable.consumableVariation(?).consumingObject#filename` | STRING |  |
| `consumable.consumableVariation(?).consumingObject#node` | STRING |  |
| `consumable.consumableVariation(?).tensionBeltObject#filename` | STRING |  |
| `consumable.consumableVariation(?).tensionBeltObject#node` | STRING |  |
| `consumable.consumableVariation(?).metaData.value(?)#name` | STRING |  |
| `consumable.consumableVariation(?).metaData.value(?)#value` | STRING |  |
| `consumable.consumableVariation(?).shaderParameter(?)#name` | STRING |  |
| `consumable.consumableVariation(?).shaderParameter(?)#materialSlotName` | STRING |  |
| `consumable.consumableVariation(?).shaderParameter(?)#value` | VECTOR_4 |  |
| `consumables.types.type(?)#name` | STRING |  |
| `consumables.types.type(?)#title` | L10N_STRING |  |
| `consumables.consumable(?)#filename` | STRING |  |
