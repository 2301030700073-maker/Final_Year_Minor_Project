# Phase 1 Handoff — UnCrackable1 Deterministic Core

## What this phase is

An automated pipeline that ingests an APK, statically scans it for root-detection and SSL-pinning indicators (deterministic signature matching, no AI), classifies it as ROOT_ONLY/SSL_ONLY/BOTH/NEITHER, then attempts a Frida-based bypass and programmatically checks whether it actually worked. Target: OWASP UnCrackable Level 1.

**The code and 40 unit tests are done and verified on the dev machine — but nothing here has touched a real APK or real Android toolchain yet, since that machine doesn't have either.** That's your part. The signature weights, the two Frida bypass scripts, and the success-check patterns are honest best-effort guesses based on how UnCrackable1 is generally documented to behave — not confirmed facts. Treat everything below as "verify this," not "this is known to work."

## 1. Pull

```bash
git pull
uv sync
```

## 2. The manual spike (do this before trusting the automated run — can't be scripted, needs a human reading code)

This is the part that matters most right now.

1. Decompile UnCrackable1 by hand:
   ```bash
   jadx -d /tmp/uc1_jadx uncrackable1.apk
   apktool d -o /tmp/uc1_apktool uncrackable1.apk
   ```
2. Find the actual root-detection code in the decompiled sources. What are the real class/method names? What does it actually check — su paths, `Build.TAGS`, a library like RootBeer, something else entirely?
3. Check whether UnCrackable1 implements real SSL/TLS pinning at all (OkHttp `CertificatePinner`, a custom `TrustManager`, or a `network_security_config.xml` with a `<pin-set>`). **It's a legitimate, expected possibility that it doesn't** — root/debugger detection plus an encrypted secret is the commonly-documented behavior; pinning may not be part of it. If it's absent, say so plainly — that's a correct `NEITHER`/`Inconclusive` result for that category, not evidence something's broken.
4. Manually attach Frida and confirm you can actually defeat whatever root-check exists. Start from `src/dynamic/scripts/root_bypass_v1.js` (hooks `File.exists` on su-like paths and `Runtime.exec("su")`) and adjust it to match what you actually found in step 2 if it's not enough.
5. Confirm the app's real "success" signal — what does it output/display once bypassed? This is exactly what `src/dynamic/success_checks/uncrackable1.py`'s `SECRET_REVEALED_PATTERN`/`BLOCK_SIGNAL_PATTERN` currently guess at.
6. Write it all up as `docs/plans/research/phase0-uncrackable1-manual-findings.md`: exact class/method names, string literals, the working hook lines, the exact success string/log line you observed. This becomes the reference for correcting the automated signatures and scripts.

## 3. Run the verification bundle script (this replaces manually running and reporting each check)

```bash
uv run python scripts/collect_verification_bundle.py --apk /path/to/uncrackable1.apk --justification ACADEMIC_TRAINING_TARGET
```

This one command: records your tool versions (aapt2/apksigner/jadx/apktool/adb/frida) and whether each was even found, checks `adb devices`/`frida-ps -U` connectivity, runs `uv run pytest tests/unit` and captures the full output, then runs the real CLI against your APK and captures its full console output plus a copy of the generated report. Everything lands in `docs/plans/handoff/bundles/{timestamp}/`, with a `SUMMARY.md` at the top giving the short version.

If you'd rather check environment/tests only first (e.g., before a real device is ready), omit `--apk` and it'll skip the pipeline run.

Look at `SUMMARY.md` yourself before pushing — specifically:
- Did every tool actually get `found`? If something's `**NOT FOUND**`, fix that first.
- Did the real pipeline run's `Decision:` (visible in `cli_output.txt`) match what you found by hand in step 2? A mismatch is the real signal that `config/signatures/*.yaml` needs correcting — not a bug, just data to fix.
- Open the copied report under `reports/` — does the evidence it cites (file/line/matched text) actually correspond to real code you saw?

## 4. If something's off

Only these files should need touching to fix a mismatch — if you find yourself needing to change anything else under `src/`, stop and flag it, since that would mean the architecture has a real gap, not just wrong data:

- `config/signatures/root_detection.yaml` / `ssl_pinning.yaml` — add/adjust/remove signature entries to match reality.
- `src/dynamic/scripts/root_bypass_v1.js` / `ssl_pinning_bypass_v1.js` — adjust the hook target to match what step 2 found.
- `src/dynamic/success_checks/uncrackable1.py` — update `SECRET_REVEALED_PATTERN` / `BLOCK_SIGNAL_PATTERN` to the real strings you observed.

Re-run the script (step 3) after any fix — a fresh bundle each time, not an edited old one.

## 5. Push it back

```bash
git add docs/plans/research/phase0-uncrackable1-manual-findings.md docs/plans/handoff/bundles/
git commit -m "Phase 1 verification: <one-line summary of what you found>"
git push
```

That's the actual report — a verbal "it's all green" isn't something we can act on; the bundle plus your findings doc is.
