# Local scan runbook (WSL2 + Windows-host emulator)

End-to-end runbook for running a scan on the reference execution environment:
WSL2 Ubuntu 24.04 repo, emulator living on the Windows host (serial
`emulator-5554`), adb at `~/.local/bin/adb`. Covers fresh boot → static-only →
static+dynamic → static+dynamic+capture, with the exact commands and the manual
prerequisites that are not automated.

This is the *how to run it* companion to `README.md` and the handoff docs. The
authoritative reference for the pipeline's behavior is `src/cli.py` (the `run`
command) and `CONTRIBUTING.md`; if the CLI surface below drifts, trust those.

## What the code automates vs. what you do by hand

**Automated in the code** (one command runs the whole pipeline):
- Python env + pinned deps via `uv`.
- Static pipeline: ingest → manifest decode → dex/string signature match →
  native scan → attribution → correlation.
- Dynamic stage: Frida cold-start (spawn-inject-resume), target bypass script,
  success-check.
- SSL capture stage: mitmdump (auto-launched on the adb-server/Windows host),
  `adb reverse`, trusted-CA push, flow decrypt, flow list in the report.
- Report generation and the immutable audit log.

**Not automated — manual prerequisites every boot** (the code fails loudly with
the real reason if these are missing; it never silently no-ops, per CLAUDE.md):
1. Boot the emulator on Windows and let it appear in `adb devices`.
2. `adb root` + a running `frida-server` on the device (dynamic needs root).
3. `--capture-traffic` only: the device must be able to reach the adb-server
   host's localhost (WSL2 pass-through/capture proxy split; see below).

## Where each command runs

Two shells are involved. This runbook labels every block **Windows** (PowerShell
or cmd on the Windows host) or **Ubuntu** (a WSL2 Ubuntu terminal).

- **Windows** is only used to start WSL and to boot the emulator/AVD. Nothing
  else happens on Windows.
- **Ubuntu** is where the repo, `uv`, adb, and all scan commands run. adb is
  installed inside WSL2 (`~/.local/bin/adb`) and talks to the adb server that
  serves the emulator running on the Windows host — so adb commands are typed in
  the Ubuntu terminal, not Windows.

## Boot sequence (do these first)

```bash
# >>>>> run in WINDOWS (PowerShell or cmd) <<<<<
# Open a WSL2 Ubuntu terminal.
wsl -d Ubuntu
```

```bash
# >>>>> run in UBUNTU (the WSL2 terminal) <<<<<
# Enter the repo.
cd ~/Testing/Final_Year_Minor_Project

# First boot / after any pull: sync the exact locked dependency versions.
uv sync

# Sanity-check the pure-Python core with NO Android toolchain present.
uv run pytest tests/unit -q
```

```bash
# >>>>> run in WINDOWS <<<<<
# Boot the emulator / AVD on the Windows host.
# (e.g. the Android Studio AVD or:  emulator -avd <your_avd_name> )
```

### Opening the emulator (start here if you're not sure how)

The emulator is an **Android Virtual Device (AVD)** that runs as a Windows
program — it is *not* inside WSL2. WSL2 only talks to it afterwards over the
adb bridge. There are two ways to start it; pick whichever you have.

**The AVDs on this machine** (from `C:\Users\Divyang\.android\avd\`):
| AVD | Use for |
|---|---|
| `Frida_Test_API34` | **API 34 (Android 14)** — the main dynamic-analysis device (serial `emulator-5554`); a rooted x86_64 image. **This is the one the runbook's commands assume**, and the only AVD any stored run has used: all 7 runs that carry a device report `ro.build.version.sdk` 34. |
| `Frida_Test` | The older **API 30 (Android 11)** image. Still bootable, but no stored run carries API 30, and a report's Toolchain line will show API 30 if you use it — so prefer `Frida_Test_API34`. |

**Way A — command line (PowerShell on Windows).** In a Windows terminal run:
```powershell
# >>>>> run in WINDOWS (PowerShell) <<<<<
C:\Users\Divyang\AppData\Local\Android\Sdk\emulator\emulator.exe -avd Frida_Test_API34
```
A window pops up and the phone boot animation plays. Keep this window open for
the whole session — closing it shuts the emulator down. Wait until the home
screen appears (first boot after a fresh install can take a couple of minutes).

**If it fails with `FATAL | Running multiple emulators with the same AVD is an
experimental feature`**, the AVD is locked: either an emulator is already
running it, or one that was killed left the lock behind. Decide with one
command from WSL2:

```bash
adb devices        # emulator-5554 listed -> already up, skip to the section below
                   # nothing listed        -> the lock is stale; clear it, boot again
```

```powershell
# >>>>> run in WINDOWS (PowerShell) <<<<<
Remove-Item "C:\Users\Divyang\.android\avd\Frida_Test_API34.avd\multiinstance.lock"
```

Do not reach for `-read-only`, which is what the message suggests: that flag is
for running two instances off one image on purpose, and a read-only AVD
discards writes — the APK installs the dynamic stage performs would not stick.

**Way B — Android Studio (manual).** Open Android Studio → "More Actions" →
"AVD Manager" → in the list, click the ▶ (play) triangle on `Frida_Test_API34`. Same
result as Way A; close the device window to shut it down.

**After it boots, confirm it is visible from WSL2** (this is the first thing to
check if a scan says "no device"):
```bash
# >>>>> run in UBUNTU <<<<<
adb devices                  # must list:  emulator-5554   device

# Dynamic analysis requires root.
adb -s emulator-5554 root
adb wait-for-device

# Verify the Frida path. Do NOT use `frida-ps -U` on WSL2: Frida's USB
# auto-discovery cannot see a TCP emulator served by the Windows adb server,
# so it hangs. The platform bridges WSL2 -> Windows -> device with an adb
# forward + a Windows-host Python relay. `verify-device` checks the device is
# online, then runs the SAME connection path the dynamic stage uses — and it
# auto-pushes/starts a venv-matching frida-server if the on-device one is
# missing or the wrong version (re-provisions, then connects):
PYTHONPATH=src uv run python -m cli verify-device
#   device emulator-5554 present
#   FRIDA_OK connected, N process(es) on emulator-5554 - ready for a dynamic scan
```

**frida-server version note:** the on-device `frida-server` must match the **venv** `frida` major.minor
(`uv run python -c "import frida; print(frida.__version__)"` — currently 16.7.19), NOT the global
`frida-ps` CLI version. `setup_frida_connection` calls `_ensure_frida_server`, which probes the on-device
server version and re-provisions from the pinned `tools/frida-server-16.7.19-x86_64` copy whenever it is
missing or mismatched — so you normally never touch the server by hand. A successful `FRIDA_OK` (the
connection surviving `enumerate_processes`) is itself proof the versions matched; Frida aborts otherwise.

## Scan 1 — static only (no device required)

```bash
# >>>>> run in UBUNTU <<<<<
PYTHONPATH=src uv run python -m cli run \
  --apk APK_Test/UnCrackable-Level1.apk \
  --target owasp.mstg.uncrackable1 \
  --justification ACADEMIC_TRAINING_TARGET \
  --skip-dynamic
```

- `--skip-dynamic` runs ingest + static + report + audit with no device.
- Artifacts land in `outputs/analysis/{sha256}/`; report in
  `outputs/reports/{sha256}/`; audit log appended to `outputs/audit_log.jsonl`.

## Scan 2 — static + dynamic (root-bypass verification)

```bash
# >>>>> run in UBUNTU <<<<<
PYTHONPATH=src uv run python -m cli run \
  --apk APK_Test/UnCrackable-Level1.apk \
  --target owasp.mstg.uncrackable1 \
  --justification ACADEMIC_TRAINING_TARGET \
  --device emulator-5554
```

Same command minus `--skip-dynamic`. Cold-starts the app under Frida, applies
the target's bypass script, runs the success-check.

## Scan 3 — static + dynamic + SSL traffic capture

```bash
# >>>>> run in UBUNTU <<<<<
PYTHONPATH=src uv run python -m cli run \
  --apk APK_Test/UnCrackable-Level1.apk \
  --target owasp.mstg.uncrackable1 \
  --justification ACADEMIC_TRAINING_TARGET \
  --device emulator-5554 \
  --capture-traffic
```

`--capture-traffic` routes the app through mitmdump, decrypts its flows, and
records them in the report as SSL-bypass proof.

## `run` arguments — which are essential vs. optional

Everything below is from `PYTHONPATH=src uv run python -m cli run --help`.

| Argument | Required? | What it does |
|---|---|---|
| `--apk <path>` | **Required** | Path to the APK to analyze (e.g. `APK_Test/UnCrackable-Level1.apk`). Every run needs exactly one. |
| `--justification <kind>` | **Required** | `OWN_APP` \| `CTF` \| `AUTHORIZED_ENGAGEMENT:<id>` \| `ACADEMIC_TRAINING_TARGET`. The audit log's authorization justification (ADR-0005). One of these values, always. |
| `--target <str>` | **Optional** | Selects the Frida bypass script + success-check module. When omitted it is **auto-derived from the APK's package name** — see the per-target table below. |
| `--device <serial>` | **Optional** | Which device/emulator to run dynamic on. When omitted on a single online device it auto-discovers it; pass it to disambiguate multiple. **Only matters for dynamic** (`--skip-dynamic` ignores it). |
| `--skip-dynamic` | Optional | Skip the dynamic stage entirely. Static-only scans need no device, no root, no frida-server. |
| `--capture-traffic` | Optional | Opt-in mitmproxy capture stage (routes the app through mitmdump, decrypts flows, records them as SSL-bypass proof). Off by default so normal runs never touch the device proxy settings. Requires rooted device + mitmdump reachable on the adb-server host. |

### Which arguments are essential per scan type

| Scan type | Essential | Optional / omit |
|---|---|---|
| Static-only | `--apk`, `--justification`, `--skip-dynamic` | `--target` (auto-derive), `--device` (unused) |
| Static + dynamic | `--apk`, `--justification`, `--device` | `--target` (auto-derive), `--capture-traffic` (off) |
| Static + dynamic + capture | `--apk`, `--justification`, `--device`, `--capture-traffic` | `--target` (auto-derive) |

### Per-target `--target` values

`--target` only changes **which bypass script + success-check** the dynamic stage uses. Every APK goes through the full static pipeline regardless. Omit it and let auto-derivation pick the right one for the known reference apps; pass it explicitly only when you need to override.

| Target / APK | `--target` to use | Behaviour |
|---|---|---|
| **UnCrackable Level 1** | `owasp.mstg.uncrackable1` (or omit — auto-derived) | Root-detection bypass via the validated `root_bypass_v1.js` |
| **UnCrackable Level 2** | `owasp.mstg.uncrackable2` (or omit — auto-derived) | Root + tamper-detection bypass via `root_bypass_uncrackable2.js` |
| **UnCrackable Level 3** | `owasp.mstg.uncrackable3` (or omit — auto-derived) | Root + native-detection bypass via `root_bypass_uncrackable3.js` |
| **AndroGoat** | `androgoat` (or omit — auto-derived) | SSL-pinning bypass via the validated SSL script |
| **Unknown real app** (any APK not one of the above) | **omit `--target`** | Package auto-derived → routes to the general **synthesized-bypass** path. Unrecognized targets are expected and fine; the dynamic stage degrades gracefully to the synthesized bypass rather than failing. |

Rule of thumb: **omit `--target`** for almost everything — auto-derivation resolves the four reference apps to their hand-authored augmentation and routes every other app to the synthesized bypass. Pass it explicitly only to override auto-derivation.

Full option list: `PYTHONPATH=src uv run python -m cli run --help`.

## Caveat: capture on WSL2

- Static-only needs nothing.
- Dynamic needs the emulator + root + frida-server.
- `--capture-traffic` is the only stage that depends on the WSL2↔Windows
  transport. The code launches mitmdump on the Windows host and sets up
  `adb reverse` + the trusted CA itself, but the device must reach the
  adb-server host's localhost. On this setup that is the pass-through `:8080` /
  capture `:8081` split. If the device cannot reach it the stage returns
  `failed` with the real reason — it never fabricates a flow list.
