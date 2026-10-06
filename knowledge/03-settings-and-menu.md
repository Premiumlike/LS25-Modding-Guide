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
- Engine-provided per-mod folder: `g_currentModSettingsDirectory` (only valid while your files load – store it). 🔎 (DashboardLive, interactiveControl)
- XML API with schema: `XMLSchema.new(name)`, `schema:register(XMLValueType.X, key)`, `XMLFile.loadIfExists(name, path, schema)` / `XMLFile.create(name, path, rootName, schema)`, `getValue`/`setValue`, `save()`, `delete()`. 🔎 (Courseplay, UniversalAutoload)
- Shipping defaults: copy a defaults XML from the mod into `modSettings` on first run (`copyFile`) and read both. 🔎 (UniversalAutoload)
- Skip personal config files on a dedicated server. 🔎 (EnhancedVehicle)
- Per savegame but per player: `modSettings/<mod>/savegame<N>/…` with `missionInfo.savegameIndex`. 🔎 (SimpleInspector) The old raw API (`createXMLFile`, `loadXMLFile`, `setXMLBool`/`getXMLString`, `saveXMLFile`, `delete`) still works. 🔎 (SimpleInspector, HideHelpTexts)

## Save hooks seen

- `FSCareerMissionInfo.saveToXMLFile` (appended) 🔎 (AdjustStorageCapacity, WorkerCosts, guidanceSteering), `FSBaseMission.saveSavegame` (appended) 🔎 (MarketDynamics, HideHelpTexts, AdvancedDamageSystem), `ItemSystem.save` (prepended) 🔎 (ContractBoost, SimpleInspector). Appending means you write after the game's own save step ❓.
- **Save only from a real save event, never from `delete`** – otherwise "quit without saving" still overwrites your data. 🔎 (WorkerCosts)
- `savegameDirectory` nil (new game, some dedicated setups): MarketDynamics falls back to `getUserProfileAppPath() .. "savegame" .. savegameIndex`. 🔎 ❓

## Own tab in ESC › Settings

Model: Additional Game Settings (AGS). ✅
- Load an XML with the tab button and a `ScrollingLayout` via `g_gui:loadGui`.
- Insert into `frame.subCategoryPages` / `subCategoryTabs` and extend `InGameMenuSettingsFrame.SUB_CATEGORY` (shift the numbers behind it by 1). Extend `HEADER_SLICES` / `HEADER_TITLES`.
- Switching tabs triggers `subCategoryPaging.onClickCallback`. Set `settingsSlider:setDataElement(layout)` there and re-link focus.
- These class tables **survive across savegames** – remove leftovers when reloading.
- Compatible with AGS: AGS hooks *before* `Mission00.setMissionInfo`, your tab *after*. ✅
- Own buttons in the bottom bar: override `getMenuButtonInfo` on the frame **instance** and return a **copy** with an extra `{inputAction, text, callback}`; call `setMenuButtonInfoDirty()` when the tab changes. Use a free action (`MENU_EXTRA_1/2/3`). ✅
  - Entries may also carry `showWhenPaused = true`. Other frames: append to `frame.menuButtonInfo` in `InGameMenuProductionFrame.updateMenuButtons` / `InGameMenuAnimalsFrame.updateMenuButtons` 🔎 (AdjustStorageCapacity), or override `updateMenuButtons` of `g_inGameMenu.pageSave` 🔎 (AdditionalGameSettings).
  - **The in-game menu has a fixed button pool `g_inGameMenu.menuButton[]`.** AdditionalGameSettings clones `menuButton[1]` (`clone(parent)`, id `menuButton[n]`) when fewer than 8 exist. If an extra button does not show, the pool may be full ❓. 🔎 (AdditionalGameSettings)

### Details from Additional Game Settings

🔎 (AdditionalGameSettings) – a client-only comfort mod, nothing in it touches gameplay settings or syncs.
- Page class `Class(X, FrameElement)`; its XML holds a `BoxLayout fs25_subCategorySelectorTabbedBox` with one `Button fs25_subCategorySelectorTabbedTab` (background `ThreePartBitmap fs25_subCategorySelectorTabbedTabBg`) and a `GuiElement fs25_subCategorySelectorTabbedContainer` with a `ScrollingLayout fs25_settingsLayout`.
- Page and tab are re-parented to `settingsFrame.subCategoryPages[1].parent` / `settingsFrame.subCategoryBox` at the **same index**; every existing `SUB_CATEGORY` id ≥ the new position is shifted by +1. **Never cache `SUB_CATEGORY` numbers** – read them at runtime. `subCategoryPaging.texts[state]` holds the id **as a string** (`tonumber`). Then `settingsFrame:updateAbsolutePosition()`.
- Fields for ids: temporarily replace `settingsFrame.getDescendants` with the page's, call `settingsFrame:exposeControlsAsFields(settingsFrame.name)`, restore, then `page:setTarget(settingsFrame, page.target)`. Callbacks then run with `self` = the settings frame – resolve your own page through your global.
- **Focus registration:** `FocusManager:setGui(settingsFrame.name)`, `FocusManager:removeElement` + `loadElementFromCustomValues` for page and tab, then `setGui(previous)`. Otherwise keyboard/controller do not reach injected rows.
- **Enter fix:** override the frame's `inputEvent`; on `InputAction.MENU_ACCEPT` call `onFocusActivate()` on the focused element (inside `FocusManager.focusSystemMadeChanges = true/false`) unless `needExternalClick` – for buttons such as colour pickers inside the injected page.
- The save page's "game settings" shortcut (`pageSave.gameSettingsButton`) lands on the wrong sub-tab after ids shift – AGS restores the paging state there.
- Rows declared in XML: `Bitmap fs25_multiTextOptionContainer` with `BinaryOption fs25_settingsBinaryOption` / `MultiTextOption fs25_settingsMultiTextOption`, tooltip `Text fs25_multiTextOptionTooltip`, title `fs25_settingsMultiTextOptionTitle`; also `fs25_settingsColorButton`, `fs25_settingsMultiTextOptionLocked`. Binary state: `CheckedOptionElement.STATE_CHECKED`; refresh without callback via `setIsChecked(b, true)` / `setState(i, nil, true)` ❓ (3rd argument = skip callback).
- Disabled look: a lock-icon button per row whose tooltip explains why; alternating rows with `container:setImageColor(nil, unpack(InGameMenuSettingsFrame.COLOR_ALTERNATING[bool]))`, reset after each section header.
- Settings apply in stages (`loadState`): at `loadMap`, at `onLoadMapFinished`, or on `CURRENT_MISSION_LOADED` – for settings that need the HUD or player to exist.
- AGS does **no leftover cleanup** between savegame loads ❓ – keep your own.

## Other ways into the menus

- **Options built in Lua into the vanilla settings page:** append `InGameMenuSettingsFrame.onFrameOpen` (once-guard), create `TextElement` / `MultiTextOptionElement` / `BinaryOptionElement` with `.new()` + `loadProfile(g_gui:getProfile("fs25_settingsMultiTextOption"), true)` (also `fs25_settingsSectionHeader`, `fs25_settingsBinaryOption`, `fs25_multiTextOptionContainer`, `fs25_settingsMultiTextOptionTitle`), set `.target`, `setCallback("onClickCallback", name)`, `onGuiSetupFinished()`, add to `frame.gameSettingsLayout`, then `invalidateLayout`, `updateAlternatingElements`, `updateGeneralSettings`. 🔎 (UsedPlus)
- Variant: clone the existing header and option rows into `generalSettingsLayout`; save with an appended `GameSettings.saveToXMLFile`. 🔎 (interactiveControl)
  - Templates seen: `checkWoodHarvesterAutoCutBox` (bool), `multiVolumeVoiceBox` (multi), `sectionHeader`. Give clones a new `focusId = FocusManager:serveAutoFocusId()`, insert into `settingsPage.controlsList`, and register focus by appending `FocusManager.setGui` (for `"ingameMenuSettings"`) with `loadElementFromCustomValues`. 🔎 (SimpleInspector) One shared callback that dispatches by `opt.id`; hooks `InGameMenu.onMenuOpened` and a class-level prepend of `onFrameOpen`. 🔎 (RealisticHarvesting) Refresh on `InGameMenuSettingsFrame.updateGameSettings`. 🔎 (AdjustStorageCapacity)
  - **An error in an appended `onFrameOpen` aborts the whole ESC menu** – wrap in `pcall`, nil-guard, inject once. Template element ids may change with patches. 🔎 (FarmTablet)
- **Own page in the pause menu:** `m = g_gui.screenControllers[InGameMenu]`, `g_gui:loadGui(xml, name, frame, true)` (4th arg = frame), `m.pagingElement:addElement(frame)`, `m:registerPage(frame, pos, predicate)`, `m:addPageTab(frame, iconFile, GuiUtils.getUVs(uvs))`, `pagingElement:updatePageMapping()`. Same idea for the shop with `g_shopMenu:rebuildTabList()`. 🔎 (UsedPlus)
  - Variant with a `TabbedMenuFrameElement` page: clear a stale `g_inGameMenu.controlIDs[pageName] = nil` first, set `inGameMenu[pageName] = page`, `exposeControlsAsFields(pageName)`, `pagingElement:updateAbsolutePosition()`; open directly with `g_gui:showGui("InGameMenu")` + `inGameMenu:goToPage(page)`. Everything in `pcall` because menu internals change between patches. 🔎 (MarketDynamics)
  - Shop menu page: retry in `update` until `g_shopMenu` exists, reorder `pagingElement.elements/pages` and `pageFrames` for the position. 🔎 (AdvancedDamageSystem)
- Own tabbed menu: `Class(MyMenu, TabbedMenu)` with frames as pages; own message types `MessageType.X = nextMessageTypeId()`. 🔎 (Courseplay)

## Own dialogs

- Load once: `g_gui:loadProfiles(dir .. "gui/guiProfiles.xml")` (or a `<GUIProfiles>` block inside the dialog XML), `g_gui:loadGui(xml, name, instance)`. **Check success** with `g_gui.guis[name] ~= nil` – `loadGui` fails silently. Open `g_gui:showDialog(name)`, close `g_gui:closeDialogByName(name)`. 🔎 (UsedPlus, EnhancedVehicle, AutoDrive)
- Base class `MessageDialog` (`Class(X, MessageDialog)`, `MessageDialog.new(target, mt)`); `DialogElement` as base was reported broken. 🔎 (UsedPlus) EnhancedVehicle uses `Class(X, ScreenElement)` with `DialogElement.new(target, mt)`. 🔎
- Do not name your own callbacks `onOpen`/`onClose` (lifecycle names → stack overflow). Missing control assignment leaves all element fields nil silently. Profiles that exist: `fs25_dialogBg`, `fs25_dialogContentContainer`, `fs25_dialogButtonBox`, `buttonOK`, `buttonBack`; `fs25_button` does not. 🔎 (UsedPlus)
- Images from the mod zip: `element:setImageFilename(modDir .. "x.png")` at runtime. Non-ASCII characters (±, ×, ☐) in a GUI XML gave "Failed to open xml file". `setPosition()` at runtime hid elements in some dialogs – toggle pre-placed elements with `setVisible`. 🔎 (UsedPlus)
- Vanilla dialogs: `InfoDialog.show(text)`, `YesNoDialog.show(cb, target, text)`, `TextInputDialog.show(cb, target, default, title, …)`, `OptionDialog.createFromExistingGui(...)`. `OptionDialog` remembers the last selection and `TextInputDialog` its `maxCharacters` – reset them before reuse. 🔎 (PowerTools)
- **List dialog** (`Class(X, MessageDialog)`, `loadProfiles` **before** `loadGui`): a `SmoothList` with a `ListItem` template; in `onGuiSetupFinished` (call super first) `list:setDataSource(self)` and `setDelegate(self)`, implement `getNumberOfItemsInSection(list, section)`, `populateCellForItemInSection(list, section, index, cell)` (`cell:getAttribute("name"):setText(…)`), `onListItemClicked(list, section, index)`; `reloadData()`, `setSelectedIndex(i)`. Scrollbar `Slider fs25_listSlider` with `dataElementId="<listId>"`. Buttons in `BoxLayout fs25_dialogButtonBox`: `buttonOK`, `buttonBack`, `buttonExtra1` (`MENU_EXTRA_1`), `fs25_dialogButtonBoxSeparator`. Override `inputEvent(action, value, eventUsed)` and always call super. 🔎 (HideHelpTexts)
- Dialog on top of `YesNoDialog` (`Class(X, YesNoDialog)`), loaded once and filled per vehicle via `dlg.target`. 🔎 (CVT Addon) Load GUIs only on clients (`g_client ~= nil`). 🔎 (MarketDynamics)
- More vanilla dialogs: `InfoDialog.show(text, cb, target, dialogType, okText, buttonAction, args, disableOpenSound)`, `InfoDialog.INSTANCE` (`isOpen`, `onOk`, `close()`), `ColorPickerDialog.show(...)`. 🔎 (AdditionalGameSettings) AGS can auto-close the purchase/leasing `InfoDialog`s – do not rely on players seeing them ❓.
- Images from the mod folder in a GUI XML: MarketDynamics overrides `GuiOverlay.resolveFilename` to map a placeholder to the mod path. 🔎
- Do not open dialogs from hour/period handlers while sleeping (`g_sleepManager.isSleeping`) – the game froze; also check `g_currentMission.isSynchronizingWithPlayers`. Block HUD/menus with `g_gui:getIsGuiVisible()`. 🔎 (UsedPlus, EnhancedVehicle)

## Menu elements

- `element.target` must be the **menu page**, otherwise `FocusManager:setFocus` refuses focus: mouse works, keyboard and controller do not. ✅
- Set the callback directly as `element.onClickCallback`.
- Afterwards call `invalidateLayout`, `updateAlternatingElements` and `updateGeneralSettings`.
- **Scrolling along:** `ScrollingLayoutElement` registers children only in `onGuiSetupFinished` via `addFocusListener` – rows inserted later must be registered by you. ✅
- **Greying out:** `element:setDisabled(true)`. Remove greyed-out rows from the focus chain (re-link). ✅
- **Enter/A does not toggle options in the settings** – that is game default, no own handling needed. ✅
- `MultiTextOptionElement`: `setTexts(list)`, `setState(index, forceEvent)`. `BinaryOptionElement`: `setIsChecked(bool, …)`, state `STATE_RIGHT` = on. Slider widgets were unreliable. 🔎 (UsedPlus)

## Reading game settings

- `g_gameSettings:getValue(GameSettings.SETTING.GEAR_SHIFT_MODE)` with `VehicleMotor.SHIFT_MODE_AUTOMATIC` / `_MANUAL` / `_MANUAL_CLUTCH`. Re-check when your tab opens.
- Multiplayer: `g_currentMission.missionDynamicInfo.isMultiplayer`.

## Presets ("Relaxed / Standard / Hardcore")

Pattern that worked well ✅:
- Do not store the active preset. **Detect** it by comparing the current values with each preset; if nothing matches, show "Custom".
- Refresh the preset row from the click callback of every option (one path only – a second "safety net" path was never needed).
- "Restore defaults": capture the default values right after defining them (`DEFAULTS` table) and copy them back.
