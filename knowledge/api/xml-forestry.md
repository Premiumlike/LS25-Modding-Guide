# XML keys – forestry

Source: `github.com/MyGameSteamOfficial/fs25-lua-api` (commit 9478ee9, 2025-02-26 – older than the current patch). Extracted automatically: names, XML keys, types, defaults only – no code. Status 📖 (read from source, not verified in game).

## forestry/ForestryHook.lua

| Key | Type | Default |
|---|---|---|
| `<baseKey>#filename` | STRING | `"$data/shared/forestry/treeHook01.xml"` |

## forestry/ForestryPhysicsRope.lua

| Key | Type | Default |
|---|---|---|
| `<baseKey>#filename` | STRING | `"$data/shared/forestry/physicsRopes.i3d"` |
| `<baseKey>#ropeNode` | STRING | `"0"` |
| `<baseKey>#diameter` | FLOAT | `0.02` |
| `<baseKey>#uvScale` | FLOAT | `4` |
| `<baseKey>#emissiveColor` | VECTOR_4 | `"0 0 0"` |
| `<baseKey>#minLength` | FLOAT | `1.0` |
| `<baseKey>#maxLength` | FLOAT | `20.0` |
| `<baseKey>#linkLength` | FLOAT | `0.5` |
| `<baseKey>#nodeDistance` | FLOAT | `1.0` |
| `<baseKey>#massPerLength` | FLOAT | `20` |
| `<baseKey>#collisionGroup` | INT | `ForestryPhysicsRope.COLLISION_GROUP` |
| `<baseKey>#collisionMask` | INT | `ForestryPhysicsRope.COLLISION_MASK` |
| `<baseKey>.ropeNode(?)#translation` | VECTOR_TRANS |  |

## forestry/ForestryRope.lua

| Key | Type | Default |
|---|---|---|
| `<baseKey>#filename` | STRING | `"$data/shared/forestry/ropes.i3d"` |
| `<baseKey>#ropeNode` | STRING | `"0"` |
| `<baseKey>#diameter` | FLOAT | `0.02` |
| `<baseKey>#uvScale` | FLOAT | `4` |
| `<baseKey>#emissiveColor` | VECTOR_4 | `"0 0 0"` |
| `<baseKey>#invalidEmissiveColor` | VECTOR_4 | `"0 0 0"` |

## forestry/TargetTreeMarker.lua

| Key | Type | Default |
|---|---|---|
| `<baseKey>#filename` | STRING | `"$data/shared/forestry/targetTreeMark...` |
| `<baseKey>#width` | FLOAT | `0.05` |
| `<baseKey>#offset` | FLOAT | `0.01` |
| `<baseKey>#color` | COLOR | `"0 2 0"` |
