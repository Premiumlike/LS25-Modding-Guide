# 7. HUD and display

[← Overview](../README.md)

## Speedometer (`SpeedMeterDisplay.draw`)

- Layout from left to right: gauge, gear, damage, fuel, right cap. 📖
- Background width = `fuelBarScaleWidth + repairBarScaleWidth + gearBarScaleWidth`.
- Sections go left from `posX + sectionOffsetX`, each by `fuelOffsetX` / `repairOffsetX` / `gearOffsetX` (−30 HUD px each). Icon at (−16, 144) px, 30×30.
- Bars: `display.bar`, a `ThreePartOverlay` rotated 90°, length `barMaxScaleWidth`; black background plus coloured fill.
- Colours: fuel `{1, 0.4287, 0.0006}`, below 10 % red blinking `{1, 0.1233, 0}` with `|cos(g_time/300)|`; damage blue `{0.0097, 0.4287, 0.6445}`, below 20 % red.
- **Adding your own column or bar:** for the duration of `draw` increase `gearBarScaleWidth` – the background grows to the left and the game elements stay in place. For a slot between two bars also shift `gearOffsetX`. Reset afterwards and draw into the free area. ✅
- Use `display:scalePixelToScreenWidth/Height` or `scalePixelValuesToScreenVector` for all sizes – then they follow the HUD scale.
- **Other mods next to the speedometer:** EnhancedVehicle draws boxes relative to `g_currentMission.hud.speedMeter.speedBg` (x, y, width, height): a track box directly **above** the gauge starting at `speedBg.x`, small boxes at its top-left corner, texts inside the gauge, damage/fuel under `hud.gameInfoDisplay`. It also **moves `hud.fillLevelsDisplay.y` permanently**. A bar above the speedometer collides with it; check for the mod (`g_modIsLoaded`) and offset. ❓ 🔎 (EnhancedVehicle)
- **Faking the vanilla damage bar:** wrap `SpeedMeterDisplay.draw`, temporarily replace `getDamageAmount` on `rootVehicle.childVehicles` with your own value, restore after `superFunc`. 🔎 (AdvancedDamageSystem)
- EnhancedVehicle computes positions **once** on the first draw – after a HUD scale change they are stale until reload. Compute from the current scale each time. 🔎 (EnhancedVehicle)

## Other HUD elements

- Fill levels / info boxes: `FillLevelsDisplay.draw` / `InfoDisplay.draw`; to move them, change `setPosition` for the duration of `draw`.
- Background like the fill level display: `gui.filltypes_left/middle/right` with `HUD.COLOR.BACKGROUND`; accent colour `HUD.COLOR.ACTIVE`.
- **Own icons:** `g_overlayManager:addTextureConfigFile(modDir .. "x.xml", "prefix")`, then `g_overlayManager:createOverlay("prefix.slice", 0,0,0,0)`, `setDimension`, `setColor`, `setPosition`, `render`. ✅
- Game icons: `gui.icon_fuel`, `gui.icon_repair`, `gui.icon_gear`, `gui.icon_electricCharge`, `gui.icon_methane`, `gui.icon_tempomat`, `gui.icon_usage`, `gui.icon_clock` … – there is no engine icon.
- Draw your own icons with a margin, otherwise they look too big next to the game icons. ✅
- **Text:** `renderText(x, y, size, text)` in screen fractions, `setTextColor/Bold/Alignment`, `getTextWidth`. Reset afterwards (white, not bold, left).
- Help lines in the F1 box: in `onDraw` with `isActiveForInputIgnoreSelection` → `g_currentMission:addExtraPrintText(text)`. 🔎
- **Where to draw:** vehicle event `onDrawUIInfo` (only when the vehicle is the current one) 🔎 (Courseplay); append to `BaseMission.draw` for a global HUD 🔎 (AutoDrive); append to the **instance** functions `g_currentMission.hud.drawControlledEntityHUD` (runs only when the vehicle HUD is drawn) and `hud.setControlledVehicle` (to learn the vehicle); guard with `speedMeter.isVehicleDrawSafe` 🔎 (EnhancedVehicle).
- Hide with `g_gui:getIsGuiVisible()`, `g_noHudModeEnabled`, `hud:getIsVisible()`; skip on a dedicated server. 🔎
- **Overlays:** `Overlay.new(filename, x, y, w, h)` (e.g. `g_baseUIFilename` with `setUVs(g_colorBgUVs)` for a plain box), `setUVs(GuiUtils.getUVs({x, y, w, h}))` for pixel UVs in an own atlas, `setAlignment(Overlay.ALIGN_VERTICAL_*, Overlay.ALIGN_HORIZONTAL_*)`, `render()`; `HUDElement.new(overlay)` for child trees. 🔎 (AutoDrive, EnhancedVehicle)
- More text API: `setTextVerticalAlignment(RenderText.VERTICAL_ALIGN_*)`, `getCorrectTextSize`. 🔎
- Vehicle info box (look at a vehicle): append `Vehicle.showInfo(self, box)` and `box:addLine(label, value)` – install the hook after mission load. 🔎 (UsedPlus)
- Space taken by the side notifications: `hud.sideNotifications` (`notificationQueue`, `markProgressBarForDrawing`). 🔎 (EnhancedVehicle)

- Own HUD component: insert into `g_currentMission.hud.displayComponents`, draw in appended `hud.drawControlledEntityHUD`, follow the vehicle via appended `hud.setControlledVehicle`, scale with `g_gameSettings:getValue(GameSettings.SETTING.UI_SCALE)`. 🔎 (AdvancedDamageSystem) Icons placed relative to the gauge: `hud.speedMeter.gaugeCenterX/Y`, `speedIndicatorRadiusY`. 🔎 (CVT Addon)
- Re-layout on UI scale change: `g_messageCenter:subscribe(MessageType.SETTING_CHANGED[GameSettings.SETTING.UI_SCALE], …)`; screen anchors `g_hudAnchorLeft/Right/Bottom`; clock area by prepending `hud.gameInfoDisplay.draw`; HUD on/off `hud:setIsVisible(b)`. 🔎 (AdditionalGameSettings)
- **Progress popup at the side:** `hud:addSideNotificationProgressBar(title, text, progress)`, set `bar.title/text/progress`, `hud:markSideNotificationProgressBarForDrawing(bar)` each frame, `removeSideNotificationProgressBar(bar)` – a non-blocking progress display. 🔎 (AdditionalGameSettings)
- 2D sounds: `g_soundManager:loadSample2DFromXML(xmlHandle, "sounds", name, modDir, 1, AudioGroup.GUI)` 🔎 (AdvancedDamageSystem); menu sounds `g_gui.guiSoundPlayer:playSample(GuiSoundPlayer.SOUND_SAMPLES.X)` 🔎 (AdditionalGameSettings).

## A text panel like SimpleInspector

🔎 (SimpleInspector) – a client-only vehicle list drawn from a mod event listener's plain `draw()`, no `HUDElement`.
- **Background:** three atlas slices `g_overlayManager:createOverlay("gui.gameInfo_left" | "gui.gameInfo_middle" | "gui.gameInfo_right", 0, 0, 0, 0)` tinted `HUD.COLOR.BACKGROUND`; created once, then `setDimension` / `setPosition` / `render` per frame; width = the widest `getTextWidth` of all lines.
- **Multi-colour line:** several `renderText` calls, x advanced by `getTextWidth(size, textSoFar)`. Reset text state (`setTextBold`, alignment, `setTextVerticalAlignment(RenderText.VERTICAL_ALIGN_TOP)`, colour) at the end.
- **Scaling:** sizes in HUD pixels via `hud.gameInfoDisplay:scalePixelToScreenHeight(px)` / `scalePixelToScreenVector({x, y})` – these follow the UI scale ❓.
- **Position above the minimap:** `y = hud.ingameMap:getHeight() + margin` (more when `ingameMapState > 1`; `4` = big map).
- **Hide when:** `g_sleepManager:getIsSleeping()`, `g_noHudModeEnabled`, `not hud.isVisible`, big map with input help, `hud.chatDisplay:getVisible()`; also `g_gui:getIsGuiVisible()` / `getIsDialogVisible()` 🔎 (FarmTablet).
- **Throttle data collection:** rebuild rows every 15 frames (`g_updateLoopIndex % 15`), `draw()` only formats cached rows. ❓ Frame counting depends on FPS – accumulating `dt` is steadier.
- Respect `g_gameSettings:getValue("useMiles")` (km/h × 0.621371) and `useColorblindMode` (other hue for red/green). 🔎
- Data loop: [15](15-dashboards-and-vehicle-data.md).

## Other draw paths

- `g_currentMission:addDrawable(obj)` / `removeDrawable` while open; plain rectangles from `g_plainColorSliceId`; clipping by passing a rectangle to `overlay:render(x1, y1, x2, y2)`; layout from a reference size with `getNormalizedScreenValues(w, h)`; mouse with `g_inputBinding:setShowMouseCursor(true)` and a temporary listener whose `mouseEvent` returns true to consume. 🔎 (FarmTablet)
- `createImageOverlay(...)` + `renderOverlay` as a filled rect from an appended `FSBaseMission.draw`. 🔎 (MarketDynamics) Overlay-based drawing belongs into draw callbacks, not `update`. 🔎 (RealisticHarvesting)
- **Create overlays once, never in `draw`;** `delete()` them on unload. 🔎 (FarmTablet)
- Several HUD mods overlap: a background overlay does **not** hide text other mods rendered earlier. FS25_MasterHUD coordinates HUD mods → [15](15-dashboards-and-vehicle-data.md). 🔎 (FarmTablet)

## Vehicle name

- `HUD.showVehicleName` (and `MobileHUD`) receives the name in **UPPER CASE**. ✅
- `getFullName` / `getName` are called very often – cache expensive calculations.

## Notifications (top right)

- `g_currentMission:addIngameNotification(colour, text)`.
- FS25 types: `FSBaseMission.INGAME_NOTIFICATION_INFO` = `{1,1,1,1}` (white), `_CRITICAL` = `{1,0.305,0,1}` (**orange**). ✅
- For red or the fuel orange, pass your own colour table. The text is coloured, the background stays `HUD.COLOR.BACKGROUND`. ✅
- Also `FSBaseMission.INGAME_NOTIFICATION_OK`; `g_currentMission:addGameNotification(title, text, info, nil, durationMs)`; `g_currentMission:showBlinkingWarning(text, ms)` (centre of the screen). Guard all UI calls with `g_dedicatedServer == nil`. 🔎 (UsedPlus, Courseplay, PowerTools)
- Money sound: `g_soundManager:playSample(SoundManager.SOUND_SAMPLES.NOTIFICATION_MONEY)`. 🔎 (UsedPlus)
- Dashboards in the cab: see [15](15-dashboards-and-vehicle-data.md).

## Exhaust effects

- `spec_motorized.exhaustEffects[i]` with `minRpmColor`/`maxRpmColor` (RGBA), `minRpmScale`/`maxRpmScale`. Changeable at runtime – reset your own changes.
