# 3. Settings and menu

[← Overview](../README.md)

## Settings file in the savegame

- Load in `Mission00.onStartMission` – works for savegames without vehicles, too. ✅
- **The game deletes unknown files in the savegame folder when saving.** Re-write your file in `FSCareerMissionInfo.saveToXMLFile` (appended). ✅
- Change values in memory when the player clicks; write the file only when the game saves.
- New savegame: `missionInfo.savegameDirectory` is **nil** at map start, it is set after the first save. ✅
- **Multiplayer client:** `missionInfo.savegameDirectory` is **not** nil but a local path (e.g. `…/savegame0`) that has nothing to do with the server. Never read or write your file there. Detect the client with `missionDynamicInfo.isMultiplayer` and `not g_currentMission:getIsServer()`. ✅ See [10](10-multiplayer.md).

## Per-user file in modSettings

- Folder: `g_modSettingsDirectory` (or `getUserProfileAppPath() .. "modSettings"` + `createFolder(...)`). ✅
- Good for things that belong to the **player, not the savegame**: a debug-log switch, personal display options. Works on multiplayer clients and on a dedicated server (which uses the profile of the Windows user it runs under). ✅
- Pattern: if the file is missing, create it with defaults; if it exists, only read it. ✅

## Own tab in ESC › Settings

Model: Additional Game Settings (AGS). ✅
- Load an XML with the tab button and a `ScrollingLayout` via `g_gui:loadGui`.
- Insert into `frame.subCategoryPages` / `subCategoryTabs` and extend `InGameMenuSettingsFrame.SUB_CATEGORY` (shift the numbers behind it by 1). Extend `HEADER_SLICES` / `HEADER_TITLES`.
- Switching tabs triggers `subCategoryPaging.onClickCallback`. Set `settingsSlider:setDataElement(layout)` there and re-link focus.
- These class tables **survive across savegames** – remove leftovers when reloading.
- Compatible with AGS: AGS hooks *before* `Mission00.setMissionInfo`, your tab *after*. ✅
- Own buttons in the bottom bar: override `getMenuButtonInfo` on the frame **instance** and return a **copy** with an extra `{inputAction, text, callback}`; call `setMenuButtonInfoDirty()` when the tab changes. Use a free action (`MENU_EXTRA_1/2/3`). ✅

## Menu elements

- `element.target` must be the **menu page**, otherwise `FocusManager:setFocus` refuses focus: mouse works, keyboard and controller do not. ✅
- Set the callback directly as `element.onClickCallback`.
- Afterwards call `invalidateLayout`, `updateAlternatingElements` and `updateGeneralSettings`.
- **Scrolling along:** `ScrollingLayoutElement` registers children only in `onGuiSetupFinished` via `addFocusListener` – rows inserted later must be registered by you. ✅
- **Greying out:** `element:setDisabled(true)`. Remove greyed-out rows from the focus chain (re-link). ✅
- **Enter/A does not toggle options in the settings** – that is game default, no own handling needed. ✅
- `MultiTextOptionElement`: `setTexts(list)`, `setState(index, forceEvent)`. `BinaryOptionElement`: `setIsChecked(bool, …)`, state `STATE_RIGHT` = on.

## Reading game settings

- `g_gameSettings:getValue(GameSettings.SETTING.GEAR_SHIFT_MODE)` with `VehicleMotor.SHIFT_MODE_AUTOMATIC` / `_MANUAL` / `_MANUAL_CLUTCH`. Re-check when your tab opens.
- Multiplayer: `g_currentMission.missionDynamicInfo.isMultiplayer`.

## Presets ("Relaxed / Standard / Hardcore")

Pattern that worked well ✅:
- Do not store the active preset. **Detect** it by comparing the current values with each preset; if nothing matches, show "Custom".
- Refresh the preset row from the click callback of every option (one path only – a second "safety net" path was never needed).
- "Restore defaults": capture the default values right after defining them (`DEFAULTS` table) and copy them back.
