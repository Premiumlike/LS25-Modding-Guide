# Functions – misc

Source: `github.com/MyGameSteamOfficial/fs25-lua-api` (commit 9478ee9, 2025-02-26 – older than the current patch). Extracted automatically: names, XML keys, types, defaults only – no code. Status 📖 (read from source, not verified in game).

## misc/AbstractManager.lua

`AbstractManager.new`, `AbstractManager:initDataStructures`, `AbstractManager:load`, `AbstractManager:loadMapData`, `AbstractManager:unloadMapData`

## misc/BaleManager.lua

`BaleManager.new`, `BaleManager.registerBaleTextureXMLPaths`, `BaleManager.registerBaleXMLPaths`, `BaleManager.registerMapBalesXMLPaths`, `BaleManager:baleLoaded`, `BaleManager:consoleCommandAddBale`, `BaleManager:consoleCommandAddBaleAll`, `BaleManager:consoleCommandListBales`, `BaleManager:getBaleCapacityByBaleIndex`, `BaleManager:getBaleIndex`, `BaleManager:getBaleInfoByXMLFilename`, `BaleManager:getBaleTypeIndexByXMLFilename`, `BaleManager:getBaleXMLFilename`, `BaleManager:getBaleXMLFilenameByIndex`, `BaleManager:getFermentationTime`, `BaleManager:getIsBaleMatching`, `BaleManager:getIsRoundBale`, `BaleManager:getPossibleCapacitiesForFillType`, `BaleManager:initDataStructures`, `BaleManager:loadBaleDataFromXML`, `BaleManager:loadBaleFromXML`, `BaleManager:loadBales`, `BaleManager:loadMapData`, `BaleManager:loadModBaleFromXML`, `BaleManager:registerFermentation`, `BaleManager:removeFermentation`, `BaleManager:unloadBaleData`, `BaleManager:unloadMapData`, `BaleManager:update`

## misc/BezierCurve.lua

`BezierCurve:recalculateCoefficients`, `BezierCurve:setPositionX1`, `BezierCurve:setPositionX2`, `BezierCurve:setPositionY1`, `BezierCurve:setPositionY2`

## misc/Color.lua

`Color.blend`, `Color.fromHex`, `Color.fromPackedValue`, `Color.fromPresetName`, `Color.fromRGBA`, `Color.fromVector`, `Color.fromVectorRGBA`, `Color.new`, `Color.parseFromString`, `Color.writeStreamRGB`, `Color:copy`, `Color:copyTo`, `Color:swizzle`, `Color:toHex`, `Color:toPackedValue`, `Color:toVector3`, `Color:toVector4`, `Color:toVectorRGB`, `Color:toVectorRGBA`, `Color:unpack`, `Color:unpack3`, `Color:unpackRGBA`, `Color_mt.__index`, `Color_mt.__mul`

## misc/ConnectionHoseManager.lua

`ConnectionHoseManager.new`, `ConnectionHoseManager:adapterI3DFileLoaded`, `ConnectionHoseManager:addModConnectionHoses`, `ConnectionHoseManager:basicHoseI3DFileLoaded`, `ConnectionHoseManager:closeSocket`, `ConnectionHoseManager:getClonedAdapterNode`, `ConnectionHoseManager:getClonedBasicHose`, `ConnectionHoseManager:getClonedHoseNode`, `ConnectionHoseManager:getHoseAdapterByName`, `ConnectionHoseManager:getHoseMaterialByName`, `ConnectionHoseManager:getHoseTypeByName`, `ConnectionHoseManager:getSocketByName`, `ConnectionHoseManager:getSocketTarget`, `ConnectionHoseManager:initDataStructures`, `ConnectionHoseManager:linkSocketToNode`, `ConnectionHoseManager:loadConnectionHosesFromXML`, `ConnectionHoseManager:loadMapData`, `ConnectionHoseManager:materialI3DFileLoaded`, `ConnectionHoseManager:openSocket`, `ConnectionHoseManager:registerXMLPaths`, `ConnectionHoseManager:socketI3DFileLoaded`, `ConnectionHoseManager:unloadMapData`

## misc/ConsumableManager.lua

`ConsumableManager.new`, `ConsumableManager.registerConsumableXMLPaths`, `ConsumableManager.registerConsumablesXMLPaths`, `ConsumableManager:addModConsumable`, `ConsumableManager:consumableI3DFileLoaded`, `ConsumableManager:getConsumableConsumingMeshByIndex`, `ConsumableManager:getConsumableMeshByIndex`, `ConsumableManager:getConsumableVariationCapacityAndUnitByIndex`, `ConsumableManager:getConsumableVariationIndexByName`, `ConsumableManager:getConsumableVariationMetaDataByIndex`, `ConsumableManager:getConsumableVariationNameByIndex`, `ConsumableManager:getConsumableVariationPriceByIndex`, `ConsumableManager:getConsumableVariationShaderParameterByIndex`, `ConsumableManager:getConsumableVariationsByType`, `ConsumableManager:getTypeTitle`, `ConsumableManager:loadConsumableVariationsFromXML`, `ConsumableManager:loadMapData`, `ConsumableManager:unloadMapData`

## misc/Logging.lua

`Logging.error`, `Logging.fatal`, `Logging.i3dError`, `Logging.i3dInfo`, `Logging.i3dWarning`, `Logging.info`, `Logging.warning`, `Logging.xmlError`, `Logging.xmlInfo`, `Logging.xmlWarning`

## misc/NoteManager.lua

`NoteManager:initDataStructures`

## misc/ProductionChainManager.lua

`ProductionChainManager.new`, `ProductionChainManager:addFactory`, `ProductionChainManager:addFactoryToFarm`, `ProductionChainManager:addProductionPoint`, `ProductionChainManager:addProductionPointToFarm`, `ProductionChainManager:getFactoriesForFarmId`, `ProductionChainManager:getHasFreeSlots`, `ProductionChainManager:getNumOfProductionPoints`, `ProductionChainManager:getProductionPointsForFarmId`, `ProductionChainManager:getUnownedFactories`, `ProductionChainManager:getUnownedProductionPoints`, `ProductionChainManager:hourChanged`, `ProductionChainManager:initDataStructures`, `ProductionChainManager:removeFactory`, `ProductionChainManager:removeFactoryFromFarm`, `ProductionChainManager:removeProductionPoint`, `ProductionChainManager:removeProductionPointFromFarm`, `ProductionChainManager:unloadMapData`, `ProductionChainManager:updateBalance`

## misc/SplitShapeManager.lua

`SplitShapeManager.new`, `SplitShapeManager:addSplitType`, `SplitShapeManager:getSplitTypeByIndex`, `SplitShapeManager:getSplitTypeNameByIndex`, `SplitShapeManager:initDataStructures`, `SplitShapeManager:loadMapData`

## misc/SprayTypeManager.lua

`SprayTypeManager.new`, `SprayTypeManager:addSprayType`, `SprayTypeManager:getFillTypeByName`, `SprayTypeManager:getFillTypeIndexByName`, `SprayTypeManager:getFillTypeNameByIndex`, `SprayTypeManager:getSprayTypeByFillTypeIndex`, `SprayTypeManager:getSprayTypeByIndex`, `SprayTypeManager:getSprayTypeByName`, `SprayTypeManager:getSprayTypeIndexByFillTypeIndex`, `SprayTypeManager:getSprayTypes`, `SprayTypeManager:initDataStructures`, `SprayTypeManager:loadDefaultTypes`, `SprayTypeManager:loadMapData`, `SprayTypeManager:loadSprayTypes`

## misc/TensionBeltManager.lua

`TensionBeltManager.new`, `TensionBeltManager.onCreateTensionBelt`, `TensionBeltManager:getBeltData`, `TensionBeltManager:getType`, `TensionBeltManager:initDataStructures`, `TensionBeltManager:unloadMapData`

## misc/Timer.lua

`Timer.createOneshot`, `Timer.new`, `Timer:delete`, `Timer:finish`, `Timer:getDuration`, `Timer:getIsRunning`, `Timer:getTimePassed`, `Timer:readUpdateStream`, `Timer:reset`, `Timer:setDuration`, `Timer:setFinishCallback`, `Timer:start`, `Timer:startIfNotRunning`, `Timer:stop`, `Timer:update`, `Timer:writeUpdateStream`

## misc/ToolTypeManager.lua

`ToolTypeManager.new`, `ToolTypeManager:addToolType`, `ToolTypeManager:getNumberOfToolTypes`, `ToolTypeManager:getToolTypeIndexByName`, `ToolTypeManager:getToolTypeNameByIndex`, `ToolTypeManager:initDataStructures`, `ToolTypeManager:loadMapData`

## misc/TreePlantManager.lua

`TreePlantManager.cutTreeTrunkCallback`, `TreePlantManager.new`, `TreePlantManager:addClientTree`, `TreePlantManager:addTreeCutJoint`, `TreePlantManager:addingSplitShape`, `TreePlantManager:canPlantTree`, `TreePlantManager:cleanupDeletedTrees`, `TreePlantManager:consoleCommandCutTrees`, `TreePlantManager:consoleCommandLoadAll`, `TreePlantManager:consoleCommandPlantTrees`, `TreePlantManager:deleteTreesData`, `TreePlantManager:getClientTree`, `TreePlantManager:getIsTreeDeleted`, `TreePlantManager:getPalletStoreItemFilenameByIndex`, `TreePlantManager:getTreeRigidBodyType`, `TreePlantManager:getTreeTypeDescFromIndex`, `TreePlantManager:getTreeTypeDescFromName`, `TreePlantManager:getTreeTypeDescFromSplitType`, `TreePlantManager:getTreeTypeFilename`, `TreePlantManager:getTreeTypeIndexAndVariationFromName`, `TreePlantManager:getTreeTypeIndexFromName`, `TreePlantManager:getTreeTypeNameAndVariationByIndex`, `TreePlantManager:getTreeTypeNameFromIndex`, `TreePlantManager:initDataStructures`, `TreePlantManager:initialize`, `TreePlantManager:loadDefaultTypes`, `TreePlantManager:loadFromXMLFile`, `TreePlantManager:loadMapData`, `TreePlantManager:loadTreeNode`, `TreePlantManager:loadTreeTrunk`, `TreePlantManager:loadTreeTypes`, `TreePlantManager:onTreeCutCommandOverlapCallback`, `TreePlantManager:onTreeCutCommandSplitCallback`, `TreePlantManager:plantTree`, `TreePlantManager:readFromServerStream`, `TreePlantManager:registerTreeType`, `TreePlantManager:removeClientTree`, `TreePlantManager:removingSplitShape`, `TreePlantManager:saveToXMLFile`, `TreePlantManager:setSplitShapeLeafScaleAndVariation`, `TreePlantManager:unloadMapData`, `TreePlantManager:updateTrees`, `TreePlantManager:writeToClientStream`
