# 0018 — The capture narrative must ask whose flows these are before it says what they prove

- **Status:** Accepted
- **Date:** 2026-09-16
- **Supersedes:** nothing. **Amends:** ADR-0015's decision table (adds a
  precondition to its "the flows are evidence of" column).
- **Related:** ADR-0012 (device-side uid attribution), ADR-0015 (the capture
  window runs under the bypass), ADR-0016 (the capture window can confirm the SSL
  bypass), ADR-0017 (a stayed-away verdict must carry its observation)

## Context

The capture proxy is installed device-wide and records no client identity, so no
captured flow is the target app's by construction (`project-limitations.md` D4).
ADR-0012 closed the question that matters - *did this app itself reach the proxy?*
- with a device-side uid reading, and ADR-0017 made that verdict carry the
observation it rests on and refuse an absence it did not measure. Between them,
the machine-readable half of the problem is answered.

The report was not. Its capture arms were written before the attribution existed,
and ADR-0015 corrected only one of the two things they were conflating: it made
them state **which window** the flows came from (`bypass_applied`), having found
that the SSL-confirmed arm credited the dynamic window's confirmation to the
capture window's traffic. The other conflation was left standing. Three sites
render over decrypted flows and assert **whose** they are, without consulting the
attribution that exists to answer exactly that:

- `generator.py:392` — `bypass_applied=true` on a dynamically-confirmed SSL
  bypass: *"so these flows are the live proof that SSL-pinning was actually
  defeated - **the app sent HTTPS requests the proxy decrypted** and the device
  accepted"*.
- `generator.py:394` — the partial-evidence arm, same bypass state: *"so these
  decrypted flows are evidence the bypass took effect on those hosts"*.
- `generator.py:1240` — the console clause appended to the handshake/capture note:
  *"these flows are evidence the bypass took effect on those hosts"*.

Each is an attribution claim wearing the clothes of a window claim. The state
that falsifies them is reachable and is the ordinary case on a device-wide proxy:
the capture decrypts N flows, none of them from the app's uid, the attribution
returns `reached: False`. The run that motivated ADR-0017 was one refusal away
from it, and ADR-0017's own rendering of that verdict - *"The flows below are
therefore not this app's traffic"* - sits **in the same paragraph** as the
sentence crediting those flows to the app. A reader takes the stronger of two
adjacent sentences.

ADR-0015's decision table carries the same gap in its own terms: its "the flows
are evidence of" column (true → "the injected bypass taking effect on those
hosts") presumes the flows are the app's. That presumption was invisible while
nothing measured it. ADR-0012 measured it.

## Decision

The attribution is a **precondition of the claim**, not an additional sentence
next to it.

**1. A capture-narrative site may say what the flows prove only after
establishing whose they are.** `reached` becomes a required input to every site
that reads a decrypted flow as evidence for or against this app, and only
`reached is true` licenses the sentence *"the app sent these"*.

**2. `reached is false` inverts the sentence rather than qualifying it.** The
flows are stated to be **not this app's**, and the bypass/absence reading is
scoped to the hosts actually observed, with the attribution's own reason quoted.
The window fact (the bypass was applied) survives; the effect claim does not.

**3. `reached is None` or absent renders as unattributed.** The flows are reported
as flows of unknown origin: the window ran under the injected bypass - a fact
about the window - and nothing is claimed about what that bypass did for this app.
This is ADR-0017's rule applied to the rendering: not-measured cannot license the
claim, exactly as it cannot license the absence.

**4. ADR-0015's table gains the attribution as a precondition.** Its second column
answers "what are these flows evidence of" **given** that they are this app's; the
table now says so, and says what the answer becomes when they are not (or when
that was not measured).

## Consequences

- The report can no longer assert in one sentence what it denies in the next. The
  contradiction was reachable on real data and is now unreachable by construction.
- The stronger reading - capture flows as live proof the bypass worked on this app
  - is preserved exactly where it is earned (`reached is true`) and is unchanged on
  a run where the app is on the proxy, which is the normal shape of a successful
  capture.
- A run whose capture decrypted only other processes' traffic loses a claim. It
  gains the true statement: the proxy decrypted flows in this window that were not
  this app's, and the app's own pinning is unscoped by them. Losing a claim is the
  safe direction (ADR-0006); the SSL deliverable already treats this window as
  corroboration rather than confirmation.
- The console note and the report now derive the same reading from the same
  evidence, so the two surfaces cannot drift.

## Rejected alternatives

- **Rely on the paragraph's `reached is false` sentence to cancel the stronger
  one.** Two adjacent contradictory sentences are worse than one wrong sentence:
  the reader has no basis to prefer either, and the stronger is the one that
  serves the deliverable's headline.
- **Gate on `reached is not false`** (suppress only the measured negative). A
  `None` - the table was unreadable, the app's liveness was unknown, the probe saw
  nothing while the proxy recorded connections - is equally unable to license
  "the app sent these". Treating not-measured as licence is the precise error
  ADR-0017 was written to stop, one layer up.
- **Drop the effect claim from the capture arms entirely.** Over-correction: it
  would discard the strongest evidence the platform produces on a successful
  capture, where the app IS on the proxy and the flows ARE the bypass working.
- **Word the arms more cautiously without reading the attribution.** Caution that
  does not consult the measurement is not a bound; it is a hedge that reads the
  same whatever the measurement found, and no test can hold it to the evidence.

## Verification

Pending implementation.
