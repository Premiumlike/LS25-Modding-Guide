# 8. Helpers (AI workers)

[← Overview](../README.md)

- `vehicle:getIsAIActive()`.
- `vehicle:stopCurrentAIJob(AIMessageErrorVehicleBroken.new())` stops with the game message "vehicle broken". `stopCurrentAIJob(nil)` stops **without** a message – useful when you show your own message. ✅
- Helpers set the shift mode to automatic (see [5](05-motor-and-gearbox.md)).
- While a helper drives, the player does not see that vehicle's HUD. Communicate important states with notifications (top right, see [7](07-hud-and-display.md)). In multiplayer, send them to the players of the owning farm (`vehicle:getOwnerFarmId()`, player farm `g_currentMission:getFarmId()`).
- Implements have a fixed pulling force (`PowerConsumer#maxForce`). The "required hp" in the shop is display only – ploughs often do not reach 90 % engine load. ✅
- **Courseplay** reads working widths itself; if you change widths at runtime, Courseplay has to be updated, too. 🔎 (AdjustSuite)
- **AutoDrive** loads its classes later than many mods. Retry your hook in `update` until the class exists (e.g. `ADTrailerModule`) and give up after a number of attempts. 🔎
