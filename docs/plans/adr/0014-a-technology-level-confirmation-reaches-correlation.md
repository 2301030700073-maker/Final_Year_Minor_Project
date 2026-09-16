# 0014. A technology-level confirmation is a target-specific verification, so it reaches correlation

Status: Accepted
Date: 2026-09-16
Relates to: ADR-0006 (tiers are never blended), ADR-0001 (the deterministic
engine decides), FR-5 (static-vs-dynamic correlation)

## Context

A full pipeline run against a real app with no hand-authored success check
(`propertyguru`, `--force-dynamic`, `emulator-5554`, 2026-09-16) produced a
report whose two halves contradicted each other. Under **Dynamic Verification**:

    Root bypassed: True
    root bypass confirmation basis: app's own root-check probed a root artifact and
      was answered-false (on the rooted test device that probe would otherwise have
      returned rooted); its root logic received the not-rooted result
    root artifact probes answered-false: root:/system/app/Superuser.apk,
      root:/system/xbin/su, root:/sbin/su, root:/system/bin/su,
      root:/system/xbin/daemonsu, root:/system/xbin/which su

Under **Static vs. Dynamic Correlation**, in the same report:

    - Not evaluated (dynamic used the technology-level hooks-engaged check (no
      target-specific success check for this app); correlation requires a
      target-specific verification).

A confirmation resting on the app's own root logic being intercepted and handed a
falsified not-rooted answer **is** a target-specific verification. The skip reason
was written when `TechnologyHooksEngagedCheck` reported only which recipe hooks
attached to the process. It was later extended (its "Fix-1 / Fix-3" notes) to
promote both categories from the app's own observable behaviour:

> beyond raw hook engagement, the check now surfaces BEHAVIORAL-EFFECT evidence
> the recipes emit when they observe a real outcome, and promotes BOTH categories
> to a confirmed bypass **from the app's own observable behavior** (ADR-0006)

The gate was never updated to match. It keyed on the presence of a *success-check
stage result* rather than on the *target-specific evidence* the correlation
actually consumes, so `correlate()` was reachable only from the arm that a
hand-authored script produces. The consequence is that `correlate()`'s
CORR-COVLIM1 branch — written for exactly this case:

    if not root_predicted and verification.root_bypassed:
        if classification.root.coverage_limited:
            coverage_confirmed.append(...)

— was unreachable for every app without a hand-authored script, i.e. for every
real-world app, which is the entire population it was written for. Only the three
UnCrackable targets could reach it, and those have static predictions anyway.

The measured run satisfies every condition of that branch: `root_predicted=False`
(confidence 0.20, threshold 0.7), `root_bypassed=True`, `coverage_limited=True`.
`correlate()` would have reported a coverage-confirmed root bypass. It was never
called, so the ADR-0006 tier designated for the static↔dynamic relationship read
"Not evaluated" beside the strongest empirical finding of the run.

## Decision

**The gate asks the question the correlation actually needs: did the verification
confirm a category from the app's own observable behaviour?**

    if verification.root_bypassed or verification.ssl_bypassed:
        correlation_result = correlation_module.correlate(classification, verification)
    else:
        correlation_skip_reason = "dynamic used the technology-level hooks-engaged check ..."

When the technology-level check confirmed something, there is real dynamic
evidence to compare static findings against, and correlation runs. When it
confirmed nothing, there is none, and the honest reason stands.

| Technology check outcome | Attribution | Correlation |
|---|---|---|
| `probeHit` on root, or pin-check + handshake on SSL | target-specific — the app's own check ran and returned | **attempted** |
| hooks attached, nothing confirmed | machinery only — our script reached the process | not attempted (unchanged reason) |

`correlate()` is **not** called unconditionally. With nothing confirmed, its
documented fall-through for `not predicted + confident negative + bypass None` is
"genuine agreement by non-claim", so an unconditional call would report a
confident static negative as AGREEING with a dynamic run that measured nothing —
the vacuous-truth failure this project has already been bitten by twice. A
confirmed category always populates one of the three correlation lists, so on the
path this ADR opens, `matches` can never be fabricated. That is structural, not
incidental.

The `success-check` stage's note is corrected in the same change: it asserted
"correlation is not attempted" unconditionally, which is now false in the
confirmation case.

## Consequences

- `correlate()`'s CORR-COVLIM1 (`coverage_confirmed`) and RESID-6F (`unverified`)
  states become reachable for the unknown-app population. For the measured run,
  root lands in `coverage_confirmed` and SSL in `unverified` — the two tiers stay
  separate, which is the point of having both.
- A coverage-limited static verdict that dynamic then defeats is reported as a
  **filled coverage gap**, not as a static miss. It remains `matches=False`: static
  never predicted the positive, so this is not agreement.
- A confirmed dynamic bypass over a *confident* static negative still lands in
  `mismatches` — a real static miss, and it stays visible as one rather than being
  laundered into the coverage-limited tier.
- The stage-level statement ("this stage reports technology-level hooks-engaged")
  is unchanged and still true; what changed is only the claim it made about
  correlation.
- No output is fabricated: the skip reason remains printed in exactly the case it
  accurately describes.

## Rejected alternatives

- **Call `correlate()` unconditionally.** Simplest, and wrong: the "agreement by
  non-claim" fall-through would manufacture a MATCH for a run where dynamic
  measured nothing, which is worse than the skip being fixed.
- **Keep the skip, and rely on Dynamic Verification to carry the confirmation.**
  That is the status quo the run exposed — the finding is present but the tier
  ADR-0006 designates to relate static to dynamic declines to relate them.
- **Gate on the stage's `bypass_hooks_engaged` value.** Hooks engaged is
  machinery, not the app's check. A run where hooks engaged and nothing was
  confirmed would pass the gate and fabricate agreement. The signal is the
  confirmation, not the engagement.
- **Teach the technology check to emit a synthetic success-check `StageResult`.**
  It would assert that a target-specific check exists for an app that has none,
  and would overload the stage's status to mean both "a written check ran" and
  "hooks attached". The gate should read the verification, not invent a stage.

## Verification

Full suite: **1843 passed**. The two new end-to-end tests cover both halves of the
gate; the confirmation case was checked against a negative control that forces the
old unconditional skip, under which it fails on `assert ([])` — the test detects
the defect it was written for rather than passing either way.
