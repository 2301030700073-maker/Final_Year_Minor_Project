# tools/ — Supplemental Tools & Binaries

These files support the analysis pipeline. They are committed to
ensure reproducible builds and avoid re-downloading.

| File | Size | Purpose |
|------|------|---------|
| `download_frida_server.sh` | — | Downloads matching frida-server from GitHub (exceeds GitHub's 100 MB file limit). Run `bash tools/download_frida_server.sh` before first use. |
| `adb_wrapper.sh` | 106 B | WSL2→Windows ADB bridge: calls `adb.exe` from Windows SDK. |
| `avd_config/` | — | AVD configuration files for `Frida_Test` emulator. |

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
