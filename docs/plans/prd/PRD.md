# PRD — Android Root-Detection & SSL-Pinning Analysis Platform

## Problem

Manually reverse-engineering an Android APK to determine whether it implements root detection and/or SSL/TLS certificate pinning — and then verifying those protections can actually be bypassed — is slow, inconsistent between analysts, and hard to reproduce. Existing static-analysis tools (MobSF, QARK, and similar) surface indicators but don't close the loop with automated, empirically-verified dynamic bypass, and none of them measure their own detection accuracy over time. Claims of "found it" or "bypassed it" in this space are usually asserted, not proven.

## Goal

Build a platform that, given an APK: automatically determines whether it implements root detection, SSL-pinning, both, or neither; executes only the relevant analysis and bypass pipeline (skipping what doesn't apply); empirically verifies any claimed bypass at runtime rather than assuming success; and reports findings with concrete evidence and a measured — not asserted — confidence.

Validate end-to-end against OWASP UnCrackable Level 1, 2, and 3. Evolve, once that core is proven, toward AI-assisted capabilities: semantic hypothesis generation over obfuscated/unmatched code, bypass-technique synthesis with empirical verification, continuous calibration tracking, and a knowledge-grounded reporting layer — each layered strictly on top of the deterministic core, never replacing it as the source of truth.

## Non-goals (explicit, to prevent scope creep)

- **Not** a multi-tenant hosted product or SaaS. A single-researcher analysis tool, for now.
- **Not** targeting non-Android platforms.
- **Not** attempting to defeat hardware-backed remote attestation (SafetyNet / Play Integrity full attestation) as a project goal. That is a fundamentally different problem — verified server-side, not something client-side hooking can generally solve — and claiming otherwise would be dishonest. Local, client-side root/pinning checks are the target; remote attestation is an explicit, documented limitation, not a silent gap.
- **Not** usable without a recorded authorization justification for the target (ADR-0005). Never a tool for pointing at arbitrary third-party production apps without authorization on record.
- **Not** claiming zero false positives (ADR-0006). Claiming measured, improving precision/recall instead.

## Users

- **Primary**: the author, as researcher and developer.
- **Secondary**: a collaborator who tests on a second, independently-specified machine (the WSL2 Ubuntu 24.04 reference environment), in a pull → run → report-feedback loop.
- **Ultimate**: academic evaluators assessing the final-year project, who need reproducible evidence and defensible, honest claims — not marketing language about accuracy.

## Success criteria, per phase

(Full detail in `docs/plans/architecture/high-level-architecture.md`.)

- **Phase 1**: one command against UnCrackable1 produces a report confirming root-detection and SSL-pinning both detected (with file/line evidence) and both bypassed (with programmatic, not eyeballed, confirmation) — fully automated, no mocks, no placeholders.
- **Phase 2**: the same pipeline, extended only by added signature/script/success-check data (not rewritten orchestration logic), handles UnCrackable2's native/JNI-based pinning.
- **Phase 3**: further extended to handle UnCrackable3's anti-Frida/anti-instrumentation detection, including explicitly handling "app self-terminated because it detected instrumentation" as a first-class outcome.
- **Phase 4**: SQLite-backed, unit-tested, calibration-instrumented (real precision/recall numbers from accumulated runs), with an honest, explicit limitations section in every report.
- **Phases 5-7**: knowledge-grounded reporting (RAG + version-diffing), semantic hypothesis generation over obfuscated code, and sandboxed, human-reviewed bypass-technique synthesis — each gated on the deterministic core already working, each phase's own measurable success criteria defined in detail when that phase's low-level design is written (deliberately not over-specified now).

## Constraints

- **Reference execution hardware** (collaborator's machine, per ADR-0007): WSL2 Ubuntu 24.04, 4 vCPU / 11 GB RAM allocated, RTX 5070 GPU, ~930 GB free.
- **No hard timeline** — explicitly not a project constraint — but every phase must still land as a fully working, non-placeholder, end-to-end deliverable before the next one starts (ADR-0003).
- **Legal/ethical scope**: owned apps, OWASP training targets, CTFs, and explicitly authorized engagements only.
