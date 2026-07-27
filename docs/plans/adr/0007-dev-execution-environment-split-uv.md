# ADR-0007: Development and Execution Environments Are Split; `uv` Provides Cross-Machine Python Parity

## Status
Accepted

## Context
Code is developed and version-controlled on one machine, but the authoritative execution and testing environment — including all Android toolchain and dynamic/Frida work — is a collaborator's separate machine (WSL2 Ubuntu 24.04, 4 vCPU / 11 GB RAM allocated, RTX 5070, ~930 GB free), matching the hardware profile the resource-fit analysis in the architecture doc targets. The workflow is: develop and commit → push → collaborator pulls → runs the pipeline on their hardware → reports results/issues back → iterate. This is a human-in-the-loop test cycle across two machines that may differ in OS/hardware outside that reference profile, not a traditional CI pipeline.

## Decision
Python dependencies are managed with `uv`, with a committed lockfile (`uv.lock`), guaranteeing identical resolved package versions on any machine regardless of its hardware. System-level Android tooling (JDK, Android SDK platform-tools, jadx, apktool, frida-server) is pinned by version and installation steps in `README.md`'s setup instructions — a separate mechanism from `uv`, since these aren't Python packages, but held to the same version-pinning discipline. Code is structured so pure-logic components (signature matching, decision engine, calibration, reporting) are unit-testable anywhere Python + `uv` is available, with zero dependency on the Android toolchain being present; anything that shells out to jadx/apktool/adb/frida is only assumed available on the reference WSL2 environment and fails with a clear, actionable error otherwise — never a silent skip.

## Consequences
- The development machine does not need the Android toolchain installed to make progress on, and unit-test, the deterministic core.
- All static-and-dynamic integration verification is necessarily gated on the collaborator's test cycle — slower feedback than local integration testing would give, but unavoidable given the environment split. This is why thorough logging (NFR-15) and complete reports (FR-6) matter more here than in a single-machine setup: the report is often the only artifact the developer sees from a given run.
- If the development machine later turns out to also have WSL2/Android tooling available, that's a bonus for local smoke-testing, but the design does not assume or require it.

## Alternatives considered
- **Require identical dev/test hardware**: rejected — not the actual situation, and would block progress on code that doesn't need Android tooling to develop or unit-test.
- **conda / poetry / pip+virtualenv instead of uv**: no strong technical objection, but `uv` was the expressed preference and satisfies the lockfile-based reproducibility requirement (NFR-4) cleanly.
