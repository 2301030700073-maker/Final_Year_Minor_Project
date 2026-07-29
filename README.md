# Android Root-Detection & SSL-Pinning Analysis Platform

Automated detection and empirically-verified bypass of Android root-detection and SSL/TLS certificate-pinning, validated against OWASP UnCrackable Level 1-3. See `docs/plans/prd/PRD.md` for the full problem statement and `docs/plans/architecture/` for the design. `CLAUDE.md` has the engineering principles this project holds itself to; `CONTRIBUTING.md` has the collaboration protocol — read that one before pushing anything.

## Environment split

This is developed on one machine and **executed/tested on a separate reference machine**: WSL2 Ubuntu 24.04, 4 vCPU / 11 GB RAM allocated, RTX 5070 GPU, ~930 GB free (see ADR-0007 in `docs/plans/adr/`). If you're pulling this repo to test it, the steps below assume you're on (or setting up) that reference environment. If your hardware differs, the Python-only pieces (steps 1-2) work anywhere; the Android toolchain and dynamic-analysis pieces (steps 3+) assume WSL2/Linux specifically and will need adaptation otherwise — flag it back if so.

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
- `pip install frida-tools objection` (or via `uv` if added as project dependencies — check `pyproject.toml`)
- [mitmproxy](https://mitmproxy.org/)

Verify each with its `--version` flag before proceeding — don't assume a silent PATH issue isn't there.

## 4. Rooted emulator or device

Frida requires root. Use a Google APIs (not Google Play) x86_64 system image if using an AVD emulator, or a rooted physical device. Confirm `adb root` succeeds and `frida-ps -U` lists processes before running anything against a real target — this is the single most failure-prone part of the whole setup, worth verifying in isolation first.

## 5. Run an analysis

Test target APKs live under `APK_Test/` (e.g. `APK_Test/UnCrackable-Level1.apk`) — keep them there so paths stay consistent across commands, docs, and bundles.

```bash
PYTHONPATH=src uv run python -m cli --apk APK_Test/UnCrackable-Level1.apk --justification ACADEMIC_TRAINING_TARGET
```

(Typer collapses to a bare command when there's only one - no `run` subcommand needed yet. `--help` shows the full option list, including `--skip-dynamic` and `--device`.)

`--justification` is required — the CLI will refuse to run without it (ADR-0005). Analysis artifacts land in `outputs/analysis/{sha256}/`; the generated report lands in `outputs/reports/{sha256}/`; the audit log is appended to `outputs/audit_log.jsonl`. `outputs/` is entirely local and gitignored — never `git add` anything under it directly; the verification bundle script (below) is the only sanctioned way evidence gets committed.

## Reporting results back

Since dynamic/integration testing only happens on this reference environment (ADR-0007), the report and logs from a run are often the only artifact the developer sees — please share the full `outputs/analysis/{hash}/` directory (or at minimum the generated report + logs) when reporting back issues or results, not just a pass/fail summary.

## For the collaborator

Read [`CONTRIBUTING.md`](CONTRIBUTING.md) first — roles, the git workflow (specifically what to do when a push gets rejected, which will happen), and how status gets communicated. Then, each phase has a dedicated handoff doc under `docs/plans/handoff/phase-N-handoff.md` — what to run, what to actually check, and what to send back. Latest: [`docs/plans/handoff/phase-1-handoff.md`](docs/plans/handoff/phase-1-handoff.md).

Each handoff doc points you at `uv run python scripts/collect_verification_bundle.py`, which collects tool versions, unit test results, and a real pipeline run into one pushable bundle under `docs/plans/handoff/bundles/` — run that and push the result rather than just reporting back verbally.
