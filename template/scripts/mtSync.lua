--
-- mtSync.lua - settings in multiplayer
--
-- * server sends all settings to a joining player (sendInitialClientState)
-- * change on the host -> to everyone; change on an admin client -> to the server,
--   which checks the admin right, applies and forwards to everyone else
-- * settings are serialised in sorted key order, type from the default value
--

MTSync = {}
MTSync.received = false

function MTSync.getKeys()
    if MTSync.keys == nil then
        local keys = {}
        for key in pairs(MTSettings.DEFAULTS) do
            table.insert(keys, key)
        end
        table.sort(keys)
        MTSync.keys = keys
    end
    return MTSync.keys
end

function MTSync.isMultiplayer()
    local m = g_currentMission
    return m ~= nil and m.missionDynamicInfo ~= nil and m.missionDynamicInfo.isMultiplayer == true
end

function MTSync.isServer()
    local m = g_currentMission
    return m ~= nil and type(m.getIsServer) == "function" and m:getIsServer() == true
end

---May this machine change settings? Single player: yes. MP: host and logged-in admins.
function MTSync.canEdit()
    if not MTSync.isMultiplayer() then
        return true
    end
    return g_currentMission.isMasterUser == true
end

function MTSync.isAdminConnection(connection)
    local ok, result = pcall(function()
        local user = g_currentMission.userManager:getUserByConnection(connection)
        return user ~= nil and user:getIsMasterUser() == true
    end)
    return ok and result == true
end

function MTSync.collect()
    local values = {}
    for _, key in ipairs(MTSync.getKeys()) do
        values[key] = MTSettings[key]
    end
    return values
end

function MTSync.apply(values, from)
    local changed = 0
    for _, key in ipairs(MTSync.getKeys()) do
        if values[key] ~= nil and MTSettings[key] ~= values[key] then
            MTSettings[key] = values[key]
            changed = changed + 1
        end
    end
    MTLog.print(string.format("MP settings applied (%s): %d changed", tostring(from), changed))
    return changed
end

MTSettingsEvent = {}
local MTSettingsEvent_mt = Class(MTSettingsEvent, Event)
InitEventClass(MTSettingsEvent, "MTSettingsEvent")

function MTSettingsEvent.emptyNew()
    return Event.new(MTSettingsEvent_mt)
end

function MTSettingsEvent.new()
    local self = MTSettingsEvent.emptyNew()
    self.values = MTSync.collect()
    return self
end

function MTSettingsEvent:writeStream(streamId, connection)
    for _, key in ipairs(MTSync.getKeys()) do
        if type(MTSettings.DEFAULTS[key]) == "boolean" then
            streamWriteBool(streamId, self.values[key] == true)
        else
            streamWriteFloat32(streamId, tonumber(self.values[key]) or 0)
        end
    end
end

function MTSettingsEvent:readStream(streamId, connection)
    self.values = {}
    for _, key in ipairs(MTSync.getKeys()) do
        if type(MTSettings.DEFAULTS[key]) == "boolean" then
            self.values[key] = streamReadBool(streamId)
        else
            self.values[key] = math.floor(streamReadFloat32(streamId) + 0.5) -- integers only
        end
    end
    self:run(connection)
end

function MTSettingsEvent:run(connection)
    if connection:getIsServer() then
        MTSync.received = true -- we are a client, sender is the server
        MTSync.apply(self.values, "from server")
        return
    end
    if not MTSync.isAdminConnection(connection) then
        MTLog.print("WARNING: settings from a player without admin rights rejected")
        connection:sendEvent(MTSettingsEvent.new()) -- send the valid state back
        return
    end
    MTSync.apply(self.values, "from admin client")
    g_server:broadcastEvent(MTSettingsEvent.new(), false, connection)
end

---Call after every change made in your menu
function MTSync.onLocalChange()
    if not MTSync.isMultiplayer() then
        return
    end
    local ok, err = pcall(function()
        if MTSync.isServer() then
            g_server:broadcastEvent(MTSettingsEvent.new(), false)
        else
            g_client:getServerConnection():sendEvent(MTSettingsEvent.new())
        end
    end)
    if not ok then
        MTLog.print("ERROR sending MP settings: " .. tostring(err))
    end
end

if FSBaseMission ~= nil and FSBaseMission.sendInitialClientState ~= nil then
    FSBaseMission.sendInitialClientState = Utils.appendedFunction(FSBaseMission.sendInitialClientState,
        function(mission, connection, user, farm)
            local ok, err = pcall(function()
                MTSettings.ensureLoaded()
                connection:sendEvent(MTSettingsEvent.new())
            end)
            if not ok then
                MTLog.print("ERROR sending settings to joining player: " .. tostring(err))
            end
        end)
else
    MTLog.print("WARNING: FSBaseMission.sendInitialClientState not found - settings are not sent on join")
end
