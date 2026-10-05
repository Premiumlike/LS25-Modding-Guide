-- Example mock test: settings + multiplayer sync without the game
-- Run: lua5.1 tools/tests/mock_settings.lua  (from the template root)
local function check(name, cond) print((cond and "OK   " or "FAIL ") .. name); if not cond then os.exit(1) end end

-- minimal game environment
Utils = { appendedFunction = function(a, b) return function(...) if a then a(...) end; b(...) end end }
Mission00 = {}
Event = { new = function(mt) return setmetatable({}, mt) end }
function Class(c) return { __index = c } end
function InitEventClass() end
local stream, pos = {}, 0
function streamWriteBool(_, v) table.insert(stream, v) end
function streamWriteFloat32(_, v) table.insert(stream, v + 0.00001) end -- simulate float rounding
function streamReadBool() pos = pos + 1; return stream[pos] end
function streamReadFloat32() pos = pos + 1; return stream[pos] end
FSBaseMission = { sendInitialClientState = function() end }

dofile("scripts/mtLog.lua")
dofile("scripts/mtSettings.lua")
dofile("scripts/mtSync.lua")

check("defaults captured", MTSettings.DEFAULTS.featureEnabled == true and MTSettings.DEFAULTS.costPercent == 100)

-- multiplayer client must not touch a savegame folder
g_currentMission = { missionDynamicInfo = { isMultiplayer = true }, missionInfo = { savegameDirectory = "C:/x/savegame0" },
  getIsServer = function() return false end, isMasterUser = false }
local touched = false
function fileExists() touched = true; return false end
XMLFile = { create = function() touched = true end }
MTSettings.ensureLoaded(); MTSettings.save()
check("MP client: no file access", not touched and MTSettings.isMpClient() and not MTSync.canEdit())

-- server -> client
MTSettings.costPercent = 150; MTSettings.featureEnabled = false
local ev = MTSettingsEvent.new()
ev:writeStream(1, nil)
MTSettings.costPercent = 100; MTSettings.featureEnabled = true
local ev2 = MTSettingsEvent.emptyNew()
ev2:readStream(1, { getIsServer = function() return true end })
check("client applies server values (rounded)", MTSettings.costPercent == 150 and MTSettings.featureEnabled == false and MTSync.received)

-- server rejects a non-admin
local replies = {}
g_currentMission = { missionDynamicInfo = { isMultiplayer = true }, getIsServer = function() return true end,
  userManager = { getUserByConnection = function(_, c) return c.user end } }
g_server = { broadcastEvent = function() error("must not broadcast") end }
local bad = MTSettingsEvent.emptyNew(); bad.values = MTSync.collect(); bad.values.costPercent = 10
bad:run({ getIsServer = function() return false end, user = { getIsMasterUser = function() return false end },
  sendEvent = function(_, e) table.insert(replies, e) end })
check("non-admin rejected, valid state sent back", MTSettings.costPercent == 150 and #replies == 1)

check("reset to defaults", MTSettings.resetToDefaults() == 2 and MTSettings.costPercent == 100)
print("all tests passed")
