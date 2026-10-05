# Tools

Copy these into the `tools/` folder of your mod.

| File | Purpose |
|---|---|
| `check_translations.py` | same keys in every `translations/translation_<lang>.xml`, same placeholders as English, no missing keys in modDesc or scripts. `python3 tools/check_translations.py --prefix mymod_ --langs de,en,fr,pl,nl,cz` |
| `build_index.py` | (this repo) rebuilds `knowledge/INDEX.md` from the API names in the knowledge files. |
| `run_all.sh` | syntax check of all Lua files, `xmllint` of all XML, translation check, all `tools/tests/mock_*.lua`. Prints `ALL OK` or `ERRORS`. Set `PREFIX` and `LANGS` at the top. |

A mock test is a plain Lua 5.1 file that rebuilds the few game objects your code needs, loads your scripts with `dofile` and prints `OK`/`FAIL` lines plus `all tests passed` at the end. Example: [`template/tools/tests/mock_settings.lua`](../template/tools/tests/mock_settings.lua).
