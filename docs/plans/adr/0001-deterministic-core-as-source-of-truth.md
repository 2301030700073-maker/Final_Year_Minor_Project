# ADR-0001: Deterministic Detection Core as Source of Truth; AI Strictly Advisory

## Status
Accepted

## Context
An earlier version of this project's blueprint proposed a 3-tier LLM cascade (small/medium/large model) as the mechanism that ultimately produces confidence scores and detection verdicts for root-detection and SSL-pinning. Root-detection and SSL-pinning identification are fundamentally deterministic, checkable facts once the relevant evidence (a method's bytecode, a manifest attribute, a native symbol) is examined — this is how established tools (MobSF, QARK, OWASP MASTG's own methodology) approach the problem. Making an LLM the arbiter of a checkable fact introduces nondeterminism, is harder to defend in an academic evaluation ("why did the model output 0.92?"), and — at the target 11 GB RAM WSL2 environment — risks resource contention with concurrently-loaded medium/large local models.

## Decision
A deterministic, weighted-signature rule engine is the sole source of truth for the ROOT_ONLY / SSL_ONLY / BOTH / NEITHER classification and its confidence score. AI/LLM components (Phase 5 onward) may generate hypotheses about code the deterministic engine didn't match, draft candidate bypass techniques, and narrate reports — but never assign a final verdict. Every AI-originated hypothesis is tagged `ai_hypothesized_unverified` and only becomes equivalent in trust to a deterministic finding after empirical dynamic verification (`ai_hypothesized_dynamically_confirmed`).

## Consequences
- The core (Phases 1-4) has zero LLM dependency, simplifying resource planning and removing a source of run-to-run nondeterminism from the part of the system everything else depends on.
- The project's central claims (root-detection/SSL-pinning found, bypass succeeded) are always traceable to a concrete rule match or an empirical runtime observation — never to "the model said so."
- Genuinely novel/obfuscated protections that no signature covers will be missed by the deterministic engine alone; this gap is explicitly addressed by Phase 6 (hypothesis generation), not papered over by trusting an LLM's guess as ground truth.

## Alternatives considered
- **LLM-first classification** (original blueprint): rejected — nondeterministic, unverifiable, resource-heavy, and the wrong tool for a mechanically-checkable task.
- **Hybrid from day one** (rule engine + LLM cross-check starting Phase 1): rejected for now — adds AI-layer complexity before the deterministic core is proven, in tension with ADR-0003.
