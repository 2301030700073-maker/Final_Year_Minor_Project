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

Implemented 2026-09-16.

**Full suite: 1866 passed** (52s; 1861 before this change, plus the five new tests).
The push that first carried the wiring failed CI at import collection -
`ImportError: cannot import name 'SSL_CONFIRMATION_LINE'` - because the constants
and the wiring test were still uncommitted in the working tree while every local run
passed against it; `c6095391a` commits them, and `pytest --collect-only` on the
committed tree now collects 1866 with 0 errors.

**A prerequisite defect was found by the first real run, not by the suite.** That run
failed the capture stage with `[Errno 36] File name too long:
'/…/src/dynamic/scripts/Java.perform(function () { …'`: cli.py passed the synthesized
bypass's *source* where `run_capture_stage(bypass_script=…)` documents a *filename*
under `src/dynamic/scripts/`, and `frida_runner.load_script` resolves it with
`(SCRIPT_DIR / name).read_text()`. `bypass_applied` is set after that load, so it
stayed False - meaning the capture window had never actually run under the bypass on
any real run, so this ADR's premise ("that window ran under the pinning-only bypass")
was false and there was no hooked window to evaluate. `6c61497b2` adds
`bypass_source` and dispatches on which argument was given, to the two loaders that
already exist for the split. The ADR-0015 e2e test that was supposed to cover this
asserted that the CLI passed *a* value, never that the loader could read it.

**Real end-to-end run** (PropertyGuru, `--force-dynamic --capture-traffic`,
`run_id 6546c2c0248947b8a67e06ce2b3ebf44`), which exercised the non-upgrade path:

```
OK  dynamic                          (30938ms)
OK  success-check                    (0ms)
OK  capture-traffic                  (25766ms)
OK  success-check (capture window)   (0ms)
```

- The capture window genuinely ran hooked for the first time: `bypass_applied=true`,
  `bypass_arm="synthesized source (8774 chars)"`,
  `app_launch.launched_by="frida spawn"`, app still running at the end.
- The new stage is in the report's stage table
  (`| success-check (capture window) | success | 0 | |`) with its evidence naming the
  window it evaluated and the reason it did not upgrade.
- It did **not** upgrade, correctly: that window's observer recorded only its two hook
  checkpoints - no `ssl-pin-check`, no `ssl-handshake` - and the proxy recorded 19
  `tls_failed_client` refusals ("The client does not trust the proxy's certificate")
  on `graph.facebook.com`, `sdk.iad-03.braze.com` and `featureassets.org`. One flow
  was decrypted (`api.segment.io`) and the stage's own device-side attribution found
  uid 10168 held no socket to the proxy, so it is not attributable to the app.
- `Root bypassed: True` from the dynamic window is carried through untouched, and
  `SSL bypassed: inconclusive` stands - an absence in one window did not retract a
  confirmation from another, and no claim was manufactured from the pinning-only
  bypass.

**The upgrade path itself is verified against the real pipeline**, with the capture
stage's evidence supplied as a fixture rather than by a device:
`tests/unit/test_cli_capture_window_wiring.py` drives `cli.run` end to end and asserts
the written report reads `- SSL bypassed: True` naming the launch that confirmed it,
and `tests/unit/test_cli_capture_window_upgrade.py` asserts the merge takes the two
SSL lines while keeping the dynamic window's root and liveness lines. What has **not**
been observed on a real target is a capture window that carries both effects; that is
the population this ADR is for (apps that stall under the dynamic spawn and run under
the later launch), and PropertyGuru is not one of them - its TLS clients refuse the
proxy CA on the hosts that matter, which is a coverage bound of the synthesized bypass,
not of this decision.
