# Workflow that worked for us

[← Overview](README.md)

Practices from building a large FS25 script mod (~9,000 lines of Lua) together with an AI assistant. Nothing here is required by the game – it is what kept the project testable and the logs useful.

## Versions

- **Every change gets a new version** in `modDesc.xml` and one short line in a change log. The version line printed on load tells you which build a log belongs to.
- Keep a project file with: rules, file overview, plan, open points, version log. Keep general engine knowledge **separate** from project details so it can travel to the next mod.

## Before every delivery

Run one script that does everything (see [`tools/run_all.sh`](tools/run_all.sh)):
1. `luac5.1 -p` on every Lua file (syntax).
2. `xmllint --noout` on `modDesc.xml` and all other XML.
3. Translation check (same keys in every language, same placeholders, no missing keys).
4. All mock tests.

Only deliver when it says "ALL OK".

## Log discipline

- One prefix for all your lines, e.g. `[MYMOD]`.
- Diagnostics only with a debug switch (best in `modSettings/`, independent of the savegame).
- Error and warning lines and the version line always, regardless of the switch.
- Log output in English only (ModHub expectation; players' logs reach modders worldwide). Player-facing texts stay in the translation files.
- Log a recurring error only once per object; use "print only when changed" for values the game asks for constantly (menus).
- When reading a log: search for `Error` and `LUA call stack` first.

## Testing in the game

- Describe the test as numbered steps with the expected result per step; ask for the logs of **all** machines afterwards.
- Separate clearly what the tester **observed** from what the log **shows** and what you **assume**.
- Make test settings extreme (shortest times, highest factors) so effects are visible within minutes.
- Multiplayer: test host + client first; admin features need a dedicated server (only there can a client log in as admin).

## Texts

- All texts in translation files, one file per language, same keys everywhere.
- Texts identical in every language (brand names, units) also in the translation files, same value in each – keep the modDesc small (GIANTS' advice: move out what you can).
- Keep a fallback text in the script for every key.

## Compatibility with other mods

- Keep a list of exact mod names that conflict (feature gets disabled while the mod is loaded, the player's setting stays untouched) and mods that only deserve a hint in the log.
- Scan the ModHub category your mod touches; decide per mod after reading its description.

## Removing code

- Diagnostics from finished development phases can stay if they cost nothing while the debug switch is off – they help when players send logs later.
- Truly dead code (never called) goes. A quick script that lists functions/locals referenced only once finds candidates; settings callbacks referenced by string are false positives.

## Ground rules for every new mod (lessons from our first big mod)

Retrofitting each of these later cost far more than doing it from day one.

- **ModHub basics from the start:** English log output; small modDesc – all texts in `translations/` (also those identical in all languages), only title and description stay in the modDesc; current `descVersion`; no copied game/DLC/foreign files or code; no personal names in code comments or test labels (who asked for what belongs in the changelog, not in the code).
- **Multiplayer from the start:** every feature server-authoritative (server computes and books, client requests via event, permissions checked, state sent on join – see [10](knowledge/10-multiplayer.md)). Avoid "off in multiplayer for now" – we had to retrofit two whole modules.
- **Modules and presets from the start:** every feature belongs to a module that can be switched off; difficulty via presets instead of dozens of single sliders.
- **Look before you build:** log what the game really provides with a diagnostic build first. Example: FS25 has no `samples.motorStart`, and More Motor Sounds may keep engine layers under `gearboxSamples` ([5](knowledge/05-motor-and-gearbox.md)).
- **Check how often the game calls a function** before using it as a trigger – some getters (e.g. `getMotorNotAllowedWarning`) are polled every frame while seated, they are not events.
- **Derive values per vehicle** (durations, volumes) from the vehicle's own data instead of one fixed value for all.
- **Savegame without the mod must load:** test removing the mod before release; keep saved keys and configurations harmless when the mod is gone.
- **Conflict list from the start:** scan the ModHub category your mod touches.
- **Console test commands early** – only those that really speed up testing.
- **Make rare random events testable:** a console command with a multiplier instead of waiting (ours: a random engine failure at 8 %/h happens about every 45 s with factor 1000; not saved, back to 1 on load).
- **Build mocks from real game data, not from your assumption:** our mocks modelled stock vehicles without a tuning stage, but in game they carry our own configuration with the option "stock". All mocks passed, yet "tuned engines only" did nothing. Copy mock values from a real log.
- **Own configuration types have no "not selected":** every vehicle with the configuration has an item, including the base option – check the `saveId`, never just `~= nil` ([4](knowledge/04-configurations-and-shop.md)).
- **Diagnostics show what takes effect, not what is configured:** a log line that prints the surcharge even where a setting disables it makes the test impossible to read.
- **Log menu changes** ("Setting changed: …"): otherwise you cannot tell a wrong switch from wrong logic.
- **Make it look like the base game, not like a mod:** build displays, boxes, icons, colours and texts from the game's own elements – game icons and backgrounds instead of look-alikes. If you do not know the game element, find it with a diagnostic build first; draw your own icon only if the game really has none.
- **Several own mods: one feature, one mod.** Each runs alone; together they add value through a small query API ([15](knowledge/15-dashboards-and-vehicle-data.md)).
- **Test with streamers early** – their chats produced several of our best features.
- **Record every engine finding at once** in `knowledge/` with its status marker.
