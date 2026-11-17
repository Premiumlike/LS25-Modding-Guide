# XML keys – utils

Source: `github.com/MyGameSteamOfficial/fs25-lua-api` (commit 9478ee9, 2025-02-26 – older than the current patch). Extracted automatically: names, XML keys, types, defaults only – no code. Status 📖 (read from source, not verified in game).

## utils/IKUtil.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>.target(?)#ikChain` | STRING |  |
| `<basePath>.target(?)#targetNode` | NODE_INDEX |  |
| `<basePath>.target(?)#targetOffset` | VECTOR_TRANS |  |
| `<basePath>.target(?)#targetRotationOffset` | VECTOR_ROT |  |
| `<basePath>.target(?)#setDirty` | BOOL | `true` |
| `<basePath>.target(?).rotationNode(?)#id` | INT |  |
| `<basePath>.target(?).rotationNode(?)#rotation` | VECTOR_ROT |  |
| `<basePath>.target(?)#poseId` | STRING |  |
| `<basePath>#id` | STRING |  |
| `<basePath>#target` | NODE_INDEX |  |
| `<basePath>#targetOffset` | VECTOR_TRANS | `"0 0 0"` |
| `<basePath>#targetRotationOffset` | VECTOR_ROT | `"0 0 0"` |
| `<basePath>#alignToTarget` | BOOL | `false` |
| `<basePath>.node(?)#index` | NODE_INDEX |  |
| `<basePath>.node(?)#minRx` | ANGLE | `-180` |
| `<basePath>.node(?)#maxRx` | ANGLE | `180` |
| `<basePath>.node(?)#minRy` | ANGLE | `-180` |
| `<basePath>.node(?)#maxRy` | ANGLE | `180` |
| `<basePath>.node(?)#minRz` | ANGLE | `-180` |
| `<basePath>.node(?)#maxRz` | ANGLE | `180` |
| `<basePath>.node(?)#damping` | ANGLE | `30` |
| `<basePath>.node(?)#localLimits` | BOOL | `false` |
| `<basePath>.rotationNode(?)#index` | NODE_INDEX |  |
| `<basePath>.rotationNode(?)#rotation` | VECTOR_ROT |  |
| `<basePath>.pose(?)#id` | STRING |  |
| `<basePath>.pose(?)#isDefaultPose` | BOOL | `false` |
| `<basePath>.pose(?).rotationNode(?)#index` | NODE_INDEX |  |
| `<basePath>.pose(?).rotationNode(?)#rotation` | VECTOR_ROT |  |
| `<basePath>#numIterations` | INT | `20` |
| `<basePath>#numIterationsInit` | INT | `"numIterations * 2"` |
| `<basePath>#positionThreshold` | FLOAT | `0.005` |
| `<basePath>#isDirtyOnLoad` | BOOL | `false` |

## utils/ObjectChangeUtil.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>.objectChange(?)#node` | NODE_INDEX |  |
| `<basePath>.objectChange(?)#interpolation` | BOOL | `false` |
| `<basePath>.objectChange(?)#interpolationTime` | TIME | `1` |
| `<basePath>.objectChange(?)#visibilityActive` | BOOL |  |
| `<basePath>.objectChange(?)#visibilityInactive` | BOOL |  |
| `<basePath>.objectChange(?)#translationActive` | VECTOR_TRANS |  |
| `<basePath>.objectChange(?)#translationInactive` | VECTOR_TRANS |  |
| `<basePath>.objectChange(?)#rotationActive` | VECTOR_ROT |  |
| `<basePath>.objectChange(?)#rotationInactive` | VECTOR_ROT |  |
| `<basePath>.objectChange(?)#scaleActive` | VECTOR_SCALE |  |
| `<basePath>.objectChange(?)#scaleInactive` | VECTOR_SCALE |  |
| `<basePath>.objectChange(?)#shaderParameter` | STRING |  |
| `<basePath>.objectChange(?)#shaderParameterActive` | VECTOR_4 |  |
| `<basePath>.objectChange(?)#shaderParameterInactive` | VECTOR_4 |  |
| `<basePath>.objectChange(?)#sharedShaderParameter` | BOOL | `false` |
| `<basePath>.objectChange(?)#massActive` | FLOAT |  |
| `<basePath>.objectChange(?)#massInactive` | FLOAT |  |
| `<basePath>.objectChange(?)#centerOfMassActive` | VECTOR_3 |  |
| `<basePath>.objectChange(?)#centerOfMassInactive` | VECTOR_3 |  |
| `<basePath>.objectChange(?)#compoundChildActive` | BOOL |  |
| `<basePath>.objectChange(?)#compoundChildInactive` | BOOL |  |
| `<basePath>.objectChange(?)#rigidBodyTypeActive` | STRING |  |
| `<basePath>.objectChange(?)#rigidBodyTypeInactive` | STRING |  |
| `<basePath>.objectChange(?)#parentNodeActive` | NODE_INDEX |  |
| `<basePath>.objectChange(?)#parentNodeInactive` | NODE_INDEX |  |
