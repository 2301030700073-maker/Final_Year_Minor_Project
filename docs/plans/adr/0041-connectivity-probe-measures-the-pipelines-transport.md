# ADR-0041: the connectivity probe measures a hop that exists, on the pipeline's own route

**Status:** Accepted, 2026-09-25
**Applies to:** `scripts/collect_verification_bundle.py` (`collect_environment`,
`write_summary`); `tests/unit/`

## Context

Every bundle carries a "Device / Frida connectivity" section, rendered from two
probes (`:187-188`):

```python
"adb_devices": _run(["adb", "devices"]),
"frida_ps_dash_U": _run(["timeout", "3", "frida-ps", "-U"], timeout=5),
```

and the SUMMARY prints the second as `- \`frida-ps -U\`: exit 124` (`:348`).

**Measured across the corpus** (`docs/plans/handoff/bundles/`, 76 bundles with an
`environment.json`):

| bundles | `frida-ps -U` | their report says |
|---|---|---|
| 4 | **exit 124** | "frida 16.7 client; frida-server 16.7 on the device; **the protocol handshake succeeded**" |
| 1 | exit 124 | no dynamic section |
| 2 | exit 124 | no report |
| 54 | exit 0 | no dynamic section (all 2026-08-12) |
| 12 + 3 | exit 0 / absent | no report |

In every bundle where both artefacts exist, the run's own report records a
successful frida handshake *and* the connectivity line reports exit 124. The
pushed SUMMARY therefore tells a reviewer that frida connectivity failed, in the
same directory as that run's report saying it succeeded. The number recorded is
`timeout(1)`'s, not frida's - it says nothing about frida at all.

### What the pre-implementation check falsified

The first draft of this ADR decided the probe should target the attached
device's serial (`frida-ps -D emulator-5554`). Checked on the reference box
before any code was written:

```
$ timeout 15 frida-ps -D emulator-5554
Device 'emulator-5554' not found
```

The reason, read from `src/dynamic/device.py`: the pipeline does not use a local
frida transport at all. It resolves its adb through `_adb_wrapper_path()`
(`:57-68`) - `~/.local/bin/adb`, a wrapper around the **Windows** `adb.exe` -
then, inside `setup_frida_connection()`, it starts a Windows Python relay:

```
adb forward tcp:27044 tcp:27042     (device.py:129)
Windows python relay on port 27043  (device.py:155)
mgr.add_remote_device(f"{win_ip}:27043")   (device.py:504)
```

Every one of those is created by `_start_relay()` **during the dynamic stage**
(`:501`). Before a run there is no relay, no forward, and no device entry - which
is why `-U` waits forever ("Waiting for USB device to appear...") and `-D <serial>`
answers "not found" in this WSL2 namespace.

So the defect is one layer deeper than the wrong flag: **the transport the
dynamic stage uses does not exist until that stage creates it**, so no pre-run
probe of frida can answer the question this section is read as answering. That
decision was caught by the live check the ADR process demanded - the second time
this session that verifying before implementing changed the fix rather than
confirming it.

## Decision

1. **The frida CLI probe is removed.** It cannot observe the pipeline's
   transport by construction, and it reported a false absent in 4 of 4 bundles
   where the run proved the opposite. A probe that has never once carried
   information is not a probe with a calibration problem; it is a claim about
   the environment that no measurement stands behind.

2. **What replaces it measures the pipeline's own first hop.** The dynamic route
   begins at the adb the pipeline itself resolves, so the probe runs `devices`
   against that same binary - `~/.local/bin/adb` first, then `adb` on PATH,
   mirroring `_adb_wrapper_path()` (`device.py:57-68`). Unlike the relay, this
   exists before a run, and if the Windows adb cannot see the device then the
   dynamic stage cannot work. It is a precondition, and it is measurable.

3. **The SUMMARY says where frida connectivity is actually recorded.** The run's
   own report carries the instrumentation record - "frida 16.7 client;
   frida-server 16.7 on the device; the protocol handshake succeeded" - because
   the handshake is the effect that proves the connection (ADR-0020). Every
   pipeline bundle already ships that report; the environment section points at
   it instead of pretending to substitute for it.

4. **The key is renamed** (`frida_ps_dash_U` -> `pipeline_adb_devices`).
   ADR-0035's rule applies unchanged: a machine-read name is a claim a script
   acts on, not just a label, and the old one names a flag no longer passed.

5. **The adb resolution order is duplicated deliberately, and the bound is
   stated.** The collector does not import `src/dynamic/device.py`: that module
   imports `frida` at module level, so importing it would make environment
   collection *require* a working frida - and environment collection's job is to
   report a missing toolchain, not to crash on it. If `_adb_wrapper_path()`'s
   order changes, this copy must follow; the duplicate is two lines and one
   citation.

6. **The device is a fact, not a failure.** When the Windows adb reports no
   attached device, the summary states that; nothing is rendered as a failed
   command.

7. **No cause is asserted for the `-U` result.** That it returns 124 on this box
   while dynamic runs handshake is an environmental property; this ADR asserts
   only what was measured and which probe replaces it.

## Consequences

- The connectivity section stops contradicting the report shipped beside it, and
  stops reporting a transport the project does not use.
- Frida's own evidence moves to the artefact that has it. A reviewer asking "did
  frida work on this run?" is sent to the run's instrumentation record rather
  than to an environment probe that cannot reach the relay.
- Bound, stated rather than implied: the replacement probe's live behaviour must
  be confirmed on the reference box before the corpus numbers above are treated
  as superseded - the CI suite has no device. The first bundle after this change
  is the evidence, and until it exists the old numbers remain the record.
- The 4 bundles carrying the contradiction keep it; their `SUMMARY.md` files are
  not rewritten. The audit trail is what it is
  (`attribute-a-defect-by-dating-its-artefacts`).
- Not superseded: ADR-0028 makes the device a per-run recorded input and leaves
  `environment.json` alone as the record. This changes what one probe measures,
  not the record's shape.
