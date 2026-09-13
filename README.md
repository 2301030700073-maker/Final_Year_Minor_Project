# Android Root-Detection & SSL-Pinning Analysis Platform

Automated detection and empirically-verified bypass of Android root-detection and SSL/TLS certificate-pinning, validated against OWASP UnCrackable Level 1-3. See `docs/plans/prd/PRD.md` for the full problem statement and `docs/plans/architecture/` for the design. `CLAUDE.md` has the engineering principles this project holds itself to; `CONTRIBUTING.md` has the collaboration protocol — read that one before pushing anything.

**Status.** The deterministic core — Phases 1–4: ingest → static detection → decision engine → dynamic Frida bypass (+ optional live traffic capture) → report → calibration — is **built and validated end-to-end**, against OWASP UnCrackable Level 1–3 and a wider, independently-ground-truthed calibration corpus (`config/ground_truth.yaml`). The AI capability layer (Phases 5–7) is intentionally deferred (ADR-0003), so nothing in the steps below depends on a model being present.

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

Expected result on WSL2/Linux — **1642 tests collected, 1641 passed, 1 skipped** in ~34 s (on Windows, expect the handful of POSIX-only failures noted above instead of a fully clean run):

```
$ uv run pytest tests/unit -q
........................................................................
1641 passed, 1 skipped in 34.08s
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
