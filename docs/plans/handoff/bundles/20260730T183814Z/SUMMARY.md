# Verification Bundle Summary

Generated: 2026-07-30T18:38:14.488787+00:00

Git commit tested: `f3557332dac5e44e95451d051d34ffe42e973af7`
Working tree clean: yes

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
