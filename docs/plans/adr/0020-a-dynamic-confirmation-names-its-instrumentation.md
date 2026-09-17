# 0020. A dynamic confirmation must name the instrumentation that produced it

Status: Accepted
Date: 2026-09-17
Relates to: ADR-0006 (tiers are never blended, and dynamic verification is the
ground truth precision is measured against), ADR-0013 (a launch is verified by
its effect, not by having been issued), ADR-0017 (a verdict carries the
observation it rests on), ADR-0019 (the report names the toolchain that produced
the evidence)

## Context

`dynamically_confirmed` is the highest tier this platform issues. ADR-0006 makes
it the ground truth against which every other tier is calibrated. Every one of
those verdicts is produced by Frida.

The report names its tools carefully, and that is the point of ADR-0019: the
Toolchain line carries aapt2, apksigner, jadx, apktool, cfr and ghidra, each
resolved from the installation that actually ran, and the capture section names
the proxy and the CA it installed. Nothing on the report names the instrumentation
behind the tier the report trusts most.

That is not an oversight of rendering. The measurement exists and is discarded.
`dynamic/device.py` computes both halves of the provenance:

- `_frida_venv_version()` (line 217) - the client's major.minor
- `_device_frida_server_version()` (line 228) - the on-device server binary's

and uses them for exactly one thing (line 315): if a running root server's version
does not equal the client's, `pkill` it and re-push the pinned `tools/` copy. The
values are then dropped. The one moment a run learns that the instrumentation on
the device was **not** the pinned one is the moment the evidence stops being
recorded.

Read back from a real run rather than inferred from the source: AndroGoat,
`2026-09-16`, `dynamic status = success`, APK `3e6f6b53…`. Its stored dynamic
evidence carries

    scripts_applied, pid, frida_messages, target, app_still_running,
    ui_liveness, install_recovery

and the strings `frida_version`, `frida-server`, `16.7` and `objection` appear
nowhere in that run's `stage_results_json` or `verification_json`. A report
generated from that record asserts a dynamically confirmed finding, names six
static engines and a proxy, and cannot name the instrument.

The counter-argument is real and is answered by the same evidence: the venv pins
frida (`uv.lock`) and the device copy is pinned by construction
(`tools/frida-server-16.7.19-x86_64`), so the provenance holds reproducibly
without being written down. Two facts defeat it. First, the guard exists
precisely because a device can carry a *stale* server, and the recovery path
re-pushes without ever confirming what the device now holds - the pinned copy is
assumed, not measured. Second, the only proof that the *running* server matches
the client is the handshake itself: Frida refuses to talk to a mismatched
major.minor, so a successful connection is the effect that establishes the pair
(ADR-0013's principle, applied to this stage's own prerequisite). That effect
happens (`device.enumerate_processes()` at line 401) and is recorded nowhere
either.

A run that skipped dynamic is a different case and must stay different: it has no
instrument, and must not be given one.

## Decision

Four parts.

**1. Provisioning returns what it observed.** `_ensure_frida_server` returns a
provenance record instead of `None`: the client's major.minor, the server
binary's version read before provisioning, whether a running server was replaced
and why, the server binary's version read back **after** provisioning, and where
the server came from (already running / pushed from the pinned copy / absent).
`setup_frida_connection` returns it alongside the device.

**2. Every dynamic result carries it, including the failures.** The record is
written into the evidence of every `StageResult` the stage returns - the success
builders, the self-terminated builder, and both error paths. A dynamic run that
failed is the run whose instrument most needs naming, and it is the run least
likely to have a second chance to say so.

**3. Unmeasured is recorded as unmeasured.** A server version that cannot be read
is `None` with the reason, never the pinned version from the README, and never
omitted so the reader assumes the default. An engine that was never provisioned
(the stage was skipped, or it failed before reaching the device) has no
instrument at all, which is a third state and not the same as an unreadable one.

**4. The report names it where the dynamic claim is made.** The dynamic section
states which Frida produced the reading - client and device server, and whether
the server was replaced during this run - and says so in the not-measured case
rather than degrading to silence. The ingest-time Toolchain line is deliberately
*not* where this goes: the device server is unknown at ingest, and a
`--skip-dynamic` run would then carry a server version it never used.

## Consequences

- A `dynamically_confirmed` verdict becomes auditable at the report: which client,
  which server, and whether the pair was fixed up mid-run.
- The reprovision path stops being silent. Today a run can replace the device's
  instrumentation and the record is byte-identical to a run that did not.
- Re-reading the version after provisioning is a measurement of the device's
  state, not of the pinned copy - the same distinction ADR-0019 drew for
  apksigner's release, where the reported number named no release at all.
- Stored evidence from earlier runs has no such key. The renderer treats its
  absence as "not recorded for this run", never as a default value; a regenerated
  report for an old run must not acquire an instrument it never had.
- The evidence dict grows. It round-trips through `stage_results_json`, so no
  storage migration is involved.

## Rejected alternatives

- **Print the version pinned in the README / `uv.lock`.** This is the
  `apksigner=0.9` defect in the other direction: naming the toolchain that was
  intended rather than the one that ran. It reads as a measurement and is not one.
- **Record the client version only.** The client is what Frida enforces, so it is
  the authoritative half - but it is exactly the half that does not change when
  the device server is replaced, which is the case worth recording.
- **Abort the run on a version mismatch instead of re-provisioning.** Re-pushing
  the pinned server is correct recovery. The defect is the discarded observation,
  not the recovery, and refusing to run would trade a working stage for a silent
  one in a different way.
- **Put it on the ingest-time Toolchain line.** Ingest runs before any device
  work; the line would either be blank on every run or carry a server version the
  run never used.
- **Record it only on success.** A crashed or failed dynamic stage is the case
  where "which Frida was this?" gets asked, and the case where the version guard
  is most likely to have fired.
