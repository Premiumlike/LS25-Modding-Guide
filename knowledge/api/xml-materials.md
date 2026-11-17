# XML keys – materials

Source: `github.com/MyGameSteamOfficial/fs25-lua-api` (commit 9478ee9, 2025-02-26 – older than the current patch). Extracted automatically: names, XML keys, types, defaults only – no code. Status 📖 (read from source, not verified in game).

## materials/FontMaterial.lua

| Key | Type | Default |
|---|---|---|
| `fonts.font(?)#name` | STRING |  |
| `fonts.font(?)#filename` | STRING |  |
| `fonts.font(?)#node` | STRING |  |
| `fonts.font(?)#characterShape` | STRING |  |
| `fonts.font(?)#noNormalNode` | STRING |  |
| `fonts.font(?).spacing#x` | FLOAT | `0` |
| `fonts.font(?).spacing#y` | FLOAT | `0` |
| `fonts.font(?).spacing#charToChar` | FLOAT | `0.1` |
| `fonts.font(?).character(?)#uvIndex` | INT | `0` |
| `fonts.font(?).character(?)#value` | STRING |  |
| `fonts.font(?).character(?)#type` | STRING | `"alphabetical"` |
| `fonts.font(?).character(?)#spacingX` | FLOAT |  |
| `fonts.font(?).character(?)#spacingY` | FLOAT |  |
| `fonts.font(?).character(?)#offsetX` | FLOAT | `0` |
| `fonts.font(?).character(?)#offsetY` | FLOAT | `0` |
| `fonts.font(?).character(?)#realSpacingX` | FLOAT |  |

## materials/MotionPathEffectManager.lua

| Key | Type | Default |
|---|---|---|
| `<effectKey>#effectClass` | STRING |  |
| `<effectKey>#effectType` | STRING |  |
| `<effectKey>#filename` | STRING |  |
| `<effectKey>.effectGeneration#rootNode` | NODE_INDEX |  |
| `<effectKey>.effectGeneration#minRot` | VECTOR_ROT |  |
| `<effectKey>.effectGeneration#maxRot` | VECTOR_ROT |  |
| `<effectKey>.effectGeneration#minScale` | VECTOR_SCALE |  |
| `<effectKey>.effectGeneration#maxScale` | VECTOR_SCALE |  |
| `<effectKey>.effectGeneration#useFoliage` | STRING |  |
| `<effectKey>.effectGeneration#useFoliageStage` | INT |  |
| `<effectKey>.effectGeneration#useFoliageLOD` | INT |  |
| `<effectKey>.effectMeshes.effectMesh(?)#node` | NODE_INDEX |  |
| `<effectKey>.effectMeshes.effectMesh(?)#sourceNode` | NODE_INDEX |  |
| `<effectKey>.effectMeshes.effectMesh(?)#rowLength` | INT | `30` |
| `<effectKey>.effectMeshes.effectMesh(?)#numRows` | INT | `12` |
| `<effectKey>.effectMeshes.effectMesh(?)#skipPositions` | INT | `0` |
| `<effectKey>.effectMeshes.effectMesh(?)#numVariations` | INT | `1` |
| `<effectKey>.effectMeshes.effectMesh(?)#boundingBox` | VECTOR_SCALE |  |
| `<effectKey>.effectMeshes.effectMesh(?)#boundingBoxCenter` | VECTOR_TRANS |  |
| `<effectKey>.effectMeshes.effectMesh(?).lod(?)#sourceNode` | NODE_INDEX |  |
| `<effectKey>.effectMeshes.effectMesh(?).lod(?)#distance` | FLOAT |  |
| `<effectKey>.effectMeshes.effectMesh(?).lod(?)#skipPositions` | INT |  |
| `<effectKey>.effectMaterials#rootNode` | NODE_INDEX |  |
| `<effectKey>.effectMaterials.effectMaterial(?)#node` | NODE_INDEX |  |
| `<effectKey>.effectMaterials.effectMaterial(?).lod(?)#node` | NODE_INDEX |  |
| `<effectKey>.effectMaterials.effectMaterial(?).textures#diffuse` | STRING |  |
| `<effectKey>.effectMaterials.effectMaterial(?).textures#normal` | STRING |  |
| `<effectKey>.effectMaterials.effectMaterial(?).textures#specular` | STRING |  |
| `<basePath>.customShaderVariation#name` | STRING |  |
| `<basePath>.customShaderParameter(?)#name` | STRING |  |
| `<basePath>.customShaderParameter(?)#value` | VECTOR_4 |  |
| `<basePath>.customShaderMap(?)#name` | STRING |  |
| `<basePath>.customShaderMap(?)#filename` | STRING |  |
