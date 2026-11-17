# Functions – debug

Source: `github.com/MyGameSteamOfficial/fs25-lua-api` (commit 9478ee9, 2025-02-26 – older than the current patch). Extracted automatically: names, XML keys, types, defaults only – no code. Status 📖 (read from source, not verified in game).

## debug/DebugManager.lua

`DebugManager:consoleCommandRemoveElements`, `DebugManager:consoleCommandSplineToggleDebug`, `DebugManager:drawPostUI`, `DebugManager:drawPreUI`, `DebugManager:initDataStructures`, `DebugManager:unloadMapData`

## debug/DebugUtil.lua

`DebugUtil.debugTableToString`, `DebugUtil.drawArea`, `DebugUtil.drawCutNodeArea`, `DebugUtil.drawDebugArea`, `DebugUtil.drawDebugAreaRectangle`, `DebugUtil.drawDebugAreaRectangleFilled`, `DebugUtil.drawDebugCircle`, `DebugUtil.drawDebugCircleAtNode`, `DebugUtil.drawDebugCube`, `DebugUtil.drawDebugCubeAtWorldPos`, `DebugUtil.drawDebugGizmoAtWorldPos`, `DebugUtil.drawDebugLine`, `DebugUtil.drawDebugNode`, `DebugUtil.drawDebugParallelogram`, `DebugUtil.drawDebugRectangle`, `DebugUtil.drawDebugReferenceAxis`, `DebugUtil.drawDebugReferenceAxisFromNode`, `DebugUtil.drawDebugWorldParallelogram`, `DebugUtil.drawOverlapBox`, `DebugUtil.drawSimpleDebugCube`, `DebugUtil.printCallingFunctionLocation`, `DebugUtil.printNodeHierarchy`, `DebugUtil.printTableRecursively`, `DebugUtil.renderNewLine`, `DebugUtil.renderTable`, `DebugUtil.renderTextLine`

## debug/elements/DebugBitVectorMap.lua

`DebugBitVectorMap.new`, `DebugBitVectorMap:aiAreaCheck`, `DebugBitVectorMap:createWithAIVehicle`, `DebugBitVectorMap:createWithCustomFunc`, `DebugBitVectorMap:draw`, `DebugBitVectorMap:setAdditionalDrawInfoFunc`

## debug/elements/DebugBox.lua

`DebugBox:setDrawFaces`, `DebugBox:setSize`

## debug/elements/DebugCircle.lua

`DebugCircle:draw`

## debug/elements/DebugCylinder.lua

`DebugCylinder:draw`

## debug/elements/DebugDensityMap.lua

`DebugDensityMap:draw`

## debug/elements/DebugElement.lua

`DebugElement.new`, `DebugElement:addToManager`, `DebugElement:draw`, `DebugElement:getShouldBeDrawn`, `DebugElement:setClipDistance`, `DebugElement:setColorRGBA`, `DebugElement:setIsVisible`, `DebugElement:setVisbileWhenGUIOpen`

## debug/elements/DebugFunction.lua

`DebugFunction:draw`, `DebugFunction:getShouldBeDrawn`

## debug/elements/DebugGizmo.lua

`DebugGizmo:draw`, `DebugGizmo:getShouldBeDrawn`

## debug/elements/DebugInfoTable.lua

`DebugInfoTable.renderAtPosition`

## debug/elements/DebugLine.lua

`DebugLine.new`, `DebugLine:draw`

## debug/elements/DebugPath.lua

`DebugPath.new`, `DebugPath:clear`, `DebugPath:draw`, `DebugPath:getShouldBeDrawn`, `DebugPath:setForcedY`

## debug/elements/DebugPlane.lua

`DebugPlane:createWithNode`, `DebugPlane:createWithNodes`, `DebugPlane:draw`

## debug/elements/DebugPoint.lua

`DebugPoint.new`, `DebugPoint:draw`

## debug/elements/DebugPolygon.lua

`DebugPolygon.renderWithPositions`, `DebugPolygon:draw`

## debug/elements/DebugShapeOutline.lua

`DebugShapeOutline:draw`

## debug/elements/DebugSphere.lua

`DebugSphere:draw`

## debug/elements/DebugSpline.lua

`DebugSpline:draw`

## debug/elements/DebugText.lua

`DebugText.new`, `DebugText.renderAtNode`, `DebugText.renderAtPosition`, `DebugText.renderAtScreenPosition`, `DebugText:draw`

## debug/elements/DebugText3D.lua

`DebugText3D.new`, `DebugText3D.renderAtNode`, `DebugText3D.renderAtPosition`, `DebugText3D:draw`
