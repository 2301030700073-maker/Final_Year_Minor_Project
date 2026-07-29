#!/bin/bash
# Download the matching frida-gadget shared library for objection.
# GitHub's 100 MB limit (and general repo-bloat hygiene) means this isn't
# committed directly - download it once, it's cached under objection_cache/
# same as objection's own auto-download would do, just version-pinned
# explicitly instead of implicitly pulling "whatever is latest".
# Usage: bash tools/download_frida_gadget.sh [version] [arch]
# Default version: 17.16.4 (matching tools/objection_cache/gadget_versions)

set -euo pipefail

VERSION="${1:-17.16.4}"
ARCH="${2:-x86_64}"
OUTDIR="$(cd "$(dirname "$0")" && pwd)/objection_cache/android/${ARCH}"

echo "Downloading frida-gadget ${VERSION} (android-${ARCH})..."

URL="https://github.com/frida/frida/releases/download/${VERSION}/frida-gadget-${VERSION}-android-${ARCH}.so.xz"

mkdir -p "${OUTDIR}"
cd /tmp
wget -q --show-progress "$URL"
xz -d "frida-gadget-${VERSION}-android-${ARCH}.so.xz"
cp "frida-gadget-${VERSION}-android-${ARCH}.so" "${OUTDIR}/libfrida-gadget.so"
rm "frida-gadget-${VERSION}-android-${ARCH}.so"

echo "Downloaded: ${OUTDIR}/libfrida-gadget.so"
echo "Size: $(du -h "${OUTDIR}/libfrida-gadget.so" | cut -f1)"
