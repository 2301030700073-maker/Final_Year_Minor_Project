# Verification Bundle Summary

Generated: 2026-07-29T05:59:32.726150+00:00

Git commit tested: `5994f76a8907552298e476bb7aee84907d5c845a`
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
- Exit code: 1 (FAILURES - see pytest_output.txt)

## Real pipeline run
- Exit code: None (FAILED - see cli_output.txt)
- Full console output: `cli_output.txt`
- Copied reports (if any): `reports/<apk_hash>/`
- Full decompiled evidence + metadata + run results (if the run got that far): `analysis/<apk_hash>/`
