# Functions – gui

Source: `github.com/MyGameSteamOfficial/fs25-lua-api` (commit 9478ee9, 2025-02-26 – older than the current patch). Extracted automatically: names, XML keys, types, defaults only – no code. Status 📖 (read from source, not verified in game).

## gui/AnimalScreen.lua

`AnimalScreen.new`, `AnimalScreen:delete`, `AnimalScreen:onClickBack`, `AnimalScreen:onClickSelect`, `AnimalScreen:onClose`, `AnimalScreen:onOpen`, `AnimalScreen:removeActionEvents`, `AnimalScreen:setSelectionState`

## gui/ConstructionScreen.lua

`ConstructionScreen.new`, `ConstructionScreen:buildCellDatabase`, `ConstructionScreen:dequeueDetailsCell`, `ConstructionScreen:onClose`, `ConstructionScreen:onOpen`, `ConstructionScreen:queueDetailsCell`, `ConstructionScreen:registerBrushActionEvents`, `ConstructionScreen:removeBrushActionEvents`

## gui/InGameMenu.lua

`InGameMenu:onPageNext`, `InGameMenu:onPagePrevious`

## gui/InGameMenuAnimalsFrame.lua

`InGameMenuAnimalsFrame:delete`

## gui/InGameMenuStatisticsFrame.lua

`InGameMenuStatisticsFrame:buildCellDatabase`, `InGameMenuStatisticsFrame:dequeueDetailsCell`, `InGameMenuStatisticsFrame:getMenuButtonInfo`, `InGameMenuStatisticsFrame:queueDetailsCell`

## gui/MainScreen.lua

`MainScreen:inputEvent`

## gui/ShopCategoriesFrame.lua

`ShopCategoriesFrame.register`

## gui/ShopItemsFrame.lua

`ShopItemsFrame:buildCellDatabase`, `ShopItemsFrame:dequeueDetailsCell`, `ShopItemsFrame:queueDetailsCell`

## gui/WardrobeScreen.lua

`WardrobeScreen:removeActionEvents`

## gui/base/ButtonOverlay.lua

`ButtonOverlay.new`, `ButtonOverlay:delete`, `ButtonOverlay:getButtonWidth`, `ButtonOverlay:renderButton`, `ButtonOverlay:setColor`

## gui/base/FocusManager.lua

`FocusManager.checkElementDistance`, `FocusManager.getClosestPointOnBoundingBox`, `FocusManager.getDirectionForAxisValue`, `FocusManager.getNestedFocusTarget`, `FocusManager.getShortestBoundingBoxVector`, `FocusManager.serveAutoFocusId`, `FocusManager:deleteGuiFocusData`, `FocusManager:getElementById`, `FocusManager:getFocusOverrideFunction`, `FocusManager:getFocusedElement`, `FocusManager:getNextFocusElement`, `FocusManager:hasFocus`, `FocusManager:inputEvent`, `FocusManager:isDirectionLocked`, `FocusManager:isFocusInputLocked`, `FocusManager:isLocked`, `FocusManager:linkElements`, `FocusManager:loadElementFromCustomValues`, `FocusManager:loadElementFromXML`, `FocusManager:lockFocusInput`, `FocusManager:releaseLock`, `FocusManager:releaseMovementFocusInput`, `FocusManager:removeElement`, `FocusManager:requireLock`, `FocusManager:resetFocusInputLocks`, `FocusManager:setFocus`, `FocusManager:setGui`, `FocusManager:setHighlight`, `FocusManager:setSoundPlayer`, `FocusManager:unsetFocus`, `FocusManager:unsetHighlight`, `FocusManager:updateFocus`

## gui/base/GlyphButtonOverlay.lua

`GlyphButtonOverlay.new`

## gui/base/Gui.lua

`Gui.initGuiLibrary`, `Gui.new`, `Gui.registerGuiElement`, `Gui.registerGuiElementProcFunction`, `Gui:addFrame`, `Gui:addScreen`, `Gui:assignPlaySampleCallback`, `Gui:changeScreen`, `Gui:closeAllDialogs`, `Gui:closeDialog`, `Gui:closeDialogByName`, `Gui:draw`, `Gui:enterMenuContext`, `Gui:getIsDialogVisible`, `Gui:getIsGuiVisible`, `Gui:getIsOverlayGuiVisible`, `Gui:getProfile`, `Gui:getScreenInstanceByClass`, `Gui:hasElementInputFocus`, `Gui:keyEvent`, `Gui:leaveMenuContext`, `Gui:loadGui`, `Gui:loadGuiRec`, `Gui:loadMapData`, `Gui:loadPresets`, `Gui:loadProfileSet`, `Gui:loadProfiles`, `Gui:loadTraits`, `Gui:makeChangeScreenClosure`, `Gui:makePlaySampleClosure`, `Gui:makeToggleCustomInputContextClosure`, `Gui:mouseEvent`, `Gui:notifyControls`, `Gui:onMenuInput`, `Gui:onReleaseInput`, `Gui:onReleaseMovement`, `Gui:registerMenuInput`, `Gui:resolveFrameReference`, `Gui:setClient`, `Gui:setCurrentMission`, `Gui:setServer`, `Gui:showDialog`, `Gui:showGui`, `Gui:toggleCustomInputContext`, `Gui:touchEvent`, `Gui:unloadMapData`, `Gui:update`

## gui/base/GuiDataSource.lua

`GuiDataSource.new`, `GuiDataSource:addChangeListener`, `GuiDataSource:getCount`, `GuiDataSource:getItem`, `GuiDataSource:iterateRange`, `GuiDataSource:notifyChange`, `GuiDataSource:removeChangeListener`, `GuiDataSource:setData`, `GuiDataSource:setItem`

## gui/base/GuiMixin.lua

`GuiMixin.cloneMixin`, `GuiMixin.hasIncluded`, `GuiMixin.new`, `GuiMixin:addTo`, `GuiMixin:clone`

## gui/base/GuiOverlay.lua

`GuiOverlay.copyColors`, `GuiOverlay.copyOverlay`, `GuiOverlay.createOverlay`, `GuiOverlay.createStateOverlays`, `GuiOverlay.deleteOverlay`, `GuiOverlay.getMaskOverlay`, `GuiOverlay.getOverlay`, `GuiOverlay.getOverlayColor`, `GuiOverlay.getOverlayUVs`, `GuiOverlay.loadOverlay`, `GuiOverlay.loadProfileColors`, `GuiOverlay.loadProfileFilenames`, `GuiOverlay.loadProfileUVs`, `GuiOverlay.loadXMLColors`, `GuiOverlay.loadXMLFilenames`, `GuiOverlay.loadXMLUVs`, `GuiOverlay.renderOverlay`, `GuiOverlay.resolveFilename`, `GuiOverlay.setColor`, `GuiOverlay.setRotation`, `GuiOverlay.setSelectedColor`

## gui/base/GuiProfile.lua

`GuiProfile.new`, `GuiProfile:getBool`, `GuiProfile:getNumber`, `GuiProfile:getValue`, `GuiProfile:loadFromXML`

## gui/base/GuiSoundPlayer.lua

`GuiSoundPlayer.new`, `GuiSoundPlayer:loadSounds`, `GuiSoundPlayer:playSample`

## gui/base/GuiTopDownCamera.lua

`GuiTopDownCamera:activate`, `GuiTopDownCamera:applyMovement`, `GuiTopDownCamera:createCameraNodes`, `GuiTopDownCamera:deactivate`, `GuiTopDownCamera:delete`, `GuiTopDownCamera:determineMapPosition`, `GuiTopDownCamera:getIsActive`, `GuiTopDownCamera:getMouseEdgeScrollingMovement`, `GuiTopDownCamera:getPickRay`, `GuiTopDownCamera:mouseEvent`, `GuiTopDownCamera:onInputModeChanged`, `GuiTopDownCamera:onMoveForward`, `GuiTopDownCamera:onMoveSide`, `GuiTopDownCamera:onRotate`, `GuiTopDownCamera:onTilt`, `GuiTopDownCamera:onZoom`, `GuiTopDownCamera:registerActionEvents`, `GuiTopDownCamera:removeActionEvents`, `GuiTopDownCamera:reset`, `GuiTopDownCamera:resetInputState`, `GuiTopDownCamera:setCameraPosition`, `GuiTopDownCamera:setEdgeScrollingOffset`, `GuiTopDownCamera:setMouseEdgeScrollingActive`, `GuiTopDownCamera:setTerrainRootNode`, `GuiTopDownCamera:update`, `GuiTopDownCamera:updateMovement`, `GuiTopDownCamera:updatePosition`

## gui/base/GuiTopDownCursor.lua

`GuiTopDownCursor:activate`, `GuiTopDownCursor:deactivate`, `GuiTopDownCursor:delete`, `GuiTopDownCursor:mouseEvent`, `GuiTopDownCursor:onInputModeChanged`, `GuiTopDownCursor:registerActionEvents`, `GuiTopDownCursor:removeActionEvents`

## gui/base/GuiUtils.lua

`GuiUtils.checkOverlayOverlap`, `GuiUtils.getColorArray`, `GuiUtils.getColorGradientArray`, `GuiUtils.getNormalizedValues`, `GuiUtils.getUVs`

## gui/base/IndexChangeSubjectMixin.lua

`IndexChangeSubjectMixin.addIndexChangeObserver`, `IndexChangeSubjectMixin.new`, `IndexChangeSubjectMixin.notifyIndexChange`, `IndexChangeSubjectMixin:addTo`, `IndexChangeSubjectMixin:clone`

## gui/base/MapOverlayGenerator.lua

`MapOverlayGenerator.new`, `MapOverlayGenerator:adjustedOverlayResolution`, `MapOverlayGenerator:buildFarmlandsMapOverlay`, `MapOverlayGenerator:buildFieldsOverlay`, `MapOverlayGenerator:buildFruitTypeMapOverlay`, `MapOverlayGenerator:buildGrowthStateMapOverlay`, `MapOverlayGenerator:buildSingleFarmlandsMapOverlay`, `MapOverlayGenerator:buildSoilStateMapOverlay`, `MapOverlayGenerator:checkOverlayFinished`, `MapOverlayGenerator:delete`, `MapOverlayGenerator:generateFarmlandOverlay`, `MapOverlayGenerator:generateFieldsOverlay`, `MapOverlayGenerator:generateFruitTypeOverlay`, `MapOverlayGenerator:generateGrowthStateOverlay`, `MapOverlayGenerator:generateOverlay`, `MapOverlayGenerator:generateSingleFarmlandOverlay`, `MapOverlayGenerator:generateSoilStateOverlay`, `MapOverlayGenerator:getDisplayCropTypes`, `MapOverlayGenerator:getDisplayGrowthStates`, `MapOverlayGenerator:getDisplaySoilStates`, `MapOverlayGenerator:reset`, `MapOverlayGenerator:setColorBlindMode`, `MapOverlayGenerator:setMissionFruitTypes`, `MapOverlayGenerator:update`

## gui/base/MultiValueTween.lua

`MultiValueTween.new`, `MultiValueTween:applyValue`, `MultiValueTween:setTarget`, `MultiValueTween:tweenValue`

## gui/base/NavigationMarker.lua

`NavigationMarker:render`

## gui/base/Overlay.lua

`Overlay.new`, `Overlay:delete`, `Overlay:getIsVisible`, `Overlay:getPosition`, `Overlay:getScale`, `Overlay:render`, `Overlay:resetDimensions`, `Overlay:setAlignment`, `Overlay:setColor`, `Overlay:setDimension`, `Overlay:setImage`, `Overlay:setInvertX`, `Overlay:setIsVisible`, `Overlay:setPosition`, `Overlay:setRotation`, `Overlay:setScale`, `Overlay:setSliceId`, `Overlay:setUVs`

## gui/base/OverlayManager.lua

`OverlayManager:addTextureConfigFile`, `OverlayManager:createOverlay`, `OverlayManager:getConfigMetaData`, `OverlayManager:getSliceInfoById`

## gui/base/PlaySampleMixin.lua

`PlaySampleMixin.disablePlaySample`, `PlaySampleMixin.new`, `PlaySampleMixin.playSample`, `PlaySampleMixin.setPlaySampleCallback`, `PlaySampleMixin:addTo`, `PlaySampleMixin:clone`

## gui/base/RoundStatusBar.lua

`RoundStatusBar.new`, `RoundStatusBar:delete`, `RoundStatusBar:render`, `RoundStatusBar:setPosition`, `RoundStatusBar:setValue`

## gui/base/SettingsModel.lua

`SettingsModel.new`, `SettingsModel:addCloudShadowsQualitySetting`, `SettingsModel:addFoliageDrawDistanceSetting`, `SettingsModel:addFoliageLODDistanceSetting`, `SettingsModel:addFoliageShadowSetting`, `SettingsModel:addLODDistanceSetting`, `SettingsModel:addManagedSettings`, `SettingsModel:addMaxTireTracksSetting`, `SettingsModel:addObjectDrawDistanceSetting`, `SettingsModel:addSSAOQualitySetting`, `SettingsModel:addSetting`, `SettingsModel:addShaderQualitySetting`, `SettingsModel:addShadingRateQualitySetting`, `SettingsModel:addShadowDistanceQualitySetting`, `SettingsModel:addShadowMapFilteringSetting`, `SettingsModel:addShadowMaxLightsSetting`, `SettingsModel:addShadowQualitySetting`, `SettingsModel:addSoftShadowsSetting`, `SettingsModel:addTerrainLODDistanceSetting`, `SettingsModel:addTerrainQualitySetting`, `SettingsModel:addTextureResolutionSetting`, `SettingsModel:addVolumeMeshTessellationSetting`, `SettingsModel:applyChanges`, `SettingsModel:applyCustomSettings`, `SettingsModel:applyPerformanceClass`, `SettingsModel:createControlDisplayValues`, `SettingsModel:getAreaUnitTexts`, `SettingsModel:getAudioVolumeTexts`, `SettingsModel:getBrightnessTexts`, `SettingsModel:getCameraSensitivityTexts`, `SettingsModel:getCurrentDeviceName`, `SettingsModel:getCurrentDeviceSensitivityValue`, `SettingsModel:getDRSTargetFPSTexts`, `SettingsModel:getDeadzoneTexts`, `SettingsModel:getDeviceAxisDeadzoneValue`, `SettingsModel:getDeviceAxisSensitivityValue`, `SettingsModel:getDeviceHasAxisDeadzone`, `SettingsModel:getDeviceHasAxisSensitivity`, `SettingsModel:getDirectionChangeModeTexts`, `SettingsModel:getDistanceUnitTexts`, `SettingsModel:getFidelityFxSR30FrameInterpolationTexts`, `SettingsModel:getFoliageDrawDistanceTexts`, `SettingsModel:getFoliageLODDistanceTexts`, `SettingsModel:getForceFeedbackTexts`, `SettingsModel:getFovYTexts`, `SettingsModel:getFrameLimitTexts`, `SettingsModel:getFullscreenModeTexts`, `SettingsModel:getGearShiftModeTexts`, `SettingsModel:getHDRContrastTexts`, `SettingsModel:getHDRPeakBrightnessTexts`, `SettingsModel:getHeadTrackingSensitivityTexts`, `SettingsModel:getHeadTrackingSensitivityValue`, `SettingsModel:getHudSpeedGaugeTexts`, `SettingsModel:getInputHelpModeTexts`, `SettingsModel:getIsDeviceMouse`, `SettingsModel:getIsLanguageDisabled`, `SettingsModel:getLODDistanceTexts`, `SettingsModel:getLanguageTexts`, `SettingsModel:getLightsProfileTexts`, `SettingsModel:getMPLanguageTexts`, `SettingsModel:getMaxMirrorsTexts`, `SettingsModel:getMaxTireTracksTexts`, `SettingsModel:getMoneyUnitTexts`, `SettingsModel:getMouseSensitivityValue`, `SettingsModel:getNumDevices`, `SettingsModel:getObjectDrawDistanceTexts`, `SettingsModel:getOverlayBrightnessTexts`, `SettingsModel:getPerformanceClassTexts`, `SettingsModel:getPostProcessAAToolTip`, `SettingsModel:getRadioModeTexts`, `SettingsModel:getRealBeaconLightBrightnessTexts`, `SettingsModel:getRecordingVolumeTexts`, `SettingsModel:getResolutionScale3dTexts`, `SettingsModel:getResolutionScaleTexts`, `SettingsModel:getResolutionTexts`, `SettingsModel:getSSAOQualityTexts`, `SettingsModel:getSensitivityTexts`, `SettingsModel:getShaderQualityTexts`, `SettingsModel:getShadingRateQualityTexts`, `SettingsModel:getShadowDistanceQualityTexts`, `SettingsModel:getShadowMapFilteringTexts`, `SettingsModel:getShadowMapLightsTexts`, `SettingsModel:getShadowQualityTexts`, `SettingsModel:getSoftShadowsTexts`, `SettingsModel:getSteeringBackSpeedTexts`, `SettingsModel:getTemperatureUnitTexts`, `SettingsModel:getTerrainLODDistanceTexts`, `SettingsModel:getTerraingQualityTexts`, `SettingsModel:getTextureResolutionTexts`, `SettingsModel:getUiScaleTexts`, `SettingsModel:getValue`, `SettingsModel:getVehicleArmSensitivityTexts`, `SettingsModel:getVoiceInputSensitivityTexts`, `SettingsModel:getVoiceModeTexts`, `SettingsModel:getVolumeMeshTessalationTexts`, `SettingsModel:hasChanges`, `SettingsModel:hasDeviceChanges`, `SettingsModel:initDeviceSettings`, `SettingsModel:initialize`, `SettingsModel:needsProcessRestartToApplyChanges`, `SettingsModel:needsRestartToApplyChanges`, `SettingsModel:nextDevice`, `SettingsModel:refresh`, `SettingsModel:refreshChangedValue`, `SettingsModel:reset`, `SettingsModel:resetDeviceChanges`, `SettingsModel:saveChanges`, `SettingsModel:saveDeviceChanges`, `SettingsModel:setDeviceDeadzoneValue`, `SettingsModel:setDeviceSensitivityValue`, `SettingsModel:setHeadTrackingSensitivity`, `SettingsModel:setMouseSensitivity`, `SettingsModel:setValue`

## gui/base/StatusBar.lua

`StatusBar.new`, `StatusBar:delete`, `StatusBar:render`, `StatusBar:setColor`, `StatusBar:setDisabled`, `StatusBar:setPosition`, `StatusBar:setValue`

## gui/base/TabbedMenu.lua

`TabbedMenu.new`, `TabbedMenu:addPage`, `TabbedMenu:addPageTab`, `TabbedMenu:assignMenuButtonInfo`, `TabbedMenu:clearMenuButtonActions`, `TabbedMenu:delete`, `TabbedMenu:exitMenu`, `TabbedMenu:getPageButtonInfo`, `TabbedMenu:goToPage`, `TabbedMenu:makeSelfCallback`, `TabbedMenu:onButtonBack`, `TabbedMenu:onClickActivate`, `TabbedMenu:onClickBack`, `TabbedMenu:onClickCancel`, `TabbedMenu:onClickMenuExtra1`, `TabbedMenu:onClickMenuExtra2`, `TabbedMenu:onClickOk`, `TabbedMenu:onClickPageSelection`, `TabbedMenu:onClose`, `TabbedMenu:onGuiSetupFinished`, `TabbedMenu:onMenuActionClick`, `TabbedMenu:onMenuOpened`, `TabbedMenu:onOpen`, `TabbedMenu:onPageChange`, `TabbedMenu:onPageClicked`, `TabbedMenu:onPageNext`, `TabbedMenu:onPagePrevious`, `TabbedMenu:onPageUpdate`, `TabbedMenu:rebuildTabList`, `TabbedMenu:registerPage`, `TabbedMenu:removePage`, `TabbedMenu:reset`, `TabbedMenu:setPageEnabled`, `TabbedMenu:setPageSelectorTitles`, `TabbedMenu:setPageTabEnabled`, `TabbedMenu:setupMenuButtonInfo`, `TabbedMenu:unregisterPage`, `TabbedMenu:update`, `TabbedMenu:updateButtonsPanel`, `TabbedMenu:updatePages`, `TabbedMenu:updatePagingVisibility`

## gui/base/TabbedMenuWithDetails.lua

`TabbedMenuWithDetails.new`, `TabbedMenuWithDetails:exitMenu`, `TabbedMenuWithDetails:getBreadcrumbs`, `TabbedMenuWithDetails:getIsDetailMode`, `TabbedMenuWithDetails:getStack`, `TabbedMenuWithDetails:getTopFrame`, `TabbedMenuWithDetails:isAtRoot`, `TabbedMenuWithDetails:onButtonBack`, `TabbedMenuWithDetails:onDetailClosed`, `TabbedMenuWithDetails:onDetailOpened`, `TabbedMenuWithDetails:onOpen`, `TabbedMenuWithDetails:onPageChange`, `TabbedMenuWithDetails:onPageClicked`, `TabbedMenuWithDetails:popDetail`, `TabbedMenuWithDetails:popToRoot`, `TabbedMenuWithDetails:pushDetail`, `TabbedMenuWithDetails:replaceDetail`, `TabbedMenuWithDetails:reset`, `TabbedMenuWithDetails:setPageDisabled`

## gui/base/ThreePartOverlay.lua

`ThreePartOverlay.new`

## gui/base/Tween.lua

`Tween.new`, `Tween:applyValue`, `Tween:getDuration`, `Tween:getFinished`, `Tween:reset`, `Tween:setCurve`, `Tween:setTarget`, `Tween:tweenValue`, `Tween:update`

## gui/base/TweenSequence.lua

`TweenSequence.new`, `TweenSequence:addCallback`, `TweenSequence:addInterval`, `TweenSequence:addTween`, `TweenSequence:getDuration`, `TweenSequence:insertCallback`, `TweenSequence:insertInterval`, `TweenSequence:insertTween`, `TweenSequence:reset`, `TweenSequence:setLooping`, `TweenSequence:setTarget`, `TweenSequence:start`, `TweenSequence:stop`, `TweenSequence:update`, `TweenSequence:updateCallbacks`, `TweenSequence:updateTweens`

## gui/dialogs/ColorPickerDialog.lua

`ColorPickerDialog.show`, `ColorPickerDialog:onHorizontalCursorInput`, `ColorPickerDialog:onVerticalCursorInput`

## gui/dialogs/InfoDialog.lua

`InfoDialog:inputEvent`

## gui/dialogs/TourDialog.lua

`TourDialog:inputEvent`

## gui/dialogs/YesNoDialog.lua

`YesNoDialog:inputEvent`

## gui/elements/AnimationElement.lua

`AnimationElement.new`, `AnimationElement:copyAttributes`, `AnimationElement:loadFromXML`, `AnimationElement:loadProfile`, `AnimationElement:setAnimationData`, `AnimationElement:update`, `AnimationElement:updateAnimationUVs`, `AnimationElement:updateRotation`

## gui/elements/BinaryOptionElement.lua

`BinaryOptionElement.new`, `BinaryOptionElement:addDefaultElements`, `BinaryOptionElement:copyAttributes`, `BinaryOptionElement:getIsActiveNonRec`, `BinaryOptionElement:getIsChecked`, `BinaryOptionElement:inputLeft`, `BinaryOptionElement:inputRight`, `BinaryOptionElement:loadFromXML`, `BinaryOptionElement:loadProfile`, `BinaryOptionElement:onGuiSetupFinished`, `BinaryOptionElement:onLeftButtonClicked`, `BinaryOptionElement:onRightButtonClicked`, `BinaryOptionElement:setElementsByName`, `BinaryOptionElement:setIsChecked`, `BinaryOptionElement:setState`, `BinaryOptionElement:setTexts`, `BinaryOptionElement:update`, `BinaryOptionElement:updateSelection`

## gui/elements/BitmapElement.lua

`BitmapElement.new`, `BitmapElement:canReceiveFocus`, `BitmapElement:copyAttributes`, `BitmapElement:delete`, `BitmapElement:draw`, `BitmapElement:getFocusTarget`, `BitmapElement:getOffset`, `BitmapElement:getOverlayMaskData`, `BitmapElement:loadFromXML`, `BitmapElement:loadProfile`, `BitmapElement:setAlpha`, `BitmapElement:setImageColor`, `BitmapElement:setImageFilename`, `BitmapElement:setImageRotation`, `BitmapElement:setImageSlice`, `BitmapElement:setImageUVs`, `BitmapElement:setIsWebOverlay`

## gui/elements/BoxLayoutElement.lua

`BoxLayoutElement.new`, `BoxLayoutElement:addElement`, `BoxLayoutElement:applyCellPositions`, `BoxLayoutElement:canReceiveFocus`, `BoxLayoutElement:copyAttributes`, `BoxLayoutElement:focusLinkCells`, `BoxLayoutElement:getIsElementIncluded`, `BoxLayoutElement:loadFromXML`, `BoxLayoutElement:loadProfile`, `BoxLayoutElement:onFocusLeave`, `BoxLayoutElement:onGuiSetupFinished`, `BoxLayoutElement:removeElement`, `BoxLayoutElement:updateAbsolutePosition`, `BoxLayoutElement:updateLayoutCells`

## gui/elements/BreadcrumbsElement.lua

`BreadcrumbsElement.new`, `BreadcrumbsElement:copyAttributes`, `BreadcrumbsElement:delete`, `BreadcrumbsElement:onGuiSetupFinished`

## gui/elements/ButtonElement.lua

`ButtonElement.new`, `ButtonElement:canReceiveFocus`, `ButtonElement:copyAttributes`, `ButtonElement:delete`, `ButtonElement:draw`, `ButtonElement:getIconModifiedTextOffset`, `ButtonElement:getIconOffset`, `ButtonElement:getIconSize`, `ButtonElement:getIsActive`, `ButtonElement:getIsPressed`, `ButtonElement:getOverlayState`, `ButtonElement:getText2Offset`, `ButtonElement:getTextOffset`, `ButtonElement:keyEvent`, `ButtonElement:loadFromXML`, `ButtonElement:loadInputGlyphColors`, `ButtonElement:loadProfile`, `ButtonElement:mouseEvent`, `ButtonElement:onClose`, `ButtonElement:onFocusActivate`, `ButtonElement:onFocusEnter`, `ButtonElement:onFocusLeave`, `ButtonElement:onHighlight`, `ButtonElement:onHighlightRemove`, `ButtonElement:onOpen`, `ButtonElement:reset`, `ButtonElement:setAlpha`, `ButtonElement:setClickSound`, `ButtonElement:setDisabled`, `ButtonElement:setIconSize`, `ButtonElement:setImageFilename`, `ButtonElement:setImageSlice`, `ButtonElement:setImageUVs`, `ButtonElement:setInputAction`, `ButtonElement:setInputMode`, `ButtonElement:setText`, `ButtonElement:setTextSize`, `ButtonElement:touchEvent`, `ButtonElement:updateSize`

## gui/elements/CheckedOptionElement.lua

`CheckedOptionElement.new`, `CheckedOptionElement:addElement`, `CheckedOptionElement:getIsChecked`, `CheckedOptionElement:setIsChecked`

## gui/elements/ClearElement.lua

`ClearElement.new`, `ClearElement:canReceiveFocus`, `ClearElement:copyAttributes`, `ClearElement:delete`, `ClearElement:draw`, `ClearElement:getFocusTarget`, `ClearElement:getOffset`, `ClearElement:loadFromXML`, `ClearElement:loadProfile`, `ClearElement:setImageRotation`

## gui/elements/ColorPickButtonElement.lua

`ColorPickButtonElement.new`, `ColorPickButtonElement:copyAttributes`, `ColorPickButtonElement:delete`, `ColorPickButtonElement:draw`, `ColorPickButtonElement:loadFromXML`, `ColorPickButtonElement:loadProfile`, `ColorPickButtonElement:onGuiSetupFinished`

## gui/elements/DialogElement.lua

`DialogElement.new`, `DialogElement:close`, `DialogElement:onClickBack`, `DialogElement:setDialogType`, `DialogElement:setIsCloseAllowed`

## gui/elements/DynamicFadedBitmapElement.lua

`DynamicFadedBitmapElement.new`, `DynamicFadedBitmapElement:canReceiveFocus`, `DynamicFadedBitmapElement:copyAttributes`, `DynamicFadedBitmapElement:delete`, `DynamicFadedBitmapElement:draw`, `DynamicFadedBitmapElement:getFocusTarget`, `DynamicFadedBitmapElement:loadFromXML`, `DynamicFadedBitmapElement:loadProfile`, `DynamicFadedBitmapElement:setAlpha`, `DynamicFadedBitmapElement:setImageFilenames`, `DynamicFadedBitmapElement:setImagesUVs`

## gui/elements/FrameElement.lua

`FrameElement.new`, `FrameElement:changeScreen`, `FrameElement:clone`, `FrameElement:copyAttributes`, `FrameElement:delete`, `FrameElement:disableInputForDuration`, `FrameElement:exposeControlsAsFields`, `FrameElement:getRootElement`, `FrameElement:isInputDisabled`, `FrameElement:playSample`, `FrameElement:setChangeScreenCallback`, `FrameElement:setInputContextCallback`, `FrameElement:setPlaySampleCallback`, `FrameElement:toggleCustomInputContext`, `FrameElement:update`

## gui/elements/FrameReferenceElement.lua

`FrameReferenceElement.new`, `FrameReferenceElement:copyAttributes`, `FrameReferenceElement:loadFromXML`

## gui/elements/GuiElement.lua

`GuiElement.extractIndexAndNameFromID`, `GuiElement.new`, `GuiElement:addCallback`, `GuiElement:addElement`, `GuiElement:applyProfile`, `GuiElement:canReceiveFocus`, `GuiElement:clone`, `GuiElement:copyAttributes`, `GuiElement:cutFrameBordersHorizontal`, `GuiElement:cutFrameBordersVertical`, `GuiElement:delete`, `GuiElement:draw`, `GuiElement:fadeIn`, `GuiElement:fadeOut`, `GuiElement:findDescendantsRec`, `GuiElement:fixThinLines`, `GuiElement:getAspectScale`, `GuiElement:getBorders`, `GuiElement:getCenter`, `GuiElement:getClipArea`, `GuiElement:getDescendantById`, `GuiElement:getDescendantByName`, `GuiElement:getDescendants`, `GuiElement:getFirstDescendant`, `GuiElement:getFocusTarget`, `GuiElement:getHandleFocus`, `GuiElement:getIsActive`, `GuiElement:getIsActiveNonRec`, `GuiElement:getIsDisabled`, `GuiElement:getIsFocused`, `GuiElement:getIsHighlighted`, `GuiElement:getIsSelected`, `GuiElement:getIsVisible`, `GuiElement:getIsVisibleNonRec`, `GuiElement:getOriginalBorders`, `GuiElement:getOverlayState`, `GuiElement:getParentBorders`, `GuiElement:getParentOriginalBorders`, `GuiElement:getSoundSuppressed`, `GuiElement:include`, `GuiElement:inputEvent`, `GuiElement:isChildOf`, `GuiElement:keyEvent`, `GuiElement:loadFromXML`, `GuiElement:loadProfile`, `GuiElement:mouseEvent`, `GuiElement:move`, `GuiElement:onClose`, `GuiElement:onFocusActivate`, `GuiElement:onFocusEnter`, `GuiElement:onFocusLeave`, `GuiElement:onGuiSetupFinished`, `GuiElement:onHighlight`, `GuiElement:onHighlightRemove`, `GuiElement:onOpen`, `GuiElement:raiseCallback`, `GuiElement:removeElement`, `GuiElement:reset`, `GuiElement:resolveSizeString`, `GuiElement:setAbsolutePosition`, `GuiElement:setAlpha`, `GuiElement:setDisabled`, `GuiElement:setFocused`, `GuiElement:setHandleFocus`, `GuiElement:setId`, `GuiElement:setPosition`, `GuiElement:setSelected`, `GuiElement:setSize`, `GuiElement:setSoundSuppressed`, `GuiElement:setVisible`, `GuiElement:shouldFocusChange`, `GuiElement:toString`, `GuiElement:toggleFrameSide`, `GuiElement:touchEvent`, `GuiElement:unlinkElement`, `GuiElement:update`, `GuiElement:updateAbsolutePosition`, `GuiElement:updateFramePosition`

## gui/elements/IndexStateElement.lua

`IndexStateElement.new`, `IndexStateElement:copyAttributes`, `IndexStateElement:loadFromXML`, `IndexStateElement:loadProfile`, `IndexStateElement:locateIndexableElement`, `IndexStateElement:locateStateElementTemplate`, `IndexStateElement:onGuiSetupFinished`, `IndexStateElement:onIndexChange`, `IndexStateElement:setPageCount`

## gui/elements/IngameMapElement.lua

`IngameMapElement.new`, `IngameMapElement:addCursorDeadzone`, `IngameMapElement:checkAndResetMouse`, `IngameMapElement:clearCursorDeadzones`, `IngameMapElement:copyAttributes`, `IngameMapElement:delete`, `IngameMapElement:draw`, `IngameMapElement:getLocalPointerTarget`, `IngameMapElement:getLocalPosition`, `IngameMapElement:isInputInDeadzones`, `IngameMapElement:isPointVisible`, `IngameMapElement:loadFromXML`, `IngameMapElement:loadProfile`, `IngameMapElement:localToWorldPos`, `IngameMapElement:mouseEvent`, `IngameMapElement:moveCenter`, `IngameMapElement:onAccept`, `IngameMapElement:onClickMap`, `IngameMapElement:onClose`, `IngameMapElement:onGuiSetupFinished`, `IngameMapElement:onHorizontalCursorInput`, `IngameMapElement:onOpen`, `IngameMapElement:onPinchEvent`, `IngameMapElement:onVerticalCursorInput`, `IngameMapElement:onZoomInput`, `IngameMapElement:panToHotspot`, `IngameMapElement:registerActionEvents`, `IngameMapElement:removeActionEvents`, `IngameMapElement:reset`, `IngameMapElement:resetFrameInputState`, `IngameMapElement:selectHotspotAt`, `IngameMapElement:selectHotspotFrom`, `IngameMapElement:setIngameMap`, `IngameMapElement:setTerrainSize`, `IngameMapElement:touchEvent`, `IngameMapElement:update`, `IngameMapElement:updateCursor`, `IngameMapElement:zoom`

## gui/elements/IngameMapPreviewElement.lua

`IngameMapPreviewElement:onClose`

## gui/elements/InputGlyphElementUI.lua

`InputGlyphElementUI.new`, `InputGlyphElementUI:copyAttributes`, `InputGlyphElementUI:delete`, `InputGlyphElementUI:draw`, `InputGlyphElementUI:loadFromXML`, `InputGlyphElementUI:loadProfile`, `InputGlyphElementUI:setActions`

## gui/elements/ListItemElement.lua

`ListItemElement.new`, `ListItemElement:copyAttributes`, `ListItemElement:getFocusTarget`, `ListItemElement:loadFromXML`, `ListItemElement:loadProfile`, `ListItemElement:mouseEvent`, `ListItemElement:onClose`, `ListItemElement:setSelected`, `ListItemElement:touchEvent`

## gui/elements/MultiOptionElement.lua

`MultiOptionElement.new`, `MultiOptionElement:copyAttributes`, `MultiOptionElement:getState`, `MultiOptionElement:loadFromXML`, `MultiOptionElement:loadProfile`, `MultiOptionElement:setState`

## gui/elements/MultiTextOptionElement.lua

`MultiTextOptionElement.new`, `MultiTextOptionElement:addDefaultElements`, `MultiTextOptionElement:addText`, `MultiTextOptionElement:canReceiveFocus`, `MultiTextOptionElement:clone`, `MultiTextOptionElement:copyAttributes`, `MultiTextOptionElement:disableButtonSounds`, `MultiTextOptionElement:getCanChangeState`, `MultiTextOptionElement:getState`, `MultiTextOptionElement:inputEvent`, `MultiTextOptionElement:loadFromXML`, `MultiTextOptionElement:loadProfile`, `MultiTextOptionElement:mouseEvent`, `MultiTextOptionElement:onFocusEnter`, `MultiTextOptionElement:onFocusLeave`, `MultiTextOptionElement:onGuiSetupFinished`, `MultiTextOptionElement:onLeftButtonClicked`, `MultiTextOptionElement:onRightButtonClicked`, `MultiTextOptionElement:setCanChangeState`, `MultiTextOptionElement:setElementsByName`, `MultiTextOptionElement:setIcons`, `MultiTextOptionElement:setLabel`, `MultiTextOptionElement:setState`, `MultiTextOptionElement:setTexts`, `MultiTextOptionElement:touchEvent`, `MultiTextOptionElement:update`, `MultiTextOptionElement:updateContentElement`

## gui/elements/OptionSliderElement.lua

`OptionSliderElement.new`, `OptionSliderElement:addDefaultElements`, `OptionSliderElement:copyAttributes`, `OptionSliderElement:loadFromXML`, `OptionSliderElement:loadProfile`, `OptionSliderElement:mouseEvent`, `OptionSliderElement:onOpen`, `OptionSliderElement:setElementsByName`, `OptionSliderElement:touchEvent`, `OptionSliderElement:updateAbsolutePosition`, `OptionSliderElement:updateContentElement`, `OptionSliderElement:updateSlider`

## gui/elements/OptionToggleElement.lua

`OptionToggleElement.new`

## gui/elements/PagingElement.lua

`PagingElement.new`, `PagingElement:addElement`, `PagingElement:copyAttributes`, `PagingElement:getCurrentPageId`, `PagingElement:getIsPageDisabled`, `PagingElement:getPageById`, `PagingElement:getPageMappingIndex`, `PagingElement:loadFromXML`, `PagingElement:onGuiSetupFinished`, `PagingElement:removeElement`, `PagingElement:setPageDisabled`, `PagingElement:updatePageMapping`

## gui/elements/PictureElement.lua

`PictureElement.new`, `PictureElement:copyAttributes`, `PictureElement:draw`, `PictureElement:loadFromXML`, `PictureElement:loadProfile`

## gui/elements/PlatformIconElement.lua

`PlatformIconElement.new`, `PlatformIconElement:copyAttributes`, `PlatformIconElement:delete`, `PlatformIconElement:setPlatformId`

## gui/elements/RenderElement.lua

`RenderElement.new`, `RenderElement:canReceiveFocus`, `RenderElement:copyAttributes`, `RenderElement:createOverlay`, `RenderElement:createScene`, `RenderElement:delete`, `RenderElement:destroyScene`, `RenderElement:draw`, `RenderElement:getSceneRoot`, `RenderElement:loadFromXML`, `RenderElement:loadProfile`, `RenderElement:onSceneLoaded`, `RenderElement:setRenderDirty`, `RenderElement:setScene`, `RenderElement:update`

## gui/elements/RoundCornerElement.lua

`RoundCornerElement.new`, `RoundCornerElement:copyAttributes`, `RoundCornerElement:draw`, `RoundCornerElement:getColor`, `RoundCornerElement:loadFromXML`, `RoundCornerElement:loadProfile`

## gui/elements/SafeFrameElement.lua

`SafeFrameElement.new`, `SafeFrameElement:draw`

## gui/elements/ScreenElement.lua

`ScreenElement.new`, `ScreenElement:canReceiveFocus`, `ScreenElement:getIsOpen`, `ScreenElement:initializeScreen`, `ScreenElement:inputEvent`, `ScreenElement:invalidateScreen`, `ScreenElement:onClose`, `ScreenElement:onOpen`, `ScreenElement:setNextScreenClickSoundMuted`, `ScreenElement:setReturnScreenClass`

## gui/elements/ScrollingLayoutElement.lua

`ScrollingLayoutElement.new`, `ScrollingLayoutElement:copyAttributes`, `ScrollingLayoutElement:invalidateLayout`, `ScrollingLayoutElement:loadFromXML`, `ScrollingLayoutElement:onGuiSetupFinished`, `ScrollingLayoutElement:onSliderValueChanged`, `ScrollingLayoutElement:onVerticalCursorInput`, `ScrollingLayoutElement:raiseSliderUpdateEvent`, `ScrollingLayoutElement:removeActionEvents`, `ScrollingLayoutElement:removeElement`, `ScrollingLayoutElement:scrollTo`

## gui/elements/SliderElement.lua

`SliderElement.new`, `SliderElement:addElement`, `SliderElement:callOnChanged`, `SliderElement:canReceiveFocus`, `SliderElement:copyAttributes`, `SliderElement:delete`, `SliderElement:draw`, `SliderElement:getMaxValue`, `SliderElement:getMinValue`, `SliderElement:getValue`, `SliderElement:keyEvent`, `SliderElement:loadFromXML`, `SliderElement:loadProfile`, `SliderElement:mouseEvent`, `SliderElement:onBindUpdate`, `SliderElement:onFocusActivate`, `SliderElement:onGuiSetupFinished`, `SliderElement:onScrollDown`, `SliderElement:onScrollUp`, `SliderElement:setAlpha`, `SliderElement:setDataElement`, `SliderElement:setMaxValue`, `SliderElement:setMinValue`, `SliderElement:setSize`, `SliderElement:setSliderSize`, `SliderElement:setSliderVisible`, `SliderElement:setValue`, `SliderElement:updateAbsolutePosition`, `SliderElement:updateSliderButtons`, `SliderElement:updateSliderLimits`, `SliderElement:updateSliderPosition`

## gui/elements/SmoothListElement.lua

`SmoothListElement.new`, `SmoothListElement:activateInput`, `SmoothListElement:applyElementSelection`, `SmoothListElement:buildCellDatabase`, `SmoothListElement:buildSectionInfo`, `SmoothListElement:canReceiveFocus`, `SmoothListElement:clearElementSelection`, `SmoothListElement:clone`, `SmoothListElement:copyAttributes`, `SmoothListElement:delete`, `SmoothListElement:dequeueReusableCell`, `SmoothListElement:getElementAtSectionIndex`, `SmoothListElement:getItemCount`, `SmoothListElement:getLengthOfItemFast`, `SmoothListElement:getSelectedIndexInSection`, `SmoothListElement:getSelectedPath`, `SmoothListElement:getWidthOfItemFast`, `SmoothListElement:iterateOverDatabase`, `SmoothListElement:loadFromXML`, `SmoothListElement:loadProfile`, `SmoothListElement:mouseEvent`, `SmoothListElement:notifyClick`, `SmoothListElement:notifyDoubleClick`, `SmoothListElement:onClose`, `SmoothListElement:onFocusActivate`, `SmoothListElement:onFocusEnter`, `SmoothListElement:onFocusLeave`, `SmoothListElement:onGuiSetupFinished`, `SmoothListElement:onInputDown`, `SmoothListElement:onInputUp`, `SmoothListElement:onOpen`, `SmoothListElement:queueReusableCell`, `SmoothListElement:reloadData`, `SmoothListElement:reloadSection`, `SmoothListElement:scrollToEnd`, `SmoothListElement:scrollToEndGamepad`, `SmoothListElement:scrollToNextPage`, `SmoothListElement:scrollToPrevPage`, `SmoothListElement:scrollToStart`, `SmoothListElement:scrollToStartGamepad`, `SmoothListElement:setDataSource`, `SmoothListElement:setDelegate`, `SmoothListElement:setTarget`, `SmoothListElement:smoothScrollTo`, `SmoothListElement:touchEvent`, `SmoothListElement:updateView`

## gui/elements/TabbedMenuFrameElement.lua

`TabbedMenuFrameElement.new`, `TabbedMenuFrameElement:clearMenuButtonInfoDirty`, `TabbedMenuFrameElement:getHasCustomMenuButtons`, `TabbedMenuFrameElement:getMainElementPosition`, `TabbedMenuFrameElement:getMainElementSize`, `TabbedMenuFrameElement:getMenuButtonInfo`, `TabbedMenuFrameElement:initialize`, `TabbedMenuFrameElement:isMenuButtonInfoDirty`, `TabbedMenuFrameElement:onFrameClose`, `TabbedMenuFrameElement:onFrameOpen`, `TabbedMenuFrameElement:requestClose`, `TabbedMenuFrameElement:setMenuButtonInfo`, `TabbedMenuFrameElement:setMenuButtonInfoDirty`, `TabbedMenuFrameElement:setTitle`

## gui/elements/TableHeaderElement.lua

`TableHeaderElement.new`, `TableHeaderElement:copyAttributes`, `TableHeaderElement:disableSorting`, `TableHeaderElement:loadFromXML`, `TableHeaderElement:loadProfile`, `TableHeaderElement:onGuiSetupFinished`, `TableHeaderElement:toggleSorting`, `TableHeaderElement:updateSortingDisplay`

## gui/elements/TerrainLayerElement.lua

`TerrainLayerElement.new`, `TerrainLayerElement:canReceiveFocus`, `TerrainLayerElement:copyAttributes`, `TerrainLayerElement:delete`, `TerrainLayerElement:draw`, `TerrainLayerElement:getFocusTarget`, `TerrainLayerElement:setTerrainLayer`

## gui/elements/TextBackdropElement.lua

`TextBackdropElement.new`, `TextBackdropElement:copyAttributes`, `TextBackdropElement:loadFromXML`, `TextBackdropElement:loadProfile`

## gui/elements/TextElement.lua

`TextElement.new`, `TextElement:copyAttributes`, `TextElement:delete`, `TextElement:draw`, `TextElement:getDoRenderText`, `TextElement:getIsScrollingAllowed`, `TextElement:getText`, `TextElement:getText2Color`, `TextElement:getText2Offset`, `TextElement:getTextColor`, `TextElement:getTextHeight`, `TextElement:getTextLayoutMode`, `TextElement:getTextOffset`, `TextElement:getTextPositionX`, `TextElement:getTextPositionY`, `TextElement:getTextWidth`, `TextElement:getValue`, `TextElement:loadFromXML`, `TextElement:loadProfile`, `TextElement:setAbsolutePosition`, `TextElement:setDisabled`, `TextElement:setFormat`, `TextElement:setLocaKey`, `TextElement:setText`, `TextElement:setText2Color`, `TextElement:setText2FocusedColor`, `TextElement:setText2HighlightedColor`, `TextElement:setText2SelectedColor`, `TextElement:setTextColor`, `TextElement:setTextFocusedColor`, `TextElement:setTextFocusedSelectedColor`, `TextElement:setTextHighlightedColor`, `TextElement:setTextHighlightedSelectedColor`, `TextElement:setTextInternal`, `TextElement:setTextSelectedColor`, `TextElement:setTextSize`, `TextElement:setValue`, `TextElement:update`, `TextElement:updateAbsolutePosition`, `TextElement:updateFormattedText`, `TextElement:updateScaledWidth`, `TextElement:updateScrollingLayoutMode`, `TextElement:updateScrollingParameters`, `TextElement:updateSize`

## gui/elements/TextInputElement.lua

`TextInputElement.limitTextToAvailableWidth`, `TextInputElement.new`, `TextInputElement:abortIme`, `TextInputElement:copyAttributes`, `TextInputElement:delete`, `TextInputElement:deleteText`, `TextInputElement:draw`, `TextInputElement:drawCursor`, `TextInputElement:drawTextPart`, `TextInputElement:finalize`, `TextInputElement:getAvailableTextWidth`, `TextInputElement:getDoRenderText`, `TextInputElement:getIsActive`, `TextInputElement:getIsUnicodeAllowed`, `TextInputElement:getNeededTextWidth`, `TextInputElement:getText`, `TextInputElement:inputEvent`, `TextInputElement:keyEvent`, `TextInputElement:loadFromXML`, `TextInputElement:loadProfile`, `TextInputElement:mouseEvent`, `TextInputElement:moveCursorLeft`, `TextInputElement:moveCursorRight`, `TextInputElement:onClose`, `TextInputElement:onFocusActivate`, `TextInputElement:onFocusLeave`, `TextInputElement:openIme`, `TextInputElement:reset`, `TextInputElement:setAlpha`, `TextInputElement:setCaptureInput`, `TextInputElement:setCursorPosition`, `TextInputElement:setForcePressed`, `TextInputElement:setText`, `TextInputElement:shouldFocusChange`, `TextInputElement:stopSpecialKeyRepeating`, `TextInputElement:translate`, `TextInputElement:update`, `TextInputElement:updateVisibleTextElements`

## gui/elements/ThreePartBitmapElement.lua

`ThreePartBitmapElement.new`, `ThreePartBitmapElement:copyAttributes`, `ThreePartBitmapElement:delete`, `ThreePartBitmapElement:draw`, `ThreePartBitmapElement:loadFromXML`, `ThreePartBitmapElement:loadProfile`, `ThreePartBitmapElement:setImageColor`

## gui/elements/TimerElement.lua

`TimerElement.new`, `TimerElement:copyAttributes`, `TimerElement:delete`, `TimerElement:draw`, `TimerElement:loadFromXML`, `TimerElement:loadProfile`, `TimerElement:setValue`, `TimerElement:updateUVs`

## gui/elements/ToggleButtonElement.lua

`ToggleButtonElement.new`, `ToggleButtonElement:addElement`, `ToggleButtonElement:canReceiveFocus`, `ToggleButtonElement:copyAttributes`, `ToggleButtonElement:getFocusTarget`, `ToggleButtonElement:loadFromXML`, `ToggleButtonElement:loadProfile`, `ToggleButtonElement:mouseEvent`, `ToggleButtonElement:onButtonClicked`, `ToggleButtonElement:onFocusActivate`, `ToggleButtonElement:onFocusEnter`, `ToggleButtonElement:onFocusLeave`, `ToggleButtonElement:setIsChecked`

## gui/elements/VideoElement.lua

`VideoElement.new`, `VideoElement:changeVideo`, `VideoElement:copyAttributes`, `VideoElement:delete`, `VideoElement:disposeVideo`, `VideoElement:draw`, `VideoElement:getIsActive`, `VideoElement:keyEvent`, `VideoElement:loadFromXML`, `VideoElement:loadProfile`, `VideoElement:loadSubtitles`, `VideoElement:mouseEvent`, `VideoElement:onEndVideo`, `VideoElement:playVideo`, `VideoElement:stopVideo`, `VideoElement:update`

## gui/hud/AchievementMessage.lua

`AchievementMessage.new`, `AchievementMessage:storeScaledValues`

## gui/hud/ChatDisplay.lua

`ChatDisplay.new`, `ChatDisplay:scrollChatMessages`, `ChatDisplay:storeScaledValues`

## gui/hud/ContextActionDisplay.lua

`ContextActionDisplay.new`, `ContextActionDisplay:draw`, `ContextActionDisplay:resetContext`, `ContextActionDisplay:setContext`, `ContextActionDisplay:storeScaledValues`, `ContextActionDisplay:update`

## gui/hud/ControlBarDisplay.lua

`ControlBarDisplay.createBackground`, `ControlBarDisplay.getBackgroundPosition`, `ControlBarDisplay.new`, `ControlBarDisplay.sortFillLevelBuffers`, `ControlBarDisplay:addFillLevel`, `ControlBarDisplay:addFillLevelControl`, `ControlBarDisplay:createComponents`, `ControlBarDisplay:onAIVehicleStateChanged`, `ControlBarDisplay:onGyroscopeSteeringChanged`, `ControlBarDisplay:onInputHelpModeChange`, `ControlBarDisplay:setPlayer`, `ControlBarDisplay:setPositionState`, `ControlBarDisplay:setScale`, `ControlBarDisplay:setVehicle`, `ControlBarDisplay:update`, `ControlBarDisplay:updateFillLevelBuffers`, `ControlBarDisplay:updateFillLevelControl`, `ControlBarDisplay:updatePositionState`

## gui/hud/FillLevelsDisplay.lua

`FillLevelsDisplay.new`

## gui/hud/GameInfoDisplay.lua

`GameInfoDisplay.new`, `GameInfoDisplay:storeScaledValues`

## gui/hud/GameInfoDisplayMobile.lua

`GameInfoDisplayMobile.createBackground`, `GameInfoDisplayMobile.getBackgroundPositionAndSize`, `GameInfoDisplayMobile.new`, `GameInfoDisplayMobile:draw`, `GameInfoDisplayMobile:onOpenHelp`, `GameInfoDisplayMobile:onOpenMap`, `GameInfoDisplayMobile:onOpenMenu`, `GameInfoDisplayMobile:onOpenShop`, `GameInfoDisplayMobile:setEnvironment`, `GameInfoDisplayMobile:setMissionInfo`, `GameInfoDisplayMobile:setMoneyUnit`, `GameInfoDisplayMobile:setMoneyVisible`, `GameInfoDisplayMobile:setScale`, `GameInfoDisplayMobile:setTemperatureVisible`, `GameInfoDisplayMobile:setTimeVisible`, `GameInfoDisplayMobile:setTutorialProgress`, `GameInfoDisplayMobile:setTutorialVisible`, `GameInfoDisplayMobile:setVehicle`, `GameInfoDisplayMobile:setWeatherVisible`

## gui/hud/GamePausedDisplay.lua

`GamePausedDisplay.new`, `GamePausedDisplay:draw`, `GamePausedDisplay:setPauseText`, `GamePausedDisplay:storeScaledValues`

## gui/hud/HUDDisplayElement.lua

`HUDDisplayElement.new`, `HUDDisplayElement:animateHide`, `HUDDisplayElement:animateShow`, `HUDDisplayElement:animationSetPositionX`, `HUDDisplayElement:animationSetPositionY`, `HUDDisplayElement:getHidingTranslation`, `HUDDisplayElement:onAnimateVisibilityFinished`, `HUDDisplayElement:setScale`, `HUDDisplayElement:setVisible`, `HUDDisplayElement:storeOriginalPosition`

## gui/hud/HUDElement.lua

`HUDElement.new`, `HUDElement:addChild`, `HUDElement:delete`, `HUDElement:draw`, `HUDElement:getAlpha`, `HUDElement:getColor`, `HUDElement:getDimension`, `HUDElement:getHeight`, `HUDElement:getPosition`, `HUDElement:getRotationPivot`, `HUDElement:getScale`, `HUDElement:getVisible`, `HUDElement:getWidth`, `HUDElement:normalizeUVPivot`, `HUDElement:removeChild`, `HUDElement:resetDimensions`, `HUDElement:scalePixelToScreenHeight`, `HUDElement:scalePixelToScreenVector`, `HUDElement:scalePixelToScreenWidth`, `HUDElement:setAlignment`, `HUDElement:setAlpha`, `HUDElement:setColor`, `HUDElement:setDimension`, `HUDElement:setImage`, `HUDElement:setPosition`, `HUDElement:setRotation`, `HUDElement:setRotationPivot`, `HUDElement:setScale`, `HUDElement:setSliceId`, `HUDElement:setUVs`, `HUDElement:setVisible`, `HUDElement:update`

## gui/hud/HUDFrameElement.lua

`HUDFrameElement.new`, `HUDFrameElement:createComponents`, `HUDFrameElement:setBottomBarColor`, `HUDFrameElement:setBottomBarHeight`, `HUDFrameElement:setDimension`, `HUDFrameElement:setFrameColor`, `HUDFrameElement:setLeftLineVisible`, `HUDFrameElement:setRightLineVisible`

## gui/hud/HUDPopupMessageMobile.lua

`HUDPopupMessageMobile.createBackground`, `HUDPopupMessageMobile.getBackgroundPosition`, `HUDPopupMessageMobile.new`, `HUDPopupMessageMobile:animateHide`, `HUDPopupMessageMobile:assignCurrentMessage`, `HUDPopupMessageMobile:createComponents`, `HUDPopupMessageMobile:createInputRow`, `HUDPopupMessageMobile:draw`, `HUDPopupMessageMobile:finishMessage`, `HUDPopupMessageMobile:getHidingTranslation`, `HUDPopupMessageMobile:getInputRowsHeight`, `HUDPopupMessageMobile:getTextHeight`, `HUDPopupMessageMobile:getTitleHeight`, `HUDPopupMessageMobile:getVisible`, `HUDPopupMessageMobile:onConfirmMessage`, `HUDPopupMessageMobile:setCurrentMessageHeight`, `HUDPopupMessageMobile:setDimension`, `HUDPopupMessageMobile:setInputActive`, `HUDPopupMessageMobile:setScale`, `HUDPopupMessageMobile:showMessage`, `HUDPopupMessageMobile:startMessage`, `HUDPopupMessageMobile:storeScaledValues`, `HUDPopupMessageMobile:update`, `HUDPopupMessageMobile:updateButtonGlyphs`, `HUDPopupMessageMobile:updateCurrentMessage`

## gui/hud/HUDSliderElement.lua

`HUDSliderElement.new`

## gui/hud/HUDTextButtonElement.lua

`HUDTextButtonElement:setText`

## gui/hud/HUDTextDisplay.lua

`HUDTextDisplay.new`, `HUDTextDisplay:draw`, `HUDTextDisplay:setAlpha`, `HUDTextDisplay:setAnimation`, `HUDTextDisplay:setScale`, `HUDTextDisplay:setText`, `HUDTextDisplay:setTextColorChannels`, `HUDTextDisplay:setTextShadow`, `HUDTextDisplay:setVisible`, `HUDTextDisplay:update`

## gui/hud/InfoDisplay.lua

`InfoDisplay:getDisplayHeight`, `InfoDisplay:setScale`, `InfoDisplay:storeScaledValues`

## gui/hud/InfoDisplayBox.lua

`InfoDisplayBox.new`, `InfoDisplayBox:canDraw`, `InfoDisplayBox:delete`, `InfoDisplayBox:draw`, `InfoDisplayBox:setScale`, `InfoDisplayBox:storeScaledValues`

## gui/hud/InfoDisplayKeyValueBox.lua

`InfoDisplayKeyValueBox.new`

## gui/hud/InfoDisplayKeyValueBoxMobile.lua

`InfoDisplayKeyValueBoxMobile.new`, `InfoDisplayKeyValueBoxMobile:addLine`, `InfoDisplayKeyValueBoxMobile:canDraw`, `InfoDisplayKeyValueBoxMobile:clear`, `InfoDisplayKeyValueBoxMobile:draw`, `InfoDisplayKeyValueBoxMobile:getDisplayHeight`, `InfoDisplayKeyValueBoxMobile:setScale`, `InfoDisplayKeyValueBoxMobile:setTitle`, `InfoDisplayKeyValueBoxMobile:showNextFrame`, `InfoDisplayKeyValueBoxMobile:storeScaledValues`, `InfoDisplayKeyValueBoxMobile:textSizeToFit`

## gui/hud/IngameMessage.lua

`IngameMessage.new`, `IngameMessage:draw`, `IngameMessage:storeScaledValues`

## gui/hud/InputGlyphElement.lua

`InputGlyphElement.new`, `InputGlyphElement:delete`, `InputGlyphElement:draw`, `InputGlyphElement:drawActionText`, `InputGlyphElement:drawControllerButtons`, `InputGlyphElement:getGlyphWidth`, `InputGlyphElement:setAction`, `InputGlyphElement:setActions`, `InputGlyphElement:setBold`, `InputGlyphElement:setButtonGlyphColor`, `InputGlyphElement:setKeyboardGlyphColor`, `InputGlyphElement:setLowerCase`, `InputGlyphElement:setScale`, `InputGlyphElement:setUpperCase`, `InputGlyphElement:updateDisplayText`

## gui/hud/InputHelpDisplay.lua

`InputHelpDisplay.new`, `InputHelpDisplay:delete`, `InputHelpDisplay:draw`, `InputHelpDisplay:storeScaledValues`

## gui/hud/POIInfoDisplay.lua

`POIInfoDisplay.createBackground`, `POIInfoDisplay.getBackgroundPosition`, `POIInfoDisplay:draw`, `POIInfoDisplay:setScale`

## gui/hud/PlayerControlPadDisplay.lua

`PlayerControlPadDisplay.createBackground`, `PlayerControlPadDisplay.getBackgroundPosition`, `PlayerControlPadDisplay.new`, `PlayerControlPadDisplay:createComponents`, `PlayerControlPadDisplay:onAnimateVisibilityFinished`, `PlayerControlPadDisplay:onInputHelpModeChange`, `PlayerControlPadDisplay:onSliderPositionChangedX`, `PlayerControlPadDisplay:onSliderPositionChangedY`, `PlayerControlPadDisplay:setPlayer`, `PlayerControlPadDisplay:setScale`, `PlayerControlPadDisplay:setVisible`, `PlayerControlPadDisplay:update`, `PlayerControlPadDisplay:updateJoystickPosition`, `PlayerControlPadDisplay:updateVisibilityState`

## gui/hud/SideNotification.lua

`SideNotification.new`, `SideNotification:addNotification`, `SideNotification:draw`, `SideNotification:storeScaledValues`

## gui/hud/SideNotificationMobile.lua

`SideNotificationMobile.getBackgroundPosition`, `SideNotificationMobile.new`, `SideNotificationMobile:createBackground`

## gui/hud/SpeakerDisplay.lua

`SpeakerDisplay.new`, `SpeakerDisplay:draw`, `SpeakerDisplay:storeScaledValues`

## gui/hud/SpeedMeterDisplay.lua

`SpeedMeterDisplay.getVehicleFuelLevelAndCapacity`, `SpeedMeterDisplay.new`, `SpeedMeterDisplay:draw`, `SpeedMeterDisplay:drawGearText`, `SpeedMeterDisplay:setVehicle`, `SpeedMeterDisplay:storeScaledValues`

## gui/hud/SpeedSliderDisplay.lua

`SpeedSliderDisplay.createBackground`, `SpeedSliderDisplay.getBackgroundPosition`, `SpeedSliderDisplay.new`, `SpeedSliderDisplay:createBar`, `SpeedSliderDisplay:createComponents`, `SpeedSliderDisplay:delete`, `SpeedSliderDisplay:draw`, `SpeedSliderDisplay:getAccelerateAndBrakeValue`, `SpeedSliderDisplay:getIsSliderActive`, `SpeedSliderDisplay:hideSlider`, `SpeedSliderDisplay:onAIVehicleStateChanged`, `SpeedSliderDisplay:onDialogOpened`, `SpeedSliderDisplay:onGuiOpen`, `SpeedSliderDisplay:onInputHelpModeChange`, `SpeedSliderDisplay:onJumpEventCallback`, `SpeedSliderDisplay:onSliderPositionChanged`, `SpeedSliderDisplay:onSliderVisibilityChangeFinished`, `SpeedSliderDisplay:setPlayer`, `SpeedSliderDisplay:setScale`, `SpeedSliderDisplay:setSliderState`, `SpeedSliderDisplay:setVehicle`, `SpeedSliderDisplay:showSlider`, `SpeedSliderDisplay:update`, `SpeedSliderDisplay:updateElementsVisibility`, `SpeedSliderDisplay:updateVisibilityState`

## gui/hud/SteeringSliderDisplay.lua

`SteeringSliderDisplay.createBackground`, `SteeringSliderDisplay.getBackgroundPosition`, `SteeringSliderDisplay.new`, `SteeringSliderDisplay:createComponents`, `SteeringSliderDisplay:delete`, `SteeringSliderDisplay:getIsSliderActive`, `SteeringSliderDisplay:getSteeringValue`, `SteeringSliderDisplay:onAIVehicleStateChanged`, `SteeringSliderDisplay:onGyroscopeSteeringChanged`, `SteeringSliderDisplay:onInputHelpModeChange`, `SteeringSliderDisplay:onSliderPositionChanged`, `SteeringSliderDisplay:onSteeringBackSpeedSettingChanged`, `SteeringSliderDisplay:setPlayer`, `SteeringSliderDisplay:setScale`, `SteeringSliderDisplay:setVehicle`, `SteeringSliderDisplay:setVisible`, `SteeringSliderDisplay:update`, `SteeringSliderDisplay:updateVisibilityState`

## gui/hud/SwitchVehicleDisplay.lua

`SwitchVehicleDisplay.createBackground`, `SwitchVehicleDisplay.getBackgroundPosition`, `SwitchVehicleDisplay.new`, `SwitchVehicleDisplay:createComponents`, `SwitchVehicleDisplay:onGyroscopeSteeringChanged`, `SwitchVehicleDisplay:onInputHelpModeChange`, `SwitchVehicleDisplay:onSwitchLeft`, `SwitchVehicleDisplay:onSwitchRight`, `SwitchVehicleDisplay:setPlayer`, `SwitchVehicleDisplay:setPositionState`, `SwitchVehicleDisplay:setScale`, `SwitchVehicleDisplay:setVehicle`, `SwitchVehicleDisplay:updatePositionState`

## gui/hud/TopNotification.lua

`TopNotification.new`, `TopNotification:setNotification`, `TopNotification:storeScaledValues`

## gui/hud/WarningDisplay.lua

`WarningDisplay.new`, `WarningDisplay:draw`, `WarningDisplay:storeScaledValues`

## gui/hud/extensions/AIModeHUDExtension.lua

`AIModeHUDExtension.new`

## gui/hud/extensions/BaleCounterHUDExtension.lua

`BaleCounterHUDExtension.new`

## gui/hud/extensions/BalerStationaryHUDExtension.lua

`BalerStationaryHUDExtension.new`

## gui/hud/extensions/CrabSteeringHUDExtension.lua

`CrabSteeringHUDExtension.new`

## gui/hud/extensions/CruiseControlHUDExtension.lua

`CruiseControlHUDExtension.new`

## gui/hud/extensions/MixerWagonHUDExtension.lua

`MixerWagonHUDExtension.new`

## gui/hud/extensions/VariableWorkWidthHUDExtension.lua

`VariableWorkWidthHUDExtension.new`

## gui/hud/extensions/WorkModeHUDExtension.lua

`WorkModeHUDExtension.new`

## gui/hud/extensions/YarderTowerHUDExtension.lua

`YarderTowerHUDExtension.new`

## gui/hud/ingameMap/IngameMap.lua

`IngameMap.new`, `IngameMap:addMapHotspot`, `IngameMap:createBackground`, `IngameMap:createComponents`, `IngameMap:createToggleMapSizeGlyph`, `IngameMap:delete`, `IngameMap:drawHotspot`, `IngameMap:drawLatencyToServer`, `IngameMap:drawPlayersCoordinates`, `IngameMap:getBackgroundPosition`, `IngameMap:loadMap`, `IngameMap:removeMapHotspot`, `IngameMap:resetSettings`, `IngameMap:setAllowToggle`, `IngameMap:setFullscreen`, `IngameMap:setScale`, `IngameMap:setSelectedHotspot`, `IngameMap:setWorldSize`, `IngameMap:storeScaledValues`, `IngameMap:toggleSize`

## gui/hud/ingameMap/IngameMapMobile.lua

`IngameMapMobile:setScale`
