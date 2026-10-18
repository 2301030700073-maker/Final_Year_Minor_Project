# ADR-0005: Mandatory Authorization Attestation and Immutable Audit Logging

## Status
Accepted

## Context
This platform's core capability — automated root-detection/SSL-pinning bypass — is inherently dual-use. It is entirely legitimate against owned apps, CTF/training targets (UnCrackable1-3), and explicitly authorized engagements; it would not be legitimate pointed at arbitrary third-party production apps without authorization. This distinction should be a structural property of the tool, not a README disclaimer that's easy to ignore under deadline pressure or simple forgetfulness.

## Decision
Every invocation requires a `--justification` value (`OWN_APP` / `CTF` / `AUTHORIZED_ENGAGEMENT:<id>` / `ACADEMIC_TRAINING_TARGET`) — the CLI refuses to run without one. Every run appends an immutable record to the audit log: timestamp, APK hash, justification, operator identity, tool version, and the git commit hash of the codebase at run time. Records are append-only; nothing is ever edited or deleted. In Phase 1 this is a flat, append-only JSONL file (`outputs/audit_log.jsonl`) — introducing a SQL table for this alone, one phase ahead of the rest of the schema, would contradict ADR-0002's "no infrastructure before it's earned" reasoning. It becomes a real `audit_log` SQL table when Phase 4 introduces SQLite for everything else.

**Status update (2026-10-18) — hash-chaining WAS adopted.** The log is no longer only append-only: every record carries `prev_hash` (the previous record's hash) and `record_hash`, and `src/audit/attestation.py` also stamps `head_hmac` when `AUDIT_HMAC_KEY` is configured; `cli verify-audit-log` re-derives the chain. The "considered, not adopted now" line under *Alternatives* is superseded by this update rather than deleted — an ADR records the decision as it was made. What the chain provides is tamper-EVIDENCE, not immutability: a writer who can rewrite the file can re-derive the chain, which is why the HMAC anchor exists and why records without one are reported (`hmac_missing`) instead of being treated as verified. "Append-only" remains the operational rule; "immutable" in the title is the historical name of the requirement, not a claim that the file cannot be rewritten.

## Consequences
- Built in from Phase 1, so it's a habit from the very start rather than a bolt-on once the tool becomes more capable and therefore riskier to misuse.
- The git-commit-hash field doubles as a reproducibility anchor (NFR-3), independent of the ethics motivation.
- For a solo, academic-only user analyzing training targets, this is currently low-drama overhead — its value compounds if the tool's scope ever expands beyond UnCrackable1-3 and the author's own test targets.

## Alternatives considered
- **Defer until scope expands beyond training targets**: rejected — the point is that this becomes a structural habit before it's load-bearing, not after.
- **Cryptographic hash-chaining for tamper-evidence**: considered, not adopted at the time — append-only plus git-commit-pinning was judged sufficient at current scale. *(Superseded 2026-10-18: the chain was subsequently implemented — see the status update under Decision.)*
