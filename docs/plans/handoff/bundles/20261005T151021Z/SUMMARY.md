# Verification Bundle Summary

Generated: 2026-10-05T15:10:21.005420+00:00

Git commit tested: `91681739e77689e53fa13f05147d99d410016d32`
Working tree clean (tracked changes counted anywhere in the tree; untracked only under src/, config/, scripts/): no - a tracked file differs from HEAD, or an untracked file sits under src/, config/ or scripts/
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
- Report: `calibration_report_output.txt` (console summary); full markdown **shipped as `calibration/20261005T151118Z.md`** - the curve, its sample definition and its threshold markers are in that file and nowhere else.
- Durable row snapshot for backup: `calibration_runs_snapshot.json`

## Real pipeline run
- Exit code: 0 (succeeded)
- Full console output: `cli_output.txt`
- This run's report: `reports/1da8bf57d266109f9a07c01bf7111a1975ce01f190b9d914bcd3ae3dbef96f21/6d40b16e814940b5a2756fe8a1ae3d91.md`
- Decompiled evidence + metadata + run results: `analysis/1da8bf57d266109f9a07c01bf7111a1975ce01f190b9d914bcd3ae3dbef96f21` - copied into this bundle directory, and deliberately **not committed**: `.gitignore` excludes every bundle's `analysis/` subtree (policy A1 - regenerable decompiler output, duplicated once per bundle of the same APK). A pushed bundle therefore carries `reports/`, this SUMMARY, `environment.json`, `pytest_output.txt`, `cli_output.txt` and `calibration/*.md`; a reviewer who needs a file from here should ask for it (`git add -f <path>`) rather than look for it.
