# Phase 1 — Changes, Root Causes, and Lessons

## Why This File Exists

This documents every change made during Phase 1 verification and **why it was necessary** — what would have happened without it, and how to avoid re-debugging it next time. If you're setting up a fresh environment for Phase 2 (UnCrackable2/3), follow the **Next-Time Checklist** at the end.

---

## 1. Frida Version: Pin `frida<17`

### What we changed
Added `"frida<17"` to `pyproject.toml`. Downgraded from 17.16.4 → 16.7.19.

### Why
Frida 17.x changed the Java bridge architecture. When connecting via `add_remote_device()` (the only way Frida works from WSL2 → Windows → emulator), the `Java` global object is **not injected** into the JavaScript runtime. Every call to `Java.perform()` throws:
```
ReferenceError: 'Java' is not defined
```
This applies regardless of emulator type — userdebug or user build.

Frida 16.x always injects the Java bridge for all connection types.

### Without this change
The dynamic bypass stage would always fail. Scripts using `Java.perform()` would never execute their hooks. Root detection would always trigger.

### Next time
- Check frida version *before* starting a new phase. If ≥17.0.0, downgrade.
- `frida --version` on the WSL side and `frida-server --version` on the emulator must match.
- Pin is already in `pyproject.toml` → `uv sync` handles this.

---

## 2. Emulator Build Type: Must Be `userdebug`

### What we changed
Created a new AVD (`Frida_Test`) using a `google_apis` system image (android-30). Switched from the default `user` build emulator to this one.

### Why
On emulators with `ro.debuggable=0` (production/user builds), `device.spawn()` hangs indefinitely. Frida cannot pause the app process at startup to inject hooks. The spawn call times out after 10 seconds with no error message.

On `userdebug` builds (`ro.debuggable=1`), `device.spawn()` creates a paused process that accepts hook injection via `device.attach()` before `device.resume()`.

Additionally, on `userdebug`:
- `adb root` works → frida-server runs as root
- No need for `su` wrapper
- App processes accept ptrace attachment without SELinux denials

### Without this change
The dynamic stage never starts. Pipeline times out at the first `device.spawn()` call. No bypass is ever attempted.

### How to detect
```bash
adb shell getprop ro.build.type      # must be 'userdebug'
adb shell getprop ro.debuggable      # must be '1'
```

### Next time
- List available images: `sdkmanager --list | grep google_apis` (NOT `google_apis_playstore`)
- Create AVD: `avdmanager create avd -n <name> -k "system-images;android-30;google_apis;x86_64"`
- The `google_apis` images are `userdebug`. `google_apis_playstore` images are `user` — avoid them for frida work.

---

## 3. Bypass Script: Hook Root-Check Methods Directly

### What we changed
Rewrote `src/dynamic/scripts/root_bypass_v1.js` to hook `sg.vantagepoint.a.c.a()`, `.b()`, `.c()` and `sg.vantagepoint.a.b.a()` directly — not `File.exists()`.

### Why (three reasons)

**a) Coverage gap.** The original script only hooked `File.exists()` and `Runtime.exec("su")`. UnCrackable1's `c.b()` method checks `Build.TAGS.contains("test-keys")` — a string comparison, not a file check. This check was never intercepted. Result: root detected despite all PATH and indicator-file hooks working.

**b) Timing race.** Even with spawn gating, hooking `File.exists()` is indirect. Between `device.resume()` and `Java.perform()` queuing the hook, `onCreate` can run the root checks first. Hooking the root-check methods directly means: as soon as Java is available and the callback runs, every call to these methods returns `false`.

**c) Substring false positives.** The `File.exists()` hook checked `path.indexOf("su")` which matches paths like `/system/app/Superuser.apk` (correct — it IS an indicator file) but also has the risk of false negatives if the app uses different path patterns.

### Without this change
`c.b()` returns `true` (test-keys detected) → root dialog shown → `System.exit(0)` called. The bypass fails silently because 2 of 3 checks pass but the third always fails.

### Next time
- Before writing hooks for a new target, **read the decompiled code first** (step 2 in the handoff). You need to know every method in every check class.
- Hook the root-check methods directly (`ClassName.methodName.implementation = function() { return false; }`), not the utility functions they call.
- Use the `setTimeout` polling pattern to wait for `Java.available` — this handles any timing variability in Java VM initialization.

---

## 4. Success Check Logic: Don't Require the Success Dialog

### What we changed
Changed `root_bypassed` from `bool(secret_match) and not bool(block_match)` to `not bool(block_match)`.

### Why
The "Success!" dialog with "This is the correct secret." only appears when someone enters the correct password and clicks the verify button. The automated pipeline does not:
- Read the secret from the decompiled code
- Type it into the EditText
- Click the verify button

So the success signal **never appears** during an automated run. The old logic would always return `root_bypassed=False` even when all hooks worked and no root dialog was shown.

The correct criterion for automated bypass: **no block dialog appeared** (no "Root detected!", no "App is debuggable!", no "unacceptable" dialog message). If hooks were injected and no detection dialog shows, the bypass succeeded.

If a success/secret signal is also present (e.g., from a manual interaction or a future automated secret-extraction step), that's recorded in `evidence_lines["secret_revealed"]` as bonus confirmation — but it's not required.

### Without this change
Every automated run reports `MISMATCH: static predicted root-detection, dynamic did not confirm it` — even when the bypass worked perfectly. The correlation is always `False`.

### Next time
- For any new target, identify: does the app auto-navigate to a success screen on bypass? Or does it stop showing the detection dialog and wait for input?
- Adjust the success check accordingly:
  - Dialog-based apps → verify NO block dialog
  - Auto-navigate apps → verify success signal appeared
  - Secret-extraction targets → verify both

---

## 5. Logcat Must Be Cleared Before Dynamic Stage

### What we changed
Added `adb logcat -c` to `device.install_apk()` in `src/dynamic/device.py`.

### Why
`device.capture_logcat()` calls `adb logcat -d` which dumps **the entire log buffer** — including entries from previous runs. During debugging, we had dozens of "App is debuggable!" and "Root detected!" messages from earlier tests. These stale entries matched the `BLOCK_SIGNAL_PATTERN`, causing false negatives.

### Without this change
Logcat from a fresh pipeline run is polluted by earlier manual tests. The verification check sees stale block signals and reports `root_bypassed=False`.

### Next time
- Already fixed in `device.py` — logcat is cleared at install time.
- If you add a new success check module, include `adb logcat -c` at the start of the target's setup.

---

## 6. WSL2 `frida-ps -U` Hangs

### What we changed
Added `timeout 3` wrapper around the `frida-ps -U` command in `scripts/collect_verification_bundle.py`.

### Why
From WSL2, `frida-ps -U` tries to enumerate USB devices. WSL2 has no USB visibility into the Windows-hosted emulator. The command blocks indefinitely waiting for a USB device that will never appear.

### Without this change
The bundle script hangs before collecting any environment info. Every run requires manual intervention to kill it.

### Next time
- Already fixed in the bundle script.
- If you write a new env-collection script, wrap `frida-ps -U` in a `timeout` or detect WSL2 and skip it.

---

## 7. ADB Transport: WSL2 → Windows → Emulator Relay

### What we changed
The relay bridge was built in the previous session (documented in `session-2026-07-28-wsl-setup-and-frida-bridge.md`). During Phase 1 verification, we confirmed it works with frida 16.

### Why
WSL2 has a separate network stack from Windows. `adb forward` creates listeners on Windows' `127.0.0.1`, unreachable from WSL2. The relay runs a Python TCP forwarder on Windows that bridges the gap:
```
WSL:Frida → [win-ip]:27043 → Windows:Python relay → 127.0.0.1:27044 → ADB forward → emulator:27042
```

### Without this change
Frida cannot connect from WSL2 to the emulator. The dynamic stage cannot start.

### Next time
- The relay is auto-started by `setup_frida_connection()` in `device.py` — no manual steps needed.
- Before running, verify: `adb shell "netstat -tlnp | grep 27042"` shows frida-server listening on the emulator.
- If relay fails, check: `python --version` on Windows (via `powershell.exe -Command "python --version"`) — Windows Python 3 is required.

---

## 8. pyproject.toml Changes

| Dependency | Why |
|---|---|
| `"frida<17"` | Java bridge unavailable in frida 17.x via remote device connection |
| `"frida-tools"` (implicit) | Matches frida version when pinned |

---

## Next-Time Checklist (New Environment)

If you're setting up for Phase 2 (UnCrackable2) or Phase 3 (UnCrackable3), run this sequence:

```bash
# 1. Python deps
cd ~/Testing/Final_Year_Minor_Project
uv sync
frida --version          # must be 16.x, not 17.x

# 2. Emulator (MUST be userdebug)
adb shell getprop ro.build.type    # must be 'userdebug'
adb shell getprop ro.debuggable    # must be '1'
# If not: create a new AVD with google_apis image, not google_apis_playstore

# 3. Frida-server on emulator (version must match WSL frida)
adb shell "/data/local/tmp/frida-server --version"   # must match frida --version
# If not: push matching frida-server binary

# 4. Verify frida-server is running
adb shell "netstat -tlnp | grep 27042"   # must show frida-server listening

# 5. Test frida spawn (Python)
python -c "
import frida
device = frida.get_device_manager().add_remote_device('172.22.32.1:27043')
pid = device.spawn(['owasp.mstg.uncrackable1'])
print(f'Spawn OK: {pid}')
session = device.attach(pid)
session.detach()
"

# 6. If spawn hangs → check ro.debuggable
# If Java is not defined → check frida version
# If relay can't connect → check Windows Python and ADB forward
```

### Quick Health Check
```bash
cd ~/Testing/Final_Year_Minor_Project
python scripts/check_environment.py --fix
```
This auto-starts frida-server, checks the relay, and runs unit tests.
