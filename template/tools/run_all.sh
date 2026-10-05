#!/bin/sh
# Run every check before delivering a build (call from anywhere):
#   sh tools/run_all.sh
# Needs: lua5.1, luac5.1, xmllint, python3.
# Adjust PREFIX and LANGS for your mod.
PREFIX="mymod_"
LANGS="de,en"
cd "$(dirname "$0")/.." || exit 1
fail=0
for f in $(find scripts -name "*.lua"); do luac5.1 -p "$f" || fail=1; done
xmllint --noout modDesc.xml translations/*.xml || fail=1
python3 tools/check_translations.py --prefix "$PREFIX" --langs "$LANGS" || fail=1
for t in tools/tests/mock_*.lua; do
  [ -f "$t" ] || continue
  if lua5.1 "$t" > /tmp/mock_test.out 2>&1 && grep -q "all tests passed" /tmp/mock_test.out && ! grep -q "^FAIL" /tmp/mock_test.out; then
    echo "OK    $t"
  else
    echo "FAIL  $t"; grep -E "^FAIL|rror" /tmp/mock_test.out | head -5; fail=1
  fi
done
[ $fail -eq 0 ] && echo "ALL OK" || echo "ERRORS"
exit $fail
