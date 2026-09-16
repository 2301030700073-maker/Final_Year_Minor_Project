# 0015. The capture window runs under the pinning-only bypass, and reports its own observer record

Status: Accepted
Date: 2026-09-16
Relates to: ADR-0006 (tiers are never blended), ADR-0001 (the deterministic
engine decides), ADR-0005 (authorized runs are audited), ADR-0011 (the capture
UI drive), ADR-0013 (launch verification)

## Context

A forced run against a real app (`propertyguru`, `--force-dynamic
--capture-traffic`, `emulator-5554`, 2026-09-16) produced a report that read as
one measurement contradicting itself. The capture proxy decrypted 32 flows while
the line directly above them said the Frida SSL observer had seen no handshake.
An investigation into "why the observer saw nothing" found no observer defect:

- the observer is appended to every synthesized script unconditionally
  (`synthesizer.py:993`, `:1170`);
- the app's TLS stack is platform Conscrypt (`Android10Platform` +
  `StandardAndroidSocketAdapter`, no `org/conscrypt` in the APK), which the
  observer's `com.android.org.conscrypt.TrustManagerImpl` hooks cover;
- the capture stage's own evidence showed the flows came from a **plain
  `am start`** launch — `bypass_applied=false`, `bypass_script=None`,
  `frida_messages=[]`, `launched_by="resolved component"`, pid 17829.

The two readings came from **two different launches of the app**, and the report
juxtaposed them without saying so. Worse, the structural consequence was not
cosmetic: the capture stage — the one window that reliably completes TLS
handshakes through the proxy CA — cold-started the app **with no instrumentation
in it**, while the dynamic stage's Frida window was the one the observer was live
in. So:

| Window | Launch | Observer live | Completes handshakes |
|---|---|---|---|
| dynamic | Frida spawn | yes | not on the measured app (splash stall) |
| capture | plain `am start` | no | yes (32 flows) |

A decrypted flow proves the CA was accepted on that host in **that** window. It
cannot show that a bypass defeated anything, because no bypass was in the window
that produced it. And the observer's evidence — the only path to an SSL
confirmation — was collected exclusively in the window that never got far enough
to produce a handshake. SSL was structurally unreachable for any app that stalls
under instrumentation, which is the population the synthesized bypass exists for.

## Decision

Three changes, one per commit (`b152c3903`, `5cd8632f5`, `8747dad7e`).

**1. The capture window runs under the pinning-only bypass.** The CLI composes
`synthesize(classification, Action.SSL_ONLY)` and passes it to
`run_capture_stage`'s existing `bypass_script` parameter, so the window records
`bypass_applied=true`.

A **fresh** `SSL_ONLY` composition, not the run's own `synth.source`: reusing the
latter would put root recipes into a window whose purpose is measuring the SSL
bypass whenever the action was `BOTH`. `Action.SSL_ONLY` composes no root hook
whatever root the classification detected, and the universal SSL base carries the
pin-check/handshake effect observer with it — so this window can report its own
SSL effects rather than being read only through the dynamic window's.

The gate is the **effective action**, after `--force-dynamic`:

| Effective action | Capture window |
|---|---|
| `SSL_ONLY`, `BOTH` | launched under the pinning-only bypass |
| `NEITHER`, `ROOT_ONLY` | plain cold start |
| any, with `--skip-dynamic` | plain cold start |

Hooking the capture window of a run that never attempted an SSL bypass would be
an unforced SSL bypass on a target we were not directed to bypass; and
`--skip-dynamic` means no instrumentation at all. Those arms stay the no-hooks
control, so the A/B `run_capture_stage` documents is still reachable.

**2. The capture window's own observer record is collected and reported.** The
capture stage already recorded its `frida_messages`; nothing read them. A shared
extractor (`_observer_signal`) now counts checkpoints, root `probeHit`s and
`bypassEffect`s from a message stream, and the dynamic stage's hooks audit uses
it too — **one set of rules for two windows running the same observer script**,
rather than two copies that can drift. The capture summary exposes that record on
both return paths, the Captured Traffic section renders it beside the flows it
belongs to, and the handshake note states what this window's observer saw as well
as what the dynamic window's did.

**3. The report names the two launches.** Both juxtaposition sites — the
decrypted-flows paragraph and the handshake note — state that the flows come from
the capture stage's own launch while the Frida observer was live in the dynamic
stage's separate, earlier launch, and that the observer's zero is therefore a fact
about the window it ran in. Both also state what the capture window's own bypass
state makes its flows evidence of:

| `bypass_applied` | The flows are evidence of |
|---|---|
| true | the injected bypass taking effect on those hosts |
| false | pinning was **not enforced** on those hosts — not that a bypass defeated it |

The weaker reading is the default (an old cached run has no `bypass_applied`
key). It is always true of a decrypted flow — the CA was accepted — whereas "the
bypass did this" needs positive evidence. This also corrected a pre-existing
over-claim: the SSL-confirmed arm rendered "the live proof that SSL-pinning was
actually defeated" over the capture's flows whenever `ssl_bypassed` was true, but
the confirmation came from the dynamic window and no capture script was ever
passed, so that sentence credited one window's confirmation to another window's
traffic.

## Consequences

- `bypass_applied=true` becomes the normal shape of a capture on a run that
  attempted an SSL bypass, so the report's stronger reading is now reachable on
  real data instead of being unreachable by construction.
- The capture window's decrypted flows and its observer effects are about the
  same launch, so the report no longer has to reconcile two windows to state one
  fact.
- **SSL promotion still does not read the capture window.** `ssl_bypassed` is set
  by the success-check stage, which runs *before* capture. So for an app that
  stalls under instrumentation, SSL can still read `inconclusive` even where the
  capture window's own observer recorded `ssl-pin-check` + `ssl-handshake`. The
  report now names those effects explicitly rather than hiding them behind the
  other window's silence, but it does not promote them, and it says why. Closing
  that boundary means re-evaluating the check after capture (or reordering the
  pipeline) and is deliberately not done here — a post-hoc verification rewrite
  must not arrive as a side effect of a reporting fix.
- An operator who wants the un-hooked window (the A/B control) still has it, via
  `--skip-dynamic` or an action that never attempts an SSL bypass; `--capture-traffic`'s
  help text states which arms are hooked.
- The injected script is a real bypass applied to a real app, so the run's
  authorization (ADR-0005) now covers instrumentation in the capture window as
  well as the dynamic stage's.

## Rejected alternatives

- **Reuse `synth.source` for the capture window.** Fewest moving parts, and wrong
  for a `BOTH` action: it would inject root recipes into the window whose purpose
  is measuring the SSL bypass, so a pinning reading could be confounded by root
  hooks the operator never directed at this window.
- **Always inject the bypass into every capture window.** That is an unforced SSL
  bypass on a target whose action never requested one (`NEITHER`, `ROOT_ONLY`),
  and it destroys the no-hooks control.
- **Report the strong "evidence the bypass took effect" reading unconditionally,
  now that the bypass is usually applied.** An old cached run, and every
  `--skip-dynamic` capture, ran no bypass. The strong claim would be false there,
  and the weak claim is never false.
- **Promote SSL from the capture window's observer effects in this change.** The
  evidence is now present to do it, but the decision belongs to the
  success-check stage and the ordering problem is real: a verification rewritten
  after the stage that produced it would leave the stage result and the
  verification disagreeing in the same report. That needs its own ADR, not a
  rider on a reporting fix.
- **Leave the capture window un-hooked and let the report explain the mismatch.**
  That is the status quo the investigation exposed: honest prose over a window
  that structurally could not speak to the bypass.

## Verification

Full suite: **1853 passed**, green at each of the three commits (1845 → 1848 →
1853). New coverage:

- `test_ssl_only_composition_carries_no_root_hook_whatever_root_detected` locks
  the property the capture path's correctness rests on.
- `test_capture_window_runs_under_a_pinning_only_bypass` and
  `test_capture_window_stays_unhooked_when_no_ssl_bypass_was_attempted` cover both
  halves of the gate; the first's stub echoes the action it was asked for, so it
  proves *which* composition the capture path requested.
- `test_observer_signal_counts_effects_by_the_shared_rules` pins the three
  distinctions the extractor makes (a crashed hook is not an effect; a non-root
  `probeHit` counts toward engagement but not the root line).
- The two `_capture_stage`-based render tests cover the observer line's presence
  and its absence (an un-hooked window must not read as an observer that ran and
  saw nothing), plus both bypass-state readings of the flows paragraph.
- `test_note_names_the_capture_windows_own_observer_record` and its mirror pin
  the handshake note's two states.
- Re-rendering the measured run from stored data (`_regenerate_report` against
  `790ae9c6fa8c402cbf50b2c1a3db3ed7`) shows the new text on real evidence,
  including the real launch record (`launched by resolved component, pid 17829`).
  That run predates change 2, so it renders the weaker reading — which is the
  correct reading for a window that ran no bypass.
