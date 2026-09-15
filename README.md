# Android Root-Detection & SSL-Pinning Analysis Platform

Automated detection and empirically-verified bypass of Android root-detection and SSL/TLS certificate-pinning, validated against OWASP UnCrackable Level 1-3. See `docs/plans/prd/PRD.md` for the full problem statement and `docs/plans/architecture/` for the design. `CLAUDE.md` has the engineering principles this project holds itself to; `CONTRIBUTING.md` has the collaboration protocol — read that one before pushing anything.

**Status.** The deterministic core — Phases 1–4: ingest → static detection → decision engine → dynamic Frida bypass (+ optional live traffic capture) → report → calibration — is **built and validated end-to-end**, against OWASP UnCrackable Level 1–3 and a wider, independently-ground-truthed calibration corpus (`config/ground_truth.yaml`). The AI capability layer (Phases 5–7) is intentionally deferred (ADR-0003), so nothing in the steps below depends on a model being present.

## Quick start — from a cold laptop boot to a finished analysis

Everything runs from the **WSL2 Ubuntu** terminal (the repo, `uv`, `adb`, `frida` all live there); **Windows** is used only to boot the emulator. If this is a fresh checkout, do the one-time install in sections 1–4 first (uv, the Android toolchain, jadx/CFR/Ghidra). After that, this is the exact per-boot sequence — each command prints an expected line so you know it worked. Static-only analysis (`--skip-dynamic`, recipe A below) needs **none** of steps 1–4 here — skip straight to it.

**Where the configuration lives** (`config/`): `settings.yaml` (decision thresholds `root: 0.7` / `ssl: 0.7`, output paths), `signatures/*.yaml` (119 versioned detection rules: 48 root, 51 ssl, 12 native, 8 packers), `ground_truth.yaml` (the independent calibration truth used by `calibration-report`).

### 0. One-time / after every `git pull`
```bash
uv sync
```
Expected: resolves and installs the exact locked versions from `uv.lock` into `.venv/`. A "missing" locked package (e.g. `androguard`) almost always means a stale `.venv` — re-running this fixes it.

### 1. (Windows) Boot the rooted emulator
In a **Windows** PowerShell/terminal — not WSL — start a **Google APIs** (not Google Play), **userdebug**, x86_64 AVD (Frida needs root):
```
emulator -avd Frida_Test -no-snapshot
```
Wait for the home screen. (A rooted physical device over USB works too — then `adb root` must succeed.)

### 2. (WSL2) Restore the emulator's internet path
```bash
bash scripts/emulator_up.sh
```
Expected when the emulator is up: `[emulator-up] OK: emulator-5554 internet is up (device proxy -> 127.0.0.1:8080; Windows-host pass-through, no MITM, pinning apps work).` If no emulator is running it prints one line and exits 0 — safe to run any time. (The WSL2-hosted emulator has no NAT; its only outbound path is an `adb reverse` to a Windows-host pass-through proxy, which a fresh boot loses.)

### 3. (WSL2) Check the configuration + auto-start services
```bash
uv run python scripts/check_environment.py --fix
```
Runs six check groups — Python/WSL2, `uv sync`, the Android toolchain (jadx/apktool/frida/mitmproxy/…), adb + emulator + root + frida-server, the Frida WSL→Windows bridge, and the project components (unit suite, signature load, CLI entrypoint, report generator) — and with `--fix` auto-starts the adb server and device `frida-server`. Expected tail:
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

### 5. Run an analysis — pick a recipe below.

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
Expected: `Decision: BOTH` (AndroGoat has both a 14-path root check and a real `CertificatePinner`); the capture stage routes the app through `mitmdump`, decrypts, and records the flows in the report as SSL-bypass evidence. Requires `mitmdump` reachable from the adb-server host.

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
Expected: same behaviour as recipe D, additionally pinned to the `emulator-5554` serial with an engagement-id justification written to the audit log. Note `--skip-dynamic` is deliberately absent — it is mutually exclusive with `--force-dynamic`/`--capture-traffic` (a static-only run can neither bypass nor capture).

### Targets in `APK_Test/` — package ids + documented ground truth

| APK | `--target` (package id) | Ground truth (root / ssl) | Expected static decision |
|---|---|---|---|
| `UnCrackable-Level1.apk` | `owasp.mstg.uncrackable1` | true / false | `ROOT_ONLY` |
| `UnCrackable-Level2.apk` | `owasp.mstg.uncrackable2` | true / false | `ROOT_ONLY` |
| `UnCrackable-Level3.apk` | `owasp.mstg.uncrackable3` | true / false | `ROOT_ONLY` |
| `AndroGoat.apk` | `owasp.sat.agoat` | true / true | `BOTH` |
| `RS_CertPinning.apk` | `com.redshift.rs_certpinning_bypass` | null / true | `SSL_ONLY` |
| `InsecureBankv2.apk` | `com.android.insecurebankv2` | true / null | `ROOT_ONLY` |
| `RS_Vapour.apk` | `com.redshift.rs_vapourtraining` | true / false | `ROOT_ONLY` |
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

Expected result on WSL2/Linux — **1654 tests, all 1654 passing** in ~29 s (a machine missing an optional tool may report 1 of them skipped instead) (on Windows, expect the handful of POSIX-only failures noted above instead of a fully clean run):

```
$ uv run pytest tests/unit -q
........................................................................
1654 passed in 28.70s
```

> Pulled new commits and now this reports `ModuleNotFoundError` for a package that's in `uv.lock` (e.g. `androguard`)? Your `.venv` predates a dependency that was added to the lockfile — re-run `uv sync` to install the newly-locked packages, then re-run the suite. A stale `.venv` is the usual cause of a locked package appearing "missing," and is distinct from the platform failures noted above.

## 3. Android toolchain (WSL2 Ubuntu 24.04)

Versions are pinned here deliberately (NFR-5) — if you install something different, note the actual version you used when reporting results back, since reproducibility depends on this being known, not assumed.

- JDK 17+ (`sdk install java` via SDKMAN, or your distro's package)
- Android SDK platform-tools (`adb`) — via `sdkmanager` or your distro's `android-sdk-platform-tools` package
- [jadx](https://github.com/skylot/jadx) ≥ 1.5 — vendored on this reference box at `tools/jadx/lib/jadx-1.5.6-all.jar` (**1.5.6**)
- [apktool](https://apktool.org/) ≥ 2.9
- dex2jar (`d2j-dex2jar.sh`) and **CFR** (a `cfr` on PATH, or `CFR_JAR` pointing at `cfr-X.Y.jar`) — the L-M1 secondary-recovery engine. On this reference box CFR is vendored at `tools/cfr/cfr-0.152.jar` (download from https://www.benf.org/other/cfr/); export `CFR_JAR="$PWD/tools/cfr/cfr-0.152.jar"` for the fallback to find it. The fallback is *loud* when either is missing — it records `fallback_unavailable`, it never silently skips recovery (principle 3).
- **frida** (16.7.19) and **objection** (1.12.5) are already project Python dependencies — `uv sync` installed them (see the table above), so there is nothing extra to `pip install` for them. You do still need the **`frida-tools`** CLI helpers (`frida-ps`, `frida-trace`, …), which are not a project dependency: `pip install frida-tools`. A version-matched device **`frida-server`** (16.7.19) is vendored at `tools/frida-server-16.7.19-x86_64`, and `verify-device` (step 4) auto-provisions it onto the device.
- [mitmproxy](https://mitmproxy.org/)

Optional native-analysis extras — each degrades gracefully (never a silent clean, per principle 3/ADR-0006), but they deepen the native surface when present:
- **Ghidra headless** (`analyzeHeadless`, vendored at `tools/ghidra/ghidra_12.1.2_PUBLIC` — **12.1.2**) — the *primary* native body decompiler: it decompiles stripped/obfuscated `.so` function bodies so a technique hidden inside a body (e.g. a `fork` in the ptrace/fork anti-debug combo) can be recovered. Absent ⇒ the pipeline falls back to **capstone** (the bundled Python dep — disassembly only, no full decompilation) and native stays `partial`.
- **UPX** — unpacks UPX-packed `.so` files so their real code is analyzable; a packed lib that can't be unpacked reads `partial` (Gap-4). Absent ⇒ packed libs stay `partial`.

Verify each with its `--version` flag before proceeding — don't assume a silent PATH issue isn't there. The versions this reference box is pinned to (record whatever *you* actually installed, per NFR-5): jadx **1.5.6**, CFR **0.152**, Ghidra **12.1.2**, device frida-server **16.7.19**; jadx ≥ 1.5 and apktool ≥ 2.9 are the floors that matter.

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
| `--justification` | authorization reason for this run — **required**, written to the immutable audit log (ADR-0005) |
| `--skip-dynamic` | static-only: no device, root, or frida-server needed |
| `--capture-traffic` | additionally capture live TLS traffic through the bypass (mitmproxy) |
| `--force-dynamic` | operator override (ADR-0005): deploy the universal root+SSL bypass on a **NEITHER** target that would otherwise skip the dynamic stage — for coverage-limited misses (e.g. RN/Hermes root checks the signature engine can't attribute). Does **not** change the static verdict/confidence/calibration; the result stays gated on real behaviour (`dynamically_confirmed` only on a real probe-hit / pin-check+handshake, else `UNVERIFIED`). No-op with `--skip-dynamic` or when a category was already detected. |
| `--device` | target a specific device/emulator serial |
| `--target` | package id selecting the success-check module; auto-derived from the manifest when omitted |

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

**Where these commands run, and the full sequence.** Every scan command runs in the **WSL2 Ubuntu** terminal — the repo, `uv`, and `adb` all live there; Windows is used only to boot the emulator/AVD. For the complete boot → static-only → static + dynamic → static + dynamic + traffic-capture sequence, with the exact per-shell (Windows vs Ubuntu) commands, the manual per-boot prerequisites, and the per-`--target` table, follow the local scan runbook: [`docs/plans/runbook-local-scan.md`](docs/plans/runbook-local-scan.md). Static-only (`--skip-dynamic`) needs no device, root, or frida-server — it is the one scan type that runs anywhere the Python core and jadx/apktool are installed.

## 6. Calibration report (Phase 4)

Computes precision/recall/F1 and a confidence-calibration curve against every accumulated run, against a small independently-sourced ground-truth registry (`config/ground_truth.yaml`) - see ADR-0006 and `docs/plans/handoff/phase-4-handoff.md`. Reports over an already-audited historical corpus, so it takes no `--apk`/`--justification`:

```bash
PYTHONPATH=src uv run python -m cli calibration-report
```

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

Note the requirement split: `calibration-report` takes no `--justification` (it only reads already-audited history, not a fresh analysis act), whereas the `run` command **requires** `--justification` — it refuses to run without it (ADR-0005). Analysis artifacts land in `outputs/analysis/{sha256}/`; the generated report lands in `outputs/reports/{sha256}/`; the audit log is appended to `outputs/audit_log.jsonl`. `outputs/` can be committed directly (no longer gitignored) - see `CONTRIBUTING.md`'s Ground Rules for why that restriction was dropped. The verification bundle script (below) is still the recommended way to push a specific run's evidence as a clean, timestamped snapshot.

## Other commands

Two maintenance commands round out the CLI (`src/cli.py`):

- **`verify-audit-log`** — re-derives the audit log's hash chain to confirm no record was edited, deleted, or reordered (tamper-evidence for ADR-0005). Prints `Audit log OK — N record(s), M chained, K legacy`, or exits non-zero listing the break. Defaults to `outputs/audit_log.jsonl`; `--audit-log` points it elsewhere.
  ```bash
  PYTHONPATH=src uv run python -m cli verify-audit-log
  ```
- **`re-attribute`** — backfills machine-readable root/ssl attribution caveats into stored runs that predate the attribution feature, so an automated consumer no longer reads a bundled-SDK-only `ROOT_ONLY`/`SSL_ONLY` as the app's own anti-tampering. Non-destructive: it only attaches `root_attribution`/`ssl_attribution` caveats — it never rewrites the verdict, confidence, or evidence. Requires `--justification` (it mutates consumer-visible state, so it is audited like a run); `--force` recomputes even already-attributed rows after a taxonomy fix.
  ```bash
  PYTHONPATH=src uv run python -m cli re-attribute --justification ACADEMIC_TRAINING_TARGET
  ```

## Reporting results back

Since dynamic/integration testing only happens on this reference environment (ADR-0007), the report and logs from a run are often the only artifact the developer sees — please share the full `outputs/analysis/{hash}/` directory (or at minimum the generated report + logs) when reporting back issues or results, not just a pass/fail summary.

## For the collaborator

Read [`CONTRIBUTING.md`](CONTRIBUTING.md) first — roles, the git workflow (specifically what to do when a push gets rejected, which will happen), and how status gets communicated. Then, each phase has a dedicated handoff doc under `docs/plans/handoff/phase-N-handoff.md` — what to run, what to actually check, and what to send back. Latest: [`docs/plans/handoff/phase-4-handoff.md`](docs/plans/handoff/phase-4-handoff.md).

Each handoff doc points you at `uv run python scripts/collect_verification_bundle.py`, which collects tool versions, unit test results, and a real pipeline run into one pushable bundle under `docs/plans/handoff/bundles/` — run that and push the result rather than just reporting back verbally.
