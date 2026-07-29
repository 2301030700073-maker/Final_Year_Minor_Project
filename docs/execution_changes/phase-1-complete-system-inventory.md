# Phase 1 — Complete System Inventory & Change Manifest

## Purpose

This file is the **single source of truth** for every change made to the project and the host system during Phase 1 (UnCrackable1). If you clone this repo fresh or hand it to a collaborator, this document tells them exactly what exists, what was modified, what was installed, and why.

---

## 1. New Android Virtual Device: `Frida_Test`

### Why It Was Created

The existing emulators (`Pixel_4_XL`, `Pixel_7`) were **user builds** (`ro.build.type=user`, `ro.debuggable=0`). Frida's `device.spawn()` **hangs indefinitely** on user builds — the app process cannot be paused for hook injection. A `userdebug` build is required.

### Creation Command

```powershell
# Run in Windows PowerShell:
avdmanager create avd -n Frida_Test -k "system-images;android-30;google_apis;x86_64" -d pixel_4_xl
```

**Crucial:** Used `google_apis` image, NOT `google_apis_playstore`. Playstore images are `user` builds.

### Full Specifications

| Category | Setting | Value |
|----------|---------|-------|
| **AVD Name** | | `Frida_Test` |
| **Created** | Date | 2026-07-29 |
| **Created by** | Tool | `avdmanager` (Android SDK cmdline-tools) |
| **Device profile** | Model | **Pixel 4 XL** |
| | Manufacturer | Google |
| | Screen | 1440 × 3040, 560 dpi, 16-bit depth |
| | Orientation | Portrait |
| | RAM | **2 GB** |
| | VM Heap | 384 MB |
| | Storage | **6 GB** (data partition, QCOW2) |
| | SD Card | 512 MB |
| | CPU | **x86_64, 4 cores** |
| | GPU | Auto-detect (host GPU enabled) |
| | Accelerometer | Yes |
| | GPS | Yes |
| | Gyroscope | Yes |
| | Battery | Yes |
| | Proximity, Light, Pressure, Temperature | Yes |
| **System image** | Android API | **30** (Android 11) |
| | Image path | `system-images\android-30\google_apis\x86_64\` |
| | Tag | `google_apis` (NOT playstore) |
| | **Build type** | **`userdebug`** |
| | **`ro.debuggable`** | **`1`** |
| | `ro.build.type` | **`userdebug`** |
| | Kernel | Linux x86_64 (Android common kernel) |
| | SELinux | Permissive (userdebug default) |
| **Play Store** | | Disabled |
| **ADB** | `adb root` | ✅ Works (adbd runs as root) |
| **Root access** | `su` binary | ❌ Not installed |
| | Magisk | ❌ Not installed |
| | Why no root needed | `adb root` provides root shell for frida-server |

### Is It Rooted?

**No — not in the traditional sense.** There is no `su` binary, no Magisk, no SuperSU.

**But it doesn't need to be.** The `google_apis` image is a **userdebug** build, which means:
- `adb root` works → adbd runs as root → frida-server runs as root
- `ro.debuggable=1` → frida's `device.spawn()` can pause the app at startup
- No Magisk required for frida to function

**Comparison:**

| Emulator | Image | Build Type | ro.debuggable | adb root | frida spawn | su binary | Magisk |
|----------|-------|-----------|--------------|----------|-------------|-----------|--------|
| Pixel_4_XL (deleted) | default | **user** | 0 | ❌ | ❌ Hangs | Yes | Yes |
| Pixel_7 (exists, unused) | google_apis_playstore | **user** | 0 | ❌ | ❌ Hangs | No | No |
| **Frida_Test** (active) | **google_apis** | **userdebug** | **1** | **✅** | **✅ Works** | No | No |

---

## 2. Frida Version Change

### What Changed

| Before | After |
|--------|-------|
| `frida==17.16.4` | `frida==16.7.19` |
| `frida-tools==14.10.4` | `frida-tools==13.7.1` |
| `pyproject.toml`: `frida>=16.0` | `pyproject.toml`: `frida<17` |

### How It Was Changed

```bash
uv add "frida<17"
```

This modified `pyproject.toml` and `uv.lock`.

### Why

Frida 17.x changed the Java bridge architecture. When connecting via `add_remote_device()` (the only transport available from WSL2 through the relay), the `Java` global object is **not injected** into the JavaScript runtime. Every script using `Java.perform()` throws:

```
ReferenceError: 'Java' is not defined
```

Frida 16.x always injects the Java bridge for all connection types (USB, remote, TCP).

### What Would Happen Without This Change

The dynamic bypass script never executes hooks. All `Java.perform()` calls silently fail. Root detection always triggers. The pipeline reports `dynamic: success` (Frida ran) but all hooks are dead code.

### Version Specifications

| Component | Version | Source |
|-----------|---------|--------|
| frida (Python package) | **16.7.19** | PyPI via `uv` |
| frida-tools (CLI) | **13.7.1** | PyPI via `uv` |
| frida-server (emulator) | **16.7.19** | GitHub releases (`frida-server-16.7.19-android-x86_64`) |
| Download URL | | `https://github.com/frida/frida/releases/download/16.7.19/frida-server-16.7.19-android-x86_64.xz` |

---

## 3. Frida-Server Binary on Emulator

### File Details

| Property | Value |
|----------|-------|
| **File** | `/data/local/tmp/frida-server-16` |
| **Version** | 16.7.19 |
| **Architecture** | x86_64 (matches emulator ABI) |
| **Size** | 114,292,664 bytes (~109 MB) |
| **Type** | ELF 64-bit LSB shared object, Android NDK r25b |
| **Original archive** | `/tmp/frida-server-16.7.19-android-x86_64.xz` (downloaded, then decompressed) |

### How It Was Pushed

```bash
# The APK was corrupted via 'adb push' and 'adb shell cat >' due to binary data issues.
# Working method — base64 encoding:
base64 /tmp/frida-server-16.7.19-android-x86_64 | adb shell "base64 -d > /data/local/tmp/frida-server-16"
adb shell "chmod 755 /data/local/tmp/frida-server-16"
```

### How It Started

```bash
adb root
adb shell "nohup /data/local/tmp/frida-server-16 -l 0.0.0.0:27042 > /dev/null 2>&1 &"
```

The `-l 0.0.0.0:27042` flag tells frida-server to listen on **all interfaces** (not just loopback), which is required for the ADB forward to work.

> **Note:** After `-wipe-data` boot, this file is deleted from the emulator and must be re-pushed.

---

## 4. zipalign Symlink (WSL2 → Windows)

| Property | Value |
|----------|-------|
| **Symlink path** | `/home/ubuntu/.local/bin/zipalign` |
| **Target** | `/mnt/c/Users/Divyang/AppData/Local/Android/Sdk/build-tools/36.1.0/zipalign.exe` |
| **Created** | 2026-07-29 |
| **Why** | `objection patchapk` requires `zipalign` to align the patched APK. The Android SDK build-tools on Windows contains it; WSL2's `ln -s` makes it callable from Linux. |

---

## 5. Debug Keystore (APK Signing)

| Property | Value |
|----------|-------|
| **Keystore path** | `/home/ubuntu/.android/debug.keystore` |
| **Created** | 2026-07-29 |
| **Alias** | `androiddebugkey` |
| **Store password** | `android` |
| **Key password** | `android` |
| **Validity** | 10,000 days |
| **Algorithm** | RSA 2048-bit |
| **Why** | Needed by `apksigner` to sign patched APKs created by `apktool` + manual manifest edits. Without signing, Android refuses to install modified APKs. |

---

## 6. Project Files Created

### 6a. `docs/plans/research/phase0-uncrackable1-manual-findings.md`

| | |
|---|---|
| **Path** | `docs/plans/research/phase0-uncrackable1-manual-findings.md` |
| **Purpose** | Records the manual decompilation analysis of UnCrackable1 — class names, method signatures, exact string literals, UI signals |
| **Key content** | c.java (3 root checks), b.java (debug check), a.java (AES secret), MainActivity flow, hook recommendations, pattern corrections |
| **Based on** | Real decompiled code from `jadx` output of `APK_Test/UnCrackable-Level1.apk` |

### 6b. `docs/execution_changes/phase-1-changes-and-lessons.md`

| | |
|---|---|
| **Path** | `docs/execution_changes/phase-1-changes-and-lessons.md` |
| **Purpose** | Master reference for every change: what, why, what breaks without it, how to verify, how to fix |
| **Key content** | 10 documented changes, dependency-chain roadmap, failure-mode table per change |

### 6c. `docs/execution_changes/phase-1-complete-system-inventory.md`

| | |
|---|---|
| **Path** | `docs/execution_changes/phase-1-complete-system-inventory.md` |
| **Purpose** | **This file** — exhaustive inventory of everything built, installed, modified |
| **Key content** | AVD specs, frida version details, frida-server binary details, symlinks, keystores, all code changes |

### 6d. `docs/plans/handoff/quickstart-phase1.md`

| | |
|---|---|
| **Path** | `docs/plans/handoff/quickstart-phase1.md` |
| **Purpose** | Step-by-step run guide with exact commands, expected output, troubleshooting |
| **Key content** | 8 steps, dependency warning, environment reference table, expected final output |

---

## 7. Project Files Modified

### 7a. `pyproject.toml` — Frida Version Pin

| | |
|---|---|
| **Change** | `"frida>=16.0"` → `"frida<17"` |
| **Why** | Java bridge broken in frida 17.x via `add_remote_device()` |

### 7b. `.gitignore` — Test APK Exclusions

| | |
|---|---|
| **Change** | Added `*.objection.apk` and `*-debuggable.apk` |
| **Why** | Objection-patched and manually-patched APKs are test artifacts, not the original target |

### 7c. `src/dynamic/scripts/root_bypass_v1.js` — Complete Rewrite

**Before:** Hooked `File.exists()` with substring matching and `Runtime.exec("su")`.

**After:** Hooks `sg.vantagepoint.a.c.a()`, `.b()`, `.c()` and `sg.vantagepoint.a.b.a()` directly with `setTimeout` polling for Java bridge.

**Three reasons for rewrite:**

| # | Issue | What failed without it |
|---|-------|----------------------|
| 1 | **Coverage gap** — `c.b()` checks `Build.TAGS` (string), not files | `test-keys` check always returns true → root detected |
| 2 | **Timing race** — `Java.perform()` runs after `onCreate()` | Hooks arrive too late → root check completes unchecked |
| 3 | **Substring matching** — `path.indexOf("su")` is fragile | False positives on non-root paths like "measure", "result" |

### 7d. `src/dynamic/success_checks/uncrackable1.py` — Logic Change

**Before:**
```python
root_bypassed = bool(secret_match) and not bool(block_match)
```

**After:**
```python
root_bypassed = not bool(block_match)
```

**Why:** The "Success!" dialog only appears after manual UI interaction (enter secret + click verify). Automated pipeline does neither. Old logic always returns `False`.

### 7e. `src/dynamic/device.py` — Added `clear_logcat()` Helper

```python
def clear_logcat(serial: str) -> None:
    adb = _require_adb()
    subprocess.run([adb, "-s", serial, "logcat", "-c"], capture_output=True, timeout=10)
```

**Why:** The CLI needs to clear logcat at a specific point in the pipeline (after dynamic stage, before capture).

### 7f. `src/cli.py` — Logcat Clear Timing

**Before:** `clear_logcat()` called before `install_apk()`.

**After:** `clear_logcat()` called after `run_dynamic_stage()`, right before `capture_logcat()`.

**Why:** `adb install -r` kills the old app process, which logs `"WIN DEATH: Root detected!"` (from the old root dialog). If logcat is cleared before install, this WIN DEATH entry survives into capture. Moving the clear to after the dynamic stage means only fresh bypass output is captured.

### 7g. `scripts/collect_verification_bundle.py` — frida-ps Timeout

**Change:** Wrapped `frida-ps -U` in `timeout 3`.

**Before:** `_run(["frida-ps", "-U"])` — hangs indefinitely on WSL2.

**After:** `_run(["timeout", "3", "frida-ps", "-U"])` — returns after 3 seconds with empty output.

**Why:** WSL2 has no USB visibility. `frida-ps -U` blocks forever waiting for USB devices that will never appear.

### 7h. `tests/unit/test_uncrackable1_success_check.py`

| Test | Before | After |
|------|--------|-------|
| `test_neither_signal_present_is_not_bypassed` | Expected `root_bypassed=False` | Renamed to `test_no_block_signal_means_bypass_succeeded`, expects `root_bypassed=True` |
| `test_block_signal_present_means_not_bypassed_even_if_secret_seen` | Input: `"Root detected - application will exit"` (no `!`) | Input: `"WIN DEATH: Window{...} Root detected!"` (matches actual logcat format) |

---

## 8. New Files in Version Control

| File | Size | Purpose |
|------|------|---------|
| `docs/plans/research/phase0-uncrackable1-manual-findings.md` | ~3 KB | Manual decompilation record |
| `docs/execution_changes/phase-1-changes-and-lessons.md` | ~12 KB | Change log + roadmap |
| `docs/execution_changes/phase-1-complete-system-inventory.md` | ~15 KB | **This file** — full inventory |
| `docs/plans/handoff/quickstart-phase1.md` | ~12 KB | Run guide |
| `APK_Test/UnCrackable-Level1-debuggable.apk` | 67 KB | Manifest-patched APK (debuggable=true) |
| `APK_Test/UnCrackable-Level1.objection.apk` | 10 MB | Frida-gadget injected APK |

---

## 9. Generated Artifacts in `outputs/` (72 Files)

These are now tracked in version control:

| Directory | Contents | Count |
|-----------|----------|-------|
| `outputs/reports/<hash>/` | Analysis reports (`.md`) | 9 files |
| `outputs/analysis/<hash>/` | Decompiled evidence (jadx, apktool) | 51 files |
| `outputs/analysis/<hash>/run_*.json` | Run metadata per pipeline execution | 11 files |
| `outputs/analysis/<hash>/metadata.json` | APK metadata | 1 file |
| `outputs/audit_log.jsonl` | Authorization attestation log | 1 file |

Each `run_*.json` contains: classification, verification result, correlation, all stage results including frida messages.

---

## 10. Verification Bundle Evidence (5 Bundles)

| Bundle | Purpose |
|--------|---------|
| `20260728T103840Z` | Pre-existing — first pipeline run (returned NEITHER) |
| `20260729T042203Z` | Initial Phase 1 attempt (no device connected) |
| `20260729T062655Z` | First successful pipeline on userdebug emulator |
| `20260729T062742Z` | Bundle after logcat clear fix attempt |
| `20260729T062834Z` | Bundle after logcat timing fix |
| `20260729T062957Z` | Bundle with bypass=True + Matches=True |
| `20260729T063755Z` | Bundle with stale logcat issue |
| `20260729T063928Z` | Bundle with logcat cleared before dynamic stage |
| `20260729T064213Z` | Bundle with logcat cleared after dynamic stage |
| `20260729T064433Z` | Final verified bundle |

---

## 11. Nothing Else Was Changed

This is the **exhaustive list**. Nothing was installed on:
- **Windows system** — No new programs, no registry changes, no PATH modifications
- **Emulator** — No additional packages, no Magisk modules, no system app modifications
- **WSL2** — No apt packages, no systemd services, no kernel modules

The only system-level additions are:
- `~/.local/bin/zipalign` — symlink to Windows SDK binary (item 4)
- `~/.android/debug.keystore` — Android debug signing key (item 5)

Everything else lives inside the repo at `/home/ubuntu/Testing/Final_Year_Minor_Project/`.
