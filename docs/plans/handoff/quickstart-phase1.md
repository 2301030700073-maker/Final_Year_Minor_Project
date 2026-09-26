# Phase 1 — Quickstart: Run Without Issues

## Where to Run Each Command

| Symbol | Meaning |
|--------|---------|
| `$` | WSL2 Ubuntu terminal |
| `PS>` | Windows PowerShell |

---

## Dependency Chain (Read This First)

Each step depends on the last. Don't skip ahead.

```
1. Emulator type  → 2. Frida version  → 3. Relay  → 4. Bypass  → 5. Pipeline
```

If anything fails, the **Troubleshooting Table** at the bottom tells you which step to fix.

---

## Step 1 — Verify Emulator is `userdebug`

**Run in WSL2 (`$`):**

```bash
adb devices
```

**Expected:**
```
List of devices attached
emulator-5556	device
```

```bash
adb shell getprop ro.build.type
adb shell getprop ro.debuggable
```

**Expected:**
```
userdebug
1
```

> ❌ If `ro.build.type` shows `user` or `ro.debuggable` shows `0`:
> **Create a new userdebug emulator** (Windows PowerShell):
> ```powershell
> avdmanager create avd -n Frida_Test -k "system-images;android-30;google_apis;x86_64"
> emulator -avd Frida_Test -no-snapshot -wipe-data
> ```
> Wait 2-3 minutes for boot. Then verify again.
>
> ⚠️ Use `google_apis` image, NOT `google_apis_playstore`. Playstore = user build.

---

## Step 2 — Clean Install the App

**Run in WSL2 (`$`):**

```bash
cd ~/Testing/Final_Year_Minor_Project
adb uninstall owasp.mstg.uncrackable1 2>/dev/null
adb install -r APK_Test/UnCrackable-Level1.apk
```

**Expected:**
```
Success
Performing Streamed Install
Success
```

---

## Step 3 — Start Frida-Server 16

**Run in WSL2 (`$`):**

```bash
# Check versions match
frida --version
adb shell "/data/local/tmp/frida-server-16 --version"
```

**Expected (both must be identical, e.g. `16.7.19`):**
```
16.7.19
16.7.19
```

> ❌ If mismatch: download matching frida-server from GitHub releases.

```bash
# Kill old server, start fresh
adb shell "killall -9 frida-server 2>/dev/null; killall -9 frida-server-16 2>/dev/null"
adb shell "nohup /data/local/tmp/frida-server-16 -l 0.0.0.0:27042 > /dev/null 2>&1 &"

# Verify listening
sleep 2
adb shell "netstat -tlnp | grep 27042"
```

**Expected:**
```
tcp        0      0 0.0.0.0:27042           0.0.0.0:*               LISTEN      <pid>/frida-server-16
```

---

## Step 4 — Set Up ADB Forward + Relay

### 4a — ADB Forward

**Run in WSL2 (`$`):**

```bash
adb forward --remove-all
adb -s emulator-5556 forward tcp:27044 tcp:27042
```

**Expected:**
```
27044
```

### 4b — Kill Old Relay (if any)

**Run in WSL2 (`$`):**

```bash
powershell.exe -Command "Get-CimInstance Win32_Process -Filter \"Name='python.exe'\" | Where-Object { \$_.CommandLine -match 'frida_relay' } | ForEach-Object { Stop-Process -Id \$_.ProcessId -Force }"
```

### 4c — Start New Relay

**Run in WSL2 (`$`):**

```bash
powershell.exe -Command "Start-Process -WindowStyle Hidden python -ArgumentList '\"C:\\Users\\Divyang\\AppData\\Local\\Temp\\frida_relay.py\" 27043 127.0.0.1 27044'"
```

### 4d — Verify Relay

**Run in WSL2 (`$`):**

```bash
sleep 2
python -c "import socket; s=socket.socket(); s.settimeout(3); s.connect(('172.22.32.1', 27043)); print('Relay OK'); s.close()"
```

**Expected:**
```
Relay OK
```

> ❌ If relay fails: check Windows Python with `powershell.exe -Command "python --version"`
> ❌ If wrong IP: find it with `ip route show default | awk '{print $3}'`

---

## Step 5 — Test Frida Spawn + Java Bridge

**Run in WSL2 (`$`):**

```bash
cd ~/Testing/Final_Year_Minor_Project
PYTHONPATH=src python -c "
import frida, time
device = frida.get_device_manager().add_remote_device('172.22.32.1:27043')
time.sleep(1)
pid = device.spawn(['owasp.mstg.uncrackable1'])
print(f'Spawn OK: {pid}')
session = device.attach(pid)
script = session.create_script('Java.perform(function(){send({status:\"OK\"})})')
msgs = []
script.on('message', lambda m, d: msgs.append(m))
script.load()
device.resume(pid)
time.sleep(3)
print(f'Java bridge: {msgs[0][\"payload\"][\"status\"] if msgs else \"FAIL\"}')
session.detach()
print('ALL OK')
"
```

**Expected:**
```
Spawn OK: <number>
Java bridge: OK
ALL OK
```

> ❌ `Java is not defined` → frida version is 17.x. Run `uv sync` to get 16.x.
> ❌ `spawn()` hangs → emulator is not `userdebug`. Go back to Step 1.
> ❌ Relay error → check Step 4.

---

## Step 6 — Run the Full Pipeline

**Run in WSL2 (`$`):**

```bash
cd ~/Testing/Final_Year_Minor_Project
uv sync
python -u scripts/collect_verification_bundle.py \
    --apk APK_Test/UnCrackable-Level1.apk \
    --justification ACADEMIC_TRAINING_TARGET
```

**Expected output:**
```
Collecting environment info...
Running unit tests (uv run pytest tests/unit)...
Running the real pipeline against APK_Test/UnCrackable-Level1.apk ...

Bundle written to: docs/plans/handoff/bundles/<timestamp>Z/
git add, commit, and push this directory (and docs/plans/research/ findings, if written).
```

⏱ The pipeline takes ~2 minutes. All stages should show `success`.

---

## Step 7 — Verify Results

### 7a — CLI Output

```bash
cat docs/plans/handoff/bundles/*/cli_output.txt
```

**Expected:**
```
OK  ingest       (...ms)
OK  audit        (...ms)
OK  decompile    (...ms)
OK  static_scan  (...ms)
OK  manifest_parse (...ms)
OK  decision_engine (...ms)
Decision: ROOT_ONLY
OK  dynamic      (...ms)
```

### 7b — Dynamic Verification

```bash
cat docs/plans/handoff/bundles/*/reports/*/*.md | grep -A5 "Dynamic Verification"
```

**Expected:**
```
## Dynamic Verification

- Root bypassed: True
- SSL bypassed: None
```

### 7c — Correlation Matches

```bash
cat docs/plans/handoff/bundles/*/reports/*/*.md | grep -A1 "Matches"
```

**Expected:**
```
- Matches: True
```

### 7d — Overall Summary

```bash
cat docs/plans/handoff/bundles/*/SUMMARY.md | grep -E "Exit code|succeeded"
```

**Expected:**
```
- Exit code: 0 (succeeded)
```

### 7e — Check Dynamic Stage Evidence

```bash
python -c "import json; d=json.load(open('docs/plans/handoff/bundles/*/analysis/*/run_*.json')); print(json.dumps(d['stage_results'][-1]['evidence']['frida_messages'], indent=2))" 2>/dev/null || for f in docs/plans/handoff/bundles/*/analysis/*/run_*.json; do python -c "import json; d=json.load(open('$f')); msgs=d['stage_results'][-1]['evidence'].get('frida_messages',[]); [print(m['payload']['hook'], '→', m['payload']['forced_result']) for m in msgs if 'forced_result' in m['payload']]" 2>/dev/null; done
```

**Expected — all 5 hooks returning False:**
```
sg.vantagepoint.a.c → all three hooked
c.a → False
c.b → False
c.c → False
b.a → False
```

---

### Running Phase 2 (Level 2)
```bash
bash run.sh --target uncrackable2
```
Or manually:
```bash
uv run python scripts/collect_verification_bundle.py \
    --apk APK_Test/UnCrackable-Level2.apk \
    --justification ACADEMIC_TRAINING_TARGET \
    --target uncrackable2
```

### Testing Negative Controls (NEITHER classification)
To verify the pipeline correctly classifies apps WITHOUT root detection or SSL pinning:
```bash
# Use a simple system app like Contacts as a negative control
python -u scripts/collect_verification_bundle.py \
    --apk APK_Test/contacts.apk \
    --justification ACADEMIC_TRAINING_TARGET \
    --target uncrackable1
```
Expected: `Decision: NEITHER` with root confidence 0.00 and SSL confidence 0.00.

> ⚠️ **Known jadx limitation:** Production apps with R8/ProGuard obfuscation or multi-dex
> packaging may fail at the decompile stage. The pipeline handles this gracefully by halting
> with a clear error, but it means not all APKs can be analyzed. Simple system apps and
> OWASP UnCrackable levels work reliably.

## Step 8 — Push Results

```bash
git add docs/plans/research/ docs/plans/handoff/bundles/
git commit -m "Phase 1 verification: <summary of results>"
git push
```

---

## Troubleshooting Table

| Symptom | Root Cause | Check | Fix |
|---------|-----------|-------|-----|
| `spawn()` hangs | Emulator is `user` build | `ro.debuggable` | Create userdebug AVD with `google_apis` image |
| `Java is not defined` | Frida >= 17.x | `frida --version` | `uv sync` (pinned to <17 in pyproject.toml) |
| Relay "Connection refused" | Windows Python not installed | `powershell.exe -Command "python --version"` | Install Python 3 on Windows |
| Relay "Relay dead" | Relay process killed or never started | `python -c "import socket; ...connect..."` | Re-run Step 4b-4d |
| `adb install` fails | Conflicting signatures from old install | `adb uninstall owasp.mstg.uncrackable1` | Clean uninstall then retry |
| Pipeline says `NEITHER` | Signatures not matching | Compare decompiled code vs YAML | Check `git log` for signature updates |
| `Root bypassed: False` | 3 possible causes | See below | See below |
| `Root bypassed: False` (no block signal) | Success check logic (pre-fix) | Report says `evidence_lines: {}` | Update `uncrackable1.py` (already fixed in code) |
| `Root bypassed: False` (block signal present) | Stale WIN DEATH in logcat | Check logcat timing | Already fixed — `cli.py` clears after dynamic stage |
| Tests fail on WSL2 | `test_find_windows_user` | Test name | Pre-existing — expected on WSL2. Ignore. |
| Bundle script hangs | `frida-ps -U` blocks on WSL2 | No output after 10s | Already fixed — `timeout 3` wrapper in bundle script |
| `adb: more than one device` | Two emulators running | `adb devices` | Kill old emulator: `adb -s <serial> emu kill` |
| Boot: `FATAL \| Running multiple emulators with the same AVD` | The AVD is locked — one is already running it, or a killed one left the lock behind | `adb devices` (from WSL2) | Listed → it is already up, use it. Empty → stale lock: `Remove-Item "C:\Users\Divyang\.android\avd\Frida_Test_API34.avd\multiinstance.lock"`, then boot again. **Not** `-read-only`, which the message suggests: it discards writes, so APK installs would not persist. |

---

## Environment Reference

| Component | Value | How to Find |
|-----------|-------|-------------|
| WSL2 Windows host IP | `172.22.32.1` | `ip route show default \| awk '{print $3}'` |
| Relay listen port | `27043` | Fixed in `device.py` |
| ADB forward port | `27044` | Fixed in `device.py` |
| Emulator serial | `emulator-5556` | `adb devices` |
| Frida version (WSL) | `16.7.19` | `frida --version` |
| Frida-server version (emulator) | `16.7.19` | `adb shell "/data/local/tmp/frida-server-16 --version"` |
| Emulator type | `userdebug` (API 30, google_apis x86_64) | `adb shell getprop ro.build.type` |
| Relay script (Windows) | `C:\Users\Divyang\AppData\Local\Temp\frida_relay.py` | Auto-copied by `device.py` |
| Python deps | Managed by `uv` | `uv sync` reads `pyproject.toml` |
| Android SDK | `C:\Users\Divyang\AppData\Local\Android\Sdk` | Windows side |
| ADB wrapper | `~/.local/bin/adb` | Calls Windows `adb.exe` |

---

## Expected Final Output (End-to-End Verified)

```
Stage Results:
├── ingest:     success (123ms)
├── audit:      success (0ms)
├── decompile:  success (0ms)
├── static_scan: success (3ms)
├── manifest_parse: success (0ms)
├── decision_engine: success (0ms)
├── dynamic:    success (6520ms)

Decision: ROOT_ONLY  (threshold 0.70, confidence 0.80)

Dynamic Verification:
├── Root bypassed: True
├── SSL bypassed: None

Correlation:
├── Matches: True
```
