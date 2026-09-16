# 0013. Verify the launch by its effect, and gate capture attribution on the app's liveness

Status: Accepted
Date: 2026-09-16
Relates to: ADR-0011 (foreground wait before the UI drive), ADR-0012 (device-side
uid attribution), ADR-0006 (tiers are never blended), NFR-7 (fail loudly)

## Context

`_launch_app` cold-started the target with

    am start -a android.intent.action.MAIN -c android.intent.category.LAUNCHER -p <pkg>

under `check=True`, on the documented assumption that "an app that crashes on
launch still returns exit 0 from am start, so an empty capture is reported
honestly downstream". A live run on the reference emulator (`emulator-5554`,
2026-09-16) measured something worse than that assumption covers:

    $ am start -a android.intent.action.MAIN -c android.intent.category.LAUNCHER -p com.redshift.rs_certpinning_bypass
    Starting: Intent { act=android.intent.action.MAIN cat=[android.intent.category.LAUNCHER] pkg=com.redshift.rs_certpinning_bypass }
    Error: Activity not started, unable to resolve Intent { act=... flg=0x10000000 pkg=... }
    $ echo $?
    0

The emulator image has **no launcher app** (`cmd package resolve-activity --brief
-a MAIN -c LAUNCHER` with no package resolves to
`android/com.android.internal.app.ResolverActivity`, `match=0x0`), so the
package-scoped launcher intent resolves to nothing — and `am` still exits **0**.
`check=True` therefore never fired. The same device resolves the package's own
component cleanly (`match=0x108000` →
`com.redshift.rs_certpinning_bypass/.MainActivity`), `am start -n
<pkg>/.MainActivity` works (pid 13382), and `monkey -p <pkg> -c LAUNCHER 1` works
(pid 13444).

The consequences compounded, because three separate things were each true:

1. The stage spent its whole capture window on a process that was never started.
2. `_drive_ui`'s foreground wait (ADR-0011) correctly refused to tap — 16 polls,
   `foreground: false` — which recorded *a* symptom but was not the cause.
3. `attribute_proxy_clients` (ADR-0012) then returned `reached: false`, and the
   report told the reader, in the capture section:

   > **the stage's own device-side attribution found this app did NOT reach the
   > proxy** … The flows below are therefore not this app's traffic, and the
   > pinning reading above says nothing about this app.

That statement is a **vacuous truth**: "uid 10181 held no socket to the proxy" is
true of an app that does not exist, and it was rendered as a fact about an app
that never ran. This is the same failure class as `all([])` promoting a root
bypass, and it is worse than the empty capture it came from, because it reads as
positive evidence about the app's network behaviour.

## Decision

**1. No exit status from `am start` is a guard; the launch is verified by its
effect.** `_launch_app` force-stops (unchanged, `check=True`), resolves the
launch component from the device (`cmd package resolve-activity --brief -a MAIN
-c LAUNCHER <pkg>`), then tries launch forms in a ladder — resolved component
(`am start -n`), then the package-scoped MAIN/LAUNCHER intent, then `monkey -p
<pkg> -c LAUNCHER 1` — and after each one samples `pidof`. The first form that
leaves a running process wins and no further form runs, because launching the app
twice would not be the same capture. Each attempt is recorded with its pid and a
tail of its own output, bounded at the cause end so `am`'s last line (the error)
survives the cut.

**2. A `reached: false` now requires the app to have been measured running.**
`attribute_proxy_clients` takes `target_running` (True / False / None, from
`_parse_pidof`'s 0-vs-None contract) and returns:

| `hit` | `target_running` | result |
|---|---|---|
| uid held a proxy socket | any | `True` — the socket *is* the app having existed |
| no socket | `True` | `False` — a measured absence, as before |
| no socket | `False` | `None` — not measured: it was not there to stay away |
| no socket | `None` | `None` — not measured: liveness itself was not measured |

The asymmetry is deliberate: proof positive needs no premise, proof of absence
does. `_target_running` is the decider and owns its guard, so every future caller
gets it without having to remember. The end-of-window `pidof` sample now runs
*before* the attribution is computed, since the attribution consumes it.

**3. The launch record reaches the evidence.** Both capture branches record
`app_launch` (form that worked, pid, per-attempt output) and `app_target_running`
alongside the attribution, so the stage's own StageResult shows which launch form
succeeded and whether the app was up.

## Consequences

- The measured defect is closed end-to-end: with `target_running=False` the
  capture section of the report now says the app was **not running**, so the
  reading is not measured rather than the app staying away — the honest statement
  for a run whose launch silently started nothing.
- A launch that starts nothing is no longer silent. It is visible in
  `app_launch.launched_by is None`, in `app_target_running`, in the attribution's
  reason, and in `_launch_liveness_cause`'s existing failure cause on the
  empty-capture path.
- The stage does **not** hard-fail when the app was measurably absent but flows
  were captured: the capture itself did work (the proxy functioned, the CA is
  installed) and those readings remain valid. What changes is that no reading is
  attributed to an app that was not there. Reading (3) above is what made this
  necessary; the alternative — failing the whole stage — would throw away
  evidence that is genuinely about the device.
- The ladder costs one extra adb call per capture (`resolve-activity`), and up to
  two more only when launching is already failing.
- `_launch_liveness_cause` is unchanged: with `pid_after_launch` measured 0 it
  already named the liveness failure on the empty-capture path. The gap ADR-0013
  closes is the path where flows *were* captured and the attribution spoke anyway.

## Rejected

- **Trusting `am start`'s exit status** (or adding `am start -W`), because the
  measurement above is that it exits 0 while starting nothing. `-W` reports
  timing for a launch that happened; it cannot report one that did not.
- **Launching by the main activity read from the static manifest.** The pipeline
  decodes the manifest, so `<pkg>/.MainActivity` was available without an adb
  call — but a manifest can declare the launcher through an `activity-alias`, and
  the component a device will actually launch is the device's own answer. The
  resolver is authoritative and costs one call; `monkey` remains the fallback.
- **Raising out of `_launch_app` instead of returning a record.** The stage's
  other refusals (ADR-0011's UI drive) record a structured reason on the
  StageResult rather than crashing the run; a launch failure that discards the
  attempt evidence would be a step backwards from that.
- **Treating unmeasured liveness as `False`** (keeping today's wording when only
  the launch sample is `None`). That is the same vacuous claim with a narrower
  door: an unmeasured liveness premise cannot license an assertion about absence.
- **Making the attribution uid-level premise into "the app was seen in the
  capture log"**, which the capture log cannot support at all — it carries no
  client identity (ADR-0012).

## Measured follow-on: the pid sample was itself a race

The first live run after this decision recorded its own contradiction, inside the
`app_launch` evidence it had just produced:

    attempts[0] "resolved component"           pid 0      output: Starting: Intent { cmp=.../.MainActivity }
    attempts[1] "package MAIN/LAUNCHER intent" pid 14037  output: Error: Activity not started, unable to resolve Intent

The resolved-component form is what started the app - its output shows the intent
accepted, with no error - while the pid sample taken in the same breath read 0.
`am start` does not wait for the process it starts, so the ladder concluded that
form had failed, tried a second one, and credited `launched_by` to the form whose
own recorded output says it started nothing. Had the next rung been a form
capable of starting an app, this would have relaunched the target mid-capture.

`_wait_for_app_pid` now polls `pidof` to a bound (6s, 0.5s interval) after each
form, so a form is credited only once the process it started is observed.
Re-measured on the same device and target:

    {"launched_by": "resolved component", "pid": 14771,
     "attempts": [{"form": "resolved component", "issued": true, "pid": 14771,
                   "output": "Starting: Intent { cmp=.../.MainActivity }"}]}

One attempt, the form that worked, and the pid agreeing with the text beside it.
The bound is deliberate: a form that starts nothing costs at most the bound, and
three forms of that is ~18s against a capture window that is itself 12s.
