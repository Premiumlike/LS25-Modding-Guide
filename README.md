# LS25 / FS25 Modding Guide

Practical knowledge for **Farming Simulator 25 script mods**, collected while building a large gameplay mod (tuning, wear, used market, leasing, multiplayer) – with tools and a mod template.

> 🇩🇪 **Kurz auf Deutsch:** Gesammeltes Wissen zum Bau von LS25-Skript-Mods aus der Entwicklung eines großen Gameplay-Mods: Motor und Getriebe, Shop-Konfigurationen, Einstellungsmenü, HUD, Gebrauchtmarkt, Mieten, Mehrspieler. Dazu Werkzeuge (Übersetzungs-Check, Testskript) und eine Mod-Vorlage. Alles auf Englisch, damit es möglichst viele nutzen können.

## Contents

| Topic | |
|---|---|
| [1. Sources and tools](knowledge/01-sources-and-tools.md) | game source repos, reference mods, log, testing without the game, graphics |
| [2. Mod skeleton](knowledge/02-mod-skeleton.md) | modDesc, hooks, specializations, texts (l10n), help pages |
| [3. Settings and menu](knowledge/03-settings-and-menu.md) | savegame file, modSettings, own settings tab, presets |
| [4. Configurations and shop](knowledge/04-configurations-and-shop.md) | own configuration types, shop configurator, leasing, workshop buttons |
| [5. Motor and gearbox](knowledge/05-motor-and-gearbox.md) | torque, top speed, gear groups, automatic, pedals |
| [6. Consumption, wear, value](knowledge/06-consumption-wear-value.md) | fuel, wear, repair, sell value |
| [7. HUD and display](knowledge/07-hud-and-display.md) | speedometer, icons, notifications |
| [8. Helpers (AI)](knowledge/08-helpers-ai.md) | stopping helpers, messages, Courseplay/AutoDrive |
| [9. Used vehicle market](knowledge/09-used-vehicle-market.md) | `VehicleSaleSystem`, own offers, shop cells |
| [10. Multiplayer](knowledge/10-multiplayer.md) | roles, events, admin, per-player values, dirty flags |
| [11. Pitfalls](knowledge/11-pitfalls.md) | short list of mistakes we made |
| [12. Learned from other mods](knowledge/12-learned-from-other-mods.md) | techniques from published mods |
| [Workflow](workflow.md) | versions, checks before delivery, log discipline, in-game testing |
| [Tools](tools/) | translation check, run-all script |
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
