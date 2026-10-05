#!/usr/bin/env python3
"""Check FS25 translation files (translations/translation_<lang>.xml).

- every language has the same keys, no empty text
- placeholders (%s, %d, %.1f, %%) per text appear as often as in English
- no key defined twice (file and directly in modDesc.xml)
- every $l10n_ reference in modDesc.xml exists
- every key used in scripts via a getter matching --prefix exists

Usage (from the mod root):
    python3 tools/check_translations.py --prefix mymod_ --langs de,en,fr
"""
import argparse, glob, re, sys
import xml.etree.ElementTree as ET

ap = argparse.ArgumentParser()
ap.add_argument("--prefix", default="", help="key prefix used in scripts, e.g. mymod_")
ap.add_argument("--langs", default="de,en", help="comma separated language codes (cz = Czech)")
ap.add_argument("--ref", default="en", help="reference language for placeholders")
args = ap.parse_args()
LANGS = args.langs.split(",")
# no spaces inside the pattern: in French "0 % d'état" is not a placeholder
PH = re.compile(r"%(?:%|[-+0#]*\d*(?:\.\d+)?[sdfi])(?![a-zA-Z])")

fail, data = [], {}
for lang in LANGS:
    root = ET.parse("translations/translation_%s.xml" % lang).getroot()
    d = {}
    for e in root.iter("e"):
        k, v = e.get("k"), e.get("v")
        if k in d:
            fail.append("%s: key twice: %s" % (lang, k))
        if not v or not v.strip():
            fail.append("%s: empty: %s" % (lang, k))
        d[k] = v or ""
    data[lang] = d
keys = set(data[args.ref])
for lang in LANGS:
    if set(data[lang]) != keys:
        fail.append("%s: keys differ: missing %s, extra %s" % (lang, sorted(keys - set(data[lang])), sorted(set(data[lang]) - keys)))
for k in keys:
    ref = sorted(PH.findall(data[args.ref][k]))
    for lang in LANGS:
        if k in data[lang] and sorted(PH.findall(data[lang][k])) != ref:
            fail.append("%s: placeholders in %s: %s instead of %s" % (lang, k, sorted(PH.findall(data[lang][k])), ref))
md = open("modDesc.xml", encoding="utf-8").read()
inline = set(re.findall(r'<text name="(\w+)">', md))
for k in inline & keys:
    fail.append("defined twice (file and modDesc): %s" % k)
allkeys = keys | inline
for k in set(re.findall(r"\$l10n_(\w+)", md)):
    if k not in allkeys:
        fail.append("modDesc references missing text: %s" % k)
if args.prefix:
    for f in glob.glob("scripts/**/*.lua", recursive=True):
        src = open(f, encoding="utf-8").read()
        for k in re.findall(r'\(\s*"(%s\w+)"' % re.escape(args.prefix), src):
            if k not in allkeys:
                fail.append("%s: text missing: %s" % (f, k))
if fail:
    print("\n".join("FAIL " + x for x in fail))
    sys.exit(1)
print("OK    translations: %d texts x %d languages + %d English only" % (len(keys), len(LANGS), len(inline)))
