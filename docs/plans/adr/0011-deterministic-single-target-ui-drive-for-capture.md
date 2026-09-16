# ADR-0011: Deterministic Single-Target UI Drive to Exercise a Button-Gated Network Path

## Status
Accepted

## Context
Some targets put their network path behind a control: RS_CertPinning loads its
WebView only after `START` is tapped, and AndroGoat's pinning demo is likewise
button-triggered. `project-limitations.md` D2 records the consequence: a
non-interactive capture run leaves that path un-exercised, and the tool reports
it honestly as a coverage limit rather than confirming or refuting pinning on it.

D2 also records why the obvious fix is wrong: hardcoded tap coordinates "are
reference-emulator-specific", so a stored constant is silently incorrect on any
other device or DPI. Two further constraints come from measured behaviour of the
reference emulator: `monkey` is non-deterministic and, in a 1.66 s app startup,
all 20 of its events were dropped by InputDispatcher - it produces no tap at all
exactly when the app is not yet interactive. And ADR-0002 forbids pulling in an
orchestration framework for this.

## Decision
Drive the UI with **at most one tap**, resolved from the **device's own live
uiautomator hierarchy**, and only when the choice is unambiguous:

- Targets are clickable/focusable nodes carrying a label and parseable `bounds`,
  read from a **fresh** dump. The dump's own success marker gates it: a failed
  dump leaves a stale `/sdcard/ui_dump.xml` from a previous screen, and a stale
  coordinate is worse than none, so that degrades to a recorded *not measured*.
- A target whose label **is** one of a small intent vocabulary
  (`start`, `begin`, `load`, `continue`, `retry`, `submit`, `go`, `open`,
  `fetch`, `login`, `sign in`) is chosen, first in dump order.
- Otherwise, **exactly one** target is tapped.
- Otherwise (several targets, none named by the vocabulary) the drive **refuses**
  and records why. It never guesses: a tap changes app state, and an arbitrary
  one would capture a screen nobody chose, making the run's result
  uninterpretable.
- No dump, or no tappable widget, is likewise a recorded refusal.
- The hierarchy is dumped only once the app's **own activity is the resumed
  one**, waited for under a bounded timeout. A dump taken while the launch is
  still drawing returns the PREVIOUS screen's widgets - the launcher's, on a
  cold start - and a tap resolved from those coordinates would silently mutate
  a screen the app does not own. A launch that never comes up, and a foreground
  probe that could not be taken at all, are separate recorded refusals with
  their own causes; the drive never falls back to tapping whatever happens to
  be on screen.

Every outcome - tapped, refused, unmeasurable - is recorded on the capture
stage's evidence (label, bounds, how it was selected, outcome) and reaches the
report. A tap is a state-changing action, so it is never silent.

The drive lives inside `run_capture_stage`, which is opt-in via
`--capture-traffic`; runs that do not request traffic capture are unaffected.

## Consequences
- The "coordinates are reference-emulator-specific" half of D2 is **closed**: the
  coordinate comes from the device's own bounds, so one policy holds across
  devices and DPIs.
- The "needs target-specific taps" half is **narrowed, not eliminated**. An app
  whose path needs a sequence (credentials, several screens, an unlabelled icon)
  stays un-driven and is reported as un-exercised. Refusal is a first-class
  recorded outcome, not an error.
- An empty capture *after* a confirmed tap is a stronger statement than one
  before it, and the report says which it is.
- A driven run's traffic is traffic the tool's own tap caused. That is recorded
  so the capture's provenance is never ambiguous.
- Measured on the reference emulator (2026-09-16, RS_CertPinning): with the dump
  taken straight after `am start`, the drive saw **25** tappable widgets and
  refused because none named a start action - a correct refusal about the
  launcher's hierarchy, and a wrong statement about an app whose own screen
  carries a single clickable `START`. The wait is what makes the refusal a fact
  about the app.

## Alternatives considered
- **Hardcoded per-target coordinates** - rejected: reference-emulator-specific and
  silently wrong elsewhere, the exact failure D2 names.
- **`monkey`** - rejected: non-deterministic, and empirically dropped during
  startup, when a drive is most needed.
- **Appium / UiAutomator2** - rejected: a new runtime dependency and an
  orchestration framework (ADR-0002) for a single tap, when `uiautomator dump` and
  `input tap` are already present via adb.
