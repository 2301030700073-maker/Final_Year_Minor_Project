# Non-Functional Requirements

## Reliability
- NFR-1: No stage may silently fail or continue past a failure. Every stage returns a structured status; a `failed` status halts the pipeline with full diagnostic output.
- NFR-2: Retries are permitted only for tooling/environment failures (a crashed subprocess, a transient adb disconnect) — never to iterate on an ambiguous security verdict until it appears more confident. (ADR-0001, ADR-0003)

## Reproducibility
- NFR-3: Every analysis run is reproducible to the exact APK hash, tool versions, signature-set version, and — from Phase 1 — the exact git commit of the codebase that produced it.
- NFR-4: Python dependencies are pinned via a committed `uv` lockfile; identical resolved versions regardless of which machine installs them. (ADR-0007)
- NFR-5: System-level Android tooling (JDK, SDK platform-tools, jadx, apktool, frida-server) versions are pinned and documented in the setup script/README, since `uv` does not manage them.

## Portability across the dev/test machine split
- NFR-6: Pure-logic components (signature matching, decision engine, calibration, report generation) must be unit-testable with fixture data on any machine with Python + `uv`, with zero dependency on the Android toolchain being locally present.
- NFR-7: Anything shelling out to jadx/apktool/adb/frida/mitmproxy is only assumed available on the reference WSL2 Ubuntu 24.04 environment; code must fail with a clear, actionable error if those tools are absent, never silently degrade or skip. (ADR-0007)

## Resource constraints
- NFR-8: The core deterministic pipeline (Phases 1-4) must run within 4 vCPU / 11 GB RAM allocated to WSL2 on the reference machine, without requiring a concurrently-loaded local LLM.
- NFR-9: Any locally-hosted model introduced from Phase 5 onward must have its RAM/VRAM footprint checked against available resources before loading, with a documented fallback if resources are insufficient.

## Security & ethics
- NFR-10: No analysis run executes without a recorded authorization justification. (ADR-0005)
- NFR-11: AI-synthesized Frida scripts (Phase 7) execute only in a sandboxed, snapshot-revertible environment with no host filesystem access beyond what the hook needs and no network egress outside the monitored proxy. (ADR-0004)
- NFR-12: The trusted, reusable bypass-technique library only accepts entries that passed both empirical verification and human review. (ADR-0004)

## Maintainability & extensibility
- NFR-13: Adding a new analysis target (e.g., a fourth crackme or a real-world app) must be achievable by adding signature/script/success-check data, not by modifying orchestration code. If it isn't, that's treated as a design defect to fix before proceeding, not a one-off exception.
- NFR-14: Module boundaries match `docs/plans/architecture/low-level-design-core-phases-1-4.md`; a module's internals should be replaceable without its consumers changing.

## Observability
- NFR-15: Every stage, tool invocation, and decision is logged (structured, to file and/or DB) with enough detail to reconstruct what happened and why without re-running. This matters more than usual here because the collaborator's report is often the only artifact the developer sees from a given run (ADR-0007).
- NFR-16: Every finding, hypothesis, and bypass technique carries an explicit `verification_state`; no report may present these tiers ambiguously.

## Testability
- NFR-17: The deterministic core (signature matcher, decision engine, confidence scoring) has unit tests with fixture-based inputs covering true positives, true negatives, and boundary/threshold cases.
- NFR-18: Every phase's "definition of done" end-to-end run against a real target is itself the integration-test record for that phase — captured (logs/report) as evidence, not just observed once and discarded.

## Honesty of claims
- NFR-19: The system never asserts "zero false positives." It reports measured precision/recall against accumulated empirical ground truth (ADR-0006), and explicitly labels low-confidence findings `Inconclusive`.
