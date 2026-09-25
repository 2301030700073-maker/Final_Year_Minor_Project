# Verification Bundle Summary

Generated: 2026-09-25T17:11:18.947760+00:00

Git commit tested: `fafa3c9034efa8ea79a048503895972a4267c6ac`
Working tree clean (tracked changes counted anywhere in the tree; untracked only under src/, config/, scripts/): yes
- Untracked artifacts elsewhere in the tree are listed in environment.json and are not counted here - they are not the code under test. Tracked changes are counted wherever they sit: a modified test file, or a changed design document, alters what the results below mean.

## Tool versions
- aapt2: found
- apksigner: found
- jadx: found
- apktool: found
- adb: found
- frida: found

## Device / Frida connectivity
- `adb devices`: exit 0
- `frida-ps -U`: exit 124

## Unit tests
- Exit code: 0 (all passed)

## Calibration snapshot (FR-9.2)
- Report: `calibration_report_output.txt` (console summary) - full markdown also written locally under outputs/reports/calibration/
- Durable row snapshot for backup: `calibration_runs_snapshot.json`

## Real pipeline run
- Not run (no --apk given to this script)
