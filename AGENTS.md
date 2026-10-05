# Notes for AI assistants (Claude, Claude Code and others)

This repository is a knowledge base for **Farming Simulator 25 (FS25 / LS25) Lua script mods**. Use it to avoid re-reverse-engineering the game.

How to use it with few tokens:
1. Look up the game function, class or global you need in `knowledge/INDEX.md` (one table, name -> file).
2. Read only that file in `knowledge/`. Each file is one topic and short. Interop with other mods (AutoDrive, Courseplay …) is in `08`, per-mod summaries in `12`, a fast test loop in `14`.
3. Respect the status markers: ✅ confirmed in game, 📖 read from the partial game source, 🔎 learned from another mod (untested), ❓ assumption. Do not present 🔎/❓ as fact.
4. For a new mod, start from `template/` and `workflow.md`; run `sh tools/run_all.sh` (needs lua5.1, luac5.1, xmllint, python3) before handing out a build.

When contributing:
- No GIANTS source code and no code copied from other mods – only own findings, names and references.
- Mark how a finding was verified. After editing `knowledge/`, run `python3 tools/build_index.py`.
- Keep files topic-sized; add new topics as new numbered files and list them in `README.md` and `llms.txt`.
