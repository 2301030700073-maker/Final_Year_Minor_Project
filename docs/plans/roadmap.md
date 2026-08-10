# Technology-Based Roadmap (ADR-0008)

The 23-item technology-based reorganization referenced by ADR-0008. Items are grouped by *detection surface* — not by abstract phase number. Deterministic groups (1-11) are spec'd as implementation-ready in `low-level-design-core-phases-1-4.md`; gated groups (12-20) get their own low-level design immediately before each starts (ADR-0003). This file is the canonical item list; the ADR is the *why*.

## Group A — Deterministic static core (in-scope now)

1. **No-change static core** — re-validate the existing signature engine end-to-end; no code change.
2. **Obfuscation indicator** — per-run `obfuscation_level ∈ clear | light | heavy`, derived deterministically.
3. **Behavioral indicators** — string-decryptor stubs, reflection/crypto usage as matchable signature patterns.
4. **NEW `static/native.py`** — parse `.so` export symbols and embedded strings.
5. **Native signature rules** — hand-authored `config/signatures/native_detection.yaml`.
6. **Wire native → decision engine → report** — native matches feed the same weighted-confidence model.
7. **Manifest / resource analysis** — networkSecurityConfig, stored certs, DevicePolicyManager, matched against signatures.
8. **No silent parse swallows** — every unparseable element surfaces as `parse_failure` (with byte offset where the parser permits), never silently skipped.

## Group B — Coverage / measurement layer (deterministic)

9. **Per-surface coverage contract** — `fully_analyzed | partial | unscannable` per surface (Java decompile, native `.so`, manifest/resources).
10. **Persist coverage per run** — stored and surfaced in reports and calibration.
11. **Coverage in calibration/report + generator** — coverage section so a `partial`/`unscannable` surface reads as a lower bound.

## Group C — Dynamic bypass synthesizer (deterministic, gated)

12. **Empirical success oracle (4-way)** — the observable that decides whether a bypass attempt worked.
13. **Candidate proposal + parameterization** — parameterized Frida candidates, not monolithic scripts.
14. **Try→learn→try loop** — bounded by `MAX_ATTEMPTS` / `MAX_TIME`.
15. **Persistent `learning_log` table** — auditable, replayable attempt history.
16. **Refactor `frida_runner.py`** — hand-written scripts become seeds the synthesizer learns from.
17. **Keep sandbox + human-review guardrails** — synthesized-code execution stays sandboxed, promotion requires human review (ADR-0004); every execution audited (ADR-0005).

## Group D — AI baseline + learner (AI, gated behind the baseline)

18. **Baseline scorecard first (no AI)** — the deterministic synthesizer's convergence measured before any AI.
19. **Local Ollama learner** — proposes candidates; never decides detection (ADR-0001).
20. **AI-gated diff** — promote only if it beats the baseline on the matching metric (bypass-convergence for bypass, precision/recall for detection), with human review.

## Group E — Reporting & documentation

21. **Report additions** — coverage, obfuscation, and synthesizer/AI results surfaced in reports.
22. **NEW ADR** — this reorganization + AI-gated build order (ADR-0008).
23. **Update low-level design** — spec the deterministic groups in `low-level-design-core-phases-1-4.md`.

## Traceability to original Phases 1-7 (G11)

| Original phase | Superseded by / maps to |
|---|---|
| Phase 1 (ingestion, static) | Group A items 1-3, 7-8 (expanded static core) |
| Phase 2 (native / anti-Frida) | Group A items 4-6 (native `.so` analysis) |
| Phase 3 (dynamic) | Group C (bypass synthesizer) + Group D item 18 (baseline) |
| Phase 4 (calibration) | Group B (coverage) — calibration becomes coverage-aware |
| Phase 5 (knowledge/RAG) | Group D items 19-20 (AI learner) |
| Phase 6 (hypothesis generation) | Group D item 19 (learner's candidate proposal) |
| Phase 7 (bypass synthesis) | Group C (synthesizer) + Group D item 20 (AI-gated promotion) |

The synthesizer supersedes old Phase 7 (and old Phase 3's dynamic), not Phase 5. The AI learner supersedes old Phases 5-6. ADR-0003's ordering (deterministic core proven before AI) is preserved as Group A/B/C → Group D.
