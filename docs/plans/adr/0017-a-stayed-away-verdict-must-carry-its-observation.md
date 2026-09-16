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

Pending implementation.
