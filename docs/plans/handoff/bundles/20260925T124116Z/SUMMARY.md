# Verification Bundle Summary

Generated: 2026-09-25T12:41:16.287124+00:00

Git commit tested: `57f1ea33a0bd4744a2390bd3f788b5db3c19b586`
Working tree clean (code under src/, config/, scripts/): yes
- Untracked artifacts elsewhere in the tree are listed in environment.json and are not counted here - they are not the code under test.

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
- Exit code: 0 (succeeded)
- Full console output: `cli_output.txt`
- Copied reports (if any): `reports/<apk_hash>/`
- Full decompiled evidence + metadata + run results (if the run got that far): `analysis/<apk_hash>/`
