# High-Level Architecture — Android Root-Detection & SSL-Pinning Analysis Platform

This is the full target architecture: seven phases across a proven deterministic core (1-4) and three AI capability layers (5-7) built on top of it once it works. See `docs/plans/adr/` for the reasoning behind every consequential choice below, and the PRD for goals/non-goals. Low-level, implementation-ready detail for Phases 1-4 lives in `low-level-design-core-phases-1-4.md`; Phases 5-7 stay at this level of detail until the core is proven and each phase's own low-level design gets written immediately before it starts (ADR-0003).

## The spine concept: `verification_state`

Every finding, hypothesis, and bypass technique in the system carries a `verification_state`:

- `deterministic_matched` — the rule engine found it; evidence is a file+line citation.
- `dynamically_confirmed` — a real Frida/adb run empirically observed the predicted behavior.
- `ai_hypothesized_unverified` — a model proposed it; nothing has checked it yet.
- `ai_hypothesized_dynamically_confirmed` — a model proposed it AND the dynamic harness independently confirmed it.

Nothing downstream — reports, confidence scores, the calibration corpus, the trusted bypass-technique library — treats the first two the same as the last two until promotion happens through empirical confirmation. This single field is what lets four ambitious AI capabilities (Phases 5-7) coexist with a system that still can't afford to present a guess as a fact. See ADR-0001.

## Authorization and audit (cross-cutting, present from Phase 1)

Every invocation requires `--justification` (`OWN_APP` / `CTF` / `AUTHORIZED_ENGAGEMENT:<id>` / `ACADEMIC_TRAINING_TARGET`) — there is no default; the CLI refuses to run without an explicit value, including for UnCrackable1-3 runs. Every run writes an immutable audit record: timestamp, APK hash, justification, operator identity, tool version, and the exact git commit hash of the codebase at run time — the commit hash doubles as a reproducibility anchor. Append-only, never edited or deleted. Recorded as a flat JSONL file from Phase 1 onward; migrated into a SQL `audit_log` table when Phase 4 introduces SQLite (see below). See ADR-0005.

## Data model

On top of the baseline `projects / applications / analyses / findings / evidence / logs / reports` tables, all part of the SQLite schema introduced at Phase 4 (Phase 1-3 storage is flat JSON, not a database — see `low-level-design-core-phases-1-4.md`):

- `hypotheses` — class/method/symbol, category, hook point, predicted indicator, model + prompt version, confidence, rationale, status (proposed/verified/rejected). [populated from Phase 6]
- `bypass_techniques` — name, category, script + hash, provenance (source analysis, generating model, verifying run), status (candidate/trusted/rejected), human reviewer + timestamp. [populated from Phase 7]
- `calibration_runs` — per-category predicted confidence vs. empirical outcome, tied to an eval-set version. [recorded as flat JSON from Phase 1, migrated here at Phase 4]
- `audit_log` — as described above. [recorded as a flat JSONL file from Phase 1, migrated here at Phase 4]
- `knowledge_corpus` — indexed documents (MASTG techniques, prior findings, trusted technique library) with a corpus version, so every retrieval is reproducible to "which knowledge snapshot produced this." [Phase 5]

The full schema — baseline tables plus all of the above — exists from Phase 4 onward; before that, everything is flat JSON/JSONL, migrated wholesale at that point. An unpopulated table is not a placeholder implementation; a fabricated row in one would be.

## Phases, in dependency order

### Phases 1-4 — Deterministic core

**Phase 1 (MVP, UnCrackable1):** ingestion (hash/size/aapt2 metadata) → static signature scan (manifest + resources + jadx bytecode grep, YAML-driven, weighted confidence, file+line evidence per match) → decision engine (ROOT_ONLY/SSL_ONLY/BOTH/NEITHER against a configurable threshold) → dynamic pipeline (automated adb install + Frida bypass selected by what was detected + logcat capture) → a programmatic, target-specific success check (not eyeballed) → correlation (flag static/dynamic mismatches explicitly) → Markdown/HTML report. Storage is flat JSON. Auth/audit and calibration instrumentation (recording predicted-vs-actual per run) are present from this phase, even though nothing formalizes the calibration numbers yet.

**Phase 2 (UnCrackable2):** adds native `.so` analysis (readelf/strings/symbol matching) to the signature engine and a JNI-hooking Frida bypass technique. The Phase 1 pipeline runs unmodified — only signatures/scripts are added. If orchestration code needs to change to make this pass, that's a signal Phase 1 over-fit to a single target and needs a small refactor before continuing.

**Phase 3 (UnCrackable3):** adds anti-Frida/anti-debug detection (tracerpid checks, ptrace self-attach, frida-server process/port scanning) to the static side, and a stealth bypass technique on the dynamic side. This is also where a retry step is first legitimately earned: "app self-terminated because it detected instrumentation" is a real, expected, loggable outcome, handled explicitly — never a false-confidence massage of an ambiguous verdict (NFR-2).

**Phase 4 (harden into the checkpoint deliverable):** migrate JSON → SQLite; formalize the calibration harness (real precision/recall/F1 and a confidence-calibration curve against three real targets plus 1-2 negative-control apps, proving NEITHER isn't theoretical); polish the report (exec + technical); unit tests around the signature matcher and decision engine; an honest, explicit limitations section (obfuscation blind spots, what's rule-based vs. planned-AI).

### Phase 5 — Knowledge & Reporting Intelligence

Ingest and embed the OWASP MASTG technique catalog plus accumulated findings and (eventually) the trusted bypass-technique library into a lightweight local vector index (no need for anything heavier than sqlite-vec/FAISS at this scale). Wire retrieval into report generation (cite the actual MASTG technique, don't let the model invent terminology) and into deterministic version-diffing (structural diff computed in code; a model narrates it, grounded in retrieved context). No dependency on Phases 6/7 — only needs Phase 4's stable core and real data to index, so it can run before or after Phase 6 with no cost either way.

### Phase 6 — Semantic Hypothesis Generation

For methods/classes the deterministic engine does not confidently match, a heuristic pre-filter (suspicious API references, high complexity near network/crypto code, unmatched neighbors of matched code) narrows what actually gets sent to a code-reasoning model — bounding token/context spend. The model returns a structured hypothesis (target, category, hook point, predicted bypass indicator, rationale), stored as `ai_hypothesized_unverified` until the dynamic harness checks it. Before trusting this model on genuinely novel code, run a blind eval: hide the deterministic engine's answers on known Phase 1-3 patterns and measure whether the model independently rediscovers them — a real, reportable number, and a cheap gate before Phase 7 depends on this model's output. Sequenced after Phase 2/3 (needs their native/bytecode analysis infrastructure) and benefits from Phase 5's retrieval.

### Phase 7 — Bypass-Technique Synthesis (generate-and-verify loop)

Given a Phase 6 hypothesis (or a case where all known techniques empirically failed against a custom scheme), the model drafts a candidate Frida hook constrained to a small library of safe hook shapes (override return value, skip exception, replace comparison result) — bounding blast radius and keeping it reviewable. Execution is sandboxed hard: emulator-snapshot revert between attempts, no host filesystem access beyond what the hook needs, network egress only through the monitored proxy, execution timeout, bounded retry count (2-3). Verification requires two independent positive signals — the previously-observed blocking behavior stops occurring, and the actual protected output is positively confirmed present. Only then does it enter `bypass_techniques` as `candidate`; only human review promotes it to `trusted`/reusable (ADR-0004). Deliberately last: the highest-blast-radius, most novel component, built on a system already proven stable.

## Model routing

- **Tier 0 (deterministic, zero model calls):** source of truth for the ~90% known-pattern case. Drives Phases 1-4 entirely.
- **Tier 1 (code-reasoning):** drives Phase 6 (hypothesis generation) and Phase 7 (bypass drafting).
- **Tier 2 (large-context):** drives Phase 5's cross-run correlation and report narrative synthesis.
- **Tier 3 (vision):** verifies on-screen state during dynamic runs as an independent signal alongside logcat parsing.

Specific model choices (local via Ollama vs. cloud API) are decided at each phase's build time against what's current, validated against the blind-eval gate described under Phase 6 — not committed to now.

## Error handling & testing (summary — see NFRs for full detail)

Every stage returns a structured status; a `failed` status halts the pipeline loudly (NFR-1). Retries are reserved for tooling/environment failures, never for massaging an ambiguous verdict (NFR-2). AI output is never trusted without the `verification_state` mechanism enforcing downstream separation. The calibration harness (Phase 4 onward) doubles as an ongoing regression test — any signature, threshold, or model change is re-scored against the full accumulated ground-truth set before being considered an improvement. Unit tests cover the deterministic core; each phase's own end-to-end run against a real target is its integration-test record (NFR-17, NFR-18).

## Lineage note

This supersedes the original blueprint's Phase 6 ("AI Reasoning & Correlation") and Phase 8 ("Self-Learning") with something more specific and defensible: Phase 8's "error signature → fix → success counter" becomes the sharper Phase 7 generate-and-verify loop applied to actual bypass-technique discovery, with a human gate; Phase 6's "LLM decides confidence" becomes Tier 0 deterministic scoring, with AI strictly confined to hypothesis generation, synthesis, and narration — never the verdict.
