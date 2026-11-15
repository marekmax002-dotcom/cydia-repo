#!/bin/sh
set -eu
ROOT="$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"
OUT="$ROOT/dists/stable/main/binary-iphoneos-arm/Packages"
: > "$OUT"
if ! command -v dpkg-scanpackages >/dev/null 2>&1; then
  echo "dpkg-scanpackages is required. Install dpkg-dev on your build machine." >&2
  exit 1
fi
cd "$ROOT"
dpkg-scanpackages -m debs /dev/null > "$OUT"
gzip -9 -c "$OUT" > "$OUT.gz"
echo "Built $OUT and $OUT.gz"
