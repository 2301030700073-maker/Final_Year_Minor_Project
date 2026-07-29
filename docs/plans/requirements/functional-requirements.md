# Functional Requirements

Grouped by capability area; phase mapping in brackets. See `docs/plans/architecture/high-level-architecture.md` for the phase definitions and `low-level-design-core-phases-1-4.md` for implementation-level detail on FR-1 through FR-9.

## FR-1 — Ingestion [Phase 1]
- FR-1.1: Given an APK file path, compute SHA-256, SHA-1, and MD5 hashes and exact file size.
- FR-1.2: Extract package name, version, minSdk, targetSdk, permissions, and signer info (v1/v2/v3) via aapt2/apksigner.
- FR-1.3: Persist metadata keyed by SHA-256. Re-running against an already-ingested APK references the existing record rather than re-ingesting.

## FR-2 — Static Analysis [Phase 1-3]
- FR-2.1: Decompile the APK via jadx and apktool, caching output by hash.
- FR-2.2: Match decompiled sources, resources, and manifest against a YAML-defined signature set for root-detection indicators; each match records signature ID, file, line/offset, and matched text.
- FR-2.3: Same as FR-2.2 for SSL/TLS pinning indicators.
- FR-2.4 [Phase 2] - **not needed, confirmed by real work**: originally "extract native `.so` exported symbols (readelf) and match against native-specific signatures." UnCrackable2's root-detection turned out fully Java-visible; revised here rather than silently dropped. See `docs/plans/handoff/phase-2-handoff.md`.
- FR-2.5 [Phase 3] - **not needed, confirmed by real work**: originally "match against anti-Frida/anti-debug indicators (tracerpid checks, ptrace self-attach, frida-server process/port scanning patterns)." A full-tree grep of UnCrackable3's real decompiled source for these patterns found none. See `docs/plans/handoff/phase-3-handoff.md`.
- FR-2.6: Every signature match contributes a configurable weight to a per-category (root/ssl) confidence score, capped at 1.0.

## FR-3 — Decision Engine [Phase 1]
- FR-3.1: Given static confidence scores, classify as ROOT_ONLY / SSL_ONLY / BOTH / NEITHER against a configurable threshold (default 0.7).
- FR-3.2: Below-threshold categories are never silently dropped — they appear in the report as `Inconclusive` with whatever partial evidence exists.
- FR-3.3: The classification and its full evidence trail are logged before any dynamic stage begins.

## FR-4 — Dynamic Analysis [Phase 1-3]
- FR-4.1: Detect a connected/available device or emulator via adb; fail loudly (not silently skip) if none is found, unless `--skip-dynamic` is explicitly passed.
- FR-4.2: Install the target APK and verify installation via `pm list packages`.
- FR-4.3: Select and inject the Frida bypass script(s) matching the categories the decision engine flagged.
- FR-4.4: Capture logcat and Frida hook output for the run.
- FR-4.5: Run a per-target, programmatic success check (not manual/eyeballed) confirming expected post-bypass behavior (e.g., a specific revealed string, absence of a specific crash/exit signature).
- FR-4.6 [Phase 3]: Explicitly detect and handle "app self-terminated due to detected instrumentation" as a first-class, logged outcome, not an unhandled crash.

## FR-5 — Correlation [Phase 1]
- FR-5.1: Compare static prediction against dynamic observation per category.
- FR-5.2: Any mismatch is recorded explicitly in the report, never silently resolved in favor of either side.

## FR-6 — Reporting [Phase 1]
- FR-6.1: Generate a Markdown/HTML report per run containing metadata, evidence per finding, confidence, static-vs-dynamic correlation, tool versions, timestamps, and pass/fail per stage.
- FR-6.2 [Phase 4]: Report includes an explicit, honest limitations section.

## FR-7 — Storage [Phase 1 / Phase 4]
- FR-7.1: Persist every run's findings, evidence, and stage results — flat JSON in Phase 1, SQLite from Phase 4 — keyed by APK hash and run ID.

## FR-8 — Authorization & Audit [Phase 1]
- FR-8.1: Every invocation requires a `--justification` value; the CLI refuses to run without one.
- FR-8.2: Every run appends an immutable audit record (timestamp, APK hash, justification, operator, tool version, git commit hash).

## FR-9 — Calibration [Instrumentation from Phase 1, formalized Phase 4]
- FR-9.1: Every dynamically-verified run records (predicted confidence, empirical outcome) per category into the calibration dataset. This requires no AI dependency — pure instrumentation over the Phase 1 pipeline's own outputs.
- FR-9.2 [Phase 4]: Compute and report precision/recall/F1 and a confidence-calibration curve against the accumulated dataset.

## FR-10 — Knowledge & Reporting Intelligence [Phase 5]
- FR-10.1: Index the OWASP MASTG technique catalog and prior findings into a versioned, retrievable knowledge corpus.
- FR-10.2: Report narrative generation retrieves and cites relevant MASTG techniques rather than inventing terminology.
- FR-10.3: Given two versions of the same app, deterministically diff decompiled structure and detected-protection set, and narrate the diff.

## FR-11 — Semantic Hypothesis Generation [Phase 6]
- FR-11.1: For methods/symbols not matched by FR-2's deterministic signatures but passing a suspicion pre-filter, generate a structured hypothesis (target, category, hook point, predicted indicator, rationale) tagged `ai_hypothesized_unverified`.
- FR-11.2: Before use against genuinely novel code, validate the hypothesis-generation model via a blind rediscovery test against known FR-2 findings with the deterministic answer hidden from the prompt.

## FR-12 — Bypass-Technique Synthesis [Phase 7]
- FR-12.1: Given a Phase 6 hypothesis (or a case where all known techniques empirically failed), draft a candidate Frida hook constrained to a template library of safe hook shapes.
- FR-12.2: Execute candidates only inside the sandboxed, snapshot-revertible analysis environment.
- FR-12.3: Promote to `candidate` status only when two independent positive signals confirm success (the previously-observed blocking behavior stops, AND the protected output is positively observed) — "didn't crash" alone is never sufficient.
- FR-12.4: Require explicit human review before any candidate technique is marked `trusted` and reusable.
