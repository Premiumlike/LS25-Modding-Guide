# Functions – materials

Source: `github.com/MyGameSteamOfficial/fs25-lua-api` (commit 9478ee9, 2025-02-26 – older than the current patch). Extracted automatically: names, XML keys, types, defaults only – no code. Status 📖 (read from source, not verified in game).

## materials/CharacterLine.lua

`CharacterLine.new`, `CharacterLine:setCastShadowmap`, `CharacterLine:setColor`, `CharacterLine:setDecalLayer`, `CharacterLine:setFontThickness`, `CharacterLine:setSizeAndScale`, `CharacterLine:setText`, `CharacterLine:setTextAlignment`, `CharacterLine:setTextVerticalAlignment`, `CharacterLine:setUseNormalMap`

## materials/FontMaterial.lua

`FontMaterial.new`, `FontMaterial.registerXMLPaths`, `FontMaterial:assignFontMaterialToNode`, `FontMaterial:getCharacterByCharacterIndex`, `FontMaterial:getCharacterIndexByCharacter`, `FontMaterial:getClonedShape`, `FontMaterial:getFontMaxWidthRatio`, `FontMaterial:loadFromXML`, `FontMaterial:onI3DFileLoaded`, `FontMaterial:setFontCharacter`, `FontMaterial:setFontCharacterColor`

## materials/MaterialManager.lua

`MaterialManager.new`, `MaterialManager:addBaseMaterial`, `MaterialManager:addMaterial`, `MaterialManager:addMaterialToTarget`, `MaterialManager:addMaterialType`, `MaterialManager:addModMaterialHolder`, `MaterialManager:addParticleMaterial`, `MaterialManager:getBaseMaterialByName`, `MaterialManager:getFontMaterial`, `MaterialManager:getMaterial`, `MaterialManager:getMaterialFromTarget`, `MaterialManager:getMaterialTypeByName`, `MaterialManager:getParticleMaterial`, `MaterialManager:initDataStructures`, `MaterialManager:loadFontMaterialsXML`, `MaterialManager:loadMapData`, `MaterialManager:loadModMaterialHolders`, `MaterialManager:materialHolderLoaded`, `MaterialManager:unloadMapData`

## materials/MaterialUtil.lua

`MaterialUtil.getMaterialBySlotName`, `MaterialUtil.onCreateBaseMaterial`, `MaterialUtil.onCreateMaterial`, `MaterialUtil.onCreateParticleMaterial`, `MaterialUtil.onCreateParticleSystem`, `MaterialUtil.validateMaterialAttributes`

## materials/MotionPathEffectManager.lua

`MotionPathEffectManager.createMotionPathEffectXMLSchema`, `MotionPathEffectManager.new`, `MotionPathEffectManager.registerCustomShaderSettingXMLPaths`, `MotionPathEffectManager:applyEffectConfiguration`, `MotionPathEffectManager:applyShaderSettingsParameters`, `MotionPathEffectManager:deleteCustomShaderMaps`, `MotionPathEffectManager:getEffectShaderParameter`, `MotionPathEffectManager:getMotionPathEffectMaterial`, `MotionPathEffectManager:getMotionPathEffectMesh`, `MotionPathEffectManager:getSharedMotionPathEffect`, `MotionPathEffectManager:initDataStructures`, `MotionPathEffectManager:loadCustomShaderSettingsFromXML`, `MotionPathEffectManager:loadMapData`, `MotionPathEffectManager:loadMotionPathEffects`, `MotionPathEffectManager:loadMotionPathEffectsXML`, `MotionPathEffectManager:motionPathEffectI3DFileLoaded`, `MotionPathEffectManager:setEffectCustomMap`, `MotionPathEffectManager:setEffectCustomMapOnNode`, `MotionPathEffectManager:setEffectCustomShaderVariation`, `MotionPathEffectManager:setEffectMaterial`, `MotionPathEffectManager:unloadMapData`

## materials/ParticleSystemManager.lua

`ParticleSystemManager.new`, `ParticleSystemManager:addParticleSystem`, `ParticleSystemManager:addParticleType`, `ParticleSystemManager:getParticleSystem`, `ParticleSystemManager:getParticleSystemTypeByName`, `ParticleSystemManager:initDataStructures`, `ParticleSystemManager:loadMapData`, `ParticleSystemManager:unloadMapData`
