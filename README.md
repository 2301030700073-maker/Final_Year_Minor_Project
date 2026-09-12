# Android Root-Detection & SSL-Pinning Analysis Platform

Automated detection and empirically-verified bypass of Android root-detection and SSL/TLS certificate-pinning, validated against OWASP UnCrackable Level 1-3. See `docs/plans/prd/PRD.md` for the full problem statement and `docs/plans/architecture/` for the design. `CLAUDE.md` has the engineering principles this project holds itself to; `CONTRIBUTING.md` has the collaboration protocol — read that one before pushing anything.

## Environment split

This is developed on one machine and **executed/tested on a separate reference machine**: WSL2 Ubuntu 24.04, 4 vCPU / 11 GB RAM allocated, RTX 5070 GPU, ~930 GB free (see ADR-0007 in `docs/plans/adr/`). If you're pulling this repo to test it, the steps below assume you're on (or setting up) that reference environment. If your hardware differs, step 1 (the Python environment) works anywhere; the Android toolchain and dynamic-analysis pieces (steps 3+) assume WSL2/Linux specifically and will need adaptation otherwise — flag it back if so.

One caveat on step 2: the unit suite runs on Windows, but a handful of tests exercise genuinely POSIX behaviour and will fail there — fixtures that write `#!/bin/sh` fakes the product spawns via `subprocess.run(["jadx", ...])` (which cannot exec on Windows), a few assertions about WSL2 paths, and the one test needing `androguard`. Those failures are the platform, not your checkout. Run step 2 on WSL2/Linux for a clean signal.

## 1. Python environment (`uv`)

Portable regardless of hardware — this is what keeps package versions identical between the dev machine and the test machine.

```bash
curl -LsSf https://astral.sh/uv/install.sh | sh
uv sync   # creates .venv and installs the exact locked dependency versions from uv.lock
```

Run anything in the project with `uv run <command>` (e.g. `uv run pytest`), or activate `.venv` directly.

## 2. Verify the Python-only pieces work (no Android toolchain needed)

```bash
uv run pytest tests/unit
```

This exercises the signature matcher and decision engine against fixtures only — if this passes, the deterministic core's logic is sound independent of whether the rest of this setup is done yet.

## 3. Android toolchain (WSL2 Ubuntu 24.04)

Versions are pinned here deliberately (NFR-5) — if you install something different, note the actual version you used when reporting results back, since reproducibility depends on this being known, not assumed.

- JDK 17+ (`sdk install java` via SDKMAN, or your distro's package)
- Android SDK platform-tools (`adb`) — via `sdkmanager` or your distro's `android-sdk-platform-tools` package
- [jadx](https://github.com/skylot/jadx) ≥ 1.5
- [apktool](https://apktool.org/) ≥ 2.9
- dex2jar (`d2j-dex2jar.sh`) and **CFR** (a `cfr` on PATH, or `CFR_JAR` pointing at `cfr-X.Y.jar`) — the L-M1 secondary-recovery engine. On this reference box CFR is vendored at `tools/cfr/cfr-0.152.jar` (download from https://www.benf.org/other/cfr/); export `CFR_JAR="$PWD/tools/cfr/cfr-0.152.jar"` for the fallback to find it. The fallback is *loud* when either is missing — it records `fallback_unavailable`, it never silently skips recovery (principle 3).
- `pip install frida-tools objection` (or via `uv` if added as project dependencies — check `pyproject.toml`)
- [mitmproxy](https://mitmproxy.org/)

Optional native-analysis extras — each degrades gracefully (never a silent clean, per principle 3/ADR-0006), but they deepen the native surface when present:
- **Ghidra headless** (`analyzeHeadless`) — decompiles stripped/obfuscated `.so` function bodies so a technique hidden inside a body (e.g. a `fork` in the ptrace/fork anti-debug combo) can be recovered. Absent ⇒ native stays `partial`.
- **UPX** — unpacks UPX-packed `.so` files so their real code is analyzable; a packed lib that can't be unpacked reads `partial` (Gap-4). Absent ⇒ packed libs stay `partial`.

Verify each with its `--version` flag before proceeding — don't assume a silent PATH issue isn't there.

## 4. Rooted emulator or device

Frida requires root. Use a Google APIs (not Google Play) x86_64 system image if using an AVD emulator, or a rooted physical device. Confirm `adb root` succeeds, then verify the Frida path with:

```bash
PYTHONPATH=src uv run python -m cli verify-device
```

`verify-device` checks the device is online and runs the *same* connection path the dynamic stage uses, auto-provisioning a version-matched `frida-server` if the on-device one is missing or mismatched. On WSL2 with a Windows-host emulator, do **not** use `frida-ps -U` for this check — Frida's USB auto-discovery can't see the TCP-served emulator and hangs (`frida-ps -U` is fine for a USB-attached physical device). This is the single most failure-prone part of the whole setup, worth verifying in isolation first — see the runbook (`docs/plans/runbook-local-scan.md`).

## 5. Run an analysis

Test target APKs live under `APK_Test/` (e.g. `APK_Test/UnCrackable-Level1.apk`) — keep them there so paths stay consistent across commands, docs, and bundles.

```bash
PYTHONPATH=src uv run python -m cli run --apk APK_Test/UnCrackable-Level1.apk --target owasp.mstg.uncrackable1 --justification ACADEMIC_TRAINING_TARGET
```

(`--help` shows the full option list, including `--skip-dynamic`, `--device`, and `--target`.)

**Where these commands run, and the full sequence.** Every scan command runs in the **WSL2 Ubuntu** terminal — the repo, `uv`, and `adb` all live there; Windows is used only to boot the emulator/AVD. For the complete boot → static-only → static + dynamic → static + dynamic + traffic-capture sequence, with the exact per-shell (Windows vs Ubuntu) commands, the manual per-boot prerequisites, and the per-`--target` table, follow the local scan runbook: [`docs/plans/runbook-local-scan.md`](docs/plans/runbook-local-scan.md). Static-only (`--skip-dynamic`) needs no device, root, or frida-server — it is the one scan type that runs anywhere the Python core and jadx/apktool are installed.

## 6. Calibration report (Phase 4)

Computes precision/recall/F1 and a confidence-calibration curve against every accumulated run, against a small independently-sourced ground-truth registry (`config/ground_truth.yaml`) - see ADR-0006 and `docs/plans/handoff/phase-4-handoff.md`. Reports over an already-audited historical corpus, so it takes no `--apk`/`--justification`:

```bash
PYTHONPATH=src uv run python -m cli calibration-report
```

`--justification` is required — the CLI will refuse to run without it (ADR-0005). Analysis artifacts land in `outputs/analysis/{sha256}/`; the generated report lands in `outputs/reports/{sha256}/`; the audit log is appended to `outputs/audit_log.jsonl`. `outputs/` can be committed directly (no longer gitignored) - see `CONTRIBUTING.md`'s Ground Rules for why that restriction was dropped. The verification bundle script (below) is still the recommended way to push a specific run's evidence as a clean, timestamped snapshot.

## Reporting results back

Since dynamic/integration testing only happens on this reference environment (ADR-0007), the report and logs from a run are often the only artifact the developer sees — please share the full `outputs/analysis/{hash}/` directory (or at minimum the generated report + logs) when reporting back issues or results, not just a pass/fail summary.

## For the collaborator

Read [`CONTRIBUTING.md`](CONTRIBUTING.md) first — roles, the git workflow (specifically what to do when a push gets rejected, which will happen), and how status gets communicated. Then, each phase has a dedicated handoff doc under `docs/plans/handoff/phase-N-handoff.md` — what to run, what to actually check, and what to send back. Latest: [`docs/plans/handoff/phase-4-handoff.md`](docs/plans/handoff/phase-4-handoff.md).

Each handoff doc points you at `uv run python scripts/collect_verification_bundle.py`, which collects tool versions, unit test results, and a real pipeline run into one pushable bundle under `docs/plans/handoff/bundles/` — run that and push the result rather than just reporting back verbally.
