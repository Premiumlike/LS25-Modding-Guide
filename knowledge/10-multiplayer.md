# 10. Multiplayer

[← Overview](../README.md)

All points marked ✅ were tested with a listen server (host + client) and, where noted, with a dedicated server.

## Who runs what

- **Driving physics and gear selection run on the server.** Gearbox and torque changes take effect there; the game sends driver settings such as the shift mode along. 📖
- Configuration building (`getConfigurationsFromXML`) and `loadMotor` run on **every** machine: the client builds injected configurations and motor/gearbox identically. ✅
- Values only the server counts (own timers, counters) are invisible to players until you sync them.
- Only zip mods run in multiplayer (log: "Only zip mods are supported in multiplayer"). Clients need non-ModHub mods in their own mods folder. ✅
- `<multiplayer supported="false"/>` hides the mod in multiplayer completely.

## Roles

| | `getIsServer()` | `getIsClient()` | `isMasterUser` | `g_dedicatedServer` |
|---|---|---|---|---|
| Single player | true | true | – | nil |
| Host (listen server) | true | true | true | nil |
| Client | false | true | false (true after admin login) | nil |
| Dedicated server | true | true | true | set |

- **Admin login exists only on a dedicated server.** In a normal multiplayer game only the host is admin. ✅
- A dedicated server running under the same Windows user uses that user's normal profile (savegames, `modSettings/`). ✅
- `g_currentMission:getFarmId()` is 0 at map start on host and client – the farm is chosen later. ✅

## Savegame files on a client

- On a client, `missionInfo.savegameDirectory` is **not** nil but a local path (e.g. `…/savegame0`) that has nothing to do with the server. **Never read or write your own files there** – otherwise you create stray files or load foreign settings. ✅
- Host with a **new** savegame: `savegameDirectory` is nil at map start. ✅
- Per-player files: `modSettings/` (see [3](03-settings-and-menu.md)).

## Events (settings server → clients) ✅ incl. dedicated server

```lua
MySettingsEvent = {}
local MySettingsEvent_mt = Class(MySettingsEvent, Event)
InitEventClass(MySettingsEvent, "MySettingsEvent")

function MySettingsEvent.emptyNew() return Event.new(MySettingsEvent_mt) end
function MySettingsEvent.new(values) local e = MySettingsEvent.emptyNew(); e.values = values; return e end
function MySettingsEvent:writeStream(streamId, connection) --[[ write in fixed order ]] end
function MySettingsEvent:readStream(streamId, connection) --[[ read in same order ]] self:run(connection) end
function MySettingsEvent:run(connection)
    if connection:getIsServer() then
        -- we are a client, sender is the server
    else
        -- we are the server, sender is a client: check admin, apply, forward
    end
end
```

- Server → all: `g_server:broadcastEvent(event, false, ignoreConnection)`; client → server: `g_client:getServerConnection():sendEvent(event)`.
- On join: append to `FSBaseMission.sendInitialClientState(mission, connection, user, farm)` and `connection:sendEvent(...)`. ✅ Alternative: `FSBaseMission.onConnectionFinishedLoading` (prepended). 🔎
- Admin check locally: `g_currentMission.isMasterUser`; on the server: `g_currentMission.userManager:getUserByConnection(connection):getIsMasterUser()`. Reject changes from non-admins and send the sender the valid state back. ✅
- **Serialising many settings:** iterate a **sorted** key list (same on every machine), type taken from the default value (bool → `streamWriteBool`, number → `streamWriteFloat32`, round integers on read). ✅
- **Per-player values on the server:** identify the player with `user:getUniqueUserId()` (long base64-like id, no warning in tests ✅; fallback nickname), store them in your savegame file and send them back on the next join. ✅
- Patch 1.24: `loadstring` is disabled. 📖
- Patch 1.24: "Fixed configurations not deducting money on multiplayer servers" – mods that book configuration prices themselves (e.g. a payment fix mod) may now charge twice. 📖

## Vehicle values server → clients (dirty flags)

Built and logic-tested, in-game test pending ❓:
- In the specialization's `onLoad`: `self.myDirtyFlag = self:getNextDirtyFlag()`.
- Server, when something visible changed: `self:raiseDirtyFlags(self.myDirtyFlag)` (throttle, e.g. only after a 1 s change).
- `onWriteUpdateStream(streamId, connection, dirtyMask)`: only if `not connection:getIsServer()`; `if streamWriteBool(streamId, bitAND(dirtyMask, flag) ~= 0) then … write … end`.
- `onReadUpdateStream(streamId, timestamp, connection)`: only if `connection:getIsServer()`; `if streamReadBool(streamId) then … read … end`.
- On join: `onWriteStream` / `onReadStream` without the flag.
- Reading and writing must have exactly the same number and order of values.
