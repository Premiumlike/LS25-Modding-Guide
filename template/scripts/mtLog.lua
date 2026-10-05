--
-- mtLog.lua - log with a debug switch in modSettings/FS25_ModTemplate.xml
--
-- * MTLog.print(text): only with debugLog, except lines containing ERROR or WARNING
-- * the version line is always printed
-- * modSettings file: created with debugLog=false if missing, only read if present
--   (independent of the savegame -> also works on multiplayer clients)
--

MTLog = {}
MTLog.PREFIX = "[MT] "
MTLog.SETTINGS_FILE = "FS25_ModTemplate.xml"
MTLog.debug = false

-- remember mod name/dir now: g_currentModName is only valid while this file loads
MTLog.modName = g_currentModName
MTLog.modDir = g_currentModDirectory

pcall(function()
    local dir = g_modSettingsDirectory
    if type(dir) ~= "string" or XMLFile == nil or fileExists == nil then
        return
    end
    if string.sub(dir, -1) ~= "/" then
        dir = dir .. "/"
    end
    local path = dir .. MTLog.SETTINGS_FILE
    if fileExists(path) then
        local xml = XMLFile.load("MTLocalXML", path)
        if xml ~= nil then
            MTLog.debug = xml:getBool("modTemplate.debugLog", false) == true
            xml:delete()
        end
    else
        if createFolder ~= nil then
            createFolder(dir)
        end
        local xml = XMLFile.create("MTLocalXML", path, "modTemplate")
        if xml ~= nil then
            xml:setBool("modTemplate.debugLog", false)
            xml:save()
            xml:delete()
        end
    end
end)

function MTLog.print(text)
    text = tostring(text)
    if MTLog.debug or string.find(text, "ERROR", 1, true) ~= nil or string.find(text, "WARNING", 1, true) ~= nil then
        print(MTLog.PREFIX .. text)
    end
end

---Print only when the text for this key changed (for values the game asks for every frame)
MTLog.lastByKey = {}
function MTLog.printChanged(key, text)
    text = tostring(text)
    if MTLog.lastByKey[key] ~= text then
        MTLog.lastByKey[key] = text
        MTLog.print(text)
    end
end

-- version line: always
do
    local version = "?"
    pcall(function()
        local mod = g_modManager ~= nil and g_modManager:getModByName(MTLog.modName) or nil
        if mod ~= nil and mod.version ~= nil then
            version = tostring(mod.version)
        end
    end)
    print(string.format("%sMod Template %s loaded (debug log %s, switch in modSettings/%s)",
        MTLog.PREFIX, version, MTLog.debug and "ON" or "off", MTLog.SETTINGS_FILE))
end
