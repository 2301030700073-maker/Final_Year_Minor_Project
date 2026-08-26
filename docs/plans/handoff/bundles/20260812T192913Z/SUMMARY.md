# Verification Bundle Summary

Generated: 2026-08-12T19:29:13.128721+00:00

Git commit tested: `d04b662ffa7181b2e6fe1518703c1ecf8fc63af3`
Working tree clean: no - uncommitted changes present

## Tool versions
- aapt2: found
- apksigner: found
- jadx: found
- apktool: found
- adb: found
- frida: found

## Device / Frida connectivity
- `adb devices`: exit 0
- `frida-ps -U`: exit 0

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
