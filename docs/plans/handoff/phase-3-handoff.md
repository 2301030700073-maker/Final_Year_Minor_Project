# Phase 3 Handoff — UnCrackable3

## What this phase is

Extends the same pipeline validated in Phase 1/2 to a third target, OWASP UnCrackable Level 3. Same goal as Phase 2: prove the design generalizes, not just fits two apps. It mostly does again - but Level 3 also disproved a real assumption baked into this project's original planning docs, which got corrected as part of this round rather than quietly left wrong.

## What we found reading the real decompiled code

Root-detection is the same three checks as Level 1/2 - PATH-split `su` lookup, `Build.TAGS` test-keys, the 7-path indicator-file array - byte-for-byte identical again, now in `sg.vantagepoint.util.RootDetection` as `checkRoot1/2/3`. The debug-flag check moved to `sg.vantagepoint.util.IntegrityCheck.isDebuggable` - despite the class name, that's *all* `IntegrityCheck` contains; it's a naming trap, not where the real integrity check lives.

Two things are genuinely new, and one of them is a real correction to what this project's planning docs originally assumed:

1. **`MainActivity.verifyLibs()` - a CRC32-based anti-tampering check**, not anti-Frida detection. It computes the CRC32 of the app's own `lib/<abi>/libfoo.so` and `classes.dex` (read from the APK's own zip via `getPackageCodePath()`) and compares them against hardcoded expected values; a mismatch sets a static `tampered` flag. A `ZipFile` `IOException` - unrelated to actual tampering - triggers `System.exit(0)` immediately, with **no dialog at all**. This is neither root-detection nor SSL-pinning, so like Level 2's anti-debug poll, it deliberately gets **no signature entry**.
2. **The debugger-poll (`Debug.isDebuggerConnected()`) now exits unconditionally.** `onPostExecute` calls `showDialog("Debugger detected!"); System.exit(0);` directly - no OK-tap gating either call, unlike Level 2 where a tap this pipeline never performs stood between the dialog and the exit. This hook is now hooked out of structural necessity given the consequence if it ever fires, not as a speculative hedge - though notably, a real baseline run already in this repo left it completely unhooked for a full 5-second settle window against this exact APK and didn't crash, so "confirmed necessary by observed behavior" would still overclaim what's actually been seen.

**`RootDetection.checkRoot1/2/3()` and `verifyLibs()`, `isDebuggable()`, and the debugger-poll all feed the *same* combined dialog** (`if (checkRoot1() || checkRoot2() || checkRoot3() || isDebuggable() || tampered != 0) showDialog("Rooting or tampering detected.");`) - one generic title, unlike Level 1/2's separate "Root detected!"/"App is debuggable!" strings. That means the block-signal text alone can no longer tell you which check fired - all four non-root-required hooks (`isDebuggable`, the debugger-poll, `verifyLibs`) practically need to be neutralized too, or the same combined dialog fires even with the three real root checks correctly bypassed.

SSL/TLS: confirmed absent again (no OkHttp/TrustManager/network-security-config anywhere in the source or manifest). `NEITHER` is still correct.

**The planning-doc correction**: `docs/plans/prd/PRD.md`, `docs/plans/architecture/high-level-architecture.md`, `docs/plans/requirements/functional-requirements.md`, and the low-level design doc all described Phase 3 as adding "anti-Frida/anti-debug detection (tracerpid checks, ptrace self-attach, frida-server process/port scanning)" - written before any real Level 3 code had been read. A full-tree grep of the actual decompiled source for `tracerpid`/`ptrace`/`frida`/port-numbers found zero matches. That assumption was wrong. Rather than quietly rewrite history, all four docs now show what was originally claimed (struck through) next to what's actually true, with a pointer back here. The same correction applies to Phase 2's docs, which claimed native `.so` analysis would be needed - also never true, also never fixed until now.

## What changed in the pipeline

**`root_detection.yaml`: zero new signature entries**, same as Phase 2 - matching is content-based, and the existing three signatures already covered `RootDetection.java` (confirmed at 0.80 confidence, `ROOT_ONLY`, in a real baseline run already sitting in this repo at `docs/plans/handoff/bundles/20260729T163713Z/`). Locked in with a new regression test using the real decompiled source quoted verbatim.

**New: `src/dynamic/scripts/root_bypass_uncrackable3.js`.** Hooks six things: `RootDetection.checkRoot1/2/3` (root, required), `IntegrityCheck.isDebuggable` (bonus), `Debug.isDebuggerConnected` (structurally necessary this time, see above), and `MainActivity.verifyLibs` (practically necessary - neutralizes both the tamper-flag path and the unrelated silent-death `IOException` path in one hook). `verifyLibs` is `void` - there's no boolean to force, so it's hooked to a full no-op instead of a forced return value, and its firing confirmation uses a `neutralized: true` message rather than `forced_result: false`, since nothing was actually forced to any value. Confirmed safe to fully skip: the only field it populates (`this.crc`) has zero readers anywhere else in the decompiled tree.

**New: `src/dynamic/success_checks/uncrackable3.py`.** Same hook-firing-confirmation design as Level 1/2. `ROOT_CHECK_HOOK_IDS` stays scoped to exactly the three real root checks, matching the established "root_bypassed means the three root checks were confirmed neutralized" meaning from Level 1/2 - the debug-flag, anti-debug-poll, and tamper-check hooks each track under their own evidence key, none required for the verdict itself. `_fired_hook_ids` now recognizes **either** `"forced_result"` or `"neutralized"` as a valid firing confirmation (scoped to this module only - Level 1/2's already-proven modules are untouched). `BLOCK_SIGNAL_PATTERN` matches `"Rooting or tampering detected"` and `"Debugger detected!"` explicitly, plus the shared `"unacceptable"` body-text fallback.

**Wiring**: `SCRIPTS_BY_TARGET_ACTION` in `frida_runner.py` and `SUCCESS_CHECKS` in `cli.py` both have a new `"uncrackable3"` entry. `run.sh`'s target-to-APK mapping now includes `uncrackable3` too (previously only had 1/2 - would have hit "Unknown target" otherwise).

Everything above is covered by 18 new tests (85 total now, all passing locally): the usual source-content regression guard for the script (now also checking the `neutralized`-vs-`forced_result` split), the success-check test suite (mirrors Level 2's plus new cases for the combined block-signal string and the tamper-hook-alone-doesn't-flip-the-verdict guard), and the signature regression test against the real `RootDetection.java`.

## 1. Pull

```bash
git pull
uv sync
```

## 2. Run the verification bundle script

```bash
uv run python scripts/collect_verification_bundle.py --apk APK_Test/UnCrackable-Level3.apk --target uncrackable3 --justification ACADEMIC_TRAINING_TARGET
```

(Or `bash run.sh --target uncrackable3` for the one-command version, now that it knows about Level 3.)

Look at `SUMMARY.md` and the copied report before pushing - specifically:

- Does `cli_output.txt` say `Decision: ROOT_ONLY`?
- Does the report's evidence show `hook_fired_sg.vantagepoint.util.RootDetection.checkRoot1/2/3` all present, and `root_bypassed: true`? Or `hooks_not_confirmed`? Or `anomaly` - and if `anomaly`, check the other evidence lines first: is it the known Phase 1 logcat race, or did `isDebuggable`/the anti-debug-poll/`verifyLibs` not get confirmed neutralized (a different, fully deterministic cause of the same-looking contradiction, explained above)?
- Is there a `tamper_check_neutralized` line? Expected on every run - `verifyLibs()` runs unconditionally, first thing in `onCreate()`.
- Is there an `anti_debug_poll_neutralized` line? Genuinely don't know yet whether this fires against this specific APK under this pipeline's spawn/attach method - useful either way, not a pass/fail signal.
- Does the app process survive the full run without an unexplained crash? (`verifyLibs`'s `IOException`-triggered `System.exit(0)` has no dialog and no other signal - if it ever happens, the dynamic stage will likely just look like the process died early. Worth a note back if you see anything like that.)

## 3. If something's off

Same rule as Phase 1/2 - only these should need touching:

- `config/signatures/root_detection.yaml` - shouldn't need changes, flag it if it doesn't clear threshold on the real run.
- `src/dynamic/scripts/root_bypass_uncrackable3.js` - adjust hook targets if something doesn't match.
- `src/dynamic/success_checks/uncrackable3.py` - update patterns if the real strings differ.

Re-run the script after any fix - a fresh bundle each time.

## 4. Push it back

```bash
git add docs/plans/handoff/bundles/
git commit -m "Phase 3 verification: <one-line summary of what you found>"
git push
```

## Not part of this round

- The Phase 1 logcat clear/capture race - still deferred, may or may not resurface here too.
- Native library internals (`baz()`/`init()`/`bar()` in `libfoo.so`) - not needed for root/SSL detection (confirmed unrelated, same as Level 1/2's native libs), so not investigated at the binary level. Only relevant if a future phase specifically needs native analysis.
