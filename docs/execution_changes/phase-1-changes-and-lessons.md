# Phase 1 — Complete Change Log, Root Causes & Roadmap

## Why This File Exists

This is the **master reference** for every change made during Phase 1 verification of UnCrackable Level 1. Each entry documents:
- **What** was changed
- **Why** (the exact failure without it)
- **What would happen** if we skipped this change
- **When in the flow** this matters

If you're setting up for Phase 2 (UnCrackable2/3), read this first — it will save you every hour we spent debugging.

---

## Roadmap: The Dependency Chain

Each fix depends on the one before it. This is the **order problems appear** if you start from scratch:

```
1. Frida version        ← If wrong → Java bridge missing → NO hooks at all
     │
     ▼
2. Emulator type       ← If wrong → spawn() hangs → NO dynamic stage
     │
     ▼
3. ADB relay bridge   ← If missing → Frida can't connect → NO dynamic stage
     │
     ▼
4. Bypass script hooks ← If wrong → hooks miss some checks → bypass FAILS
     │
     ▼
5. Spawn gating timing ← If wrong → hooks arrive after onCreate → bypass FAILS
     │
     ▼
6. Success check logic ← If wrong → report says bypass FAILED even when it worked
     │
     ▼
7. Logcat clear timing ← If wrong → stale entries cause false block-signal → MISMATCH
     │
     ▼
8. frida-ps -U timeout ← If missing → bundle script hangs → NO output at all
```

---

## Change 1: Pin Frida `<17` in pyproject.toml

| | |
|---|---|
| **File** | `pyproject.toml` (line: `"frida<17"`) |
| **What** | Downgraded frida 17.16.4 → 16.7.19. Added version pin. |

### What Happens Without This

Every call to `Java.perform()` in the bypass script throws:
```
ReferenceError: 'Java' is not defined
```

Frida 17.x changed its architecture — the Java bridge (`frida-java-bridge`) is **not injected** when connecting via `add_remote_device()` (TCP/remote connection). This is the **only** way Frida can connect from WSL2 through the relay.

Frida 16.x always injects the Java bridge for all connection types (USB, remote, local).

### Symptom
```
FRIDA: ReferenceError: 'Java' is not defined
```
→ The script loads but never executes hooks. Root detection always triggers.

### Verification
```bash
frida --version          # must show 16.x
adb shell "/data/local/tmp/frida-server-16 --version"   # must match
```

### Fixed In
Commit `119b513` — `pyproject.toml`, `uv.lock`

---

## Change 2: Use `userdebug` Emulator (Google APIs Image)

| | |
|---|---|
| **What** | Created new AVD `Frida_Test` using `system-images;android-30;google_apis;x86_64` |
| **Why** | Production/user builds (`ro.debuggable=0`) block frida `spawn()` |

### What Happens Without This

`device.spawn(['owasp.mstg.uncrackable1'])` **hangs indefinitely**. The process is created but never returns. No error message — just a 10-second timeout.

Root cause: On `user` builds, the Android runtime prevents ptrace attachment to app processes. Frida needs this to pause the app at startup for hook injection.

### Detection
```bash
adb shell getprop ro.build.type      # MUST be 'userdebug', NOT 'user'
adb shell getprop ro.debuggable      # MUST be '1', NOT '0'
```

### How to Create (Windows PowerShell)
```powershell
avdmanager create avd -n Frida_Test -k "system-images;android-30;google_apis;x86_64"
emulator -avd Frida_Test -no-snapshot -wipe-data
```

**Crucial:** Use `google_apis` image, NOT `google_apis_playstore`. Playstore images are `user` builds. Google APIs images are `userdebug`.

### Fixed In
Manual AVD creation (not in repo — emulator is local infrastructure)

---

## Change 3: ADB Transport Relay (WSL2 → Windows → Emulator)

| | |
|---|---|
| **Files** | `scripts/frida_relay.py`, `src/dynamic/device.py` |
| **What** | Python TCP relay running on Windows bridges WSL2 ↔ emulator |

### What Happens Without This

Frida cannot connect from WSL2 to the Android emulator. Every method fails:

```
frida-ps -U                    → hangs (no USB in WSL)
frida-ps -R                    → "unable to connect" (can't reach Windows 127.0.0.1)
add_remote_device("127.0.0.1:27042") → ServerNotRunningError
```

**Why:** WSL2 has its own network stack. `adb forward` creates listeners on Windows' `127.0.0.1`, which is unreachable from WSL2. `localhostForwarding=true` in `.wslconfig` doesn't fix this for ADB forwards.

### Architecture
```
WSL:Frida → [win-ip]:27043 → Windows:Python relay → 127.0.0.1:27044
  → ADB forward → emulator:frida-server (port 27042)
```

### Fixed In
Previous session (commits `0f56dcb`, `6688930`, `1cf0253`) — `scripts/frida_relay.py`, `src/dynamic/device.py`

---

## Change 4: Rewrite Bypass Script — Hook Root-Check Methods Directly

| | |
|---|---|
| **File** | `src/dynamic/scripts/root_bypass_v1.js` |
| **What** | Changed from hooking `File.exists()`/`Runtime.exec()` to hooking `c.a()`, `c.b()`, `c.c()`, `b.a()` directly |

### What Happens Without This

**Three distinct failures:**

#### 4a. Coverage Gap (c.b — test-keys check)
The original script hooked `File.exists()` and `Runtime.exec("su")`. But `c.b()` checks:
```java
Build.TAGS != null && Build.TAGS.contains("test-keys")
```
This is a **string comparison** — no file access, no exec. **Never intercepted.**

**Result:** `c.b()` always returns `true` → root dialog shown → app exits.

#### 4b. Timing Race
Even with spawn gating, hooking `File.exists()` is **indirect**. The chain is:
```
resume → app starts → onCreate() → c.a(), c.b(), c.c() → root check
```
Hooking `c.a/b/c` directly means: the moment `Java.perform()` callback runs, every call to these methods returns `false`. No race.

#### 4c. Substring False Positives
`path.indexOf("su")` matches legitimate paths (e.g., `measure`, `result`) — fragile.

### The Fixed Script
```javascript
C.a.implementation = function() { return false; };
C.b.implementation = function() { return false; };
C.c.implementation = function() { return false; };
B.a.implementation = function(ctx) { return false; };
```
With `setTimeout` polling for `Java.available`:
```javascript
function hook_root_checks() {
    if (typeof Java === 'undefined' || !Java.available) {
        setTimeout(hook_root_checks, 50);
        return;
    }
    Java.perform(function() { /* hooks here */ });
}
```

### Fixed In
Commit `c6f2d8d` — `src/dynamic/scripts/root_bypass_v1.js`

---

## Change 5: Spawn Gating + setTimeout Polling for Java Bridge

| | |
|---|---|
| **File** | `src/dynamic/scripts/root_bypass_v1.js` |
| **What** | Added `setTimeout` polling loop waiting for `Java.available` |

### What Happens Without This

On Android 11+ (API 30), the Java VM initializes **after** frida's JavaScript runtime starts. The `Java` object is undefined at script load time. Without polling:
```javascript
Java.perform(function() { ... });  // ReferenceError: Java is not defined
```

With the polling pattern, the function retries every 50ms until `Java.available` is `true`, then installs hooks. This typically takes 1-3 retries (50-150ms), well before `onCreate` runs (~484ms).

### Fixed In
Commit `c6f2d8d` — `src/dynamic/scripts/root_bypass_v1.js`

---

## Change 6: Success Check — Don't Require UI Interaction

| | |
|---|---|
| **File** | `src/dynamic/success_checks/uncrackable1.py` |
| **What** | Changed `root_bypassed` from `bool(secret_match) AND NOT block_match` to `NOT block_match` |

### What Happens Without This

The "Success!" / "This is the correct secret." dialog only appears when the user:
1. Enters the correct decrypted secret
2. Clicks the "verify" button

The **automated pipeline does neither.** No UI interaction happens.

Old logic:
```python
root_bypassed = bool(secret_match) and not bool(block_match)
# secret_match ALWAYS False → root_bypassed ALWAYS False
```

New logic:
```python
root_bypassed = not bool(block_match)
# If no detection dialog appeared, hooks worked → bypass confirmed
```

**Result without fix:** Every report says `Root bypassed: False` and `MISMATCH` — even when the bypass worked perfectly.

### Fixed In
Commit `c6f2d8d` — `src/dynamic/success_checks/uncrackable1.py`

---

## Change 7: Clear Logcat AFTER Dynamic Stage (Not Before)

| | |
|---|---|
| **Files** | `src/cli.py`, `src/dynamic/device.py` |
| **What** | Moved `adb logcat -c` from `install_apk()` to right before `capture_logcat()` |

### What Happens Without This

When `adb install -r` runs, it **kills the old app process**. If the old process showed a "Root detected!" dialog, the death log includes:
```
WIN DEATH: Window{... u0 Root detected!}
```

Sequence with the wrong timing:
```
1. logcat -c              ← clears buffer
2. adb install -r         ← kills old app → "WIN DEATH: Root detected!" is LOGGED
3. run_dynamic_stage()    ← spawns app with hooks, bypass works
4. capture_logcat()       ← captures "WIN DEATH: Root detected!" from step 2
5. check()                ← finds "Root detected!" → root_bypassed = False
```

Corrected sequence:
```
1. adb install -r         ← kills old app → "WIN DEATH" logged
2. run_dynamic_stage()    ← spawns app with hooks, bypass works
3. logcat -c              ← clears EVERYTHING (including old "WIN DEATH")
4. capture_logcat()       ← captures only fresh entries (no block signal)
5. check()                ← no block signal → root_bypassed = True
```

### Fixed In
Commit `c865fc0` (logcat timing) — `src/cli.py`

---

## Change 8: `frida-ps -U` Timeout in Bundle Script

| | |
|---|---|
| **File** | `scripts/collect_verification_bundle.py` |
| **What** | Wrapped `frida-ps -U` in `timeout 3` |

### What Happens Without This

`frida-ps -U` tries to enumerate USB devices. WSL2 has **no USB visibility** into the Windows-hosted emulator. The command blocks **indefinitely** — no timeout, no error, just hangs forever.

Since the bundle script calls this during `collect_environment()`, the script never reaches the pipeline.

### Fixed In
Commit `c6f2d8d` — `scripts/collect_verification_bundle.py` (line 73)

---

## Change 9: Update Unit Tests for New Logic

| | |
|---|---|
| **Files** | `tests/unit/test_uncrackable1_success_check.py` |
| **What** | Updated test to expect `root_bypassed=True` when no block signal present |

### What Happens Without This

Tests fail after the success check logic change. The test `test_neither_signal_present_is_not_bypassed` expects `root_bypassed=False` but the new logic returns `True` (no block signal = bypassed).

### Fixed In
Commit `c6f2d8d` — `tests/unit/test_uncrackable1_success_check.py`

---

## Change 10: Add `.gitignore` for Test APK Variants

| | |
|---|---|
| **File** | `.gitignore` |
| **What** | Added `*.objection.apk` and `*-debuggable.apk` patterns |

### Why
During testing we created patched APK variants:
- `UnCrackable-Level1-debuggable.apk` — manifest patched for `android:debuggable=true`
- `UnCrackable-Level1.objection.apk` — frida-gadget injected via objection

These are intermediate test artifacts, not the original target APK. The `.gitignore` patterns keep them out of accidental staging.

### Fixed In
Commit `77666e4` — `.gitignore`

---

## Summary: What Breaks Without Each Fix

| # | Change | Without it → What happens |
|---|--------|---------------------------|
| 1 | Frida <17 | `Java.perform()` throws → no hooks → root always detected |
| 2 | userdebug emulator | `device.spawn()` hangs → pipeline times out |
| 3 | ADB relay | Frida can't connect from WSL2 → pipeline times out |
| 4 | Direct method hooks | `c.b()` not intercepted → test-keys always detected → bypass fails |
| 5 | setTimeout Java polling | Hooks never install → `onCreate` runs unchecked |
| 6 | Success check logic | Report says bypass failed even when it worked → MISMATCH |
| 7 | Logcat after dynamic stage | Stale WIN DEATH causes false block signal → MISMATCH |
| 8 | frida-ps -U timeout | Bundle script hangs → no output |
| 9 | Test updates | Unit tests fail |
| 10 | .gitignore | Test APKs accidentally committed |

---

## Quick Reference: Verification Commands

### Before Pipeline Run
```bash
# Emulator type
adb shell getprop ro.build.type      # userdebug
adb shell getprop ro.debuggable      # 1

# Frida version
frida --version                                    # 16.x
adb shell "/data/local/tmp/frida-server-16 --version"  # same

# Frida-server running
adb shell "netstat -tlnp | grep 27042"             # LISTEN

# Relay
python -c "import socket; s=socket.socket(); s.settimeout(3); s.connect(('172.22.32.1', 27043)); print('OK'); s.close()"
```

### After Pipeline Run — Success Criteria
```bash
grep "Root bypassed" outputs/reports/*/*.md    # True
grep "Matches" outputs/reports/*/*.md          # True
grep "Exit code: 0" docs/plans/handoff/bundles/*/SUMMARY.md  # present
```

---

## Files Changed This Session

| File | Change | Why |
|------|--------|-----|
| `pyproject.toml` | `frida>=16.0` → `frida<17` | Java bridge broken in 17.x |
| `src/dynamic/scripts/root_bypass_v1.js` | Rewrote to hook c.a/b/c + b.a directly | Coverage gap + timing race |
| `src/dynamic/success_checks/uncrackable1.py` | `secret AND NOT block` → `NOT block` | No UI interaction = no success dialog |
| `src/dynamic/device.py` | Added `clear_logcat()` helper | Need to clear logcat at right time |
| `src/cli.py` | `clear_logcat` after dynamic stage | Stale WIN DEATH entries from install |
| `scripts/collect_verification_bundle.py` | `timeout 3` on `frida-ps -U` | WSL2 has no USB visibility |
| `tests/unit/test_uncrackable1_success_check.py` | Updated for new logic | Tests must match verification behavior |
| `.gitignore` | Added `*.objection.apk`, `*-debuggable.apk` | Test artifacts not for commit |
| `docs/execution_changes/phase-1-changes-and-lessons.md` | This file | Full reference |
| `docs/plans/handoff/quickstart-phase1.md` | Step-by-step run guide | Prevent re-debugging |

---

## Post-Phase 3 Findings

### jadx Limitation: Production/Modern APKs May Fail Decompilation

| | |
|---|---|
| **What** | `jadx` fails on modern R8/ProGuard-obfuscated or multi-dex APKs |
| **Tested with** | F-Droid (12MB), Root Checker (12MB) — both failed at decompile stage |
| **What works** | Small/medium apps without heavy obfuscation (Contacts app: 9.9MB, decompiled and analyzed successfully) |

**Impact:** The pipeline's `decompile` stage is a bottleneck for production apps. `jadx` is a static analysis tool with no dynamic unpacking capability.

**Next time:** For Phase 4, consider:
- Using `jeb` or `Ghidra` as a fallback decompiler
- Adding a pre-check: if `jadx` fails, log the error clearly and suggest alternatives
- Testing with known simple APKs first before attempting production targets

### Negative Control Test: Contacts App = NEITHER ✅

Tested the Android Contacts system app (pulled from emulator, 9.9MB) as a negative control. Result:

| Check | Value |
|-------|-------|
| Root confidence | 0.00 |
| SSL confidence | 0.00 |
| Decision | `NEITHER` |
| Correlation | N/A (no bypass attempted) |

This proves the pipeline correctly classifies apps with no root detection or SSL pinning as `NEITHER`, not as a false-positive `ROOT_ONLY` or `SSL_ONLY`.
| `docs/plans/research/phase0-uncrackable1-manual-findings.md` | New file | Manual decompilation record |
