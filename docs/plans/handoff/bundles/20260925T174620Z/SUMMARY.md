# Verification Bundle Summary

Generated: 2026-09-25T17:46:20.292768+00:00

Git commit tested: `fcc27737a3c0f56c64db0df9e241b4263c091eda`
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
- Report: `calibration_report_output.txt` (console summary); full markdown **shipped as `calibration/20260925T174719Z.md`** - the curve, its sample definition and its threshold markers are in that file and nowhere else.
- Durable row snapshot for backup: `calibration_runs_snapshot.json`

## Real pipeline run
- Exit code: 0 (succeeded)
- Full console output: `cli_output.txt`
- This run's report: `reports/1da8bf57d266109f9a07c01bf7111a1975ce01f190b9d914bcd3ae3dbef96f21/9d121fee39334ebb927089aa3ec34d53.md`
- Decompiled evidence + metadata + run results: `analysis/1da8bf57d266109f9a07c01bf7111a1975ce01f190b9d914bcd3ae3dbef96f21` - copied into this bundle directory, and deliberately **not committed**: `.gitignore` excludes every bundle's `analysis/` subtree (policy A1 - regenerable decompiler output, duplicated once per bundle of the same APK). A pushed bundle therefore carries `reports/`, this SUMMARY, `environment.json`, `pytest_output.txt`, `cli_output.txt` and `calibration/*.md`; a reviewer who needs a file from here should ask for it (`git add -f <path>`) rather than look for it.
