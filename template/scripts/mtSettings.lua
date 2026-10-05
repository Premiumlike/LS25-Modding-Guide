--
-- mtSettings.lua - settings saved per savegame (savegameX/ModTemplate.xml)
--
-- * defaults below; DEFAULTS is captured right after them (for "restore defaults")
-- * loaded at map start; written again after every game save, because the game
--   deletes unknown files in the savegame folder when saving
-- * multiplayer client: never read or write - its savegameDirectory is a foreign
--   local path; the values come from the server (mtSync.lua)
--

MTSettings = {}

-- ===== defaults (add your settings here) =====
MTSettings.featureEnabled = true
MTSettings.costPercent = 100
-- =============================================

MTSettings.DEFAULTS = {}
for key, value in pairs(MTSettings) do
    if type(value) == "boolean" or type(value) == "number" then
        MTSettings.DEFAULTS[key] = value
    end
end
MTSettings.isLoaded = false

local FILENAME = "ModTemplate.xml"
local ROOT = "modTemplate"

function MTSettings.isMpClient()
    local m = g_currentMission
    return m ~= nil and m.missionDynamicInfo ~= nil and m.missionDynamicInfo.isMultiplayer == true
        and type(m.getIsServer) == "function" and not m:getIsServer()
end

local function getFilePath()
    if MTSettings.isMpClient() then
        return nil
    end
    local m = g_currentMission
    if m == nil or m.missionInfo == nil or m.missionInfo.savegameDirectory == nil then
        return nil -- new savegame: folder exists only after the first save
    end
    return m.missionInfo.savegameDirectory .. "/" .. FILENAME
end

function MTSettings.save()
    local path = getFilePath()
    if path == nil then
        return
    end
    local xml = XMLFile.create("MTSettingsXML", path, ROOT)
    if xml == nil then
        MTLog.print("ERROR: could not create " .. path)
        return
    end
    for key, default in pairs(MTSettings.DEFAULTS) do
        if type(default) == "boolean" then
            xml:setBool(ROOT .. "." .. key, MTSettings[key] == true)
        else
            xml:setInt(ROOT .. "." .. key, math.floor((MTSettings[key] or default) + 0.5))
        end
    end
    xml:save()
    xml:delete()
end

function MTSettings.ensureLoaded()
    if MTSettings.isLoaded then
        return
    end
    local path = getFilePath()
    if path == nil then
        return
    end
    MTSettings.isLoaded = true
    if fileExists(path) then
        local xml = XMLFile.load("MTSettingsXML", path)
        if xml ~= nil then
            for key, default in pairs(MTSettings.DEFAULTS) do
                if type(default) == "boolean" then
                    MTSettings[key] = xml:getBool(ROOT .. "." .. key, default)
                else
                    MTSettings[key] = xml:getInt(ROOT .. "." .. key, default)
                end
            end
            xml:delete()
            MTLog.print("settings loaded from " .. FILENAME)
            return
        end
        MTLog.print("WARNING: could not read " .. FILENAME .. ", using defaults")
    else
        MTSettings.save()
    end
end

---Restore defaults; returns the number of changed values
function MTSettings.resetToDefaults()
    local changed = 0
    for key, default in pairs(MTSettings.DEFAULTS) do
        if MTSettings[key] ~= default then
            MTSettings[key] = default
            changed = changed + 1
        end
    end
    return changed
end

Mission00.onStartMission = Utils.appendedFunction(Mission00.onStartMission, function()
    local ok, err = pcall(MTSettings.ensureLoaded)
    if not ok then
        MTLog.print("ERROR loading settings: " .. tostring(err))
    end
end)

if FSCareerMissionInfo ~= nil and FSCareerMissionInfo.saveToXMLFile ~= nil then
    FSCareerMissionInfo.saveToXMLFile = Utils.appendedFunction(FSCareerMissionInfo.saveToXMLFile, function()
        local ok, err = pcall(MTSettings.save)
        if not ok then
            MTLog.print("ERROR saving settings: " .. tostring(err))
        end
    end)
end
