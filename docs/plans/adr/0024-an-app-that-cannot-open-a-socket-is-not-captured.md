# 0024. An app that cannot open a socket is not captured, and both surfaces say so

Status: Accepted
Date: 2026-09-24
Relates to: ADR-0001 (the deterministic engine is the source of truth for
detection), ADR-0018 (the capture narrative must ask whose flows), ADR-0016 (the
capture window's evaluation is read by the pair of SSL lines), the
console↔report parity invariant (a cause the report carries is mirrored on the
console), and [[not-attempted-neq-skipped]] (a stage that never ran is not the
same record as one that ran and was reclassified).

## Context

Measured 2026-09-24 on three real runs of the OWASP UnCrackable targets, whose
APKs declare **no permissions at all** (`pyaxmlparser`: `perms=[]` on all three,
`owasp.mstg.uncrackable1/2/3`):

| run | capture stage | recorded flows | classification |
|---|---|---|---|
| `51d0f0c0` (UC1) | `success`, 28,096 ms | `flows_count: 3` | success |
| `55c96579` (UC2) | `skipped`, 24,008 ms | 0 | not applicable — no INTERNET permission |
| `a3f3f2fa` (UC3) | `skipped`, 25,045 ms | 0 | not applicable — no INTERNET permission |

All three are physically the same case: the app declares no
`android.permission.INTERNET`, so its uid cannot open a socket; the stage's own
device-side attribution says so (`proxy_attribution.reached: False`, "uid 10175
(owasp.mstg.uncrackable1) held no socket to the capture proxy in any of 7
readable sample(s) of the window", `proxy_client_uids: [0, 10121]`). The three
flows UC1 captured belong to the emulator's own Google services
(`android.clients.google.com/c2dm/register3`, `android.googleapis.com/auth/devicekey`,
`www.google.com/gen_204`), not to the target.

UC1 was therefore recorded as `success` — and printed `OK capture-traffic
(28096ms)` — for a window in which the app it names made no request. The ladder
in `_reclassify_empty_capture` already encodes the right rule ("Signal 1: no
INTERNET -> capture is inapplicable, empty is guaranteed"), but its precondition
is `reason in ("no flows captured", "no traffic captured")`: a device-background
flow makes the capture non-empty, so the rule never runs and the run keeps a
`success` whose host list is the emulator's. The classification of an app's
capture thus depended on what *other* apps on the device happened to do during
the window.

Two consequences follow. The reason was knowable eight stages earlier:
`manifest_parse` runs before the capture stage, so the run spends 24–28 seconds
of device time launching a capture window for an app that provably cannot use it.
And the console named the js surface as a bound (`upper bound: java=partial,
js=partial`) for these same runs while their record says
`js_asset_entries_in_apk: 0` — the report carries the ASSET-TRI1 qualifier for
exactly this state, the console carried nothing.

## Decision

**1. The capture stage is not attempted when the parsed manifest declares no
`android.permission.INTERNET`.** Before the launch, the run records

```python
StageResult(stage="capture-traffic", status="skipped",
            evidence={"reason": "capture not attempted",
                      "not_attempted": True,
                      "not_applicable_reason": "no INTERNET permission"},
            error="", duration_ms=0)
```

and opens no capture window: no proxy is installed and no launch is issued. The
permission is a kernel-enforced property of the app's uid, not an inference from
silence, which is what makes the early skip sound; `manifest_info is None` (a
manifest that did not parse) keeps the old path.

**2. "Not attempted" and "reclassified" are two records with two sentences.**
The early skip writes `not_attempted: True`; the ladder writes
`reclassified_from: "failed"`. The report renders a sentence per state, and the
ladder returns an already-not-attempted stage untouched (its first line requires
`reason` to be one of the two capture-empty strings, which the not-attempted
stage's `"capture not attempted"` is not). The report must not claim the
evidence a not-attempted stage does not have — no proxy, CA, preflight or flow
keys exist on it.

**3. The console mirrors the report's asset-surface qualifier.** When the js
surface reads `partial` and `asset_entries_in_apk == 0`, the console prints the
same qualifier the report carries: the `partial` is this rule's conservative
reading of an *absent* surface, not a surface this run failed to extract.

**4. The rule change behind that qualifier is deferred, not made here.**
`js_surface_coverage` continues to return `partial` for an asset-less APK.
Returning `fully_analyzed` there would move coverage labels and therefore
verdicts, which is its own ADR; this one only stops the console from naming the
bound without the explanation.

## Consequences

- A no-INTERNET target no longer spends a capture window, and no longer lands in
  `success` on flows its own record attributes to another uid. The UnCrackable
  runs lose 24–28 s each and record `SKIPPED capture-traffic (0ms)` with the
  reason on the console (the skip-reason mirror, commit `32837d93f`).
- A not-attempted stage carries strictly less evidence than a reclassified one,
  so every consumer of capture evidence must accept its absence: the report's
  not-attempted branch references no proxy/CA/flow key, and the capture summary
  still reports `capture_present: True` (the stage row exists) with
  `capture_flows: []`.
- Signal 1 in the ladder survives as the backstop for a manifest the run could
  not parse or read permissions from. It is no longer the primary path.
- Requesting `--capture-traffic` on a no-INTERNET app now records a skipped
  stage rather than a captured one. That is deliberate: a `success` over another
  process's flows is a worse record than a loud skip, and both surfaces name it.

## Alternatives considered

- **Fire Signal 1 post-hoc whenever the attribution says the app held no socket,
  even with flows present.** Rejected: it still spends the window, and it hangs
  the classification on a best-effort `/proc/net/tcp` sample (7 readable
  samples here) rather than on a hard manifest fact available before the launch.
- **Relax the ladder's precondition to accept a foreign-only flow set.**
  Rejected as above, and it would make the classification depend on which uids
  the sampler happened to see.
- **Derive "not attempted" from the absence of `reclassified_from`.** Rejected:
  an absence cannot separate "never ran" from any older run's skipped stage, so
  the producer writes an explicit marker and pre-existing runs read as `False`.
- **Return `fully_analyzed` for an asset-less APK now** (folding D3 into this
  decision). Rejected here; it changes verdicts and belongs in its own ADR.
