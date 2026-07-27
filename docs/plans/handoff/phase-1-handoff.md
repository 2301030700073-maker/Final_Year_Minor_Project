# Phase 1 Handoff — UnCrackable1 Deterministic Core

## What this phase is

An automated pipeline that ingests an APK, statically scans it for root-detection and SSL-pinning indicators (deterministic signature matching, no AI), classifies it as ROOT_ONLY/SSL_ONLY/BOTH/NEITHER, then attempts a Frida-based bypass and programmatically checks whether it actually worked. Target: OWASP UnCrackable Level 1.

**The code and 40 unit tests are done and verified on the dev machine — but nothing here has touched a real APK or real Android toolchain yet, since that machine doesn't have either.** That's your part. The signature weights, the two Frida bypass scripts, and the success-check patterns are honest best-effort guesses based on how UnCrackable1 is generally documented to behave — not confirmed facts. Treat everything below as "verify this," not "this is known to work."

## 1. Pull and sanity-check (no Android tooling needed for this part)

```bash
git pull
uv sync
uv run pytest tests/unit
```

Expect all 40 tests to pass. If anything fails here, stop and report back before going further — it'd mean something's wrong independent of the real APK/toolchain, which would be a more fundamental problem.

## 2. Verify your toolchain

Full setup is in `README.md`. Confirm and record the actual versions of each — reproducibility depends on knowing exactly what ran, not assuming:

```bash
aapt2 --version; apksigner --version; jadx --version; apktool --version; adb --version; frida --version
adb root
frida-ps -U
```

If `adb root` or `frida-ps -U` don't work cleanly, root/Frida access isn't ready — fix that before step 4; nothing past this point will work without it.

## 3. The manual spike (do this before trusting the automated run)

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

## 4. Run the automated pipeline for real

```bash
PYTHONPATH=src uv run python -m cli --apk /path/to/uncrackable1.apk --justification ACADEMIC_TRAINING_TARGET
```

Check:
- Do `ingest` / `decompile` / `static_scan` / `decision_engine` / `dynamic` / all show `OK`?
- What does the `Decision:` line say — `BOTH` / `ROOT_ONLY` / `SSL_ONLY` / `NEITHER`? Does it match what you found by hand in step 3? A mismatch here is the real signal that `config/signatures/*.yaml` needs correcting — not a bug report, just data to fix.
- Open the generated report (`outputs/reports/{hash}_{run_id}.md`) — does the evidence it cites (file/line/matched text) actually correspond to real code you saw?

## 5. If something's off

Only these files should need touching to fix a mismatch — if you find yourself needing to change anything else under `src/`, stop and flag it, since that would mean the architecture has a real gap, not just wrong data:

- `config/signatures/root_detection.yaml` / `ssl_pinning.yaml` — add/adjust/remove signature entries to match reality.
- `src/dynamic/scripts/root_bypass_v1.js` / `ssl_pinning_bypass_v1.js` — adjust the hook target to match what step 3 found.
- `src/dynamic/success_checks/uncrackable1.py` — update `SECRET_REVEALED_PATTERN` / `BLOCK_SIGNAL_PATTERN` to the real strings you observed.

## 6. Report back

- Whether all 40 unit tests passed on your machine too.
- The tool versions from step 2.
- `docs/plans/research/phase0-uncrackable1-manual-findings.md` (your findings).
- The full `outputs/analysis/{hash}/` directory and the generated report.
- Anything that broke, was confusing, or needed a workaround — even small things.
