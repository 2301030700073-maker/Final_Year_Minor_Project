# Verification Bundle Summary

Generated: 2026-09-25T18:00:24.474554+00:00

Git commit tested: `bbdb8e6d32455054823a1f053d74a1a4fa36b84b`
Working tree clean (tracked changes counted anywhere in the tree; untracked only under src/, config/, scripts/): yes
- Untracked artifacts elsewhere in the tree are listed in environment.json and are not counted here - they are not the code under test. Tracked changes are counted wherever they sit: a modified test file, or a changed design document, alters what the results below mean.

## Tool versions
- aapt2: found
- apksigner: found
- jadx: found
- apktool: found
- adb: found
- frida: found

## Device connectivity (the route the dynamic stage uses)
- `adb devices` (resolved from PATH): exit 0
- The pipeline's own adb (`~/.local/bin/adb`, the path the dynamic stage resolves - `device.py` `_adb_wrapper_path`): exit 0 - `emulator-5554`
- Frida connectivity is deliberately **not** probed here: the adb forward and the Windows-side relay the dynamic stage connects through are created by that stage (`_start_relay`), so nothing before a run can observe them. The run observes it - the protocol handshake recorded in this run's report under `Instrumentation:`, which is the effect that proves the connection (ADR-0020).

## Unit tests
- Exit code: 0 (all passed)

## Calibration snapshot (FR-9.2)
- Report: `calibration_report_output.txt` (console summary); full markdown **shipped as `calibration/20260925T180104Z.md`** - the curve, its sample definition and its threshold markers are in that file and nowhere else.
- Durable row snapshot for backup: `calibration_runs_snapshot.json`

## Real pipeline run
- Not run (no --apk given to this script)
