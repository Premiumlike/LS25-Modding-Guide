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
- **`g_client` is nil on a dedicated server** – server code paths that send via `g_client:getServerConnection()` fail there. ❓ 🔎 (UsedPlus) Dedicated server = `g_dedicatedServer ~= nil`; `farmId` can be nil at load there. 🔎 (PowerTools)
- `g_server:getServerConnection()` does not exist; `connection` can be nil when an event is executed locally – always nil-check. 🔎 (UsedPlus)
- Farm permissions: `g_currentMission:getHasPlayerPermission(Farm.PERMISSION.SELL_VEHICLE, connection, farmId)` (also `TRANSFER_MONEY` …); player of a connection `g_currentMission:getPlayerByConnection(connection)`; `farm:isUserFarmManager(userId)`; spectator farm `FarmManager.SPECTATOR_FARM_ID` (0). 🔎 (ExtendedLeasing, UsedPlus, PowerTools)

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
- **Relay pattern** (client action → everyone): the setter takes `noEventSend`; if not set it sends the event – server `g_server:broadcastEvent(evt, nil, nil, vehicle)`, client `g_client:getServerConnection():sendEvent(evt)`. In `run`, if `not connection:getIsServer()` (received on the server), re-broadcast with `g_server:broadcastEvent(self, false, connection, self.vehicle)` (skip the sender), then call the setter with `noEventSend = true`. The 4th parameter is the **ghost object** the event belongs to. 🔎 (interactiveControl, manualAttach, EnhancedVehicle) UniversalAutoload forgets the re-broadcast – other clients then miss the change. 🔎
- `broadcastEvent(evt, true)` (`sendLocal`) also runs the event locally – AutoDrive uses it to raise its start/stop vehicle events on **all** machines. 🔎 (AutoDrive)
- One client: `connection:sendEvent(evt)`, `vehicle.ownerConnection:sendEvent(evt)`, or `g_server:getClientConnection(userId)`. 🔎 (AutoDrive, UsedPlus)
- Objects in streams: `NetworkUtil.writeNodeObject` / `readNodeObject`, or `NetworkUtil.getObjectId(v)` / `NetworkUtil.getObject(id)`; check `vehicle:getIsSynchronized()`. Network ids change after loading – persistent: `vehicle.uniqueId` and `g_currentMission.vehicleSystem:getVehicleByUniqueId(id)`. 🔎 (AutoDrive, Courseplay, UsedPlus, UniversalAutoload)
- **Join sync – variants seen:** (a) append `FSBaseMission.sendInitialClientState` and `connection:sendEvent(...)` 🔎 (AdvancedDamageSystem, AdjustStorageCapacity); (b) **request/response**: the client sends a request event from `onStartMission`, the server answers that `connection` (WorkerCosts adds retries) 🔎 (MarketDynamics, WorkerCosts); (c) the vehicle's/placeable's `onWriteStream`/`onReadStream`; (d) appending to `Player.writeStream/readStream` 🔎 (ContractBoost) ❓ riskier – runs per player object; (e) appending to `SavegameSettingsEvent.writeStream/readStream` 🔎 ❓ (guidanceSteering, FS22 code).
- **Server re-validation chain:** `g_currentMission.userManager:getUserIdByConnection(connection)` → `g_farmManager:getFarmByUserId(userId)` → `farm:isUserFarmManager(userId)`; admin via `userManager:getUserByUserId(id).isMasterUser` or `getMasterUserId()`. Rejected → send the correct state back to that client. 🔎 (MarketDynamics) Rules from a capacity editor: owner farm 0 or spectator → never; server or master user → always; else owner farm must match and in MP the player must be farm manager. 🔎 (AdjustStorageCapacity) ContractBoost applies change events without re-checking admin rights on the server ❓ – do not copy that.
- **Clients recompute from broadcast factors:** send only the factors (e.g. a price volatility per fill type) and let clients compute the final value from their local base – small events, no desync of derived values. 🔎 (MarketDynamics)
- `g_currentMission.isServer` was nil/false on a headless dedicated server during `onStartMission` – check `g_server ~= nil`. 🔎 (MarketDynamics)
- Server-only functions: guard with `if self.isServer` and log a dev error otherwise (AutoDrive's `stopAutoDrive`). 🔎
- Patch 1.24: `loadstring` is disabled. 📖
- Patch 1.24: "Fixed configurations not deducting money on multiplayer servers" – mods that book configuration prices themselves (e.g. a payment fix mod) may now charge twice. 📖 The bug affected dedicated servers; the payment fix mod is no longer offered (per a modder's report).
- Server-only values on clients: either sync them yourself (dirty flags, ~1 s), or – for consumption – estimate from the synced tank level change (FuelConsumptionHUD technique, slow, resolution ❓). Server-computed values on request: request/response events with a timeout (MotorLoadHUD slip). 🔎

## Vehicle values server → clients (dirty flags)

Built and logic-tested, in-game test pending ❓:
- In the specialization's `onLoad`: `self.myDirtyFlag = self:getNextDirtyFlag()`.
- Server, when something visible changed: `self:raiseDirtyFlags(self.myDirtyFlag)` (throttle, e.g. only after a 1 s change).
- `onWriteUpdateStream(streamId, connection, dirtyMask)`: only if `not connection:getIsServer()`; `if streamWriteBool(streamId, bitAND(dirtyMask, flag) ~= 0) then … write … end`.
- `onReadUpdateStream(streamId, timestamp, connection)`: only if `connection:getIsServer()`; `if streamReadBool(streamId) then … read … end`.
- On join: `onWriteStream` / `onReadStream` without the flag.
- Reading and writing must have exactly the same number and order of values.
- **Server-only motor values:** `spec_motorized.lastFuelUsage`, `lastDefUsage`, `lastAirUsage`, `motorTemperature`, `motorFan` are not synced by the game. Sync them with a dirty flag **throttled** to about once per second (or by a change threshold, e.g. every 10 m for an odometer). 🔎 (DashboardLive, EnhancedVehicle) → [15](15-dashboards-and-vehicle-data.md)
- Throttling patterns seen: raise only on a significant change (load > 2 %, speed > 0.2 …) or at least once per second, at most every 200 ms 🔎 (RealisticHarvesting); compare with the last sent value using an epsilon, create the flags only on the server, one bool per group 🔎 (AdvancedDamageSystem). CVT Addon streams **client → server** with Int32 values plus a full broadcast event per setting change – heavy. 🔎
- **Clamped values on the client:** the base `FillUnit:onReadStream` already clamped the fill level to the original capacity when your spec raises it. So send the **true** level in your own stream; the client raises the capacity first, then adds the difference with `addFillUnitFillLevel(...)`. Bit widths such as a trough's `FILLLEVEL_NUM_BITS` must be identical on every peer. 🔎 (AdjustStorageCapacity)
- **Stream symmetry:** read every field you wrote before any early return. `streamWriteInt32` wraps above 2^31 (clamp); `streamWriteFloat32` loses precision for game time in ms – send seconds as Int32. 🔎 (AdjustStorageCapacity) ❓ (MarketDynamics)
- Positions: `NetworkUtil.writeCompressedWorldPosition(streamId, v, g_currentMission.vehicleXZPosHighPrecisionCompressionParams)`; farm ids with `FarmManager.FARM_ID_SEND_NUM_BITS`. 🔎 ❓ (guidanceSteering, FS22 code)
- Pure display mods (SimpleInspector, AdditionalGameSettings, HideHelpTexts) are client-only and read replicated state; server-only values of your mod are invisible to them unless you sync them. 🔎 ❓
- Server simulation spread over frames: a round-robin over a vehicle registry with a fixed total period. 🔎 (AdvancedDamageSystem)
- A client "wish" can travel as an event, the server applies it in `onUpdate` and the result comes back via the update stream ("want/is" state). 🔎 (EnhancedVehicle)

## Blueprint: server-authoritative feature (market, finance, leasing)

🔎 (UsedPlus) – about 40 event classes, tested by its authors with a dedicated server.
- **Per action** a static `X.sendToServer(...)`: if `g_server ~= nil` call `X.execute(...)` directly (single player / host), else send `X.new(...)` to the server.
- **Server `run`:** ignore copies coming from the server (`connection ~= nil and connection:getIsServer()` → return), check permission, execute, answer, resync.
- **Validate on the server.** Check that the sender belongs to the claimed farm (`getPlayerByConnection(connection).farmId`, fallback `userManager:getUserByConnection(connection):getFarmId()`); for existing objects use the farm **stored on the server**, not the client's claim. Admin actions: `getIsMasterUser()`.
- **Never trust client-sent amounts.** Some UsedPlus events take a cost/amount from the client and book it – compute prices on the server. ❓ It also checks only "same farm", not `Farm.PERMISSION` – farm workers without buy rights can spend. ❓
- **Answer** only the sender with a response event (success, text key, arguments) via `connection:sendEvent`; host/single player shows the notification directly.
- **Resync:** after every successful change the server broadcasts the farm's **full** state (lists replaced on clients) instead of deltas.
- **Join:** wrap `FSBaseMission.onConnectionFinishedLoading`, call the original, then send all sync events to that `connection`.
- **Bounded reads:** limit array counts in `readStream`; if a count is invalid, still read (drain) all declared items so the stream does not desync.
- **Time logic only on the server:** subscribe to `MessageType.HOUR_CHANGED` / `PERIOD_CHANGED` only if `getIsServer()`, catch up time jumps by comparing `environment.currentDay` / `currentPeriod` with the last processed value (capped).
- Do not delete vehicles while `FSBaseMission:update` iterates the vehicle list – defer it. Money: see [4](04-configurations-and-shop.md) (`MoneyType.VEHICLE_SELL` does not exist).
