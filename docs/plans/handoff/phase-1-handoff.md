# Phase 1 Handoff — UnCrackable1 Deterministic Core

## What this phase is

An automated pipeline that ingests an APK, statically scans it for root-detection and SSL-pinning indicators (deterministic signature matching, no AI), classifies it as ROOT_ONLY/SSL_ONLY/BOTH/NEITHER, then attempts a Frida-based bypass and programmatically checks whether it actually worked. Target: OWASP UnCrackable Level 1.

## Status as of the last push (round 2)

Your first real run (all 4 `run_*.json` in the pushed bundle) correctly came back `NEITHER` — not a bug, an honest signal. Root confidence was only 0.20 (just `test-keys` matched), well under the 0.7 threshold. Root cause traced directly against the real decompiled code you pushed (`sg/vantagepoint/a/c.java`): the su-path check builds the path dynamically at runtime rather than using a literal string, and a second real check (a 7-path indicator-file array) had no signature at all. Both are now added to `config/signatures/root_detection.yaml`, verified locally against that exact real code before pushing (new confidence: 0.8). SSL confirmed correct as-is — this app has no networking code anywhere, so `NEITHER` for SSL is ground truth, not something to fix.

Also reviewed and fixed 4 real bugs in the Frida relay bridge you built for the WSL2→Windows connection (`src/dynamic/device.py`) — see the commit `15001f4` message for specifics if you want the detail. One is worth knowing before you rely on it again: cleanup was silently failing to kill the old relay process every time (confirmed by direct testing), now fixed.

**What's still open, and is the actual point of this round**: the dynamic/Frida bypass path has never run even once — every prior run hit `NEITHER` first, and the pipeline correctly refuses to attempt a bypass when static found nothing to bypass. Now that static should say `ROOT_ONLY`, this is the first real test of whether the bypass itself actually works. Also still open: `docs/plans/research/phase0-uncrackable1-manual-findings.md` doesn't exist yet — the signature fix above came from reading the real code you already pushed, not from a written-up manual spike, so if you have a few minutes to skim `sg/vantagepoint/a/c.java` yourself and confirm (or correct) that read, that's the actual Step 0 deliverable, still worth doing for the record.

## 1. Pull

```bash
git pull
uv sync
```

## 2. The manual spike (still worth finishing for the record, even though the signature fix already happened)

1. Decompile UnCrackable1 by hand (skip if you still have last round's output):
   ```bash
   jadx -d /tmp/uc1_jadx APK_Test/UnCrackable-Level1.apk
   apktool d -o /tmp/uc1_apktool APK_Test/UnCrackable-Level1.apk
   ```
2. Find the actual root-detection code in the decompiled sources. What are the real class/method names? What does it actually check — su paths, `Build.TAGS`, a library like RootBeer, something else entirely?
3. Check whether UnCrackable1 implements real SSL/TLS pinning at all (OkHttp `CertificatePinner`, a custom `TrustManager`, or a `network_security_config.xml` with a `<pin-set>`). **It's a legitimate, expected possibility that it doesn't** — root/debugger detection plus an encrypted secret is the commonly-documented behavior; pinning may not be part of it. If it's absent, say so plainly — that's a correct `NEITHER`/`Inconclusive` result for that category, not evidence something's broken.
4. Manually attach Frida and confirm you can actually defeat whatever root-check exists. Start from `src/dynamic/scripts/root_bypass_v1.js` (hooks `File.exists` on su-like paths and `Runtime.exec("su")`) and adjust it to match what you actually found in step 2 if it's not enough.
5. Confirm the app's real "success" signal — what does it output/display once bypassed? This is exactly what `src/dynamic/success_checks/uncrackable1.py`'s `SECRET_REVEALED_PATTERN`/`BLOCK_SIGNAL_PATTERN` currently guess at.
6. Write it all up as `docs/plans/research/phase0-uncrackable1-manual-findings.md`: exact class/method names, string literals, the working hook lines, the exact success string/log line you observed. This becomes the reference for correcting the automated signatures and scripts.

## 3. Run the verification bundle script (this replaces manually running and reporting each check)

```bash
uv run python scripts/collect_verification_bundle.py --apk APK_Test/UnCrackable-Level1.apk --justification ACADEMIC_TRAINING_TARGET
```

This one command: records your tool versions (aapt2/apksigner/jadx/apktool/adb/frida) and whether each was even found, checks `adb devices`/`frida-ps -U` connectivity, runs `uv run pytest tests/unit` and captures the full output, then runs the real CLI against your APK (dynamic/Frida stage included by default - don't pass `--skip-dynamic` unless you have a specific reason to) and captures its full console output, a copy of the generated report, and the complete decompiled evidence (`jadx`/`apktool` output, `metadata.json`, `run_*.json`) under `analysis/<apk_hash>/`. Everything lands in `docs/plans/handoff/bundles/{timestamp}/`, with a `SUMMARY.md` at the top giving the short version.

If you'd rather check environment/tests only first (e.g., before a real device is ready), omit `--apk` and it'll skip the pipeline run.

Look at `SUMMARY.md` yourself before pushing — specifically, this round:
- Does `cli_output.txt` now say `Decision: ROOT_ONLY`? If it's still `NEITHER` or something else, the fix didn't take as expected — flag that specifically rather than re-guessing at more signatures.
- Did the dynamic stage actually run this time (not `skipped`)? What did it report — did the bypass get programmatically confirmed, or did it fail? Either outcome is useful data; a clean failure with a clear error is far more useful than no attempt at all.
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
