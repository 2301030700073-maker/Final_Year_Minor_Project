# ADR-0002: No Workflow-Orchestration Framework for the Core Pipeline

## Status
Accepted

## Context
The original blueprint specified LangGraph as the orchestrator for the entire 8-phase pipeline, framed as a "self-healing loop: execute → validate → pass/fail → retry/escalate" graph. For Phases 1-4, the actual control flow is a linear sequence of stages, each of which either succeeds or halts the pipeline — there is no branching or cyclic behavior that a plain sequential script can't already express clearly.

## Decision
Phases 1-4 are implemented as a plain, sequential Python pipeline. Each stage returns a structured `StageResult` (status / evidence / error / duration); the caller checks `.status` before proceeding to the next stage. No graph/workflow framework dependency is introduced for the core.

## Consequences
- One fewer dependency and learning curve, with no loss of capability for the linear Phase 1-4 flow.
- Easier to debug: a plain stack trace through function calls, versus a graph executor's indirection.
- If Phase 7 (bypass synthesis) or later self-healing work genuinely needs conditional/branching retry logic that becomes unwieldy as plain code, introducing a graph framework at that point is a deliberate, revisitable decision informed by real requirements — not a default adopted speculatively at the start.

## Alternatives considered
- **LangGraph from Phase 1** (original blueprint): rejected as premature — no current requirement exercises graph-specific capability (conditional branching, cyclic retry across many nodes) that plain sequential code can't already express.
