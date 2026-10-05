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

## Other HUD elements

- Fill levels / info boxes: `FillLevelsDisplay.draw` / `InfoDisplay.draw`; to move them, change `setPosition` for the duration of `draw`.
- Background like the fill level display: `gui.filltypes_left/middle/right` with `HUD.COLOR.BACKGROUND`; accent colour `HUD.COLOR.ACTIVE`.
- **Own icons:** `g_overlayManager:addTextureConfigFile(modDir .. "x.xml", "prefix")`, then `g_overlayManager:createOverlay("prefix.slice", 0,0,0,0)`, `setDimension`, `setColor`, `setPosition`, `render`. ✅
- Game icons: `gui.icon_fuel`, `gui.icon_repair`, `gui.icon_gear`, `gui.icon_electricCharge`, `gui.icon_methane`, `gui.icon_tempomat`, `gui.icon_usage`, `gui.icon_clock` … – there is no engine icon.
- Draw your own icons with a margin, otherwise they look too big next to the game icons. ✅
- **Text:** `renderText(x, y, size, text)` in screen fractions, `setTextColor/Bold/Alignment`, `getTextWidth`. Reset afterwards (white, not bold, left).
- Help lines in the F1 box: in `onDraw` with `isActiveForInputIgnoreSelection` → `g_currentMission:addExtraPrintText(text)`. 🔎

## Vehicle name

- `HUD.showVehicleName` (and `MobileHUD`) receives the name in **UPPER CASE**. ✅
- `getFullName` / `getName` are called very often – cache expensive calculations.

## Notifications (top right)

- `g_currentMission:addIngameNotification(colour, text)`.
- FS25 types: `FSBaseMission.INGAME_NOTIFICATION_INFO` = `{1,1,1,1}` (white), `_CRITICAL` = `{1,0.305,0,1}` (**orange**). ✅
- For red or the fuel orange, pass your own colour table. The text is coloured, the background stays `HUD.COLOR.BACKGROUND`. ✅

## Exhaust effects

- `spec_motorized.exhaustEffects[i]` with `minRpmColor`/`maxRpmColor` (RGBA), `minRpmScale`/`maxRpmScale`. Changeable at runtime – reset your own changes.
