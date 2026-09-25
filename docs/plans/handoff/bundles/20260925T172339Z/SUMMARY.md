# Verification Bundle Summary

Generated: 2026-09-25T17:23:39.633257+00:00

Git commit tested: `b6f5f193a117604096d676173b1a366c621fa35c`
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
- Report: `calibration_report_output.txt` (console summary); full markdown **shipped as `calibration/20260925T172441Z.md`** - the curve, its sample definition and its threshold markers are in that file and nowhere else.
- Durable row snapshot for backup: `calibration_runs_snapshot.json`

## Real pipeline run
- Exit code: 0 (succeeded)
- Full console output: `cli_output.txt`
- This run's report: `reports/1da8bf57d266109f9a07c01bf7111a1975ce01f190b9d914bcd3ae3dbef96f21/1b9ae47781dd419492b5b77126f39063.md`
- Decompiled evidence + metadata + run results: `analysis/1da8bf57d266109f9a07c01bf7111a1975ce01f190b9d914bcd3ae3dbef96f21`
