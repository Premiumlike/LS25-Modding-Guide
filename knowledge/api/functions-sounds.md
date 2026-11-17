# Functions – sounds

Source: `github.com/MyGameSteamOfficial/fs25-lua-api` (commit 9478ee9, 2025-02-26 – older than the current patch). Extracted automatically: names, XML keys, types, defaults only – no code. Status 📖 (read from source, not verified in game).

## sounds/ServerSoundManager.lua

`ServerSoundManager.new`, `SoundManager:cloneSample`

## sounds/SoundManager.lua

`SoundManager.new`, `SoundManager.registerModifierXMLPaths`, `SoundManager.registerSampleXMLPaths`, `SoundManager:addIndoorStateChangedListener`, `SoundManager:cloneSample`, `SoundManager:cloneSample2D`, `SoundManager:consoleCommandToggleDebug`, `SoundManager:createAudio2d`, `SoundManager:createAudioSource`, `SoundManager:delete`, `SoundManager:deleteSample`, `SoundManager:deleteSamples`, `SoundManager:draw`, `SoundManager:getCurrentFadeFactor`, `SoundManager:getCurrentRandomizationValue`, `SoundManager:getCurrentSampleLowpassGain`, `SoundManager:getCurrentSamplePitch`, `SoundManager:getCurrentSampleVolume`, `SoundManager:getIsIndoor`, `SoundManager:getIsSamplePlaying`, `SoundManager:getModifierFactor`, `SoundManager:getRandomSample`, `SoundManager:getSampleLoopSynthesisStartDuration`, `SoundManager:getSampleModifierValue`, `SoundManager:getSampleVolumeScale`, `SoundManager:initDataStructures`, `SoundManager:loadModifiersFromXML`, `SoundManager:loadRandomizationsFromXML`, `SoundManager:loadSample2DFromXML`, `SoundManager:loadSampleAttributesFromTemplate`, `SoundManager:loadSampleAttributesFromXML`, `SoundManager:loadSampleFromXML`, `SoundManager:loadSamplesFromXML`, `SoundManager:loadSoundTemplates`, `SoundManager:onCreateAudio2d`, `SoundManager:onCreateAudioSource`, `SoundManager:playSample`, `SoundManager:playSamples`, `SoundManager:registerModifierType`, `SoundManager:reloadSoundTemplates`, `SoundManager:removeIndoorStateChangedListener`, `SoundManager:setCurrentSampleAttributes`, `SoundManager:setIsIndoor`, `SoundManager:setSampleLoopSynthesisParameters`, `SoundManager:setSampleLowpassGainOffset`, `SoundManager:setSamplePitch`, `SoundManager:setSamplePitchOffset`, `SoundManager:setSampleVolume`, `SoundManager:setSampleVolumeOffset`, `SoundManager:setSampleVolumeScale`, `SoundManager:setSamplesLoopSynthesisParameters`, `SoundManager:stopSample`, `SoundManager:stopSamples`, `SoundManager:update`, `SoundManager:updateSampleAttributes`, `SoundManager:updateSampleFade`, `SoundManager:updateSampleModifiers`, `SoundManager:updateSampleRandomizations`, `SoundManager:validateSampleDefinition`

## sounds/SoundMixer.lua

`SoundMixer.new`, `SoundMixer:addVolumeChangedListener`, `SoundMixer:delete`, `SoundMixer:loadFromXML`, `SoundMixer:onGameStateChanged`, `SoundMixer:setAudioGroupVolumeFactor`, `SoundMixer:setMasterVolume`, `SoundMixer:update`
