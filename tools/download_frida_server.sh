#!/bin/bash
# Download matching frida-server binaries.
# GitHub's 100 MB limit prevents hosting them directly in the repo.
# Usage: bash tools/download_frida_server.sh [version]
# Default version: 16.7.19 (matching frida<17 pin in pyproject.toml)

set -euo pipefail

VERSION="${1:-16.7.19}"
ARCH="x86_64"
OUTDIR="$(cd "$(dirname "$0")" && pwd)"

echo "Downloading frida-server ${VERSION} (android-${ARCH})..."

URL="https://github.com/frida/frida/releases/download/${VERSION}/frida-server-${VERSION}-android-${ARCH}.xz"

cd /tmp
wget -q --show-progress "$URL"
xz -d "frida-server-${VERSION}-android-${ARCH}.xz"
cp "frida-server-${VERSION}-android-${ARCH}" "${OUTDIR}/frida-server-${VERSION}-${ARCH}"
chmod +x "${OUTDIR}/frida-server-${VERSION}-${ARCH}"
rm "frida-server-${VERSION}-android-${ARCH}"

echo "Downloaded: ${OUTDIR}/frida-server-${VERSION}-${ARCH}"
echo "Size: $(du -h "${OUTDIR}/frida-server-${VERSION}-${ARCH}" | cut -f1)"
echo ""
echo "Push to emulator:"
echo "  base64 ${OUTDIR}/frida-server-${VERSION}-${ARCH} | adb shell \"base64 -d > /data/local/tmp/frida-server\""
echo "  adb shell \"chmod 755 /data/local/tmp/frida-server\""
