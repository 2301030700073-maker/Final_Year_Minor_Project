# CLAUDE.md

## Project

An Android application security analysis platform for automated root-detection and SSL/TLS certificate-pinning identification and bypass, built as a final-year engineering project. Validated end-to-end against OWASP UnCrackable Level 1-3, with an explicit, phased path toward AI-assisted analysis capabilities built strictly on top of a proven deterministic core.

Full context lives in:
- `docs/plans/prd/PRD.md` — problem, goals, non-goals, success criteria
- `docs/plans/requirements/functional-requirements.md` and `non-functional-requirements.md`
- `docs/plans/adr/` — the *why* behind every consequential decision below
- `docs/plans/architecture/high-level-architecture.md` — full target architecture (all 7 phases)
- `docs/plans/architecture/low-level-design-core-phases-1-4.md` — concrete module design for the part currently being built

(Everything above lives under `docs/plans/` rather than a flatter `docs/` layout because of a project-wide hook constraint — see the note in this repo's git history/first commit if that looks odd; it's cosmetic, not a statement that these are provisional "plans".)

Read these before making architectural changes. This file is a summary and a set of guardrails, not the source of truth for design details.

## Non-negotiable engineering principles

These were arrived at deliberately, after critiquing an earlier, over-scoped version of this plan that asked for "zero false positives," an LLM-driven detection cascade, and a full production stack before anything worked end-to-end. Do not relitigate these without writing a new ADR.

1. **The deterministic signature/rule engine is the sole source of truth for detection.** AI/LLM components never decide whether root-detection or SSL-pinning is present — they hypothesize, narrate, and synthesize candidates; only empirical dynamic verification promotes a hypothesis to a confirmed finding. (ADR-0001)
2. **`verification_state` is mandatory on every finding, hypothesis, and bypass technique**: `deterministic_matched` / `dynamically_confirmed` / `ai_hypothesized_unverified` / `ai_hypothesized_dynamically_confirmed`. Reports and confidence scores must never blend these tiers.
3. **No fake outputs, mocked tool results, placeholder implementations, or silent failures — ever, including mid-development.** An empty DB table for a not-yet-built feature is fine. A fabricated row in it is not. Every pipeline stage returns a structured `StageResult` (status/evidence/error); a `failed` status halts the pipeline loudly, it does not get swallowed.
4. **"Zero false positives" is not a claim this project makes.** Precision/recall against empirical dynamic-verification ground truth is measured and reported; low-confidence findings are labeled `Inconclusive`, never upgraded to sound confident. (ADR-0006)
5. **Build order: the deterministic core (Phases 1-4) is proven end-to-end on real targets before any AI capability layer (Phases 5-7) is built** — independent of how much time is available. Absence of a deadline is spent going deeper on a proven foundation, not on parallelizing unproven risk. (ADR-0003)
6. **No workflow-orchestration framework until the core actually needs one.** Plain sequential Python with structured status objects for the Phase 1-4 pipeline, not LangGraph or similar. (ADR-0002)
7. **Every analysis run requires an authorization justification and is written to an immutable audit log.** This is a dual-use capability; that fact is a structural property of the tool, not a README disclaimer. (ADR-0005)
8. **Anything that executes AI-synthesized code (Frida hooks) runs sandboxed with a mandatory human-review gate before promotion to the trusted library.** (ADR-0004)

## Tech stack

- Python, dependency-managed via `uv` (lockfile committed — see ADR-0007), SQLite + SQLAlchemy, Pydantic, Typer, Rich
- Static analysis: jadx, apktool, androguard, aapt2, readelf/strings, capstone
- Dynamic analysis: adb, Frida, objection, mitmproxy
- Signature rules: hand-authored YAML, versioned
- AI (Phase 5+ only, not present in the core): local models via Ollama for code-reasoning/hypothesis work; a large-context model for report synthesis; a vision model for screenshot verification. Specific model selection is deferred to each phase's build time, not committed now.

## Development / execution environment split

Code is written and version-controlled wherever this repo is checked out. **The authoritative execution and test environment is the collaborator's machine**: WSL2 Ubuntu 24.04, 4 vCPU / 11 GB RAM allocated, RTX 5070 GPU, ~930 GB free. That hardware profile is what the resource-fit analysis in the architecture doc targets — it is not necessarily the profile of whichever machine this code is edited on.

See ADR-0007 for the full reasoning, and `CONTRIBUTING.md` for the actual step-by-step collaboration protocol (roles, git workflow, the phase-handoff loop, communication rules) — that's the canonical source for *how* the two sides coordinate; this section stays focused on *why* the split exists and what it means for how code gets written.

Practical consequence for how code gets written: pure-Python logic (signature matching, decision engine, calibration, report generation) must be unit-testable anywhere with fixture data, with **no assumption that the Android toolchain is locally present**. Anything that shells out to jadx/apktool/adb/frida/mitmproxy is only exercised for real on the reference WSL2 environment — such code must fail loudly and clearly if those binaries are missing, never silently no-op.

`uv` manages the Python dependency layer so package versions are identical on both machines regardless of hardware. System-level Android tooling (JDK, Android SDK platform-tools, jadx, apktool, frida-server) is a separate, version-pinned setup documented in `README.md` — `uv` does not manage it, but it gets the same reproducibility discipline.

## Directory layout

Matches `docs/plans/architecture/low-level-design-core-phases-1-4.md`:
```
src/{ingest, static, dynamic, report, storage, audit}/
config/signatures/*.yaml
outputs/{apks, analysis, reports}/{hash}/
tests/{unit, fixtures}/
```

## Testing philosophy

Unit tests (pytest) cover the deterministic core — signature matcher, decision engine, confidence scoring — as pure, fixture-driven functions that run anywhere. The dynamic/Frida side is validated by each phase's own real end-to-end run against a real target on the reference environment; that run's captured evidence (logs, report) *is* the integration-test record, not a mock standing in for one.

## Commit and code style

Commit messages and code, including comments, read the way an engineer would naturally write them — no AI/tool attribution (no "Co-Authored-By" trailers, no "generated by" notes), no meta-commentary about how or by what a change was produced. This applies to every commit in this repository.

## Phase handoff convention

A phase isn't finished until its collaborator handoff doc exists at `docs/plans/handoff/phase-N-handoff.md` and a matching verification bundle script exists at `scripts/collect_verification_bundle.py`. Full protocol — including the non-negotiable rule that **a relayed verbal confirmation is not evidence; only a pushed bundle/report is** — lives in `CONTRIBUTING.md`. Don't duplicate that here; update it there if it needs to change.

## Working agreement

This project runs through the standard cycle: research/brainstorm → spec → plan → implement → collaborator tests on reference hardware → feedback → iterate. Don't skip the spec/plan steps for "just this one small thing" — see `docs/plans/adr/` for why that discipline was chosen deliberately over moving fast. For the cross-collaborator mechanics of that cycle (git protocol, roles, communication), see `CONTRIBUTING.md`.
