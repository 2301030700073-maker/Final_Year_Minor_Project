# Phase 1 — Quickstart: Run Without Issues

## Where to run each command

| Symbol | Meaning |
|--------|---------|
| `$` | WSL2 Ubuntu terminal |
| `PS>` | Windows PowerShell |

---

## Step 1 — Verify Emulator

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

> If `ro.build.type` shows `user` or `ro.debuggable` shows `0`, you have a production-build emulator. Create a new one:
> ```bash
> # In Windows PowerShell:
> PS> avdmanager create avd -n Frida_Test -k "system-images;android-30;google_apis;x86_64"
> PS> emulator -avd Frida_Test -no-snapshot -wipe-data
> ```

---

## Step 2 — Install App on Emulator

**Run in WSL2 (`$`):**

```bash
cd ~/Testing/Final_Year_Minor_Project
adb uninstall owasp.mstg.uncrackable1
adb install -r APK_Test/UnCrackable-Level1.apk
```

**Expected:**
```
Success
Success
Performing Streamed Install
Success
```

---

## Step 3 — Start Frida-Server

**Run in WSL2 (`$`):**

```bash
# Check version matches
frida --version
adb shell "/data/local/tmp/frida-server-16 --version"
```

**Expected (both must match):**
```
16.7.19
16.7.19
```

```bash
# Kill old frida-server and start 16.x
adb shell "killall -9 frida-server 2>/dev/null"
adb shell "nohup /data/local/tmp/frida-server-16 -l 0.0.0.0:27042 > /dev/null 2>&1 &"

# Verify it's listening
adb shell "netstat -tlnp | grep 27042"
```

**Expected:**
```
tcp        0      0 0.0.0.0:27042           0.0.0.0:*               LISTEN      <pid>/frida-server-16
```

---

## Step 4 — Forward ADB port + Start Relay

**Run in WSL2 (`$`):**

```bash
adb forward --remove-all
adb -s emulator-5556 forward tcp:27044 tcp:27042
```

**Expected:**
```
27044
```

```bash
# Kill old relay (if any)
powershell.exe -Command "Get-CimInstance Win32_Process -Filter \"Name='python.exe'\" | Where-Object { \$_.CommandLine -match 'frida_relay' } | ForEach-Object { Stop-Process -Id \$_.ProcessId -Force }"

# Start new relay
powershell.exe -Command "Start-Process -WindowStyle Hidden python -ArgumentList '\"C:\\Users\\Divyang\\AppData\\Local\\Temp\\frida_relay.py\" 27043 127.0.0.1 27044'"
```

**Expected:** No output = success. Verify:

```bash
python -c "import socket; s=socket.socket(); s.settimeout(3); s.connect(('172.22.32.1', 27043)); print('Relay OK'); s.close()"
```

**Expected:**
```
Relay OK
```

---

## Step 5 — Test Frida Spawn (one-shot check)

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
session.create_script('Java.perform(function(){send({status:\"OK\"})})').load()
device.resume(pid)
time.sleep(2)
print('Java bridge: OK')
session.detach()
"
```

**Expected:**
```
Spawn OK: <pid>
Java bridge: OK
```

> If `Java.perform()` fails with `ReferenceError: 'Java' is not defined` → your frida version is 17.x. Run `uv sync` to pin to 16.x.
> If `spawn()` hangs → emulator is not `userdebug`.

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

---

## Step 7 — Verify the Report

**Run in WSL2 (`$`):**

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

```bash
cat docs/plans/handoff/bundles/*/reports/*/*.md | grep -A5 "Dynamic Verification"
```

**Expected:**
```
## Dynamic Verification

- Root bypassed: True
- SSL bypassed: None
```

```bash
cat docs/plans/handoff/bundles/*/SUMMARY.md
```

**Expected:**
```
- Exit code: 0 (succeeded)
```

---

## Step 8 — Push

**Run in WSL2 (`$`):**

```bash
git add docs/plans/research/ docs/plans/handoff/bundles/
git commit -m "Phase 1 verification: <summary>"
git push
```

---

## Troubleshooting Table

| Symptom | Check | Fix |
|---------|-------|-----|
| `spawn()` hangs | `ro.debuggable = 1`? | Use userdebug emulator, not user/playstore image |
| `Java is not defined` | `frida --version` | Must be 16.x. Run `uv sync` |
| Relay not connecting | Windows Python 3 installed? | `powershell.exe -Command "python --version"` |
| `adb install` fails | Conflicting signatures | `adb uninstall owasp.mstg.uncrackable1` then retry |
| Pipeline says `NEITHER` | Signatures updated? | Check `git log` for root_detection.yaml changes |
| Tests fail on WSL2 | `test_find_windows_user`? | Pre-existing — expected on WSL2. Ignore. |
| Bundle script hangs | `frida-ps -U`? | Already fixed with `timeout 3` wrapper |

---

## Environment Reference

| Component | Value |
|-----------|-------|
| WSL2 IP | `172.22.32.1` (check: `ip route show default`) |
| Relay listen port | `27043` |
| ADB forward port | `27044` |
| Emulator serial | `emulator-5556` |
| Frida version | `16.7.19` |
| Frida-server version | `16.7.19` |
| Emulator type | `userdebug` (api 30, google_apis) |
| Relay script (Windows) | `C:\Users\Divyang\AppData\Local\Temp\frida_relay.py` |
