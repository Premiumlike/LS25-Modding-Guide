# XML keys – fence

Source: `github.com/MyGameSteamOfficial/fs25-lua-api` (commit 9478ee9, 2025-02-26 – older than the current patch). Extracted automatically: names, XML keys, types, defaults only – no code. Status 📖 (read from source, not verified in game).

## fence/Fence.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>.fence.segment(?)#id` | STRING | `nil` |
| `<basePath>.fence.segment(?)#class` | STRING | `nil` |
| `<basePath>.segment(?)#id` | STRING |  |

## fence/FenceGate.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>.gate#node` | NODE_INDEX |  |
| `<basePath>.gate#length` | FLOAT |  |
| `<basePath>.gate#depth` | FLOAT |  |
| `<basePath>.gate#depthOffset` | FLOAT |  |

## fence/FenceSegment.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>#maxVerticalAngle` | ANGLE |  |
| `<basePath>#price` | FLOAT |  |
| `<basePath>.poles.pole(?)#node` | NODE_INDEX |  |
| `<basePath>.poles.pole(?)#radius` | FLOAT |  |
| `<basePath>.poles.pole(?)#height` | FLOAT |  |
| `<basePath>.panels#maxScale` | FLOAT | `1` |
| `<basePath>.panels.panel(?)#node` | NODE_INDEX |  |
| `<basePath>.panels.panel(?)#length` | FLOAT |  |
| `<basePath>.panels.panel(?)#width` | FLOAT |  |
| `<basePath>.panels.panel(?)#height` | FLOAT |  |
