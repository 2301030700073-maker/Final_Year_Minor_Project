# Phase 1 Handoff — UnCrackable1 Deterministic Core

## What this phase is

An automated pipeline that ingests an APK, statically scans it for root-detection and SSL-pinning indicators (deterministic signature matching, no AI), classifies it as ROOT_ONLY/SSL_ONLY/BOTH/NEITHER, then attempts a Frida-based bypass and programmatically checks whether it actually worked. Target: OWASP UnCrackable Level 1.

## Status as of round 3

Round 2 confirmed the signature fix was correct (consistent `ROOT_ONLY`, 0.80 confidence, across every run) and got a real dynamic bypass working end-to-end for the first time — genuine progress, and real debugging work on your end to get there (the `frida<17` pin, the `userdebug`/`google_apis` emulator requirement, the bypass-script rewrite hooking the real check methods directly). Thank you for pushing through that.

Two things from that round needed fixing before this is actually solid, both done now:

1. **The success-check verification logic was too weak.** It had changed to treat "no block signal" as sufficient proof of a bypass — but that flip-flopped `True`/`False` across runs with byte-for-byte identical Frida hook evidence, because of a logcat timing race (see below). Fixed: `src/dynamic/success_checks/uncrackable1.py` now requires the Frida script's own per-hook `forced_result` firing confirmation (real evidence the bypass had a runtime effect) as the primary signal, not just absence of a block signal. If hooks fire **and** a block signal still shows up, that's now reported as an explicit `anomaly` in `evidence_lines` — both signals kept, never silently resolved either way. **If you see an `anomaly` key in a future run, that's the known logcat race below resurfacing, not a new bug** — worth a note back to us either way, but not a surprise.
2. **A handful of smaller bugs**, all fixed: `clear_logcat()` now fails loudly instead of silently on an adb error (same class of bug that took two attempts to find last round); the `Java.available` poll in `root_bypass_v1.js` is now bounded (15s) with an explicit failure message instead of retrying forever silently; `collect_verification_bundle.py`'s `frida-ps -U` check now has a real timeout instead of potentially hanging on WSL2 with no USB device attached; and the `_find_windows_user` test that was failing on your machine (`/mnt/c/Users` genuinely exists on real WSL2, unlike this dev machine) is now environment-agnostic.

**Known, deliberately not fixed this round**: the logcat clear/capture race itself. The clear now happens right before capture (your fix from round 2), which is correct in principle, but `run_dynamic_stage()`'s own settle window still runs *before* that clear — so a stale signal from that window can still occasionally survive. Two real runs with byte-for-byte identical Frida evidence produced opposite verdicts because of exactly this. The real fix is timestamp-based capture (`adb logcat -d -T '<timestamp>'` instead of clear-then-dump) instead of relocating the clear again — bigger change, deliberately deferred rather than touching the dynamic pipeline further right after it just started working. The redesigned success-check (point 1 above) is deliberately robust to this in the meantime — it reports the contradiction instead of guessing.

**Also new this round**: `tools/objection_cache/`'s 26.5MB gadget binary is no longer committed raw — it's gitignored now, with `tools/download_frida_gadget.sh` added (mirrors `download_frida_server.sh`) to fetch it locally. Your existing local copy is untouched; run the script if you ever need to regenerate it from a fresh clone.

**Not touched, on purpose**: the `outputs/` gitignore question from your `e5855ee` commit — the user wants to discuss that with you directly rather than have it flip again in a doc. Nothing in this round changes `.gitignore`'s `outputs/` line or any currently-committed `outputs/` files.

**Still open**: `docs/plans/research/phase0-uncrackable1-manual-findings.md` still doesn't exist — the signature fix came from reading the real code you pushed, not a written-up manual spike. Worth doing for the record when you have a few minutes, not blocking.

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
- Does `cli_output.txt` still say `Decision: ROOT_ONLY`? Should be unchanged from round 2.
- Did the dynamic stage run, and what does the report's evidence show now — `hook_fired_c.a`/`c.b`/`c.c` present (the bypass had a real runtime effect) and `root_bypassed: true`? Or `hooks_not_confirmed` (hooks never fired — a real problem, not the old flip-flop)? Or `anomaly` (the known logcat race noted above — expected, not new)?
- Open the copied report under `reports/<apk_hash>/` — does the evidence it cites (file/line/matched text, hook confirmations) actually correspond to real code/behavior you saw?

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
