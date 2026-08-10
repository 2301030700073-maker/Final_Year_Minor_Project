# ADR-0008: Technology-Based Reorganization and AI-Gated Build Order

## Status
Accepted

## Context
The project has an approved high-level architecture (`docs/plans/architecture/high-level-architecture.md`) organizing the work into seven numbered phases. As the deterministic core (Phases 1-4) has been proven end-to-end on real targets, the roadmap for the remaining work has been re-expressed as a technology-based reorganization: work is grouped by *detection surface* (static Java/bytecode, native `.so`, manifest/resources, dynamic bypass, AI learning) rather than by an abstract phase number. This is captured in a 23-item roadmap (`docs/plans/roadmap.md` — the canonical item list, committed here so this ADR is self-contained; G5) reviewed by the collaborator.

Two things must stay non-negotiable while this reorganization is adopted:

1. **The deterministic signature/rule engine remains the sole source of truth for detection** (ADR-0001). The roadmap's AI layer (items 18-20) is a *learner that proposes candidates*, never a component that decides whether root-detection or SSL-pinning is present.
2. **AI capabilities are gated behind a proven deterministic baseline** (ADR-0003). The AI-gated diff (item 20) promotes a learned technique only if it empirically beats the measured baseline scorecard (item 18) — gated on the *bypass-convergence* metric for bypass techniques and *precision/recall* for detection techniques (G4), never on assertion.

## Decision
Adopt the 23-item technology-based roadmap, read as a *reorganization of the build order, not a change to the source-of-truth or build-order principles*. The items cluster into five groups with distinct gating (G12 — four→five typo):

- **Deterministic static core (in-scope now):** items 1-3 and 7-8. Extend the existing static pipeline with an obfuscation-level indicator, behavioral indicators (string-decryptor stubs, reflection/crypto), deeper manifest analysis (networkSecurityConfig, stored certs, DevicePolicyManager), and a guarantee that every unparseable element surfaces as a `parse_failure` — driving the affected surface to `partial`/`unscannable` in the coverage contract rather than being silently skipped (a byte offset is added only if/when a position-aware parser is adopted; G9). All remain pure signature/rule work — no AI.
- **Native `.so` analysis (deterministic, additive):** items 4-6. A `native.py` module parses `.so` exports/strings, matched by hand-authored native signature rules, wired into the existing decision engine and report. Same confidence/evidence model as the Java side — native matches are just another evidence source, not a separate decision tier.
- **Coverage/measurement layer (deterministic):** items 9-11. A per-surface coverage contract (`fully_analyzed | partial | unscannable`), persisted per run, surfaced in the calibration report and generator. This makes the *bound* of every scan explicit — a `partial` or `unscannable` surface is never reported as a confident negative.
- **Dynamic bypass synthesizer (deterministic, but gated):** items 12-17. An empirical success oracle (4-way), parameterized candidate proposal, and a try→learn→try loop with `MAX_ATTEMPTS`/`MAX_TIME` bounds. The loop proposes and tests candidates; **any candidate that executes AI-synthesized Frida code stays behind the sandbox + mandatory human-review gate (ADR-0004)**, and every execution remains subject to the authorization/audit log (ADR-0005).
- **AI baseline + learner (AI, gated behind the baseline):** items 18-20. Build the baseline scorecard first with *no AI* (item 18); only then add a local Ollama learner (item 19); the AI-gated diff (item 20) promotes a learned technique to the trusted library **only if it beats the deterministic baseline on the metric that matches what it does** (G4): a bypass technique is gated on the *bypass-convergence* metric (empirical `bypassed` rate / attempts, plus the `nothing_to_bypass` false-alarm rate) with human review (ADR-0004); a *detection* technique is gated on precision/recall against ground truth (ADR-0006). Never gate bypass work on a detection-only metric — a bypass technique produces no detections, so precision/recall can never honestly earn it promotion. AI never decides detection — it hypothesizes candidates that must pass empirical verification (ADR-0001).

Items 21-23 (report additions, this ADR, and the low-level-design update) are supporting documentation and reporting work.

## Consequences
- The deterministic core is *expanded* (native + coverage + deeper manifest) before any AI layer is built, consistent with ADR-0003 — the reorganization adds surfaces to the proven core, it does not parallelize unproven AI risk.
- Every scan's bound is now explicit: the coverage contract means a `partial`/`unscannable` surface reads as a lower bound, never as a silent confident negative (extends ADR-0006's measured-not-asserted discipline).
- The dynamic synthesizer is deterministic in *proposal* but the execution of synthesized code remains sandboxed and human-reviewed (ADR-0004); the learning loop writes to a persistent `learning_log` (item 15) so its attempts are auditable and replayable, not black-box.
- The AI layer is the last thing built and can only earn promotion by beating the deterministic baseline empirically. This preserves the "no AI decides detection" invariant across the entire roadmap.
- The low-level design doc (`low-level-design-core-phases-1-4.md`) is updated to spec the deterministic groups (1-11) and point at the roadmap for the gated groups (12-20); the AI phases' low-level design is still deferred to just before each starts, per ADR-0003.

## Alternatives considered
- **Follow the original phase numbering strictly and treat the roadmap items as phase assignments:** rejected — the technology-based grouping better expresses dependency (native analysis is independent of coverage; both must precede the synthesizer that operates on them), but the *build-order principle* is unchanged, so this is a presentation change, not a risk change.
- **Build the AI learner (19-20) before the deterministic synthesizer baseline (12-18):** rejected — violates ADR-0003; the learner would design against guessed requirements instead of observed baseline scorecards.
- **Let the AI learner propose candidates that are adopted without empirical verification:** rejected — violates ADR-0001 and ADR-0004; promotion is gated on the baseline diff and human review, always.
