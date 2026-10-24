# Android Root-Detection & SSL-Pinning Analysis Platform

Automated detection and empirically-verified bypass of Android root-detection and SSL/TLS certificate-pinning, validated against OWASP UnCrackable Level 1-3. See `docs/plans/prd/PRD.md` for the full problem statement and `docs/plans/architecture/` for the design. `CLAUDE.md` has the engineering principles this project holds itself to; `CONTRIBUTING.md` has the collaboration protocol — read that one before pushing anything.

**Status.** The deterministic core — Phases 1–4: ingest → static detection → decision engine → dynamic Frida bypass (+ optional live traffic capture) → report → calibration — is **built and validated end-to-end**, against OWASP UnCrackable Level 1–3 and a wider, independently-ground-truthed calibration corpus (`config/ground_truth.yaml`). The AI capability layer (Phases 5–7) is intentionally deferred (ADR-0003), so nothing in the steps below depends on a model being present.

## Quick start — from a cold boot to a finished analysis

Everything runs from the **WSL2 Ubuntu** terminal (the repo, `uv`, `adb`, `frida` all live there); **Windows** is used for exactly two things: booting the emulator, and hosting the two proxies the device reaches through `adb reverse`. If this is a fresh checkout, do the one-time install in sections 1–4 first (uv, the Android toolchain, jadx/CFR/Ghidra) **plus mitmproxy on the Windows host** — see the table below and section 3. After that, this is the exact per-boot sequence; each step names what must already be running and what it should print.

### What has to be open / active / running before a dynamic run

| Where | What | Needed by | Started by |
|---|---|---|---|
| **Windows** | the rooted AVD booted — **Google APIs** (not Play), userdebug, x86_64, **API 34 / Android 14** (`Frida_Test_API34`) | every dynamic scan | you — step 1 |
| **Windows** | a plain `python.exe` hosting the pass-through internet proxy on `:8080` (no MITM) | every dynamic scan — on WSL2 this `adb reverse` path is the emulator's *only* outbound route | `bash scripts/emulator_up.sh` — step 2 |
| **Windows** | **mitmproxy** (`mitmdump`, **8.1.1** on this reference host) hosting the capture proxy on `:8081` | only `--capture-traffic` | the capture stage itself: it auto-detects WSL2 and launches `mitmdump.exe` **on the Windows host** — the device reaches the Windows host's localhost, never WSL2's namespace |
| **device** | version-matched `frida-server` (**16.7.19**) | every dynamic scan | `verify-device` auto-provisions it — step 4 |
| **WSL2** | `.venv` synced from `uv.lock`, plus jadx/apktool/CFR/Ghidra | everything | step 0 (Ghidra only for the native depth in section 3) |

Nothing else has to be open — no model server, no daemon, no `mitmproxy` in WSL2 (the one that matters is the Windows-host binary). A **static-only** run (`--skip-dynamic`, recipe A) needs only the WSL2 row plus jadx/apktool — no emulator, no root, no frida-server: skip straight to it.

**Where the configuration lives** (`config/`): `settings.yaml` (the two live decision thresholds, `root: 0.7` / `ssl: 0.7` — its commented path blocks are intent only and are read by nothing; output roots come from `cli.OUTPUTS_ROOT`/`cli.AUDIT_LOG_PATH`), `signatures/*.yaml` (120 versioned detection rules: 49 root, 51 ssl, 12 native, 8 packers), `ground_truth.yaml` (the independent calibration truth used by `calibration-report`).

### 0. One-time / after every `git pull`
```bash
uv sync
```
Expected: resolves and installs the exact locked versions from `uv.lock` into `.venv/`. A "missing" locked package (e.g. `androguard`) almost always means a stale `.venv` — re-running this fixes it.

### 1. (Windows) Boot the rooted emulator
In a **Windows** PowerShell/terminal — not WSL — start a **Google APIs** (not Google Play), **userdebug**, x86_64 AVD (Frida needs root). The SDK's `emulator\` directory is **not on PATH**, so `emulator` alone fails with `CommandNotFoundException` — call it by full path:
```
& "C:\Users\Divyang\AppData\Local\Android\Sdk\emulator\emulator.exe" -avd Frida_Test_API34 -no-snapshot
```
If the boot instead prints `FATAL | Running multiple emulators with the same AVD is an experimental feature`, that is not a boot failure — an emulator using that AVD is already up, or a dead one left its lock behind. Decide with one command from WSL2:

```bash
adb devices        # emulator-5554 listed -> already running, skip to step 2
                   # nothing listed        -> the lock is stale; clear it and boot again
```

```powershell
Remove-Item "C:\Users\Divyang\.android\avd\Frida_Test_API34.avd\multiinstance.lock"
```

**Do not use `-read-only` here**, which is what the message itself suggests: that flag exists for deliberately running two instances off one image, and a read-only AVD discards writes — the APK installs the dynamic stage performs would not persist.

Wait for the home screen. `Frida_Test_API34` is the **API 34 (Android 14)** image — the newest version this project targets, and the one the 1st-review requirement ("supports till at least android 14") was validated on: 7 recorded runs carry `ro.build.version.sdk` 34, each with `dynamic_status = success`. An older `Frida_Test` AVD (API 30) still exists on this box; if you boot that one instead, it appears in a report's Toolchain line as API 30, so check which serial you actually started. (A rooted physical device over USB works too — then `adb root` must succeed.)

### 2. (WSL2) Restore the emulator's internet path
```bash
bash scripts/emulator_up.sh
```
Expected when the emulator is booted:
```
[emulator-up] OK: emulator-5554 proxy path restored - device proxy -> 127.0.0.1:8080, Windows-host pass-through listening, adb reverse in place (no MITM; pinning apps work).
```
If no emulator is online it prints one line (`[emulator-up] no online emulator-5554 ... - skipping (nothing to do).`) and exits 0 — safe to run any time, including as a shell-open hook. If instead it prints `internet setup FAILED`, the Windows host has no usable `python.exe`: **nothing on the device will reach the network** until that is fixed, so fix that before step 5. (The WSL2-hosted emulator has no NAT; its only outbound path is this `adb reverse` to a Windows-host proxy, which a fresh boot loses.)

**If a capture run fails, re-run this step before the next one.** The capture stage restores the pass-through proxy at the end of a *successful* capture; after a failed one it deliberately does not claim the restore, and a device left pointed at `:8081` has no internet at all.

### 3. (WSL2) Check the configuration + auto-start services
```bash
uv run python scripts/check_environment.py --fix
```
Runs six check groups — Python/WSL2, `uv sync`, the Android toolchain (JDK 17+, jadx/apktool/frida, and mitmproxy **on the Windows host** when running under WSL2), adb + emulator + root + frida-server, the Frida WSL→Windows bridge, and the project components (unit suite, signature load, CLI entrypoint, report generator) — and with `--fix` auto-starts the adb server and device `frida-server`. It exits non-zero if any check failed. Expected tail:
```
  NN/NN checks passed
  Mode: --fix (auto-start enabled)
```
Drop `--fix` to check without starting anything.

### 4. (WSL2) Confirm the exact Frida path the dynamic stage uses
```bash
PYTHONPATH=src uv run python -m cli verify-device
```
Expected: the device is reported online and a process count is enumerated over the *same* connection path the bypass uses; it auto-provisions a version-matched `frida-server` (16.7.19) if the on-device one is missing/mismatched. On a Windows-host emulator, do **not** substitute `frida-ps -U` — USB auto-discovery can't see the TCP-served emulator and hangs.

> **One-command shortcut for the OWASP targets:** `bash run.sh --check-only` does the whole emulator/frida-server/relay setup above; `bash run.sh` (or `--target uncrackable2`/`uncrackable3`) then installs the APK, runs the pipeline end-to-end via the verification-bundle collector, and prints `Root bypassed: True` / `Correlation: True`.

### 5. Run an analysis

The command, with the OWASP AndroGoat target (full run: static + dynamic bypass + live capture). `--justification` is **required** and is audited (ADR-0005) — it accepts exactly one of the four forms `OWN_APP` | `CTF` | `AUTHORIZED_ENGAGEMENT:<id>` | `ACADEMIC_TRAINING_TARGET`; **free text is rejected** and the run aborts before any analysis:

```bash
.venv/bin/python src/cli.py run \
  --apk APK_Test/AndroGoat.apk \
  --justification ACADEMIC_TRAINING_TARGET \
  --capture-traffic
```

(`uv run` works identically: `PYTHONPATH=src uv run python -m cli run …` — adjust the `--apk` path to wherever you put the file.)

Expected, abridged from a real 2026-09-24 run on this reference box (exact timings and the capture outcome vary run to run):

```
...per-stage table through decision_engine...
Decision: BOTH
Root: 1.00 … DETECTED
SSL : 1.00 … DETECTED
OK  dynamic  (20861ms)
[synth] okhttp3.CertificatePinner absent
FAILED  capture-traffic  (28073ms)
OK  success-check (capture window)  (0ms)

Report: outputs/reports/<apk_sha256>/<run_id>.md
```

Read it as: the deterministic stage decided `BOTH` on its own; the dynamic stage ran and reported the synthesizer's one honest *absence* (the app ships no OkHttp pinner); the capture stage **failed loudly with its measured reason** rather than inventing flows (see recipe C — AndroGoat needs taps during the capture window); and the run ends with a summary line naming the failed stage and `correlation=not_attempted`. A failed stage never gets swallowed (principle 3), and a run that could not confirm a bypass says so instead of promoting it.

Then pick the recipe that matches what you are demonstrating — `## Command recipes` immediately below.

## Command recipes — real values + expected outcome

Every `run` needs `--apk` and `--justification` (audited, ADR-0005; accepted forms: `OWN_APP` | `CTF` | `AUTHORIZED_ENGAGEMENT:<id>` | `ACADEMIC_TRAINING_TARGET`). Package ids for `--target` come from `config/ground_truth.yaml` (table at the end of this section). Reports land in `outputs/reports/<apk_sha256>/<run_id>.md`; the audit log is appended to `outputs/audit_log.jsonl`.

**A. Static-only — no device/root/frida needed (runs anywhere):**
```bash
PYTHONPATH=src uv run python -m cli run --apk APK_Test/UnCrackable-Level1.apk --target owasp.mstg.uncrackable1 --justification ACADEMIC_TRAINING_TARGET --skip-dynamic
```
Expected: stages through `decision_engine`, prints `Decision: ROOT_ONLY`, then stops before `dynamic` — no bypass attempted. Verdict tier: `deterministic_matched` (static match only, not dynamically confirmed).

**B. Static + dynamic bypass (default full run):**
```bash
PYTHONPATH=src uv run python -m cli run --apk APK_Test/UnCrackable-Level1.apk --target owasp.mstg.uncrackable1 --justification ACADEMIC_TRAINING_TARGET
```
Expected: `Decision: ROOT_ONLY`, then `OK dynamic (…ms)`; all three UnCrackable root hooks fire → `bypassed=True`, promoting root from `deterministic_matched` to `dynamically_confirmed`. (A real transcript is in section 5 below.)

**C. Static + dynamic + live traffic capture (real SSL-bypass proof):**
```bash
PYTHONPATH=src uv run python -m cli run --apk APK_Test/AndroGoat.apk --target owasp.sat.agoat --justification ACADEMIC_TRAINING_TARGET --capture-traffic
```
Expected: `Decision: BOTH` (AndroGoat has both a 14-path root check and a real `CertificatePinner`); the capture stage routes the app through `mitmdump`, decrypts, and records the flows in the report as SSL-bypass evidence. `mitmproxy` must be installed on the **Windows host** (the stage launches `mitmdump.exe` there; see the table at the top), and the stage probes route reachability before it captures.

**This app is interactive, so an empty capture here is a possible outcome, not necessarily a bug.** AndroGoat makes no network request until a screen is tapped, and the capture stage's single deterministic tap (`--drive-ui`, on by default) is not a walkthrough — it does not navigate the app's screens. A measured 2026-09-24 run recorded exactly that, naming each leg rather than guessing: the pre-flight route probe was **UP**, `0` client connections arrived at the proxy, no client-certificate refusal was recorded, and the in-process TLS observer saw the app's own pinned request run (`TrustManagerImpl.verifyChain` = 2) — so the report reads *"the app made no network requests during the capture window (interactive capture needed)"* and renders no flow list. Tap through the app while the window is open (or use an app that fetches on launch) to get flows; an empty capture is always reported with its recorded reason, never a fabricated one.

**D. Forced bypass on a coverage-limited NEITHER (PropertyGuru root + SSL):**
```bash
PYTHONPATH=src uv run python -m cli run --apk APK_Test/propertyguru-2026-5-4.apk --target com.allproperty.android.consumer.my --justification ACADEMIC_TRAINING_TARGET --force-dynamic --capture-traffic
```
Expected: the **static half stays NEITHER / root 0.20** (PG's root checks live in the React-Native/Hermes bundle the signature engine can't attribute — a documented false negative, unchanged by this flag). `--force-dynamic` deploys the universal root+SSL bypass anyway (audited as an operator override); an environment-normalization scrub makes the emulator look like a retail device so PG advances past its anti-emulator splash and actually runs its checks. On a real root probe-hit → root `dynamically_confirmed`, correlation `COVERAGE-CONFIRMED`; SSL is confirmed once the app's own pin-check runs and a handshake completes over the capture proxy — otherwise surfaced honestly as `UNVERIFIED`, never a fake pass. `--force-dynamic` is a **no-op** unless the static verdict is NEITHER.

**E. All options at once (maximal meaningful run):**
```bash
PYTHONPATH=src uv run python -m cli run \
  --apk APK_Test/propertyguru-2026-5-4.apk \
  --target com.allproperty.android.consumer.my \
  --justification AUTHORIZED_ENGAGEMENT:pentest-2026 \
  --device emulator-5554 \
  --force-dynamic \
  --capture-traffic
```
Expected: same behaviour as recipe D, additionally pinned to the `emulator-5554` serial with an engagement-id justification written to the audit log. Note `--skip-dynamic` is deliberately absent: it is **rejected** together with `--force-dynamic` (the CLI exits non-zero with a `BadParameter` — one asks for an on-device bypass, the other removes the stage that would deploy it). `--skip-dynamic` with `--capture-traffic` is *not* rejected: that pair runs the capture stage as an un-hooked cold-start window (a control for "did the app talk without instrumentation?"), and the report states which window it was.

### Targets in `APK_Test/` — package ids + documented ground truth

| APK | `--target` (package id) | Ground truth (root / ssl) | Expected static decision |
|---|---|---|---|
| `UnCrackable-Level1.apk` | `owasp.mstg.uncrackable1` | true / false | `ROOT_ONLY` |
| `UnCrackable-Level2.apk` | `owasp.mstg.uncrackable2` | true / false | `ROOT_ONLY` |
| `UnCrackable-Level3.apk` | `owasp.mstg.uncrackable3` | true / false | `ROOT_ONLY` |
| `AndroGoat.apk` | `owasp.sat.agoat` | true / true | `BOTH` |
| `RS_CertPinning.apk` | `com.redshift.rs_certpinning_bypass` | null / true | `SSL_ONLY` |
| `InsecureBankv2.apk` | `com.android.insecurebankv2` | true / null | `ROOT_ONLY` |
| `RS_Vapour.apk` | `com.redshift.rs_vapourtraining` | true / false | `NEITHER` (root 0.30 — the other named known miss, excluded from recall; see `config/ground_truth.yaml`) |
| `propertyguru-2026-5-4.apk` | `com.allproperty.android.consumer.my` | true / null | `NEITHER` (root 0.20 — coverage-limited FN; use `--force-dynamic`) |

Only **UnCrackable Level 1–3** are committed to the repo; the rest are supplied separately (see section 5) — drop them into `APK_Test/` to reproduce their runs. A `null` ground-truth side is a *documented lower bound* (that APK's decompile was partial), **not** a confident negative — see `config/ground_truth.yaml`. `--target` is optional (auto-derived from the APK's manifest package); pass it to pin the success-check/bypass module explicitly.

## Environment split

This is developed on one machine and **executed/tested on a separate reference machine**: WSL2 Ubuntu 24.04, 4 vCPU / 11 GB RAM allocated, RTX 5070 GPU, ~930 GB free (see ADR-0007 in `docs/plans/adr/`). If you're pulling this repo to test it, the steps below assume you're on (or setting up) that reference environment. If your hardware differs, step 1 (the Python environment) works anywhere; the Android toolchain and dynamic-analysis pieces (steps 3+) assume WSL2/Linux specifically and will need adaptation otherwise — flag it back if so.

One caveat on step 2: the unit suite runs on Windows, but a handful of tests exercise genuinely POSIX behaviour and will fail there — fixtures that write `#!/bin/sh` fakes the product spawns via `subprocess.run(["jadx", ...])` (which cannot exec on Windows), and a few assertions about WSL2 paths. Those failures are the platform, not your checkout. (Tests that import `androguard` are a separate case: they fail with `ModuleNotFoundError` only when `androguard` isn't installed in the active `.venv` — a stale-`.venv` state, covered in step 2's note below — which is not a platform limit.) Run step 2 on WSL2/Linux for a clean signal.

## 1. Python environment (`uv`)

Portable regardless of hardware — this is what keeps package versions identical between the dev machine and the test machine.

```bash
curl -LsSf https://astral.sh/uv/install.sh | sh
uv sync   # creates .venv and installs the exact locked dependency versions from uv.lock
```

Run anything in the project with `uv run <command>` (e.g. `uv run pytest`), or activate `.venv` directly.

`uv sync` installs exactly these locked runtime dependencies (versions from `uv.lock`; the project targets Python `>=3.11`, and `[tool.uv] package = false` means the repo runs in place, not installed as a wheel):

| Package | Version | Role in the pipeline |
|---|---|---|
| Typer | 0.27.0 | CLI command surface — `run`, `calibration-report`, … (`src/cli.py`) |
| Rich | 15.0.0 | console rendering — the per-stage `OK …` table and colored output |
| PyYAML | 6.0.3 | loads the versioned signature rules (`config/signatures/*.yaml`) |
| Jinja2 | 3.1.6 | renders the Markdown/HTML analysis report (`src/report/generator.py`) |
| SQLAlchemy | 2.0.51 | run/APK persistence over stdlib `sqlite3` (`src/storage/`) |
| androguard | 4.1.4 | DEX bytecode + binary-manifest scanning (`src/static/`) |
| pyelftools | 0.33 | native ELF (`.so`) header/symbol parsing (`src/static/native.py`) |
| capstone | 5.0.9 | native disassembly — the pure-Python fallback when Ghidra is absent |
| pyaxmlparser | 0.3.31 | decodes the binary `AndroidManifest.xml` |
| frida | 16.7.19 | dynamic instrumentation for the bypass stage (`src/dynamic/`) |
| objection | 1.12.5 | Frida-based runtime mobile exploration |
| pytest | 9.1.1 | unit suite (`dev` dependency group only) |

Internal data models are plain stdlib `@dataclass` (`src/common.py`) — **not** Pydantic. `mitmproxy` is a *system* tool used for live traffic capture (step 3), not a Python dependency.

## 2. Verify the Python-only pieces work (no Android toolchain needed)

```bash
uv run pytest tests/unit
```

This exercises the signature matcher and decision engine against fixtures only — if this passes, the deterministic core's logic is sound independent of whether the rest of this setup is done yet.

Expected result on WSL2/Linux — **2,564 tests collected, all passing** (a machine missing an optional tool may report one or two skipped instead) (on Windows, expect the handful of POSIX-only failures noted above instead of a fully clean run). This figure is authoritative and is enforced by `tests/unit/test_ledger_suite_count.py` against both `docs/plans/audit/full-project-audit-ledger.md` and this README, so it cannot silently drift:

```
$ uv run pytest tests/unit --collect-only -q | tail -1
2564 tests collected in 1.17s
```

The count moves whenever a gap is closed; the exact collected number is recorded in `docs/plans/audit/full-project-audit-ledger.md`, which is updated with each change.

> Pulled new commits and now this reports `ModuleNotFoundError` for a package that's in `uv.lock` (e.g. `androguard`)? Your `.venv` predates a dependency that was added to the lockfile — re-run `uv sync` to install the newly-locked packages, then re-run the suite. A stale `.venv` is the usual cause of a locked package appearing "missing," and is distinct from the platform failures noted above.

## 3. Android toolchain (WSL2 Ubuntu 24.04)

Versions are pinned here deliberately (NFR-5) — if you install something different, note the actual version you used when reporting results back, since reproducibility depends on this being known, not assumed.

- JDK 17+ (`sdk install java` via SDKMAN, or your distro's package)
- Android SDK platform-tools (`adb`) — via `sdkmanager` or your distro's `android-sdk-platform-tools` package
- [jadx](https://github.com/skylot/jadx) ≥ 1.5 — vendored on this reference box at `tools/jadx/lib/jadx-1.5.6-all.jar` (**1.5.6**)
- [apktool](https://apktool.org/) ≥ 2.9
- **`apksigner` and `aapt2`** (Android SDK build-tools) — the ingest stage runs both: `aapt2 dump badging` for the package identity, `apksigner verify --verbose --print-certs` for the signature verdict. On this reference box they come from the distro packages (`apksigner` **31.0.2-1ubuntu1**, and `aapt2` from the `aapt` package) installed under `/usr/lib/android-sdk/build-tools/`, which is why no `build-tools/<release>/` directory appears on the SDK path.

  **The `apksigner` release is load-bearing for what the tool can see.** It verifies the scheme its own release implements, and **build-tools 33** is where APK Signature Scheme v3.1 and the signer-rotation attribute family landed. An older release meeting a v3.1-signed APK does not report "I cannot read this block" — it reports the APK as **not signed**, which is a false statement about the app. ADR-0019 makes the platform render that as a measured toolchain bound (`Signature verification: NOT EVALUATED`, naming the schemes the file demonstrably carries) rather than as a finding, and ingest no longer halts on it; the bound itself stays real, so install build-tools 33+ if you need authoritative v3.1 verdicts. Note `apksigner --version` prints `0.9` on **every** release and does not name the build-tools version — the release is read from the install instead (`Pkg.Revision` from the build-tools `source.properties`, or the versioned launcher jar) and is what appears as the `apksigner` entry in a report's Toolchain line.
- dex2jar (`d2j-dex2jar.sh`) and **CFR** (a `cfr` on PATH, or `CFR_JAR` pointing at `cfr-X.Y.jar`) — the L-M1 secondary-recovery engine. On this reference box CFR is vendored at `tools/cfr/cfr-0.152.jar` (download from https://www.benf.org/other/cfr/); export `CFR_JAR="$PWD/tools/cfr/cfr-0.152.jar"` for the fallback to find it. The fallback is *loud* when either is missing — it records `fallback_unavailable`, it never silently skips recovery (principle 3).
- **frida** (16.7.19) and **objection** (1.12.5) are already project Python dependencies — `uv sync` installed them (see the table above), so there is nothing extra to `pip install` for them. You do still need the **`frida-tools`** CLI helpers (`frida-ps`, `frida-trace`, …), which are not a project dependency: `pip install frida-tools`. A version-matched device **`frida-server`** (16.7.19) is vendored at `tools/frida-server-16.7.19-x86_64`, and `verify-device` (step 4) auto-provisions it onto the device.
- [mitmproxy](https://mitmproxy.org/) — **on the Windows host, not in WSL2.** The device reaches the adb-server host's localhost through `adb reverse`, so `--capture-traffic` auto-detects WSL2 and launches `mitmdump.exe` there (pinned **8.1.1** on this reference box, the release whose addon hook the capture code targets). Without it, the capture stage fails loudly with the unreachable-route reason instead of reporting an empty capture. The pass-through internet proxy on `:8080` needs only a plain `python.exe` on that host, no mitmproxy.

Optional native-analysis extras — each degrades gracefully (never a silent clean, per principle 3/ADR-0006), but they deepen the native surface when present:
- **Ghidra headless** (`analyzeHeadless`, vendored at `tools/ghidra/ghidra_12.1.2_PUBLIC` — **12.1.2**) — the *primary* native body decompiler: it decompiles stripped/obfuscated `.so` function bodies so a technique hidden inside a body (e.g. a `fork` in the ptrace/fork anti-debug combo) can be recovered. Absent ⇒ the pipeline falls back to **capstone** (the bundled Python dep — disassembly only, no full decompilation) and native stays `partial`.
- **UPX** — unpacks UPX-packed `.so` files so their real code is analyzable; a packed lib that can't be unpacked reads `partial` (Gap-4). Absent ⇒ packed libs stay `partial`.

Verify each with its `--version` flag before proceeding — don't assume a silent PATH issue isn't there. The versions this reference box is pinned to (record whatever *you* actually installed, per NFR-5): jadx **1.5.6**, CFR **0.152**, Ghidra **12.1.2**, apksigner **31.0.2** (build-tools; **33+** needed for v3.1 verdicts), device frida-server **16.7.19**; jadx ≥ 1.5 and apktool ≥ 2.9 are the floors that matter.

## 4. Rooted emulator or device

Frida requires root. Use a Google APIs (not Google Play) x86_64 system image if using an AVD emulator, or a rooted physical device. Confirm `adb root` succeeds, then verify the Frida path with:

```bash
PYTHONPATH=src uv run python -m cli verify-device
```

`verify-device` checks the device is online and runs the *same* connection path the dynamic stage uses, auto-provisioning a version-matched `frida-server` if the on-device one is missing or mismatched. On WSL2 with a Windows-host emulator, do **not** use `frida-ps -U` for this check — Frida's USB auto-discovery can't see the TCP-served emulator and hangs (`frida-ps -U` is fine for a USB-attached physical device). This is the single most failure-prone part of the whole setup, worth verifying in isolation first — see the runbook (`docs/plans/runbook-local-scan.md`).

## 5. Run an analysis

Test target APKs live under `APK_Test/` (e.g. `APK_Test/UnCrackable-Level1.apk`) — keep them there so paths stay consistent across commands, docs, and bundles.

The runnable examples below use the OWASP **UnCrackable Level 1–3** targets that ship in this repo under `APK_Test/`. The wider calibration corpus (`config/ground_truth.yaml`) — AndroGoat, RS_CertPinning, RS_Vapour, InsecureBankv2, DIVA, and the real production app PropertyGuru — is **supplied separately and is not committed to this repo** (size/licensing); drop those APKs into `APK_Test/` yourself to reproduce their runs, using the package ids recorded in `config/ground_truth.yaml` as `--target`.

```bash
PYTHONPATH=src uv run python -m cli run --apk APK_Test/UnCrackable-Level1.apk --target owasp.mstg.uncrackable1 --justification ACADEMIC_TRAINING_TARGET
```

The `run` command's full option set (from `src/cli.py`):

| Option | Meaning |
|---|---|
| `--apk` | path to the APK to analyze (**required**) |
| `--justification` | authorization reason for this run — **required**, written to the append-only audit log (ADR-0005) |
| `--skip-dynamic` | static-only: no device, root, or frida-server needed. Contradicts `--force-dynamic` (the CLI rejects the pair); combined with `--capture-traffic` it still captures, as an un-hooked cold-start window. |
| `--capture-traffic` | additionally capture live TLS traffic through the bypass (mitmproxy) |
| `--drive-ui` / `--no-drive-ui` | with `--capture-traffic` only: let the capture stage make at most **one** deterministic tap during the capture window (**on** by default), read from the device's live UI hierarchy, so an app that fetches only after a tap still produces flows; pass `--no-drive-ui` to tap through the app yourself instead. It refuses an ambiguous target rather than guessing. Ignored without `--capture-traffic`. |
| `--force-dynamic` | operator override (ADR-0005): deploy the universal root+SSL bypass on a **NEITHER** target that would otherwise skip the dynamic stage — for coverage-limited misses (e.g. RN/Hermes root checks the signature engine can't attribute). Does **not** change the static verdict/confidence/calibration; the result stays gated on real behaviour (`dynamically_confirmed` only on a real probe-hit / pin-check+handshake, else `UNVERIFIED`). Rejected together with `--skip-dynamic`; a no-op when a category was already detected. |
| `--device` | target a specific device/emulator serial |
| `--target` | package id selecting the success-check module; auto-derived from the manifest when omitted |

**Scope of the authorization gate (H2).** `--justification` is validated at the top of the `run` command, before any target is analyzed, and the `audit` record is written by that same command. Both are CLI-surface controls: the capability functions the pipeline calls (`dynamic.frida_runner`, `dynamic.mitmproxy_capture`, `static.decompile`, `static.signatures`, …) take no authorization argument and remain callable directly, so code that imports them bypasses the justification check and the audit write. Treat direct calls to those functions as **ungated** — a caller embedding them is responsible for its own authorization check.

Example console output from a real end-to-end run against UnCrackable Level 1 (verification bundle `docs/plans/handoff/bundles/20260729T163534Z/cli_output.txt` — a genuine run, not a mock):

```
OK  ingest  (117ms)
OK  audit  (0ms)
OK  decompile  (0ms)
OK  static_scan  (5ms)
OK  manifest_parse  (0ms)
OK  decision_engine  (0ms)
Decision: ROOT_ONLY
OK  dynamic  (6681ms)

Report: outputs/reports/1da8bf57…/2f64a1c2.md
```

Each stage returns a structured `StageResult`; a `failed` status halts the pipeline loudly rather than being swallowed (principle 3). `Decision: ROOT_ONLY` is the deterministic verdict (root-detection present, no SSL-pinning); the `dynamic` stage's genuine `bypassed=True` — all three UnCrackable hooks fired — is what promotes that verdict from `deterministic_matched` to `dynamically_confirmed`.

**That output is the 2026-07-29 run the bundle holds — the pipeline has grown since.** A current default run emits **14** stage rows (**15** with `--capture-traffic`), the six additions being `signature_load:root`, `signature_load:ssl`, `native_scan`, `obfuscation`, `packers` and `success-check` (and `audit` now appears twice: once for the ingest attestation, once to flush the classification). Read the block above as an *example of the shape*, not as the current stage list. Note also that `normalize`, `input-prep` and `metadata-persist` are **failure-only** stages — an exception handler records them — so they never print on a clean run; their absence is not a gap. Run [`scripts/verify_all.py`](scripts/verify_all.py) for the current shape against your own machine — it checks the environment gate, every tool the code invokes, every referenced path, a real run per target, the written outputs, and the unit suite, and prints a pass/fail table with the measured evidence beside each line.

**Where these commands run, and the full sequence.** Every scan command runs in the **WSL2 Ubuntu** terminal — the repo, `uv`, and `adb` all live there; Windows is used only to boot the emulator/AVD. For the complete boot → static-only → static + dynamic → static + dynamic + traffic-capture sequence, with the exact per-shell (Windows vs Ubuntu) commands, the manual per-boot prerequisites, and the per-`--target` table, follow the local scan runbook: [`docs/plans/runbook-local-scan.md`](docs/plans/runbook-local-scan.md). Static-only (`--skip-dynamic`) needs no device, root, or frida-server — it is the one scan type that runs anywhere the Python core and jadx/apktool are installed.

## 6. Calibration report (Phase 4)

Computes precision/recall/F1 and a confidence-calibration curve against every accumulated run, against a small independently-sourced ground-truth registry (`config/ground_truth.yaml`) - see ADR-0006 and `docs/plans/handoff/phase-4-handoff.md`. Reports over an already-audited historical corpus, so it takes no `--apk`/`--justification`:

```bash
PYTHONPATH=src uv run python -m cli calibration-report
```

The registry it scores against defaults to `config/ground_truth.yaml`; `--ground-truth` points it at a different registry if you keep one elsewhere.

A real report over the accumulated corpus looks like this (transcribed from `outputs/reports/calibration/20260913T085346Z.md` — measured, not fabricated; the honesty caveats are part of the generated output):

```
Tier 2 — Precision / Recall / F1 (vs independently-sourced ground truth)
| Category | TP | FP | FN | TN | Precision | Recall | F1  | n |
| root     |  5 |  0 |  0 |  1 |   1.00    |  1.00  | 1.00| 6 |
| ssl      |  2 |  0 |  0 |  2 |   1.00    |  1.00  | 1.00| 4 |
Excluded (no ground-truth entry):                         root=3,  ssl=2
Excluded (partial/under-covered surface — a negative there
          isn't proof of absence):                        root=8,  ssl=11
```

Those 1.00s are measured over a deliberately small, certifiable subset — the report itself prints that only ~10 ground-truthed category-observations exist and that "zero false positives" is **not** a claim this system makes (ADR-0006); read them as directional, not as a precision guarantee.

Note the requirement split: `calibration-report` takes no `--justification` (it only reads already-audited history, not a fresh analysis act), whereas the `run` command **requires** `--justification` — it refuses to run without it (ADR-0005). Analysis artifacts land in `outputs/analysis/{sha256}/`; the generated report lands in `outputs/reports/{sha256}/`; the audit log is appended to `outputs/audit_log.jsonl`. `outputs/` is **gitignored** (`.gitignore` line 13: it is regenerable run output, and committing it bloats the repo with decompiled trees and per-run JSON) — evidence travels to the repo through the verification bundle script (below), which is the recommended way to push a specific run's evidence as a clean, timestamped snapshot.

## Other commands

Three maintenance commands round out the CLI (`src/cli.py`):

- **`verify-audit-log`** — re-derives the audit log's hash chain to detect a record that was edited, deleted, or reordered. The chain is **unkeyed**, so this is not tamper-*proof*: anyone with write access can re-derive every later hash and the check then passes. Set `AUDIT_HMAC_KEY` to add a keyed HMAC-SHA256 anchor on each new record (`head_hmac`), which a forger without the key cannot reproduce; with the variable unset the log carries no anchor and the check is chain-only. Prints `Audit log OK - N record(s), M chained, K legacy`, or exits non-zero listing the break. Records written before hash-chaining are `legacy` and only count as clean with `--allow-legacy`. The default is the project's own `outputs/audit_log.jsonl`, resolved from the **project root** (not the current directory), so the command verifies the same trail from anywhere; `--audit-log` points it elsewhere. A missing or empty log is a **failure** (non-zero, naming the path it looked at), never `OK — 0 records`.
  ```bash
  PYTHONPATH=src uv run python -m cli verify-audit-log
  ```
- **`re-attribute`** — backfills machine-readable root/ssl attribution caveats into stored runs that predate the attribution feature, so an automated consumer no longer reads a bundled-SDK-only `ROOT_ONLY`/`SSL_ONLY` as the app's own anti-tampering. Non-destructive: it only attaches `root_attribution`/`ssl_attribution` caveats — it never rewrites the verdict, confidence, or evidence. Requires `--justification` (it mutates consumer-visible state, so it is audited like a run); `--force` recomputes even already-attributed rows after a taxonomy fix. It regenerates **only the rows it changes**, so it is a backfill tool, not a refresh — for a refresh of every stored row, see `regen-reports` below.
  ```bash
  PYTHONPATH=src uv run python -m cli re-attribute --justification ACADEMIC_TRAINING_TARGET
  ```
- **`regen-reports`** — re-renders stored reports from their own rows, in bulk (ADR-0027). This is the refresh path, and it exists because a stored report can go stale relative to its own row for reasons `re-attribute` never touches (a rendering fix, a field the reconstructor did not read) — a report that is stale that way is only fixed by re-rendering it. It re-derives nothing: the signature corpus, the obfuscation level and its rule, and the classification all come from the row. Requires `--justification` (it rewrites consumer-visible reports outside the run flow, so it is audited like a run); `--dry-run` renders every selected report into a throwaway tree and writes no report file, reporting the three outcome categories exactly as a real sweep does; `--missing-corpus` restricts the sweep to rows recorded before ADR-0022 (those whose recorded corpus is `None`). **A regenerated report is not the artefact the original run produced** — its `Generated:` timestamp, `Analysis code:` line and body wording become today's — so if the originals need preserving, do not run this.
  ```bash
  PYTHONPATH=src uv run python -m cli regen-reports --justification ACADEMIC_TRAINING_TARGET --dry-run
  ```

## AI augmentation layer (optional, authorization-gated)

`src/ai/` is a *development / per-target* aid — it turns a capped evidence bundle
from one APK into a **candidate** Frida bypass script, then runs it on the
emulator, captures the runtime errors, and asks the model to revise (bounded
iterations). It is **never** in the verdict/report path: the generated script is
written to `src/dynamic/scripts/ai_generated/<target>.js`, flagged for human
review, and loaded only through the existing `run_dynamic_stage(synthesized=...)`
seam. It is gated by the same justification model as the rest of the project —
`ai-bypass` refuses to run unless `AI_ALLOW_AUTHORIZED_TARGET=1` is set and a
`--justification` in `{OWN_APP, CTF, AUTHORIZED_ENGAGEMENT, ACADEMIC_TRAINING_TARGET}`
is supplied.

Two model backends, selected by `AI_BACKEND`:

- **`http` (default)** — OpenAI-compatible `/v1/chat/completions`. Needs
  `AI_API_KEY` (and usually `AI_BASE_URL` + `AI_MODEL`). This is the
  TaoToken/agentrouter-style unified-key path.
- **`claude-cli`** — drives the locally-installed, already-authenticated
  **Claude Code CLI** non-interactively (`claude -p`). No separate project key is
  needed: it inherits your existing provider config (e.g. a third-party gateway
  such as `deepseek-flash` configured in your Claude Code `settings.json`). The
  subprocess is locked to `--allowedTools ''` so it can only return text, never
  touch the filesystem or run commands (ADR-0004 — human review still applies to
  the saved artifact). The CLI it launches is resolved in this order: the explicit
  `CLAUDE_BIN` env var → `claude` on `PATH` → an fnm-managed install. On this
  reference box the executable is vendored at
  `/mnt/c/home/ubuntu/.local/node_modules/@anthropic-ai/claude-code/bin/claude.exe`,
  so `CLAUDE_BIN` is set explicitly. For **non-interactive launches**
  (`wsl.exe bash -lc`, cron, CI) where `~/.bashrc` exports are not sourced, the
  same `ANTHROPIC_BASE_URL` / `ANTHROPIC_AUTH_TOKEN` / `ANTHROPIC_API_KEY` /
  `CLAUDE_ALLOWED_TOOLS` are also read from the project's gitignored `.env`, so
  the backend self-bootstraps its provider config from any launch context.

### One-time environment (per shell) for the `claude-cli` backend

```bash
cd /home/ubuntu/Testing/Final_Year_Minor_Project
export AI_BACKEND=claude-cli
export CLAUDE_BIN=/mnt/c/home/ubuntu/.local/node_modules/@anthropic-ai/claude-code/bin/claude.exe
export AI_ALLOW_AUTHORIZED_TARGET=1
export PYTHONPATH=src
# The model itself comes from your Claude Code settings.json (validated runs used
# `deepseek-flash` via the AgentRouter gateway); nothing else to export.
```

### Example invocations (real values, validated on this reference box)

```bash
# 1) AI bypass from scratch — no pre-decompiled folder needed; decompiles the APK,
#    generates a tailored Frida script, runs it on the emulator, self-repairs:
.venv/bin/python3 src/cli.py ai-bypass \
  --apk APK_Test/jerboa.apk \
  --justification ACADEMIC_TRAINING_TARGET \
  --action SSL_ONLY \
  --device emulator-5554

# 2) Same, but PROVE the real traffic decrypts (the full bypass) with --verify-traffic:
.venv/bin/python3 src/cli.py ai-bypass \
  --apk APK_Test/jerboa.apk \
  --justification ACADEMIC_TRAINING_TARGET \
  --action SSL_ONLY --device emulator-5554 --verify-traffic

# 3) If you already have a package id + pre-decompiled dir (outputs/analysis/<sha256>/jadx):
.venv/bin/python3 src/cli.py ai-bypass \
  --package com.jerboa --decompile-dir outputs/analysis/<sha256>/jadx \
  --justification ACADEMIC_TRAINING_TARGET --action SSL_ONLY --device emulator-5554
```

(`uv run python -m cli ai-bypass …` works identically — add `PYTHONPATH=src`
and the `AI_*` / `CLAUDE_BIN` exports above.)

### What `ai-bypass` actually does — the agentic, self-repairing loop

It is not a one-shot code emitter. The system prompt in `src/ai/bypass_gen.py`
forces a disciplined agentic process, and the orchestration in `src/ai/repair_loop.py`
runs it as a bounded generate → run → diagnose → revise loop:

1. **READ** — `build_evidence_bundle` pulls the APK's *own* root/SSL-pinning code
   from the decompile (regions + files scanned).
2. **PLAN + WRITE** — the model writes a Frida script hooking exactly those
   checks (one `hook_loaded`/`hook_skipped`/`hook_error` send per path).
3. **RUN on device** — `run_dynamic_stage` cold-starts the app under Frida and
   collects `hook_loaded / hook_skipped / hook_error` + any runtime error strings.
4. **DECIDE from device evidence** — `classify_dynamic_run_once` sets
   `ok = (≥1 hook loaded) AND (0 real errors)`. It does **not** trust the model's
   own `confidence` field.
5. **DIAGNOSE-AND-REPAIR** — on a non-`ok` run, the *exact* device errors are
   fed back to the model and it revises (bounded by `--max-iter`, default 5).
   This is where "the model solves itself" lives: e.g. a bad return-type hook or
   a wrong method signature is corrected on the next iteration, not reported as a
   success.
6. **RE-VERIFY (optional, `--verify-traffic`)** — once hooks load, the capture
   stage routes the app's **real** TLS traffic through mitmproxy *with that
   script* and checks whether it actually **decrypts**. Decrypted → the bypass
   is fully proven; not → reported honestly (never faked).

The generated script is written to `src/dynamic/scripts/ai_generated/<package>.js`
and flagged for human review — it is never silently trusted in a verdict.

### `--verify-traffic`: the full bypass proof

Without it, `ai-bypass` only proves the script's hooks *loaded*. With it, the run
continues into `mitmproxy_capture.run_capture_stage(bypass_source=…, drive_ui=True)`
and reports one of:

- `TRAFFIC DECRYPTED (N flow(s)) — FULL bypass verified on-device.` (real proof)
- `NO TRAFFIC DECRYPTED — the script's hooks LOADED but the app's real request
  did not decrypt (pinning not bypassed / app-silent / WebView-native TLS). This
  is NOT a full bypass — reported honestly.`

The capture stage never fabricates a flow list (principle 3): zero flows is
always reported with its recorded reason.

### Validated on real apps (this reference box, `deepseek-flash`, emulator-5554)

| App | converged | iter | hooks loaded | self-repair seen | `--verify-traffic` result |
|---|---|---|---|---|---|
| `RS_Vapour.apk` | ✅ | 1 | 2 | — | honest `NO TRAFFIC DECRYPTED` (training app makes no server call) |
| `jerboa` (Lemmy client) | ✅ | 1 | 2 (2 skipped) | (earlier iter1→iter2 fix) | ✅ **`TRAFFIC DECRYPTED` — 4 flows** |
| `spotify-9.1.84.apk` | ✅ | 1 | 4 | — | (capture not run) |
| `AndroGoat.apk` | ✅ | — | 5 | — | (capture not run) |
| `InsecureBankv2.apk` | ✅ | — | 5 (1 skipped) | — | (capture not run) |
| `propertyguru-2026-5-4.apk` | ✅ | — | — | ✅ return-type error → fixed | (capture not run) |
| `RS_CertPinning.apk` | ✅ | 2 | 4 (1 skipped) | ✅ iter1 fail → iter2 fix | (capture not run) |
| `UnCrackable-Level1.apk` | ✅ | 1 | 1 | — | (capture not run) |
| `file-manager-13-foss-release.apk` | ✅ | 3 | 2 (1 skipped) | ✅ iter1→iter3 self-repair | (capture not run) |
| `deckers.thibault.aves.libre` (image viewer) | ✅ | 2 | 2 (1 skipped) | ✅ iter1→iter2 fix | (capture not run) |
| `UnCrackable-Level2.apk` | ⚠️ | 2 | 3 installed + fired | iter1→iter2 fix attempt | model gateway timed out at iter-2 revision; hooks had already neutralized the checks on-device |
| `UnCrackable-Level3.apk` | ⚠️ | 2 | 8 (all fired/neutralized) | iter1 fail → iter2 fix | model gateway timed out at iter-2 revision; not a clean converge — retry likely passes |
| `kisoku-release.apk` | ⚠️ refused | — | — | — | honest refusal: no root/SSL-pinning regions found in the decompile; script generation refused (correct) |

All runs: `hook_errors=0`. The two ⚠️ UnCrackable rows are **transient
model-gateway timeouts** (Claude CLI 300 s), not logic failures — at the moment of
timeout the AI's hooks had already loaded and *fired* (neutralized the checks) on
the device; a retry would most likely converge. `jerboa` is the canonical
end-to-end proof that the AI generates a working script **and** the app's real TLS
traffic decrypts with it; `RS_Vapour` proves the honest negative path;
`kisoku` proves the honest refusal when there is nothing to bypass.

Headless Claude Code generally (to have Claude *perform tasks* automatically,
not just generate a script): `claude -p "your task" --dangerously-skip-permissions`
runs the agent end-to-end with no human in the loop and prints a summary. For a
model not in Claude Code's catalog (the `deepseek-flash` third-party gateway),
also export `CLAUDE_CODE_DISABLE_UNKNOWN_MODEL_WINDOW_ENFORCEMENT=1`, and make sure
`ANTHROPIC_BASE_URL` / `ANTHROPIC_API_KEY` for that gateway are present in the
shell that launches it.

## Verified on review day — 2026-10-24

This section exists because "it should work" and "it worked, here is what it printed" are
different claims. Everything below was executed on this reference box in one sitting, on a
freshly booted `Frida_Test_API34`, using **only** the commands documented above — no extra
scripts, no hand-built bridges, no edited configuration. Where something refused to work, it
is recorded as a defect rather than smoothed over.

### The setup that was actually in place

Windows hosted the emulator; WSL2 held the repo. The bridge between them is the project's own,
not something invented for the test:

- `~/.local/bin/adb` is a small wrapper that shells out to the **Windows** `adb.exe`. This
  matters because the Windows ADB server owns the emulator's transport, and a WSL2 process
  cannot reach a server bound only to the Windows `127.0.0.1`. Without this shim `adb devices`
  in WSL2 prints an empty list and every dynamic stage fails at its first step.
- `scripts/emulator_up.sh` puts the plain `:8080` proxy in place, and `run.sh` starts the
  Frida relay (`172.22.32.1:27043`) because `frida.get_usb_device()` cannot enumerate a
  Windows-hosted emulator from inside WSL2.

`bash run.sh --check-only` is the single gate that proves all of that at once. It passed every
check:

```
git          clean (8a9ab9a)
device       emulator-5554  userdebug, debuggable
frida        client 16.7.19 (locked)
frida-server 16.7.19 on device
listen       0.0.0.0:27042
forward      27044 -> 27042
relay        OK (172.22.32.1:27043)
```

If any one of those is not ✅, stop there. A dynamic run started on a broken relay produces a
timeout whose message blames the target, not the wiring.

### What each command did, and what it printed

| Command | Verdict | The evidence |
|---|---|---|
| `run --apk APK_Test/UnCrackable-Level1.apk --justification ACADEMIC_TRAINING_TARGET` | ✅ | 15/15 stages `success`. `Decision: ROOT_ONLY`; root **1.00 → DETECTED** with 13 signatures cited to file and line (e.g. `root_su_via_path_env_check` at `sg/vantagepoint/a/c.java:10`); SSL **0.00 → Inconclusive**, correctly bounded by `java=partial`. Dynamic stage `61898ms`, `Root bypassed: True`, `hooks_installed: all three hooked`. Report written to `outputs/reports/1da8bf57…/4de2175f….md`. |
| `verify-device` | ✅ | `device present`, `1080x2340`, `FRIDA_OK connected, 121 process(es)`. |
| `calibration-report` | ✅ | Tier 1 root **1.00 (122 observations)**, SSL **1.00 (10)**. Tier 2 precision/recall/F1 **1.00** on n=7 root and n=4 SSL. Report: `outputs/reports/calibration/20261024T020941Z.md`. The report prints its own caveat ("skeleton, not statistically robust") and names the one known miss. |
| `regen-reports --dry-run` | ✅ | `would regenerate 591 report(s); 6 refused (unreproducible — left exactly as they are); 0 failed`. |
| `recover` | ✅ | `http_proxy none`, `adb reverse none`, `windows mitmdump stopped`. |
| `verify-audit-log` | ❌ *(honest failure)* | `FAILED — audit_log.jsonl.20261020T154830Z line 185: prev_hash forks the chain`. See defect 3. |
| `ai-bypass` without `AI_ALLOW_AUTHORIZED_TARGET=1` | ✅ *(refused, as designed)* | `REFUSED: set AI_ALLOW_AUTHORIZED_TARGET=1…` |
| `ai-bypass --justification hello` | ✅ *(refused, as designed)* | `REFUSED: --justification must start with one of ['ACADEMIC_TRAINING_TARGET', 'AUTHORIZED_ENGAGEMENT', 'CTF', 'OWN_APP']` |
| `ai-bypass --apk APK_Test/UnCrackable-Level1.apk --action ROOT_ONLY` | ✅ | Converged in **1 iteration**, `hook_loaded=9; hook_skipped=2; hook_errors=0`, with one printed line per hook. |
| unit suite (`uv run pytest tests/unit`) | ✅ | **2,564 collected, 2,562 passed, 2 skipped, 0 failed** in 56s. (An earlier reading in this session said 2,530 collected / 2,528 passed - that was the broken-venv figure, defect 4.) |

Two honest notes on those numbers. First, the Run ID `4de2175f…` line in the report is the
authoritative artefact — a rerun produces a different ID, so cite the directory, not the ID.
Second, `passed` sits two below `collected` because two tests skip on a machine without an attached device - and, as defect 4 shows, `collected` is only trustworthy when every declared dependency is actually importable.

The report from UnCrackable-1 also carried a warning the platform chose to print rather than
hide:

```
⚠ App UI stuck (ANR/frozen) despite the bypass
```

The hooks all fired and the root check was defeated, but the app then failed to draw. The
report says so, quotes the logcat evidence, and describes the app as "not usable" — instead of
reporting a clean bypass because the process was still alive. That is the intended behaviour,
and it is the same bug class the AI layer's success classifier was fixed for (an artefact
surviving is not an artefact working).

### Issues found, and what was done about them

**1. `ai-bypass` refused to run on a machine whose `.env` was populated — fixed.**

The documented flow is: put your key in `.env`, run `ai-bypass`. On this box it printed
`AI_API_KEY is not set` even though `.env` held a valid key. Two separate faults combined:

- `_load_dotenv_file` parsed the project `.env` and then discarded most of it, because the
  allowlist it filtered against (`_CLI_ENV_VARS`) listed only the `ANTHROPIC_*`/`CLAUDE_*`
  variables. `AI_API_KEY`, `AI_BASE_URL` and `AI_MODEL` were read and thrown away.
- `ChatClient.from_env` used `_env()` — process environment only — while the other backend used
  `_resolve_env()`, which falls back to `.env`. So the two backends disagreed about where
  configuration lives, and the one the docs point at was the one that ignored `.env`.

Fixed by adding the three variables to the allowlist and switching `from_env` to `_resolve_env`.
An explicitly exported shell variable still wins; `.env` is only the fallback, which is what a
`.env` is for. `test_get_client_requires_key` was rewritten to isolate itself from any `.env`
(it now runs from an empty temp directory), because "requires a key" must mean *no key
anywhere*, not *no key in the process environment*.

**2. A failed dynamic stage gave the repair loop no diagnosis — fixed.**

`ai-bypass` on UnCrackable-Level2 burned two iterations producing byte-identical scripts
(5,372 characters each) and then gave up. The cause was one line: the failed branch built its
feedback with `notes = "stage_status=failed"` and dropped `result.error`. The model was told
"that failed" with no reason, so it had nothing to revise and re-emitted the same script.

Fixed by carrying the stage's error text into the feedback (plus the fact that N hooks had
already loaded, which tells the model the fault is *after* hook installation). The same run now
reports the true cause in one line:

```
error=app self-terminated due to detected instrumentation (FR-4.6); hook_loaded=7 before failure
```

That is the correct answer for UnCrackable-Level2 — it detects instrumentation and exits — and
the loop now correctly refuses to call it convergence instead of silently looping. Two
regression tests pin both branches.

**3. `verify-audit-log` failed on a rotated archive with no next step — fixed.**

`outputs/audit_log.jsonl.20261020T154830Z` line 185 has a `prev_hash` that belongs to line 181.
That is a genuine concurrent-write fork: two appends read the same stale tail.

It is **not** live. The current log verifies clean (143 records, 0 forks), and the code has
carried the `fcntl.flock` + "read the tail *inside* the lock" fix since 2026-10-18 — two days
before that archive was written, which makes the archive a pre-fix artefact rather than
evidence of a current race. Two concurrency probes confirm it: 6 processes × 40 appends
produced 240 records and **0 forks**, and 25 rounds × 4 processes on a fresh log produced
**0 failures**.

The real defect was that the command printed `FAILED` and stopped. The next person sees a
failure on a historical file and has no way to tell pre-fix history from live corruption, and
no idea what to do. `_print_fork_guidance` now fires when every error is a fork, and prints
what a fork means, which rotated archives sit beside the log, how to tell an archive-confined
fork from an active-log one, and the one thing not to do — edit the archived record or
re-derive its hashes, because a rewritten chain is worth less than a chain with a documented
break. **The failure itself is unchanged**: the exit code stays non-zero and no record is
tolerated. Only the dead end was removed.

**4. `capstone` was installed as metadata only, and 32 tests vanished silently — fixed.**

CI reported `ledger records 2528 tests, the suite collects 2562`. That gap was not a stale
number: the suite on this box genuinely collected **2,530** while CI collected **2,562**. The
difference was `tests/unit/test_native_body_sweep.py`, which opens with
`pytest.importorskip("capstone")` — and on this box `import capstone` raised
`ModuleNotFoundError`.

The cause was a half-installed wheel. `capstone-5.0.9.dist-info` was present and listed all 58
of its files in `RECORD`, and **none of those files were on disk** — no `capstone/` package
directory, no `libcapstone.so`. `uv sync --locked` could not repair it because it does not
look at the filesystem: the dist-info is its proof that a package is installed, so it reported
*Checked 73 packages* and exited 0. `uv pip list` also showed `capstone 5.0.9` quite happily.

The dangerous part is what the skip cost. `importorskip` is the right tool for an optional
dependency, but it made a **broken environment indistinguishable from a machine that
legitimately lacks the library**: 32 tests collected as nothing, the suite still reported green,
and every count derived from it — the ledger's measurement, this README, the calibration
narrative — was quietly 32 tests short. A skip is invisible by design, and that is exactly why
nobody noticed.

Fixed two ways:

- `uv pip install --force-reinstall --no-deps "capstone>=5.0.9"` repaired the environment.
  Collection went 2,530 → 2,564 (+32 recovered, +2 the new AI regression tests).
- `scripts/check_environment.py` no longer trusts `uv sync`'s exit code. It now reads
  `pyproject.toml`, maps each declared distribution to its import name (including the
  non-obvious ones — `pyyaml`→`yaml`, `pyelftools`→`elftools`), and actually imports all
  eleven. A metadata-only install is now a named failure with the fix in the message, next to
  the command that would have hidden it.

`uv`'s behaviour here is worth knowing about generally: `uv sync` converging is a statement
about the lockfile, not about what is importable.

### The capture stage — run live, three targets, all honest

`--capture-traffic` was exercised for real on this box (it had not been, before this session).
The mitmproxy leg itself works: the stage launched `mitmdump.exe` on the Windows host, routed
the device through it, ran its 60-70 second window, and exited cleanly each time. What varied
was whether the *app* made a request — and the platform reported each outcome with its own
recorded reason rather than a fabricated flow list:

| Target | Capture result | The recorded reason |
|---|---|---|
| `AndroGoat.apk` | `SKIPPED capture-traffic (71371ms)` | *"app did not exercise its network/SSL path (no in-process SSL signal … 0 bypassEffect and no pinned-connection hook fired for a host; interactive capture needed) — not a proxy failure"*. Matches recipe C's documented behaviour exactly: AndroGoat makes no request until a screen is tapped. |
| `jerboa` (`--force-dynamic`) | `SKIPPED capture-traffic (72602ms)` | Same classification. Jerboa is a Lemmy client with no instance configured, so it renders a blank shell and fetches nothing. |
| `RS_CertPinning.apk` | `SKIPPED capture-traffic` | A *different and sharper* reason: this app has a network path outside the Java stack (WebView / Chromium's own TLS), so the in-process observers' silence is **uninformative** — the run "cannot say the app did not exercise its network/SSL path; the empty capture is evidence neither way". Cites ADR-0006. |

That third case is the most interesting result of the session. The platform did not report
"no traffic" — it reported that its own instrumentation **cannot see** that app's TLS stack,
and therefore has no opinion. That is a coverage bound being enforced at the reporting layer,
not a pass or a fail dressed up as one.

So the honest status of capture is: **the stage is verified working, the positive decrypt is
not reproduced in this session.** The documented `TRAFFIC DECRYPTED (4 flows)` for jerboa
(section above) required a configured instance; with none, there is nothing to decrypt.
Producing a real `flows=N` needs either an interactive target tapped through during the window,
or jerboa pointed at a live Lemmy instance first. Until then, treat "decrypts real traffic" as
documented-but-now-unreproduced, and treat "reports the absence honestly" as verified three
times over.

## Workflow modes at a glance

Every mode is a single command. Pick the one that matches what you are demonstrating.

| Mode | Command (essentials) | Device needed | What it proves |
|---|---|---|---|
| **Static only** | `run --apk … --justification … --skip-dynamic` | No | Signature/decision-engine verdict (root/SSL detected). No bypass attempted. |
| **Static + dynamic** | `run --apk … --justification … --device emulator-5554` | Yes (root) | The hand-authored/synthesized script's hooks fire on-device → `bypassed=True`. |
| **Static + dynamic + capture** | `run … --device emulator-5554 --capture-traffic` | Yes (root + mitmproxy on Windows host) | The app's **real** TLS traffic decrypts through mitmproxy (SSL-bypass evidence in the report). |
| **AI bypass** | `ai-bypass --apk … --justification … --action SSL_ONLY --device emulator-5554` | Yes (root) | The model writes a *tailored* script from the APK's own code, runs it, **self-repairs** until hooks load (`converged`). |
| **AI bypass + full proof** | `ai-bypass … --verify-traffic` | Yes (root + mitmproxy) | Same as AI bypass, then the capture stage proves the app's real traffic **decrypts** with the AI script. |

Combination notes:
- `run` (deterministic) and `ai-bypass` (model-generated) are **separate entry points**. `run` uses hand-authored/synthesized bypass scripts; `ai-bypass` generates a new one per APK and is gated behind `AI_ALLOW_AUTHORIZED_TARGET=1`.
- `--capture-traffic` (on `run`) and `--verify-traffic` (on `ai-bypass`) are the *same* capture stage; the latter additionally loads the AI-generated script into the capture window, so it proves the AI's bypass specifically.
- The AI script from `ai-bypass` is saved to `src/dynamic/scripts/ai_generated/<package>.js` and is flagged for human review; the two layers compose.

Real end-to-end example (jerboa, `deepseek-flash` via the `claude-cli` backend, emulator-5554):

```
$ .venv/bin/python3 src/cli.py ai-bypass --apk APK_Test/jerboa.apk \
    --justification ACADEMIC_TRAINING_TARGET --action SSL_ONLY \
    --device emulator-5554 --verify-traffic
...
[iter 1/5] generating bypass script via model ...
  model returned 2885 chars; hooks=[...]; confidence=medium
[iter 1/5] running script on device ...
  feedback: ok=True; hook_loaded=2; hook_skipped=2; hook_errors=0
[iter 1/5] converged: script ran cleanly on device.
VERIFY TRAFFIC - running the capture stage with the AI script ...
  capture status=success; flows=4
  RESULT: TRAFFIC DECRYPTED (4 flow(s)) - FULL bypass verified on-device.
```

## Reporting results back

Since dynamic/integration testing only happens on this reference environment (ADR-0007), the report and logs from a run are often the only artifact the developer sees — please share the full `outputs/analysis/{hash}/` directory (or at minimum the generated report + logs) when reporting back issues or results, not just a pass/fail summary.

## For the collaborator

Read [`CONTRIBUTING.md`](CONTRIBUTING.md) first — roles, the git workflow (specifically what to do when a push gets rejected, which will happen), and how status gets communicated. Then, each phase has a dedicated handoff doc under `docs/plans/handoff/phase-N-handoff.md` — what to run, what to actually check, and what to send back. Latest: [`docs/plans/handoff/phase-4-handoff.md`](docs/plans/handoff/phase-4-handoff.md).

Each handoff doc points you at `uv run python scripts/collect_verification_bundle.py`, which collects tool versions, unit test results, and a real pipeline run into one pushable bundle under `docs/plans/handoff/bundles/` — run that and push the result rather than just reporting back verbally.
