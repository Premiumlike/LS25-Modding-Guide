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
- Log a recurring error only once per object; use "print only when changed" for values the game asks for constantly (menus).
- When reading a log: search for `Error` and `LUA call stack` first.

## Testing in the game

- Describe the test as numbered steps with the expected result per step; ask for the logs of **all** machines afterwards.
- Separate clearly what the tester **observed** from what the log **shows** and what you **assume**.
- Make test settings extreme (shortest times, highest factors) so effects are visible within minutes.
- Multiplayer: test host + client first; admin features need a dedicated server (only there can a client log in as admin).

## Texts

- All texts in translation files, one file per language, same keys everywhere.
- Texts identical in every language (brand names, units) only once as `<en>` in the modDesc.
- Keep a fallback text in the script for every key.

## Compatibility with other mods

- Keep a list of exact mod names that conflict (feature gets disabled while the mod is loaded, the player's setting stays untouched) and mods that only deserve a hint in the log.
- Scan the ModHub category your mod touches; decide per mod after reading its description.

## Removing code

- Diagnostics from finished development phases can stay if they cost nothing while the debug switch is off – they help when players send logs later.
- Truly dead code (never called) goes. A quick script that lists functions/locals referenced only once finds candidates; settings callbacks referenced by string are false positives.
