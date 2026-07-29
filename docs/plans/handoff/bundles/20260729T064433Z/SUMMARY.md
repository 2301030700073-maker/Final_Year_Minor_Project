# Verification Bundle Summary

Generated: 2026-07-29T06:44:33.228307+00:00

Git commit tested: `119b513779161d98d4866fb5aa65909ffa90a5f6`
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
- Exit code: 0 (succeeded)
- Full console output: `cli_output.txt`
- Copied reports (if any): `reports/<apk_hash>/`
- Full decompiled evidence + metadata + run results (if the run got that far): `analysis/<apk_hash>/`
