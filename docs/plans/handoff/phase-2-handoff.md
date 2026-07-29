# Phase 2 Handoff — UnCrackable2

## What this phase is

Extends the same pipeline validated in Phase 1 to a second target, OWASP UnCrackable Level 2, without changing the core architecture - the point of Phase 2 was to prove the deterministic-signature + Frida-bypass + programmatic-success-check design actually generalizes, not just fits one app. It mostly does.

## What we found reading the real decompiled code

Level 2's root-detection is the same three checks as Level 1 (PATH-split `su` lookup, `Build.TAGS` test-keys, a 7-path known-indicator-file array), byte-for-byte identical logic, just moved from `sg.vantagepoint.a.c` to `sg.vantagepoint.a.b`. The debug-flag check (`ApplicationInfo.flags & 2`) moved too, from Level 1's `sg.vantagepoint.a.b` to `sg.vantagepoint.a.a` here. Confirmed against the real `b.java`/`a.java` already sitting in this repo under `outputs/analysis/4c7980ef.../jadx/sources/sg/vantagepoint/a/`, not guessed.

Two things are genuinely new:

1. **A background anti-debug check.** `MainActivity.onCreate()` starts an `AsyncTask` that polls `Debug.isDebuggerConnected()` in a tight loop and shows a "Debugger detected!" dialog if it ever returns true. This isn't root-detection or SSL-pinning, so it deliberately has **no signature entry** in `root_detection.yaml` - folding it into that category's confidence score would misrepresent what's actually being measured. It's still hooked in the bypass script (see below), but purely as a defensive precaution, not because it's confirmed necessary - more on that below.
2. **Nothing SSL-related exists**, same as Level 1. `NEITHER` for SSL is still the correct answer.

`libfoo.so` (a real native library, present for all 4 ABIs) is confirmed unrelated to root-detection - it's only used for the manual secret-verification flow (`CodeCheck.a()` → native `bar()`), same category as Level 1's AES check. No native/.so analysis capability was needed for this phase, despite that being flagged as a maybe in the original architecture doc.

## What changed in the pipeline

**`root_detection.yaml`: zero new signature entries.** Matching is content-based (regex/string scan across files, not tied to class names), so the existing `root_su_via_path_env_check` / `root_build_tags_test_keys` / `root_known_indicator_files` signatures already match `b.java` exactly as they matched `c.java`. Locked in with a new regression test (`test_scan_matches_real_uncrackable2_root_detection_code` in `tests/unit/test_signatures.py`) using the real decompiled source quoted verbatim, same discipline as Phase 1's `c.java` regression test.

**`frida_runner.py` is now target-aware, not just action-aware.** `SCRIPTS_BY_ACTION` (a flat `Action → scripts` map) became `SCRIPTS_BY_TARGET_ACTION` (`target → Action → scripts`) - Level 1 and Level 2 need different scripts for the identical `ROOT_ONLY` action, since the classes to hook are named differently. `run_dynamic_stage()` takes a new `target` parameter (default `"uncrackable1"`, so nothing about Level 1's behavior changed). `cli.py` passes its existing `--target` flag through - the same flag that already selected the success-check module now also selects the bypass script, which is the more consistent design anyway.

**New: `src/dynamic/scripts/root_bypass_uncrackable2.js`.** Hooks `sg.vantagepoint.a.b.{a,b,c}` (root checks) and `sg.vantagepoint.a.a.a` (debug-flag check), same bounded-poll pattern as `root_bypass_v1.js` (`JAVA_POLL_TIMEOUT_MS`, explicit failure signal instead of hanging). Hook ids are fully-qualified (`"sg.vantagepoint.a.b.a"`, not the short `"b.a"` style Level 1 uses) - Level 2's classes happen to reuse Level 1's short letters for a different purpose, so the full path avoids confusion reading the two scripts side by side. This never caused a runtime bug (each target's success-check only ever parses its own script's messages), just a readability risk worth avoiding while writing a second script from scratch.

Also hooks `android.os.Debug.isDebuggerConnected` and forces it to return `false`. **Read this part carefully, because the first-draft reasoning for it turned out to be wrong before this got implemented:** the assumption going in was that this hook was *necessary* - that the polling loop would otherwise call `System.exit(0)` and kill the app before we could observe anything. Checking the actual decompiled dialog code shows `System.exit(0)` only fires from the dialog's own "OK" button `onClick`, the dialog is `setCancelable(false)`, and this pipeline has no UI-tap step anywhere - so the current run's dialog just sits there, and the root-check hooks already fire and report synchronously in `onCreate`, before the `AsyncTask` is even constructed. Nothing here should actually need the hook to work. It's included anyway as a zero-cost hedge - this project's WSL2-to-Windows Frida relay is enough of a nonstandard bridge that a JDWP-adjacent side effect tripping `Debug.isDebuggerConnected()` in a way vanilla local Frida wouldn't isn't ruled out, and it costs nothing to hook defensively. If you notice in a real run whether this ever actually fires unhooked, that's worth a note back - genuinely don't know either way yet.

**New: `src/dynamic/success_checks/uncrackable2.py`.** Same hook-firing-confirmation design as `uncrackable1.py` (requires all three root-check hooks to have actually fired, not just been installed, before treating a run as bypassed - see that module's docstring for the full reasoning, which still applies here unchanged). `BLOCK_SIGNAL_PATTERN` adds `"Debugger detected!"` as an explicit third alternative alongside `"Root detected!"`/`"App is debuggable!"`. The anti-debug poll hook's evidence is tracked under its own `anti_debug_poll_neutralized` key, explicitly never merged into the root-check hook set - firing that hook alone, with none of the three real root checks confirmed, must not and does not flip the verdict to bypassed (covered by its own test).

**`SUCCESS_CHECKS` in `cli.py`** now has `"uncrackable2": UnCrackable2SuccessCheck()` alongside Level 1's entry.

Everything above is covered by 14 new tests (67 total now, all passing locally): `test_root_bypass_uncrackable2_script.py` (source-content regression guard, same rationale as Level 1's - no JS execution harness in this repo), `test_uncrackable2_success_check.py` (mirrors Level 1's test suite plus two Level-2-specific cases: the explicit `"Debugger detected!"` block signal, and the anti-debug-hook-alone-doesn't-flip-the-verdict guard), and the one new signature regression test mentioned above.

## 1. Pull

```bash
git pull
uv sync
```

## 2. Run the verification bundle script

Same script as Phase 1, now pointed at Level 2 - `--target` selects both the bypass script and the success-check module:

```bash
uv run python scripts/collect_verification_bundle.py --apk APK_Test/UnCrackable-Level2.apk --target uncrackable2 --justification ACADEMIC_TRAINING_TARGET
```

(`APK_Test/UnCrackable-Level2.apk` should already be there from the earlier decompile work - if not, same source as Level 1/3.)

Look at `SUMMARY.md` and the copied report yourself before pushing - specifically:

- Does `cli_output.txt` say `Decision: ROOT_ONLY`? (Confirms both the root signatures fired and SSL still correctly didn't.)
- Does the report's evidence show `hook_fired_sg.vantagepoint.a.b.a` / `.b` / `.c` all present, and `root_bypassed: true`? Or `hooks_not_confirmed` (a real problem - the hooks never fired, not the old flip-flop bug)? Or `anomaly` (the still-deferred Phase 1 logcat race resurfacing on a second target - expected if it shows up, not new, see the Phase 1 handoff doc for why it's deferred rather than a surprise).
- Is there an `anti_debug_poll_neutralized` line in the evidence? If yes, that means `Debug.isDebuggerConnected()` actually got called at runtime and our hook forced it false - genuinely useful to know either way, but **not a pass/fail signal** either way; don't block on this one.
- Open the copied report under `reports/<apk_hash>/` - does the evidence it cites (file/line/matched text, hook confirmations) actually correspond to real code/behavior you're seeing?

## 3. If something's off

Only these files should need touching to fix a mismatch - if you find yourself needing to change anything else under `src/`, stop and flag it, same rule as Phase 1:

- `config/signatures/root_detection.yaml` - shouldn't need changes (content-based matching, already covers `b.java`), but flag it if it somehow doesn't clear threshold on the real run.
- `src/dynamic/scripts/root_bypass_uncrackable2.js` - adjust the hook targets if something doesn't match what you observe.
- `src/dynamic/success_checks/uncrackable2.py` - update `SECRET_REVEALED_PATTERN` / `BLOCK_SIGNAL_PATTERN` if the real strings differ from what's here.

Re-run the script (step 2) after any fix - a fresh bundle each time.

## 4. Push it back

```bash
git add docs/plans/handoff/bundles/
git commit -m "Phase 2 verification: <one-line summary of what you found>"
git push
```

Same rule as always: the bundle is the report. A verbal "it worked" isn't something we can act on.

## Not part of this round

- The Phase 1 logcat clear/capture race (still deferred, see that handoff doc) - unchanged here, may or may not resurface on Level 2.
- Level 3's `clear_logcat` crash - still parked for its own phase, not touched.
