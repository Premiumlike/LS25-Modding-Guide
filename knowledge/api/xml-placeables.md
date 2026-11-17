# XML keys – placeables

Source: `github.com/MyGameSteamOfficial/fs25-lua-api` (commit 9478ee9, 2025-02-26 – older than the current patch). Extracted automatically: names, XML keys, types, defaults only – no code. Status 📖 (read from source, not verified in game).

## placeables/Placeable.lua

| Key | Type | Default |
|---|---|---|
| `<basePath>#type` | STRING | `nil` |
| `<basePath>.annotation` | STRING | `nil` |
| `<basePath>.base.filename` | STRING | `nil` |
| `<basePath>.base.canBeRenamed` | BOOL | `false` |
| `<basePath>.base.boughtWithFarmland` | BOOL | `false` |
| `<basePath>.base.buysFarmland` | BOOL | `false` |
| `<basePath>.base.buysFarmland#priceScale` | FLOAT | `1` |
| `<basePath>.base.canBeDeleted` | BOOL | `true` |

## placeables/configurations/PlaceableConfigurationItem.lua

| Key | Type | Default |
|---|---|---|
| `<rootPath>#title` | L10N_STRING |  |
| `<configPath>#name` | L10N_STRING |  |
| `<configPath>#params` | STRING |  |
| `<configPath>#desc` | L10N_STRING |  |
| `<configPath>#price` | FLOAT | `0` |
| `<configPath>#dailyUpkeep` | FLOAT | `0` |
| `<configPath>#isDefault` | BOOL | `false` |
| `<configPath>#isSelectable` | BOOL | `true` |
| `<configPath>#saveId` | STRING | `"Number of configuration"` |
| `<basePath>#name` | STRING |  |
| `<basePath>#id` | STRING |  |
| `<basePath>#isActive` | BOOL |  |

## placeables/configurations/PlaceableConfigurationItemColor.lua

| Key | Type | Default |
|---|---|---|
| `<rootPath>#defaultColorIndex` | INT |  |
| `<rootPath>#useDefaultColors` | BOOL | `false` |
| `<rootPath>#price` | INT | `1000` |
| `<rootPath>.material(?)#slotName` | STRING |  |
| `<rootPath>.node(?)#node` | NODE_INDEX |  |
| `<configPath>#color` | STRING | `"1 1 1 1"` |
| `<configPath>#uiColor` | COLOR | `"1 1 1 1"` |
| `<configPath>#materialTemplateName` | STRING |  |
| `<basePath>#color` | VECTOR_3 | `"1 1 1"` |
| `<basePath>#materialTemplateName` | STRING |  |

## placeables/configurations/data/PlaceableConfigurationDataObjectChange.lua

| Key | Type | Default |
|---|---|---|
| `<rootPath>#postLoadObjectChange` | BOOL | `false` |
