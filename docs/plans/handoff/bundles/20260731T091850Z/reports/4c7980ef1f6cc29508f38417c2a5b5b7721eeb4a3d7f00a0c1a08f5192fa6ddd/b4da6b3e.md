# Analysis Report

**Run ID:** b4da6b3e
**Generated:** 2026-07-31T09:19:02.520406+00:00
**Package:** owasp.mstg.uncrackable2
**APK SHA-256:** 4c7980ef1f6cc29508f38417c2a5b5b7721eeb4a3d7f00a0c1a08f5192fa6ddd
**Version:** 1.0 (code 1)
**SDK:** min=19, target=28

## Classification

**Decision:** ROOT_ONLY (threshold 0.7)

### Root-detection
- Confidence: 0.80 -> DETECTED
- `root_build_tags_test_keys` at sources/sg/vantagepoint/a/b.java:19 - `test-keys`
- `root_su_via_path_env_check` at sources/sg/vantagepoint/a/b.java:10 - `new File(str, "su").exists()`
- `root_known_indicator_files` at sources/sg/vantagepoint/a/b.java:23 - `/system/app/Superuser.apk`


### SSL-pinning
- Confidence: 0.00 -> Inconclusive

## Dynamic Verification

- Root bypassed: True
- SSL bypassed: None
- hooks_installed: `all three hooked`
- hook_fired_sg.vantagepoint.a.b.a: `sg.vantagepoint.a.b.a: forced_result=false`
- hook_fired_sg.vantagepoint.a.b.b: `sg.vantagepoint.a.b.b: forced_result=false`
- hook_fired_sg.vantagepoint.a.b.c: `sg.vantagepoint.a.b.c: forced_result=false`
- hook_fired_sg.vantagepoint.a.a.a: `sg.vantagepoint.a.a.a: forced_result=false`
- anti_debug_poll_neutralized: `android.os.Debug.isDebuggerConnected: forced_result=false - NOT root-detection evidence, hooked only as a defensive precaution against the anti-debug watchdog thread`


## Static vs. Dynamic Correlation

- Matches: True


## Stage Results

| Stage | Status | Duration (ms) | Error |
|---|---|---|---|
| ingest | success | 168 |  |
| audit | success | 0 |  |
| decompile | success | 3 |  |
| static_scan | success | 305 |  |
| manifest_parse | success | 0 |  |
| decision_engine | success | 0 |  |
| dynamic | success | 6674 |  |

## Limitations

This report is produced by a deterministic, signature-based pipeline (ADR-0001) - no AI/LLM component decides whether root-detection or SSL-pinning is present (ADR-0003).

**Static detection is signature-based.** Root-detection and SSL-pinning are identified by matching decompiled sources/resources against a hand-authored, versioned signature set (`config/signatures/`). A technique matching no known pattern goes undetected and is silently absent from the confidence score - not flagged as "unknown." This is structural, not specific to this run.

**Decompilation is not guaranteed to succeed.** jadx has failed outright on real-world APKs tested against this pipeline outside the three OWASP UnCrackable targets - F-Droid, Root Checker, the Nexus Launcher system app, and PropertyGuru (151MB) all failed to decompile (see `docs/execution_changes/phase-1-changes-and-lessons.md`). Only small/medium apps without heavy R8/ProGuard obfuscation have decompiled successfully so far.

This run's decompilation completed successfully (283 source files) - static findings reflect a full scan of the decompiled output.


**Dynamic bypass does not generalize to unseen apps.** Every bypass technique here is a hand-written Frida script targeting one target's exact class/method names, confirmed empirically three separate times (UnCrackable1/2/3). Static detection generalizes (the same signatures matched all three targets unchanged, and correctly returned NEITHER on an unrelated real app); dynamic bypass does not - closing that gap is explicit Phase 5-7 work, an explicit non-goal here (see the PRD).

**"Zero false positives" is not a claim this system makes.** Confidence is measured and reported, never asserted as unconditional (ADR-0006).