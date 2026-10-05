# 1. Sources and tools

[← Overview](../README.md)

## Game source code (partial)

- `github.com/Dukefarming/FS25-lua-scripting` – a sparse clone is enough. Contains `VehicleMotor.lua`, `Vehicle.lua`, `ConfigurationUtil.lua`; some specializations are missing. 📖
- `github.com/MyGameSteamOfficial/fs25-lua-api` – broader, e.g. `vehicles/specializations/*`, `gui/hud/SpeedMeterDisplay.lua`, `vehicles/configurations/*`, `shop/StoreManager.lua`. 📖
- The community LUADOC helps to get an overview.
- **Missing** in these repos: `VehicleSaleSystem.lua`, `ShopConfigScreen.lua`, `AIJobVehicle.lua`. Their behaviour is only known from other mods and from tests.
- The repos may be older than the current patch.

## Other mods as reference

Look at how they are built, do not copy their code (check each mod's license). Useful examples:

| Mod | Good for |
|---|---|
| FS25_UsedPlus | settings, used vehicle market, translation files, multiplayer events |
| FS25_UsedSalesTimeLeft | drawing into shop list cells |
| Additional Game Settings (AGS) | own tab in the settings menu |
| FS25_IncomeMod | in-game help pages |
| FS25_LeaseToOwn | buying out leased vehicles |
| FS25_AdjustSuite | shop configurations built in code, dynamic shop rows → [12](12-learned-from-other-mods.md) |

## Log

- `print()` reliably ends up in `log.txt`; `Logging.info()` does **not**. ✅
- Use your own prefix, e.g. `[MYMOD]`.
- Put diagnostics behind a switch. A good place is a file in `modSettings/` (see [3](03-settings-and-menu.md)), because it is independent of the savegame and also works on multiplayer clients. ✅
- Always print lines containing your error/warning keywords, and always print a version line when the mod loads – then you immediately see which version was tested. ✅
- When reading a log, **always** search for `Error` and `LUA call stack`, not only for your own prefix.
- The log lists the game languages: `Available Languages: en de jp pl cz fr es ru it pt hu nl cs ct br tr ro kr ea da fi no sv fc uk vi id` and `Language: de`. ✅

## Testing without the game

- Lua 5.1 mock tests (`lua5.1 tools/tests/mock_*.lua`) with re-built game objects. See [`template/tools/tests`](../template/tools/tests) for an example.
- In addition: `luac5.1 -p` for every script and `xmllint --noout` for every XML.
- Mocks test the **logic, not the physics**. Whether an effect really arrives in the game only shows in an in-game test.

## Graphics

- SVG → `cairosvg` → PNG → `convert -define dds:compression=dxt5 -define dds:mipmaps=0 x.png x.dds` (ImageMagick).
- Turn mipmaps on for small HUD icons (`dds:mipmaps=6`), otherwise they flicker when scaled down. ✅
