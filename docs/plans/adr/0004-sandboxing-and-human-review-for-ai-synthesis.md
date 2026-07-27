# ADR-0004: Sandboxing and Mandatory Human Review Gate for AI-Synthesized Bypass Techniques

## Status
Accepted

## Context
Phase 7 has the system autonomously draft and execute Frida scripts targeting code for which no known bypass technique exists yet. This is the highest-blast-radius component in the system: the system authors and runs injected code against a live analysis target, with the explicit goal of altering that target's runtime behavior. An unreviewed, autonomously-expanding library of AI-authored bypass techniques carries both a correctness risk (a script that "succeeds" by breaking the app in an unrelated way, not by actually defeating the intended check) and a responsible-use risk (an increasingly powerful, self-trusting bypass arsenal with no human checkpoint).

## Decision
Candidate scripts are: (a) constrained to a template library of safe hook shapes (override return value, skip exception, replace comparison result) rather than unconstrained code generation; (b) executed only inside a sandboxed, snapshot-revertible analysis environment with no host filesystem access beyond what the hook needs and no network egress outside the monitored proxy; (c) verified via two independent positive signals — the previously-observed blocking behavior stops occurring, AND the actual protected output is positively confirmed present — before being marked `candidate`; and (d) require explicit human review before promotion to `trusted`/reusable status.

## Consequences
- Phase 7's technique library expands more slowly than a fully autonomous design would allow — deliberate.
- Every technique in the trusted library carries a recorded provenance: source hypothesis, generating model/prompt version, verifying run, and reviewing human.
- Failed synthesis attempts are retained (bounded retry count, 2-3 attempts) as documented negative evidence, not silently discarded — a "tried X, didn't work, here's why" record has value.

## Alternatives considered
- **Fully autonomous generate-and-trust loop** (no human gate): rejected — unacceptable responsible-use risk for a bypass-capability system, and a higher correctness risk, since nothing forces the "two independent positive signals" discipline to actually be checked without a review step reading the evidence.
