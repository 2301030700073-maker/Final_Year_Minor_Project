# 0017. A "the app stayed away from the proxy" verdict must carry the observation it rests on

Status: Accepted
Date: 2026-09-16
Relates to: ADR-0006 (tiers are never blended), ADR-0015 and ADR-0016 (the two
launches a run performs)

## Context

The capture stage asks a device-side question the proxy cannot answer: did **this
app** reach the capture proxy? The proxy is installed device-wide and its addon
records no client identity (`project-limitations.md` D4), so
`proxy_attribution.attribute_proxy_clients` answers from the kernel's own socket
table instead - `/proc/net/tcp` carries a uid per socket, and a socket whose
remote port is the proxy's was made to that proxy. `reached` is tri-state and the
module is explicit that `False` is the assertion the app stayed away, never
returned on unmeasured evidence; a `False` additionally requires
`target_running is True`.

Measured on the PropertyGuru run `6546c2c0248947b8a67e06ce2b3ebf44`, that
verdict and the rest of the same stage's evidence do not fit together:

- `proxy_attribution.reached = False` - "uid 10168
  (com.allproperty.android.consumer.my) held no socket to the capture proxy in
  any of 7 readable sample(s) of the window"
- `tls_failed_clients` = **19** certificate refusals ("The client does not trust
  the proxy's certificate") for `graph.facebook.com`, `sdk.iad-03.braze.com`,
  `featureassets.org`
- `flows` = 1 decrypted flow, `api.segment.io`

A TLS refusal is unreachable without a TCP connection to the proxy, so the window
carried at least 20 client->proxy connections. Those refusals are this window's,
not an earlier run's: the WSL2 log path is per-run
(`log_wsl = ... f"{stamp}-flows.log"`), and the count is taken from the text read
back for this capture.

The report renders that `False` as a positive claim of absence - "The flows below
are therefore not this app's traffic, and the pinning reading above says nothing
about this app" (`report/generator.py`). It is able to, because the verdict
carries only the target's uid and a reason: **the record does not say what the
probe actually saw.** From this run's evidence it is impossible to tell which of
two very different measurements produced the `False`:

- the probe saw other uids holding sockets to the proxy and simply never saw this
  app's - a probe that works, and a `False` worth having; or
- the probe saw **no uid at all** while 20 connections to the proxy happened - a
  probe that missed every connection in the window, whose silence is a fact about
  the probe and not about the app.

Both render identically, and the second licenses a `False` it cannot support. The
sampler's accumulating union (`sample_proxy_clients_during`, 2.0s interval) makes
the second case easy to reach on a short-lived-socket workload, which is exactly
the workload - a refused handshake's socket closes immediately.

There is a companion asymmetry: the stage already treats a refusal as proof a
connection was made. The empty-capture ladder calls the refusal list "the
proxy-side signature of certificate pinning, and proof the device->proxy path
WORKED (a TLS refusal requires the connection to have been made)". The
attribution verdict - the sibling verdict computed from the same window - never
consults it, and structurally could not: it was computed before the log was read.

`target_running` is the precedent for the fix. It exists because a `False` makes
a claim about the app, and an app that was never started cannot satisfy it; so
liveness became a premise the verdict checks for itself rather than a fact each
caller was trusted to remember. A probe that observed nothing is the same shape
of hole on the other side of the claim.

## Decision

Three parts.

**1. The verdict carries its own observation.** Every return from
`attribute_proxy_clients` gains `uids_seen`: the uids the sampling actually
observed holding a socket to the proxy, target's excluded. A reader - the report,
a collaborator, a later audit - can then tell a probe that worked from one that
saw nothing, which is what the record could not do before.

**2. A `False` requires that the probe could have seen the app.** A `False` is
licensed only when the sampling observed at least one uid with a socket to the
proxy (so the probe demonstrably can see connections in this window), or when the
proxy's own log recorded no client->proxy connection at all (so there was nothing
to miss). A readable socket table that showed **no uid at all** while the proxy
recorded connections yields `None` - not established - with a reason naming both
numbers.

**3. The reason names what the proxy recorded, in every arm.** The count of
client->proxy connections the proxy logged this window (decrypted flows + refused
handshakes) is passed in as `proxy_connections_seen` and appears in the reason, so
the strength of a `False` is legible rather than assumed. `None` - the count was
not measured - cannot rule the miss out, so it yields `None` too.

Alongside these, the attribution call moves after the proxy log is read. This is
what makes part 2 possible at all: the verdict was previously finished before the
refusal list existed.

## Consequences

- `reached: False` becomes a claim about a probe that worked: it saw the window,
  and this app was not in it. That is the useful true negative the module was
  built for, and it is preserved.
- On a window where the probe saw nothing and the proxy recorded traffic, the
  report now says the attribution was not established instead of asserting the
  flows belong to another app. The run loses a claim, never gains one - the
  pinning reading becomes scoped to the hosts observed rather than dismissed.
- Callers that do not say what the proxy recorded can no longer obtain a `False`
  by omission. That pressure is the point: the count is available at the one real
  call site, from the same text both other readings come from.
- The verdict is now computed after the proxy is stopped rather than before. The
  end-of-window liveness sample still happens while the window is open, which is
  the premise it was always taken for.

## Rejected alternatives

- **Sample harder (shorter interval, more samples).** It cannot fix the defect.
  Catching one socket proves presence; missing short-lived sockets never proves
  absence, so a sample-only `False` stays unlicensed at any cadence. The fix is to
  stop treating a miss as absence, not to make the miss less likely.
- **Keep `False` and only reword the report.** The machine-readable verdict is
  what correlation, calibration and every other consumer read. Rewording the
  rendering leaves the over-claim in the record and fixes only its sentence.
- **Treat a recorded connection as presence (`reached: True`).** The same error in
  the other direction. A refusal proves a connection, not whose - the proxy has no
  client identity, which is this module's founding premise. Doing this would
  upgrade uid-less proxy evidence to a package-level claim.
- **Let a `False` stand whenever the proxy recorded nothing.** Already the rule:
  an empty window leaves nothing for the probe to have missed, so there the
  `False` is exactly right and stays.

## Verification

Implemented on 2026-09-16 (`776d16403`, `c0302f28a`, `52a3c99f1`). Full suite:
**1877 passed**, from 1866 before the change - 11 new tests across the two modules.

The three parts are each pinned by a test that fails without them:

- Part 1 - `test_every_verdict_carries_the_observation_it_rests_on` walks three
  returns (a hit, an unreadable table, a liveness-unknown miss) and asserts the
  `uids_seen` on each. Without it a working probe and a blind one still render
  identically.
- Part 2 - `test_a_probe_that_saw_no_uid_at_all_cannot_assert_an_absence` uses the
  motivating run's own numbers (an empty table with 20 recorded client->proxy
  connections) and asserts `reached is None`, with both numbers in the reason.
  `test_an_empty_uid_set_with_a_silent_proxy_is_still_a_measured_absence` pins the
  other side: `proxy_connections_seen=0` leaves nothing to miss, so `False` stands.
- Part 3 - `test_an_unmeasured_connection_count_cannot_rule_the_miss_out` asserts
  that a caller which does not say what the proxy recorded gets `None`, and the
  real call site is pinned separately by
  `test_the_attribution_is_told_what_the_proxy_recorded`, which spies on
  `attribute_proxy_clients` and asserts the count it receives is the refused
  handshakes actually read back from the proxy's log.

The move of the call after the log read is what the second of those tests depends
on: the count only exists once `_count_tls_failed_clients` has run.

### The first real run found a hole in part 2

Run `0821158c79da4bb1a9fc35370ba65bb9` (PropertyGuru, `--force-dynamic
--capture-traffic`, exit 0) exercised the new code end to end: `OK dynamic
(30478ms)` / `OK success-check (0ms)` / `SKIPPED capture-traffic (24297ms)` - the
capture was reclassified because it decrypted zero flows while recording 17
refused client handshakes - / `OK success-check (capture window) (0ms)`. Its
attribution returned `reached: True`, `uid 10168 held a socket to the capture
proxy`, `app_target_running: True`, and `uids_seen: [0, 10168]`.

**That last field is the hole.** uid 10168 is the app. uid 0 is the adb shell this
stage runs its own pre-flight reachability probe from - `adb shell id -u` is 0 on
the reference emulator - and `/proc/net/tcp` keeps that finished connection's row
in `TIME_WAIT` for the whole capture window. So the pipeline's own socket is on
every table the probe looked at, and part 2 as written would have read a lone uid 0
as "the probe demonstrably saw this window" - licensing precisely the absence it
was written to refuse. `_app_client_connections` had already subtracted the same
connection from the client-connection *count*; the uid side had never been done.

Part 2 is therefore refined to say what it always meant: a `False` requires the
sampling to have observed at least one uid that is **not this pipeline's own**.
`attribute_proxy_clients` takes `probe_uids` and subtracts it before anything is
read from what is left. A set is the probe's uids; `None` means a probe ran and
the uid it ran as could not be read, which cannot be told apart from an app's - so
a non-empty table then proves nothing about what this sampling can see and yields
`None`. Four tests pin it:

- `test_the_probes_own_socket_cannot_license_an_absence` - the measured shape, a
  lone uid 0 with 17 recorded connections, must be `not measured`.
- `test_a_lone_probe_socket_with_a_silent_proxy_is_still_a_measured_absence` -
  the exclusion must not swallow the useful true negative.
- `test_the_probes_own_socket_is_stripped_from_the_observation` - the subtraction
  is a subtraction, not a verdict special case: a hit on the target's uid still
  returns `True` with the probe's uid absent from `uids_seen`.
- `test_an_unreadable_probe_uid_cannot_demonstrate_the_probe_works` - `None` is
  not "no probe ran", and a stage that cannot read its own shell uid has to pass
  the unknown on rather than guess either value. The stage side is pinned by
  `test_an_unreadable_probe_uid_reaches_the_verdict_as_unknown`.

### What is and is not established

Established: the blind-probe condition is refused in the units, at the call site,
and (as `reached: True` with a non-empty `uids_seen`) the positive arm runs
against a real device and a real proxy. The motivating run's `False` is confirmed
to have been licensed by a table with no uid on it while the window carried 20
connections - the defect was real, not hypothetical.

Not established: a real capture window in which the target genuinely stayed away
from the proxy **and** the probe demonstrably saw the window has not been observed.
The `False` arm is verified against fixtures, not against a device. Recording that
here rather than implying the negative path is field-proven: it is the arm the
report's "the flows below are not this app's traffic" sentence rests on, and it
still rests on unit evidence alone.

One consequence worth naming: on this emulator the probe's uid is always on the
table, so `uids_seen` will generally include a uid the app does not own unless
`_device_shell_uid` reads it - which is the argument for it being read rather than
assumed, and for the unknown case yielding `None`.
