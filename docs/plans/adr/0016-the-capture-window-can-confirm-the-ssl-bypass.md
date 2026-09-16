# 0016. The capture window can confirm the SSL bypass, per-window and upgrade-only

Status: Accepted
Date: 2026-09-16
Relates to: ADR-0006 (tiers are never blended), ADR-0001 (the deterministic
engine decides), ADR-0013 (launch verification), ADR-0015 (the capture window
runs under the bypass it measures)

## Context

ADR-0015 left one boundary open and said so: `ssl_bypassed` is set by the
success-check stage, which runs **before** the capture stage, and that stage
evaluated exactly one window - the dynamic stage's Frida launch. The capture
window is the window that reliably gets far enough to complete TLS handshakes
(the dynamic spawn stalls some apps on their splash), and since ADR-0015 it runs
under the same pinning-only bypass and runs the same observer script.

So a run could hold, in its own capture stage's evidence, the app's own
`ssl-pin-check` firing and an `ssl-handshake` completing through the hooked
stack - the exact two effects `TechnologyHooksEngagedCheck` requires - and still
report SSL `inconclusive`, because the only stream the check ever saw was the
other launch's silence. Measured on the stored PropertyGuru run
(`790ae9c6fa8c402cbf50b2c1a3db3ed7`): the dynamic window recorded
`none observed by the in-app SSL observer` while the capture proxy decrypted 32
flows. That run's capture window was un-hooked (`frida_messages=[]`), so it
could not have confirmed anything; the next run's will not be.

The predicate is defined per window and says so: the app's pin-check **ran
without rejecting** AND a handshake **then completed**. Both must come from one
launch, because together they are one connection's story - the pin logic
accepting a connection it would otherwise reject. Merging two launches' message
streams into one list would satisfy the predicate from a pin-check in one window
and a handshake in another, which is not a connection either window observed.

## Decision

Four parts.

**1. The check is evaluated per window, and the run's SSL verdict is an OR over
the windows whose observers were live.** `TechnologyHooksEngagedCheck.check`
gains an optional named second window (the capture window's own stream) and
evaluates each window separately: a window confirms only if *its own* stream
carries both effects. The result carries which window confirmed.

**2. The capture window is evaluated after it closes, and the result may only
UPGRADE.** After the capture stage, when that window ran under the pinning-only
bypass (`bypass_applied` true - otherwise no observer was in it and there is
nothing to read), the same check class runs once more against the capture
window's stream and its post-bypass liveness. If it confirms and the run's
verification did not, the run's `verification` is replaced by it. If it does not
confirm, the existing verification stands untouched: **absence of evidence in
one window never retracts a confirmation from another.** No path in this change
weakens any claim.

**3. The second evaluation is recorded as its own stage** (`success-check
(capture window)`), so the audit trail shows two named evaluations of two named
launches rather than one verdict of unclear provenance. Both remain in
`stage_results`.

**4. Correlation is re-run against the upgraded verification.** `correlate()` is
a pure function of `(classification, verification)`, and it reads
`verification.ssl_bypassed` in five places - so a verdict upgraded after the
first correlation ran would otherwise sit beside a correlation computed from the
pre-upgrade object. Re-running it is the whole fix; nothing is carried over.

Alongside these, the check's message parser becomes shape-tolerant for the same
reason `_observer_signal` did: the dynamic stage stores Frida's raw
`{type, payload}` envelope and the capture stage stores the payload alone, so a
parser that reads only the envelope finds nothing in the capture window's stream
- which is precisely the defect that made ADR-0015's change 2 dead on arrival.

## Consequences

- SSL confirmation becomes reachable for the population the synthesized bypass
  exists for: apps that stall or self-terminate under a Frida spawn but run
  under the later, lighter launch with a proxy in the path.
- The two evaluations are both in the record, each attributed to its launch, so
  "confirmed" can always be traced to the window that confirmed it.
- **Root is untouched.** The capture window's bypass is pinning-only by
  construction (ADR-0015), so it carries no root recipes and its probeHit
  evidence is nil; there is nothing there to promote and this change cannot
  manufacture root evidence. A root confirmation still requires the dynamic
  window.
- `ssl_bypassed` becomes true on runs where it was previously `None` while the
  evidence was already in hand, so the calibration corpus's SSL column can move
  on re-run. That is the point, but it means previously-measured figures are not
  comparable to post-change ones without re-running.
- Correlation can now report a confirmed SSL bypass (COVERAGE-CONFIRMED) on runs
  whose dynamic window alone would have left it UNVERIFIED.

## Rejected alternatives

- **Reorder the pipeline so capture runs before the check.** Then one check
  could see both windows. Rejected because the predicate is per connection and
  per window: one evaluation over a merged stream would let a pin-check in one
  launch combine with a handshake in another and report it as one connection
  observed, which is exactly the conflation ADR-0015 spent three commits
  removing from the report. Per-window evaluation with an OR over windows is the
  same reach with the semantics kept.
- **Union the capture window's messages into the first check's input.** Same
  defect as above, plus it would render the dynamic window's evidence lines from
  the capture window's stream, so the lines would describe a launch they were
  not measured in.
- **Rewrite the first check's verification in place, post hoc.** This is what
  ADR-0015 refused as a rider on a reporting fix, and the reason still holds:
  the stage result and the verification would disagree in one report. A second,
  separately recorded evaluation is what makes the rewrite unnecessary - the
  original stage keeps meaning what it measured.
- **Promote from the capture window unconditionally, including downgrades.** An
  un-hooked capture window records no observer messages at all (a
  `--skip-dynamic` run, or a `NEITHER`/`ROOT_ONLY` action), and a hooked window
  can legitimately stay silent if the app stalled there too. Reading either as
  "not confirmed" would turn an absence into a retraction.
- **Leave the boundary open and let the report narrate it.** ADR-0015 already
  names the effects in prose. Prose is not a verdict: the machine-readable
  `ssl_bypassed` stayed `None`, so correlation and calibration could not see the
  confirmation either, and the report's own SSL line still read `inconclusive`
  above evidence that said otherwise.

## Verification

Pending implementation. This ADR is committed before the code so the decision is
auditable on its own; the verification section will be completed with the
measured full-suite result and a real end-to-end run once the change lands.
