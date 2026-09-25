# ADR-0028: the device environment is a per-run input

**Status:** Accepted, 2026-09-25
**Applies to:** `src/dynamic/device.py` (a new read), `src/storage/db.py` (a new
column), `src/storage/results.py`, `src/cli.py`, `src/report/generator.py`

## Context

A verdict is a function of three things: the code that produced it, the rules it
matched against, and the environment it ran in. ADR-0022 recorded the second, for
the reason it gives in its own first sentence - a fingerprint turns "which rules
was this?" into a lookup instead of a reconstruction. The third was never
recorded at all.

Measured on the 2026-09-25 Android 14 run (bundle `20260925T124116Z`), the record
holds two things that look like environment and are not:

- The bundle's `environment.json` carries `adb_devices`, which is the raw output
  of `adb devices` - `emulator-5554	device`, and nothing else. It identifies the
  *serial*. The rest of that file describes the host (python, uv, the tool
  versions), not the guest.
- The report's only SDK line is `**SDK:** min=19, target=28`. That is the **APK's
  manifest**, read out of the binary. It says what the app claims it supports. It
  says nothing about what it ran on.

So the reference host now carries two rooted AVDs - `Frida_Test` (API 33) and
`Frida_Test_API34` (API 34, built this session) - and both answer to the same
`emulator-5554`. **A stored run from either is indistinguishable from the other.**
Not "hard to tell apart": the record contains no field that differs.

This is not a cosmetic gap, and the reasons are specific rather than general:

- **The instrument is chosen by the device.** `_ensure_frida_server` pushes an
  ABI-specific binary, and the whole dynamic stage is gated on `ro.debuggable=1`
  (the reason the AVD must be Google APIs/userdebug rather than Play). The
  report describes the instrumentation it used but not the device that
  determined it.
- **The anti-emulator scrub is device-shaped.** Every run that deploys
  `env:emulator-scrub` renders a paragraph naming `Build.HARDWARE`/`PRODUCT`/
  `FINGERPRINT` markers as sdk_gphone/goldfish/ranchu rewritten to retail
  values. Those *replacements* are conditional on the values the device actually
  had, and the values are not recorded anywhere - so the report describes a
  rewrite whose input it cannot state.
- **The OS generation changes what the capture path can do.** Android 14 moved
  the system CA store into the conscrypt APEX, which is the difference between
  the classic remount-and-push trust step working and not. A reader comparing an
  API 33 capture to an API 34 capture has nothing to read that tells them the
  OS moved underneath.
- **Tier-2 calibration reads each APK's latest run.** Once two API levels have
  stored runs for the same APK, the metric averages over environments, and
  nothing in the row or the report can say it did.

The failure mode is ADR-0022's, one input over: someone comparing two runs, or
re-measuring a stored one, cannot tell whether the difference they are looking at
is the app, the analysis code, or the device.

## Decision

**1. A run records the device environment it executed against.** One `adb shell
getprop` read per run, stored on the row as `device_environment` (JSON), rendered
in the report. First-class column rather than a key inside `stage_results_json`
for the same reason the corpus is one: the report is rebuilt from the record, and
a value the renderer has to dig out of a stage's evidence is one refactor away
from being re-derived instead of read.

**2. The recorded set is the properties this pipeline's behaviour depends on, not
a build dump.** `ro.build.version.sdk`, `ro.build.version.release`,
`ro.build.type`, `ro.debuggable`, `ro.product.cpu.abi`, `ro.hardware`,
`ro.build.fingerprint`, plus the serial. Each earns its place by being read
somewhere in the decision path above; `ro.build.fingerprint` is there because the
scrub patches it and because it is the one field that survives a reader asking
"which build, exactly". A full `getprop` dump is a different artefact with a
different problem - it is unreadable, and most of it is noise.

**3. It is read from the device, at the moment the serial is resolved.** The
value comes from the device the run actually used, not from the host's idea of
which device is connected. There are two resolution points (`cli.py`, the
dynamic setup path and the `--skip-dynamic` capture path); both read, so a run
that skips dynamic but still captures records the device capture used. A failed
read raises into the handler that already turns a device failure into a `failed`
dynamic (or capture) stage - which is proportionate: a device whose `adb shell
getprop` fails is one whose `pm list packages` fails seconds later, so the run
was already going to fail loudly. It is not a silent degradation, and it is not a
new way for a recording feature to kill a run that would otherwise have worked.

**4. A property the device does not report is stored as `null` and rendered as
such.** A device that answers `getprop` but omits `ro.build.version.sdk` is
recorded as having not reported it - which is a different statement from the
whole field being absent, and the report distinguishes them.

**5. Never backfilled.** There is nothing to re-derive it from; the only copy of
what a past run executed against was on a device that has since been reconfigured
or wiped. NULL stays NULL, exactly as ADR-0022 left the 264 corpus-less runs.

**6. JSON, not scalar columns.** This table's own rule is to promote only what a
calibration query filters on. Nothing filters on API level today. If a future
metric excludes by environment, that is the point at which it becomes a column -
the same trigger ADR-0008's coverage map would have to pass.

## Consequences

- A report gains a device line. Where the field is present it names the serial,
  the release and API level, the build type and debuggable flag, the ABI, and the
  hardware; where it is absent it states which of the two absences it is - the run
  predates this ADR, or the run never used a device (`--skip-dynamic` with no
  capture). Those are two different facts and the line never collapses them.
- Regeneration reads it from the row, like the corpus and the obfuscation rule, so
  a refreshed report keeps the environment its row holds.
- **`environment.json` is deliberately left alone.** The row is the record; a
  second copy in the bundle is a second thing to drift, with no consumer that
  reads the bundle rather than the DB. The bundle's environment file stays what
  it is - a record of the *host* that collected it.
- `run_status.json`'s `IDENTITY_FIELDS` does not gain it either: those are fields
  known when the run starts and passed in by the caller, and this one is known
  only once a device has been resolved. Adding it would ask the recorder to
  invent a value at start.
- Calibration is unchanged by this ADR. It can now tell environments apart; it
  does not yet act on that, and pretending otherwise would be a claim the metric
  does not make.

## What is still not covered

**The historical corpus stays environment-blind.** Every run stored before this
ADR has NULL, and the 258 regenerable reports will render the "predates ADR-0028"
absence - which is true, and permanent.

**Recording the environment does not make two environments comparable.** A
Tier-2 corpus still mixes API levels unless a consumer filters on the new field.
This ADR makes the mix *visible*; excluding it is a decision for whoever next
measures calibration, and it is deliberately not taken here.

**The read is a snapshot at run start.** Device properties do not change
mid-run on an emulator, so the field is not re-read per stage; a target that
mutates a system property during a run would not be reflected. That is stated
rather than guarded, because guarding it would mean probing per stage for a case
no observed target has produced.
