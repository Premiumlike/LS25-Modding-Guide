# LS25 / FS25 Modding Guide

Practical knowledge for **Farming Simulator 25 (FS25 / LS25, GIANTS Engine 10) Lua script mods**, collected while building a large gameplay mod (tuning, wear, used market, leasing, multiplayer) – with tools and a mod template.

**Keywords:** Farming Simulator 25 modding, FS25 Lua scripting, LS25 Mod erstellen, GIANTS Engine 10, modDesc, specialization, `ConfigurationUtil.getConfigurationsFromXML`, `ShopConfigScreen`, `VehicleMotor`, `SpeedMeterDisplay`, `VehicleSaleSystem`, `EconomyManager`, multiplayer events, dedicated server, AutoDrive and Courseplay interop, `AIMessage`, `DashboardValueType`, `XMLFile.initInheritance`, `SellingStation`, `MissionManager`, `MoneyType`, input actions, console commands, ModHub.

**Using an AI assistant?** Point it to [`llms.txt`](llms.txt) or [`CLAUDE.md`](CLAUDE.md): look up a game function in the [API index](knowledge/INDEX.md), then read only the one topic file you need.

> 🇩🇪 **Kurz auf Deutsch:** Gesammeltes Wissen zum Bau von LS25-Skript-Mods aus der Entwicklung eines großen Gameplay-Mods: Motor und Getriebe, Shop-Konfigurationen, Einstellungsmenü, HUD, Gebrauchtmarkt, Mieten, Mehrspieler. Dazu Werkzeuge (Übersetzungs-Check, Testskript) und eine Mod-Vorlage. Alles auf Englisch, damit es möglichst viele nutzen können.

## Contents

| Topic | |
|---|---|
| [1. Sources and tools](knowledge/01-sources-and-tools.md) | game source repos, reference mods, log, testing without the game, graphics |
| [2. Mod skeleton](knowledge/02-mod-skeleton.md) | modDesc, hooks, specializations, texts (l10n), help pages |
| [3. Settings and menu](knowledge/03-settings-and-menu.md) | savegame file, modSettings, own settings tab, menu pages, own dialogs, presets |
| [4. Configurations and shop](knowledge/04-configurations-and-shop.md) | own configuration types, XML injection, shop configurator, buying in code, leasing, money bookings, workshop buttons |
| [5. Motor and gearbox](knowledge/05-motor-and-gearbox.md) | torque, top speed, gear groups, automatic, pedals |
| [6. Consumption, wear, value](knowledge/06-consumption-wear-value.md) | fuel, wear, repair, sell value |
| [7. HUD and display](knowledge/07-hud-and-display.md) | speedometer, icons, notifications |
| [8. Helpers (AI)](knowledge/08-helpers-ai.md) | stopping helpers, own AI messages, detecting and stopping AutoDrive and Courseplay |
| [9. Used vehicle market](knowledge/09-used-vehicle-market.md) | `VehicleSaleSystem`, own offers, shop cells |
| [10. Multiplayer](knowledge/10-multiplayer.md) | roles, events, relay pattern, admin, per-player values, dirty flags, server-authoritative blueprint |
| [11. Pitfalls](knowledge/11-pitfalls.md) | short list of mistakes we made and ones seen in other mods |
| [12. Learned from other mods](knowledge/12-learned-from-other-mods.md) | one section per published mod we read: license, link, notable techniques; compatibility table (what each mod overrides) |
| [13. Input and player](knowledge/13-input-and-player.md) | actions and bindings, vehicle/global/on-foot input, clicks on 3D points, player, attaching implements |
| [14. Development and debugging](knowledge/14-development-and-debugging.md) | console commands, restart into the savegame, time scale, table dumps, debug drawing, debug builds |
| [15. Dashboards and vehicle data](knowledge/15-dashboards-and-vehicle-data.md) | live vehicle values, server-only motor values, vanilla dashboard value types, offering data/APIs to other mods |
| [16. Economy, missions, placeables](knowledge/16-economy-missions-and-placeables.md) | money types and booking paths, selling station prices, contracts, storages and capacities, fill units |
| [API index](knowledge/INDEX.md) | game function / class / global → topic file |
| [Workflow](workflow.md) | versions, checks before delivery, log discipline, in-game testing |
| [Tools](tools/) | translation check, run-all script, index builder |
| [Mod template](template/) | log + debug switch, savegame settings, multiplayer sync |

## Status markers

| Marker | Meaning |
|---|---|
| ✅ | confirmed in the game |
| 📖 | read from the (partial) game source |
| 🔎 | learned from another mod's code, not tested by us |
| ❓ | assumption, not confirmed |

State: FS25 patch 1.24 (October 2026). Game updates can change things – if something no longer works, please open an issue.

## Rules for this repo

- **No GIANTS source code and no code from other mods.** Only own findings, function names and references to the sources.
- Corrections and additions are welcome as issues or pull requests – please mark how you verified them (in game / source / other mod).

## License

- Texts (`knowledge/`, `workflow.md`, READMEs): [CC BY 4.0](LICENSE-docs.md) – use and adapt freely, with credit.
- Code (`tools/`, `template/`): [MIT](LICENSE).

Farming Simulator and GIANTS Software are trademarks of GIANTS Software GmbH. This project is not affiliated with GIANTS.
