# tools/ — Supplemental Tools & Binaries

These files support the analysis pipeline. They are committed to
ensure reproducible builds and avoid re-downloading.

| File | Size | Purpose |
|------|------|---------|
| `download_frida_server.sh` | — | Downloads matching frida-server from GitHub (exceeds GitHub's 100 MB file limit). Run `bash tools/download_frida_server.sh` before first use. |
| `download_frida_gadget.sh` | — | Downloads the matching frida-gadget `.so` for objection into `objection_cache/android/<arch>/libfrida-gadget.so`. Run `bash tools/download_frida_gadget.sh` before first use of `objection patchapk`. |
| `debug.keystore` | 2.7 KB | Android debug signing key for patched APKs. **⚠️ Contains private keys — do not use for production.** |
| `adb_wrapper.sh` | 106 B | WSL2→Windows ADB bridge: calls `adb.exe` from Windows SDK. |
| `zipalign_location.txt` | 104 B | Documents location of `zipalign.exe` in Windows Android SDK build-tools. |
| `avd_config/` | — | AVD configuration files for `Frida_Test` emulator. |
| `objection_cache/` | gitignored | objection gadget binaries, populated locally by `download_frida_gadget.sh` — not committed (26 MB, same reasoning as frida-server: repo bloat, not a GitHub size-limit issue this time, but the same fix). `gadget_versions`/`version_info`/`objection.log` (small, informational) stay tracked; only the binary under `android/<arch>/` is ignored. |

## Updating Frida-Server

When frida version changes:
```bash
# Download new version
wget https://github.com/frida/frida/releases/download/<version>/frida-server-<version>-android-x86_64.xz
xz -d frida-server-<version>-android-x86_64.xz
cp frida-server-<version>-android-x86_64 tools/

# Push to emulator
base64 tools/frida-server-<version>-android-x86_64 | adb shell "base64 -d > /data/local/tmp/frida-server"
adb shell "chmod 755 /data/local/tmp/frida-server"
adb shell "nohup /data/local/tmp/frida-server -l 0.0.0.0:27042 > /dev/null 2>&1 &"
```
