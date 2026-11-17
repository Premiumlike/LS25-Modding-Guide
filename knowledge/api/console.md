# Console commands

Source: `github.com/MyGameSteamOfficial/fs25-lua-api` (commit 9478ee9, 2025-02-26 – older than the current patch). Extracted automatically: names, XML keys, types, defaults only – no code. Status 📖 (read from source, not verified in game).

| Command | Description (original) | File |
|---|---|---|
| `gsAIAgentSetState` | Sets the AI Agent State | ai/AISystem.lua |
| `gsAICostsExport` | Export costmap to image file | ai/AISystem.lua |
| `gsAICostsShow` | Shows the costs per cell | ai/AISystem.lua |
| `gsAICostsUpdate` | Update costmap given width around the camera | ai/AISystem.lua |
| `gsAIEnableDebug` | Enables AI debugging | ai/AISystem.lua |
| `gsAIObstaclesShow` | Shows the obstacles around the camera | ai/AISystem.lua |
| `gsAIPlanningDebug` | Shows the last planning bit vector map | ai/AISystem.lua |
| `gsAISetLastTarget` | Sets AI Target to last position | ai/AISystem.lua |
| `gsAISetTarget` | Sets AI Target | ai/AISystem.lua |
| `gsAISplinesCheckInterference` | Check if AI splines interfere with any objects | ai/AISystem.lua |
| `gsAISplinesShow` | Toggle AI system spline visibility | ai/AISystem.lua |
| `gsAIStart` | Starts driving to target | ai/AISystem.lua |
| `gsAIStationsShow` | Toggle AI system stations ai nodes visibility | ai/AISystem.lua |
| `gsHusbandryAddAnimals` | Add or remove animals from husbandry where player is currently located | animals/husbandry/placeables/PlaceableHusbandryAnimals.lua |
| `gsHusbandryDebugToggle` | Toggle husbandry debug mode | animals/husbandry/placeables/PlaceableHusbandryAnimals.lua |
| `gsDebugManagerClearElements` | Removes all permanent elements and functions from DebugManager | debug/DebugManager.lua |
| `gsDebugManagerGroupRemove` | Remove group and its debug elements | debug/DebugManager.lua |
| `gsDebugManagerGroupVisibilitySet` | Toggle or set visibility of given group name | debug/DebugManager.lua |
| `gsDebugManagerGroupsList` | List all currently used debug element groups with visibility and number of elements | debug/DebugManager.lua |
| `gsSplineDebug` | Toggles debug visualization for all splines currently in the scene | debug/DebugManager.lua |
| `gsDensityMapToggleDebug` | Toggles debug mode | densityMaps/DensityMapHeightManager.lua |
| `gsPlacementCollisionsShow` | Shows the collisions for placement and terraforming | densityMaps/DensityMapHeightManager.lua |
| `gsTipAnywhereAdd` | Tips a fillType | densityMaps/DensityMapHeightManager.lua |
| `gsTipAnywhereAddAll` | Tips a heap of every fill type that can be tipped | densityMaps/DensityMapHeightManager.lua |
| `gsTipAnywhereClear` | Clears tip area | densityMaps/DensityMapHeightManager.lua |
| `gsTipCollisionsShow` | Shows the collisions for tipping on the ground | densityMaps/DensityMapHeightManager.lua |
| `gsTipCollisionsUpdate` | Updates the collisions for tipping on the ground around the current camera | densityMaps/DensityMapHeightManager.lua |
| `gsFarmlandBuy` | Buys farmland with given id | economy/FarmlandManager.lua |
| `gsFarmlandBuyAll` | Buys all farmlands | economy/FarmlandManager.lua |
| `gsFarmlandSell` | Sells farmland with given id | economy/FarmlandManager.lua |
| `gsFarmlandSellAll` | Sells all farmlands | economy/FarmlandManager.lua |
| `gsFarmlandShow` | Show farmlands | economy/FarmlandManager.lua |
| `gsFieldSetGround` | Opens UI to set state for specific field(s) | field/FieldManager.lua |
| `gsFieldSetState` | Opens UI to set state for specific field(s) | field/FieldManager.lua |
| `gsFieldToggleNPCLogging` | Toggle field npc action logging | field/FieldManager.lua |
| `gsFieldToggleStatus` | Shows field status | field/FieldManager.lua |
| `gsFruitTypesExportStats` | Exports the fruit type stats into a text file | fruits/FruitTypeManager.lua |
| `gsPlayerSuperStrengthToggle` | Toggles the super strength mode for the player | handTools/specializations/HandToolHands.lua |
| `gsI3DCacheShow` | Show active i3d cache | i3d/I3DManager.lua |
| `gsI3DLoadingDelaySet` | Sets loading delay for i3d files | i3d/I3DManager.lua |
| `gsI3DPrintActiveLoadings` | Print active loadings | i3d/I3DManager.lua |
| `gsBaleAdd` | Adds a bale | misc/BaleManager.lua |
| `gsBaleAddAll` | Adds a bale | misc/BaleManager.lua |
| `gsBaleList` | List available bale types | misc/BaleManager.lua |
| `gsNoteExport` | Exports currently created note nodes as i3d file | misc/NoteManager.lua |
| `gsNoteList` | Lists currently created note nodes in console/log | misc/NoteManager.lua |
| `gsProductionPointSetFillLevel` |  | misc/ProductionChainManager.lua |
| `gsProductionPointSetOutputMode` |  | misc/ProductionChainManager.lua |
| `gsProductionPointSetOwner` |  | misc/ProductionChainManager.lua |
| `gsProductionPointSetProductionState` |  | misc/ProductionChainManager.lua |
| `gsProductionPointToggleDebug` | Toggle production point debugging | misc/ProductionChainManager.lua |
| `gsProductionPointsList` | List all production points on map | misc/ProductionChainManager.lua |
| `gsProductionPointsPrintAutoDeliverMapping` | Prints which fillTypes are required by which production points | misc/ProductionChainManager.lua |
| `gsTreeAdd` | Load a loose tree trunk | misc/TreePlantManager.lua |
| `gsTreeCut` | Cut all trees around a given radius | misc/TreePlantManager.lua |
| `gsTreeDebug` | Toggle tree/splitshape debug mode | misc/TreePlantManager.lua |
| `gsTreeLoadAll` | Spawn all trees in front of player | misc/TreePlantManager.lua |
| `gsTreePlant` | Plant given number of trees of a specified type | misc/TreePlantManager.lua |
| `gsMissionGenerate` | Force generating a new mission for given farmland | missions/MissionManager.lua |
| `gsMissionLoadVehicleSet` | Loads a specific vehicle set | missions/MissionManager.lua |
| `gsBeehiveDebug` | Toggles beehive debug mode | placeables/BeehiveSystem.lua |
| `gsPlaceablesDeleteAll` | Deletes all placeables | placeables/PlaceableSystem.lua |
| `gsPlaceablesLoadAll` | Loads all placeables | placeables/PlaceableSystem.lua |
| `gsPlaceablesReloadAll` | Reloads all placeables | placeables/PlaceableSystem.lua |
| `gsRiceFieldCreateFromField` | Create a rice field from a field using the same outline | placeables/specializations/PlaceableRiceField.lua |
| `gsRiceFieldSetRice` | Set field rice state | placeables/specializations/PlaceableRiceField.lua |
| `gsRiceFieldWaterSetLevel` | Set rice field water level percentage | placeables/specializations/PlaceableRiceField.lua |
| `gsRiceFieldWaterSetShaderParameters` | Set rice field water plane shader parameters | placeables/specializations/PlaceableRiceField.lua |
| `gsPlayerIKChainsReload` | Reloads player IKChains | player/Player.lua |
| `gsPlayerRaycastDebug` | Enables/disables player pickup raycast debug information | player/Player.lua |
| `gsPlayerToggleForceHandToolFirstPerson` | Toggle the force handtool mode | player/Player.lua |
| `gsPlayerToggleStrafeWalkMode` | Toggles strafe walk mode | player/Player.lua |
| `gsTipToTrigger` | Tips a fillType into a trigger | player/Player.lua |
| `gsBrandUsageList` | Prints a list of all used brands | shop/BrandManager.lua |
| `gsStoreItemsReload` | Reloads storeItem data | shop/StoreManager.lua |
| `gsSoundManagerDebug` | Toggle SoundManager global debug mode | sounds/SoundManager.lua |
| `gsSoundMixerDebug` | Toggle sound mixer debug mode | sounds/SoundMixer.lua |
| `gsGameTestPrintVehicleSetups` | Prints all vehicle setups on the map to be used inside a test config file | testing/GameTestManager.lua |
| `gsCameraAutoRotate` | Auto rotate vehicle outdoor camera | vehicles/VehicleCamera.lua |
| `gsCameraOffset` | Offset vehicle outdoor camera target | vehicles/VehicleCamera.lua |
| `gsCameraRotationSaveLoad` | Save and load current camera rotation + zoom | vehicles/VehicleCamera.lua |
| `gsExportVehicleSets` | Exports vehicle sets | vehicles/VehicleSystem.lua |
| `gsFillUnitAdd` | Changes a fillUnit with given filllevel and filltype | vehicles/VehicleSystem.lua |
| `gsPalletAdd` | Adds a pallet | vehicles/VehicleSystem.lua |
| `gsVehicleAddDamage` | Adds a given amount to current damage amount | vehicles/VehicleSystem.lua |
| `gsVehicleAddDirt` | Adds a given amount to current dirt amount | vehicles/VehicleSystem.lua |
| `gsVehicleAddWear` | Adds a given amount to current wear amount | vehicles/VehicleSystem.lua |
| `gsVehicleAddWetness` | Adds a given amount to current wetness amount | vehicles/VehicleSystem.lua |
| `gsVehicleFuelSet` | Sets the vehicle fuel level | vehicles/VehicleSystem.lua |
| `gsVehicleLoadAll` | Load all vehicles | vehicles/VehicleSystem.lua |
| `gsVehicleOperatingTimeSet` | Sets the vehicle operating time | vehicles/VehicleSystem.lua |
| `gsVehicleReload` | Reloads currently entered vehicle or vehicles within a range when second radius parameter is given | vehicles/VehicleSystem.lua |
| `gsVehicleRemoveAll` | Removes all vehicles from current mission | vehicles/VehicleSystem.lua |
| `gsVehicleShowDistance` | Shows the distance between vehicle and cam | vehicles/VehicleSystem.lua |
| `gsVehicleTemperatureSet` | Sets the vehicle motor temperature | vehicles/VehicleSystem.lua |
| `gsVehicleToggleRandomFail` | Toggles random vehicle load failing | vehicles/VehicleSystem.lua |
| `gsAIClearPath` | Clears debug path | vehicles/specializations/AIDrivable.lua |
| `gsAIMoveVehicle` | Moves vehicles | vehicles/specializations/AIDrivable.lua |
| `gsAISetTurnRadius` | Set Turn radius | vehicles/specializations/AIDrivable.lua |
