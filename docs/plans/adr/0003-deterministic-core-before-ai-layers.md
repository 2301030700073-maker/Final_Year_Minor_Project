# ADR-0003: Deterministic Core Proven End-to-End Before Any AI Capability Layer, Independent of Timeline

## Status
Accepted

## Context
This project has no hard deadline. It would be easy to read "no time constraint" as license to build all seven phases (deterministic core plus four AI capabilities) concurrently, or AI-first. But the AI layers — Phase 6 hypothesis generation, Phase 7 bypass synthesis, and to a lesser extent Phase 5's knowledge base — are only meaningful once there is a working, evidence-producing core to hypothesize against, retrieve from, and calibrate on. Building them first, or in parallel, means designing against guessed requirements instead of observed ones from real UnCrackable1-3 runs.

## Decision
Phases 1-4 (ingestion, static signature engine, decision engine, dynamic bypass via known techniques, empirical verification, reporting, storage, auth/audit, and calibration instrumentation) are built and proven end-to-end against real targets first. Phases 5-7 (knowledge/RAG, hypothesis generation, bypass synthesis) are built afterward, in that dependency order: Phase 5 needs no AI-layer prerequisite beyond a stable core with real data to index; Phase 6 needs Phase 2/3's native/anti-Frida analysis infrastructure to plug into; Phase 7 needs Phase 6's hypotheses to act on.

## Consequences
- Lack of a deadline is spent going deeper on a proven foundation, not on parallelizing unproven risk.
- Phases 6-7's low-level design, when written, will be informed by actual signature-engine limitations and actual calibration data observed in Phases 1-4, rather than speculation written before any real target was analyzed.
- AI capabilities are not visible in the earliest milestones — accepted, since the checkpoint criteria for Phases 1-4 were explicitly agreed not to require AI (see PRD, and the user's own stated preference for a rule-based MVP).

## Alternatives considered
- **Build the full target architecture in parallel across all phases**: rejected — no dependency-order justification, and risks the same "architecture designed before evidence exists" problem the original blueprint had.
