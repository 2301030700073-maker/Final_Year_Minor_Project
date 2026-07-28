# Session: 2026-07-28 — WSL Environment Setup & Frida ADB Bridge

## Objective

Clone the repo, verify the project runs on the reference WSL2 environment, check all
toolchain requirements, and fix Frida connectivity from WSL2 to an Android emulator
running on the Windows host.

---

## 1. Repo Setup

**Action:** `git clone` then `git pull` (fast-forward).

**Proof:** After pull, 4 files updated (216 insertions, 32 deletions):
```
CLAUDE.md                              |   4 +-
README.md                              |   2 +
docs/plans/handoff/phase-1-handoff.md  |  55 ++++++++---------
scripts/collect_verification_bundle.py | 187 ++++++++++++++++++++++++++
```

**Why:** The project requires the latest Phase 1 handoff and the new bundle script.

---

## 2. Toolchain Requirements Check

| Requirement | Status | Version | Notes |
|---|---|---|---|
| Python / uv | ✅ | 3.12 / uv | `uv sync` creates `.venv` |
| JDK | ✅ | OpenJDK 21 | `java -version` passes |
| ADB | ✅ | 1.0.41 | Connected to `emulator-5554` |
| jadx | ✅ | 1.5.1 | APK decompiler |
| apktool | ✅ | 3.0.1 | APK unpacker |
| aapt2 | ✅ | — | Binary XML parser |
| readelf / strings | ✅ | — | ELF analysis tools |
| **frida** | ✅ | **17.16.4** | Installed via pip |
| **frida-server** | ✅ | — | Running on emulator (x86_64) |
| **objection** | ✅ | **1.12.5** | Installed via `uv pip install objection` |
| mitmproxy | ✅ | 8.1.1 | TLS proxy |
| **Emulator root** | ✅ | **Magisk** | `su -c id` → `uid=0(root)` context `u:r:magisk:s0` |
| ADB forward | ✅ | — | `tcp:27042 ↔ tcp:27042` |

**objection installation:** Required `uv pip install objection` instead of bare `pip`
because the system Python enforces PEP 668 (package isolation). `frida-server` was
already present on the emulator at `/data/local/tmp/frida-server`; it was started
via `adb shell su -c '/data/local/tmp/frida-server &'`.

**Proof:**
- Unit tests: `40/40 passed in 0.21s`
- ADB: `adb devices` shows `emulator-5554  device`
- Root: `adb shell "su -c 'id'"` → `uid=0(root) gid=0(root) groups=0(root) context=u:r:magisk:s0`
- frida-server: `adb shell netstat -tlnp | grep 27042` shows it listening
- frida-server arch: matches emulator (`x86_64`)

---

## 3. Problem: Frida Cannot Connect from WSL2 to Android Emulator on Windows

### Root Cause

`adb forward tcp:27042 tcp:27042` creates a TCP listener on **Windows' loopback**
(`127.0.0.1:27042`). WSL2 has its own separate network stack, so it cannot reach
Windows' `127.0.0.1` directly.

Attempted connection methods and results:

| Method | Result |
|---|---|
| `frida-ps -U` (USB) | Empty output — Frida's USB transport doesn't see ADB TCP devices in WSL |
| `frida-ps -R` (remote) | `unable to connect to remote frida-server` — can't reach Windows' forwarded port |
| `frida-ps -D emulator-5554` | `Device 'emulator-5554' not found` |
| `frida.get_usb_device()` (Python) | `device not found` |
| `add_remote_device("127.0.0.1:27042")` (Python) | `ServerNotRunningError: unable to connect` |
| `add_remote_device("172.22.32.1:27042")` (Python) | Same error — Windows IP also unreachable |
| `nc -w2 172.22.32.1 27042` | `exit: 1` — connection refused/timed out |
| `nc -w2 localhost 27042` | `exit: 1` — localhost forwarding not active |

Windows ADB server (`127.0.0.1:5037 Listen`) confirmed via:
```
powershell.exe -Command "Get-NetTCPConnection -LocalPort 5037"
```

But unreachable from WSL because it's bound only to Windows' `127.0.0.1`.

**Attempted fixes (all failed):**

| Approach | Result |
|---|---|
| `socat` bridge | Needs `sudo` (no password available) |
| `netsh portproxy` + ADB forward on same port | Port conflict — ADB can't bind |
| `netsh portproxy` with different ADB forward port | Portproxy can't be modified without admin |
| `ADB_SERVER_SOCKET=tcp:{win_ip}:5037` | ADB server `-a` flag doesn't work on this version |
| Frida remote via `adb exec-out` + `nc` | `exec-out` is stdout-only, no bidirectional streaming |
| Frida remote via `adb shell -T` + `nc` | PTY corrupts binary Frida protocol |
| Python relay in WSL | Can't reach Windows' `127.0.0.1` from WSL2 |
| PowerShell relay on Windows | Jobs don't stream data correctly

### Existing Infrastructure

The user's `.wslconfig` already has `localhostForwarding=true`:
```
[wsl2]
memory=12GB
processors=4
swap=0
localhostForwarding=true
```

This option makes Windows `127.0.0.1` services reachable from WSL via `localhost`,
but it requires a `wsl.exe --shutdown` + restart to take effect.

---

## 4. Fix: Windows Python TCP Relay + ADB Forward

### Architecture

A Python TCP relay runs on **Windows** (where it can reach both the WSL
virtual network interface and Windows' loopback), forwarding Frida's
traffic to the ADB forward listener.

```
 WSL:Frida
    │  TCP 172.22.32.1:27043
    ▼
 Windows:Python relay  (listens on 0.0.0.0:27043)
    │  TCP 127.0.0.1:27044
    ▼
 Windows:ADB forward  (adb forward tcp:27044 tcp:27042)
    │  ADB protocol through Windows ADB server
    ▼
 Emulator:frida-server  (port 27042)
```

This approach avoids all the blocked approaches:
- No need for ADB `-a` flag on Windows (uses default 127.0.0.1 bind)
- ADB forward on port **27044** (no conflict with portproxy on 27042)
- Python relay runs as a child of a hidden `powershell.exe` process

### Files Changed

#### `scripts/frida_relay.py` — **New file**

A standalone Python script designed to run on Windows. Listens on
`0.0.0.0:<listen_port>`, accepts connections from WSL, relays each
connection to a target on Windows' `127.0.0.1:<forward_port>` using
threaded bidirectional copy.

#### `src/dynamic/device.py` — Rewritten with relay integration

| Function | Purpose |
|---|---|
| `_in_wsl()` | Detects WSL via `/proc/version` |
| `_wsl_windows_ip()` | Gets Windows host IP from default route |
| `_adb_wrapper_path()` | Finds `~/.local/bin/adb` (calls Windows `adb.exe`) |
| `_start_relay(adb_cmd)` | Sets up ADB forward + copies script to Windows temp + starts Python relay via PowerShell |
| `_stop_relay()` | Kills the relay Python process on Windows |
| `setup_frida_connection(serial)` | **Main entry** — starts relay, calls `add_remote_device()` |
| `_require_adb()` → `_adb_wrapper_path()` | Uses wrapper ADB for all CLI operations |

#### `src/dynamic/frida_runner.py` — 1 line changed

```diff
- device = frida.get_device(device_serial)
+ device = setup_frida_connection(device_serial)
```

### Verification

- **Unit tests:** `40/40 passed`
- **Frida connection:** `setup_frida_connection("emulator-5554")` → 117 processes enumerated
- **Connection flow:** WSL → `172.22.32.1:27043` → Python relay on Windows → `127.0.0.1:27044` → ADB forward → emulator frida-server
- **Relay logging:**
  ```
  relay: listening on 0.0.0.0:27043
  relay: forwarding to 127.0.0.1:27044
  relay: client ('172.22.39.121', 47280)
  relay: target connected
  ```

---

## 5. No Manual Setup Required

The relay starts automatically when `setup_frida_connection()` is called.
No PowerShell commands, no `netsh`, no WSL restart needed.

One prerequisite: the `~/.local/bin/adb` wrapper must exist (it calls
Windows `adb.exe`). This is already in place.

### Cleanup

The `netsh portproxy` rule from a discarded earlier approach was removed:
```powershell
netsh interface portproxy delete v4tov4 listenport=27042 listenaddress=0.0.0.0
```

---

## 6. End-to-End Pipeline Verification

### Download Test APK

OWASP Uncrackable Level 1 downloaded from the official MASTG repo:
```
https://raw.githubusercontent.com/OWASP/mastg/master/Crackmes/Android/Level_01/UnCrackable-Level1.apk
```
Saved to `APK_Test/UnCrackable-Level1.apk` (65 KB).

### Full Pipeline Run

Command:
```bash
PYTHONPATH=src python -m cli --apk APK_Test/UnCrackable-Level1.apk \
  --justification ACADEMIC_TRAINING_TARGET
```

Output:
```
OK  ingest         (225ms)
OK  audit          (0ms)
OK  decompile      (0ms)
OK  static_scan    (8ms)
OK  manifest_parse (0ms)
OK  decision_engine (0ms)
Decision: NEITHER
SKIPPED  dynamic   (0ms)
Report: outputs/reports/1da8bf57...md
```

**Analysis:**
- APK correctly identified: `owasp.mstg.uncrackable1`
- Root detection signature hit: `root_build_tags_test_keys` at
  `sg/vantagepoint/a/c.java:19` (confidence 0.20)
- Confidence 0.20 < threshold 0.70 → classified **NEITHER**
- Dynamic stage skipped correctly (no bypass needed per decision engine)
- Report generated successfully

### All-Components Verification

A unified check confirmed every project component works:

| Command | Result |
|---|---|
| `pytest tests/unit -q` | 40 passed in 0.13s |
| Load signatures | 5 root + 4 SSL YAML signatures loaded |
| Decision engine | Correctly classifies below threshold → NEITHER |
| ADB + emulator | `emulator-5554` connected, `adb shell` works |
| Frida connection | `socket@172.22.32.1:27043` — 114 processes enumerated |
| Report generator | Markdown report written to `outputs/reports/` |
| Full pipeline | ingest → audit → decompile → scan → classify → report — all `success` |

---

## Summary

| Area | Status |
|---|---|
| Repo cloned & pulled | ✅ |
| uv sync + deps | ✅ |
| Unit tests (40/40) | ✅ |
| JDK / ADB / jadx / apktool / aapt2 | ✅ |
| frida / frida-server / objection / mitmproxy | ✅ |
| magisk root confirmed | ✅ |
| ADB → emulator connectivity | ✅ |
| **Frida from WSL → emulator** | **✅ Auto-detected via Windows Python relay** |
| Code changes applied | ✅ `device.py` (rewritten) + `frida_runner.py` (1 line) + `scripts/frida_relay.py` (new) |
| End-to-end pipeline | ✅ ingest → audit → decompile → scan → classify → report |
| APK download & test | ✅ Uncrackable Level 1 analyzed |

### Files changed this session

| File | Change type |
|---|---|
| `src/dynamic/device.py` | Rewritten — WSL detection + ADB forward + Windows Python relay auto-start |
| `src/dynamic/frida_runner.py` | 1 line — `frida.get_device()` → `setup_frida_connection()` |
| `scripts/frida_relay.py` | **New** — Python TCP relay for Windows (bridges WSL↔Windows ADB) |
| `docs/execution_changes/session-2026-07-28-wsl-setup-and-frida-bridge.md` | This file |
| `APK_Test/UnCrackable-Level1.apk` | **New** — Test APK for end-to-end validation |
