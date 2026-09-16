# ADR-0012: Attribute Captured Traffic from the Device's Own Socket Table

## Status
Accepted

## Context
D4: the capture proxy is installed **device-wide** (as the device's HTTP proxy)
and the mitmproxy addon records host/scheme/method/path/status with **no client
identity**, so nothing in the capture log says which app opened a flow. A live
run (2026-09-16, RS_CertPinning) captured three decrypted HTTPS flows - all
Chromium/WebView service traffic - while the app's own ADR-0011 drive had
refused to tap, so its WebView never loaded a page. The report nonetheless said
"The app accepted proxy-decrypted HTTPS flows ... SSL pinning was not enforced
on the HTTPS hosts below". `08ba9d7a1` removed the false claim by scoping the
wording, which leaves the tool unable to say anything about the app at all.

Two constraints decide the mechanism:

- `run_capture_stage` reaches the proxy over **`adb reverse`**, so the client
  port mitmproxy sees belongs to adb on the host, not to the device's socket. A
  flow-to-socket join **by port is not available**, and no amount of addon-side
  logging changes that.
- ADR-0001 (deterministic) and ADR-0006 (tiers never blended) mean a uid-level
  fact must never be rendered as a package-level or per-flow claim.

## Decision
Read the **device's own kernel socket table** - `/proc/net/tcp` and
`/proc/net/tcp6` - during the capture window. Every row carries a **uid**, and a
row whose REMOTE port is the capture proxy's is a connection someone made *to
that proxy*; the uid on it is who made it. Resolve uid to package(s) from
`pm list packages -U`. Sample repeatedly across the window and accumulate,
because a pinned handshake's socket can be gone in a moment.

The verdict is deliberately **uid-level, not flow-level**: it answers "did this
app itself reach the capture proxy in this window?", which is the question a
pinning claim actually rests on, and not "which request was this app's".

- `reached` is True, False, or **None**. None means not measured - the table
  could not be read, or the package's uid could not be resolved. False is a
  **measured absence** and is never returned on unmeasured evidence, because
  False is the assertion that the app stayed away.
- A uid carrying several packages (`android:sharedUserId`) is reported with the
  other packages named: a socket from a shared uid is not proof that *this*
  package opened it.
- Socket **state is not filtered**. A `CLOSE_WAIT` row is still a completed
  connection to the proxy, and requiring `ESTABLISHED` would miss the ordinary
  case where a short flow finished before the sample was taken.
- The report renders the claim **conditionally on the verdict**: False says the
  flows are not this app's and the pinning reading says nothing about it; True
  says the reading does bear on the app, at uid granularity; None keeps the
  weaker scoped wording.

## Consequences
- The D4 defect that a live run exposed is closed **for the question that
  matters**: a captured flow can no longer be silently attributed to the app
  when the device's own table shows the app never reached the proxy. The
  reference emulator's table confirms the mechanism works - sockets to ports
  8080 and 8081 carrying uid 10131 were present in the first real read.
- **Per-flow attribution is still absent.** A uid-level fact cannot say which of
  N flows was whose, and an app sharing a uid with another package leaves the
  attribution shared. D4 stays open for that narrower bound.
- The stage's per-sample count and the uid set are recorded on the evidence, so
  a reader can see how many reads the verdict rests on rather than taking it on
  trust.

## Alternatives considered
- **Join flows to sockets by client port** - rejected: the proxy is reached over
  `adb reverse`, so mitmproxy's client port is adb's on the host.
- **Log the client port from the addon and match it device-side** - rejected:
  the same translation defeats it, and the socket may already be closed.
- **`iptables` owner-match to confine the capture to the app** - rejected: needs
  root, mutates the device's firewall for the run, and is a large blast radius
  for the question being asked.
- **Only weaken the report wording** (what `08ba9d7a1` did as a stopgap) -
  rejected as the endpoint: it removes the false claim but leaves the tool
  unable to say anything about the app.
