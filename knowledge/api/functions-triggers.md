# Functions – triggers

Source: `github.com/MyGameSteamOfficial/fs25-lua-api` (commit 9478ee9, 2025-02-26 – older than the current patch). Extracted automatically: names, XML keys, types, defaults only – no code. Status 📖 (read from source, not verified in game).

## triggers/BaleUnloadTrigger.lua

`BaleUnloadTrigger.new`, `BaleUnloadTrigger.registerXMLPaths`, `BaleUnloadTrigger:baleTriggerCallback`, `BaleUnloadTrigger:delete`, `BaleUnloadTrigger:load`, `BaleUnloadTrigger:update`

## triggers/BasketTrigger.lua

`BasketTrigger.new`, `BasketTrigger:delete`, `BasketTrigger:load`, `BasketTrigger:onCreate`, `BasketTrigger:triggerCallback`

## triggers/FillPlane.lua

`FillPlane.new`, `FillPlane.registerXMLPaths`, `FillPlane:delete`, `FillPlane:load`, `FillPlane:setColorScale`, `FillPlane:setFillType`, `FillPlane:setState`

## triggers/FillTrigger.lua

`FillTrigger.new`, `FillTrigger:delete`, `FillTrigger:fillTriggerCallback`, `FillTrigger:fillVehicle`, `FillTrigger:getIsActivatable`, `FillTrigger:onCreate`, `FillTrigger:onVehicleDeleted`

## triggers/LoadTrigger.lua

`LoadTrigger.new`, `LoadTrigger.registerXMLPaths`, `LoadTrigger:delete`, `LoadTrigger:farmIdForFillableObject`, `LoadTrigger:getAITargetPositionAndDirection`, `LoadTrigger:getAllowsActivation`, `LoadTrigger:getCurrentFillType`, `LoadTrigger:getFillTargetNode`, `LoadTrigger:getIsFillTypeSupported`, `LoadTrigger:getIsFillableObjectAvailable`, `LoadTrigger:getSupportAILoading`, `LoadTrigger:load`, `LoadTrigger:loadTriggerCallback`, `LoadTrigger:onDeleteObject`, `LoadTrigger:onFillTypeSelection`, `LoadTrigger:raiseActive`, `LoadTrigger:setFillSoundIsPlaying`, `LoadTrigger:setIsLoading`, `LoadTrigger:setSource`, `LoadTrigger:startLoading`, `LoadTrigger:stopLoading`, `LoadTrigger:toggleLoading`, `LoadTrigger:update`, `LoadTriggerActivatable.new`, `LoadTriggerActivatable:getIsActivatable`, `LoadTriggerActivatable:run`, `LoadTriggerActivatable:setText`

## triggers/LoanTrigger.lua

`LoanTrigger.new`, `LoanTrigger:delete`, `LoanTrigger:onCreate`, `LoanTrigger:openFinanceMenu`, `LoanTrigger:playerFarmChanged`, `LoanTrigger:triggerCallback`, `LoanTrigger:updateIconVisibility`, `LoanTriggerActivatable.new`, `LoanTriggerActivatable:getIsActivatable`, `LoanTriggerActivatable:run`

## triggers/PalletUnloadTrigger.lua

`PalletUnloadTrigger.new`, `PalletUnloadTrigger.registerXMLPaths`, `PalletUnloadTrigger:delete`, `PalletUnloadTrigger:load`, `PalletUnloadTrigger:palletTriggerCallback`

## triggers/PalletUnloadTriggerActivatable.lua

`PalletUnloadTriggerActivatable.new`, `PalletUnloadTriggerActivatable:getDistance`, `PalletUnloadTriggerActivatable:getIsActivatable`, `PalletUnloadTriggerActivatable:run`

## triggers/PointOfInterest.lua

`PointOfInterest.registerXMLPaths`

## triggers/ShopTrigger.lua

`ShopTrigger.new`, `ShopTrigger:delete`, `ShopTrigger:onCreate`, `ShopTrigger:onTriggerVisibilityChanged`, `ShopTrigger:openShop`, `ShopTrigger:playerFarmChanged`, `ShopTrigger:triggerCallback`, `ShopTrigger:updateIconVisibility`, `ShopTriggerActivatable.new`, `ShopTriggerActivatable:getIsActivatable`, `ShopTriggerActivatable:run`

## triggers/TransportMissionTrigger.lua

`TransportMissionTrigger.new`, `TransportMissionTrigger:delete`, `TransportMissionTrigger:onCreate`, `TransportMissionTrigger:triggerCallback`

## triggers/UnloadTrigger.lua

`UnloadTrigger.new`, `UnloadTrigger.registerXMLPaths`, `UnloadTrigger:addFillUnitFillLevel`, `UnloadTrigger:delete`, `UnloadTrigger:getCustomDischargeNotAllowedWarning`, `UnloadTrigger:getFillUnitAllowsFillType`, `UnloadTrigger:getFillUnitExactFillRootNode`, `UnloadTrigger:getFillUnitFreeCapacity`, `UnloadTrigger:getFillUnitIndexFromNode`, `UnloadTrigger:getIsFillTypeAllowed`, `UnloadTrigger:getIsFillTypeSupported`, `UnloadTrigger:getIsToolTypeAllowed`, `UnloadTrigger:load`, `UnloadTrigger:loadAcceptedToolType`, `UnloadTrigger:loadFillTypes`, `UnloadTrigger:setTarget`

## triggers/WoodUnloadTrigger.lua

`WoodUnloadTrigger.new`, `WoodUnloadTrigger.registerXMLPaths`, `WoodUnloadTrigger:calculateWoodBaseValue`, `WoodUnloadTrigger:calculateWoodBaseValueForData`, `WoodUnloadTrigger:delete`, `WoodUnloadTrigger:getWoodLogs`, `WoodUnloadTrigger:load`, `WoodUnloadTrigger:processWood`, `WoodUnloadTrigger:update`, `WoodUnloadTrigger:woodSellTriggerCallback`, `WoodUnloadTrigger:woodTriggerCallback`

## triggers/WoodUnloadTriggerActivatable.lua

`WoodUnloadTriggerActivatable.new`, `WoodUnloadTriggerActivatable:getDistance`, `WoodUnloadTriggerActivatable:getIsActivatable`, `WoodUnloadTriggerActivatable:run`
