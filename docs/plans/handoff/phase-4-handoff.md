# Phase 4 Handoff — Harden the Deterministic Core

## What this phase is

Not a new target - this hardens the deterministic core (Phases 1-3, all proven) into the checkpoint deliverable: SQLite storage (FR-7.1), a real calibration harness computing precision/recall/F1 against empirical ground truth (FR-9.2, ADR-0006), an honest limitations section in every report (FR-6.2), and tolerating partial jadx output instead of all-or-nothing - the last one directly motivated by the real PropertyGuru evidence from last round (jadx decompiled 1563 real files before crashing, and the pipeline discarded all of it).

## Status as of round 2

Round 1's verification of the 4 known targets (UnCrackable1/2/3 + Contacts) is real and confirmed - fresh bundles, correct classifications, calibration numbers accumulating correctly across the sequence, 131/131 tests. Two things needed fixing:

1. **The `outputs/` rule was violated again** - 27,720 raw files under `outputs/analysis/08e94c06.../jadx/sources/` (PropertyGuru's decompiled tree) got committed directly, bypassing the bundle script entirely, mixed into the same commit as the legitimate bundle content. This looks like a broad `git add` sweeping up whatever was sitting in the working directory at the time, not a deliberate choice. Fixed here (`git rm -r --cached`, kept on disk, just untracked) - **please double-check what's staged before committing** (`git status` after a broad `git add` - if you see `outputs/...` paths in there, don't commit them) rather than relying on `.gitignore` catching everything automatically if something explicit (`git add -f`, an IDE action, a wildcard that happens to match) slips past it.
2. **The PropertyGuru claims don't hold up against the evidence - checked twice, including after the lessons-doc update that followed.** First check: the 27,720-file count committed matched *exactly* the leftover jadx output from a bundle two rounds ago (`20260730T072013Z`), from before the partial-decompile-tolerance code even existed. Second, more direct check, after `docs/execution_changes/phase-1-changes-and-lessons.md` was updated claiming a specific result (**classification `BOTH`, root confidence 1.00, SSL confidence 0.90 - a real production app with genuine SSL-pinning detected, which would be a first for this project**): searched the entire repo for anything backing that up - no `metadata.json`, no `run_*.json`, no `decompile_status.json`, no `apktool/` output, no report `.md` file, no bundle `SUMMARY.md` anywhere mentions PropertyGuru's hash. Only a `jadx/sources/` tree exists on disk, which is what a decompile-only, everything-after-it-never-ran state looks like - not what a full classified run looks like. The SSL=0.90 claim is plausible in principle (this project's existing OkHttp/network-security-config signatures could legitimately catch real pinning in a production app) - plausible is not the same as verified, and per this project's own standing rule, a specific, detailed claim without a pushed artifact behind it isn't something we can treat as true yet, no matter how precise the numbers sound. **This needs a genuine, fresh, pushed bundle**: `uv run python scripts/collect_verification_bundle.py --apk <propertyguru.apk> --target uncrackable1 --justification ACADEMIC_TRAINING_TARGET` (any `--target` is fine, PropertyGuru isn't a known target - the point is exercising the full pipeline for real), then push the resulting bundle before writing up what it found. If the BOTH/0.90 result is genuinely real, this will confirm it cleanly; if not, better to find out now than to build on a number that turns out to not be reproducible.

Also fixed: a real bug in `collect_verification_bundle.py` itself (not something you did) - the calibration-report step ran *before* the current invocation's own pipeline run, so every bundle's calibration snapshot only ever reflected prior runs, never its own fresh data. Reordered to run after.

## Status as of round 3

You pushed a genuine, fresh, bundled re-run of PropertyGuru (`fcd699784`, path `docs/plans/handoff/bundles/20260730T183814Z/`) - real progress, thank you for going back and getting an actual pushed artifact rather than just re-asserting the number. Checked it thoroughly. Two real things came out of it, both fixed here:

1. **A real bug in `decompile()`'s caching, not something you did.** The bundle contained two contradictory reports for the identical hash in the same session - one `BOTH` with full evidence, one `NEITHER` with zero evidence, both claiming a cache hit. The copied `jadx/sources/` tree had gone empty (cause unconfirmed - possibly disk cleanup between your test runs, possibly something else) while `decompile()`'s cache check only verified the directories still *existed*, not that they still held real content. Fixed: a cache hit now also requires real `.java` files and a real `AndroidManifest.xml`; if the cache is hollow, it gets cleared and re-decompiled for real, with `recovered_from_hollow_cache: true` recorded in evidence so it's visible if this happens again. **If you see that key in a future run, it means the cache had gone stale/hollow for some reason - worth a note back on what your test setup was doing at the time (disk space cleanup script, antivirus, manual deletion, etc.), since the root cause of *why* it went empty is still unconfirmed.**

2. **The SSL confidence 0.90 was a real, confirmed false positive - now fixed, not just flagged.** Read the actual matched evidence directly: all ~90 SSL matches traced to OkHttp's own bundled library source, not PropertyGuru's code - `CertificatePinner.java:75` matched its own class name in a jadx-generated comment inside its own defining file; 105 `X509TrustManager`/`checkServerTrusted` matches were all type references (imports, fields, parameters, getters) inside OkHttp's plumbing for *accepting* a caller-supplied TrustManager, never an actual `implements X509TrustManager`, plus one coincidentally-named local variable calling Android's own platform API. Neither signature had ever been validated against real SSL code before - UnCrackable1-3 have none at all, so this was the first real test. Both signatures revised in `config/signatures/ssl_pinning.yaml`: `okhttp_certificate_pinner` now requires the actual `CertificatePinner.Builder(` construction call, `custom_trustmanager_checkservertrusted` now requires a real `implements X509TrustManager` declaration (weight dropped 0.4→0.3, since even a genuine implementation isn't automatic proof of pinning specifically). Locked in with regression tests using the real matched lines quoted verbatim, plus tests confirming genuine pinning configurations still match and clear threshold. **Please re-run PropertyGuru once more** - root should likely still show `DETECTED` (that part held up, see below) but SSL should now correctly drop, probably to `NEITHER` or `ROOT_ONLY` rather than `BOTH`, unless there's real pinning code elsewhere in the app that these more precise patterns still happen to catch (which would now be a much more trustworthy signal than before).

**Not fixed, just flagged for awareness - the root confidence 1.00 is real but likely not what it appears to be at a glance.** Every cited root-detection match traces to a bundled third-party SDK doing its own telemetry root-check (Sentry's `RootChecker.java`, Expo's `DeviceModule.java`, Firebase Crashlytics) - not PropertyGuru's own app logic. The signatures are correctly finding real root-detection code; whether that should be reported as "PropertyGuru implements root detection" without that context is a separate, real question worth thinking about (these SDKs report root status for their own telemetry/fraud-detection purposes, which is arguably a legitimate thing to flag too, just worth being precise about attribution) - not resolved here, noted for whenever this becomes a priority.

## Status as of round 4

The open item from round 3 ("re-run PropertyGuru once more to confirm the SSL number actually drops") is now **confirmed with a genuine, fresh, pushed bundle** (`docs/plans/handoff/bundles/20260731T043558Z`). The run used the APK's own target name (`--target propertyguru`), not a placeholder, and completed end-to-end: ingest/audit/decompile/static_scan/manifest_parse/decision_engine all `OK`, dynamic `SKIPPED` (gracefully — no bypass script exists for this target), pipeline exit 0. (An earlier version of this bundle, `20260731T042556Z`, ran with `--target uncrackable1` as a placeholder so the dynamic stage would execute; that forced a semantically-off UnCrackable1 bypass attempt against a PropertyGuru package. It is **superseded** by this clean run, where dynamic is honestly skipped for the correct target. The classification was identical in both — `ROOT_ONLY` — only the dynamic stage's framing differed.)

**Result: `ROOT_ONLY` — exactly the round-3 prediction.** Root confidence stays `1.00` (DETECTED); SSL confidence drops `0.90 → 0.00` (Inconclusive). The earlier `BOTH` was the confirmed false positive, now gone on real data.

1. **SSL fix verified on real decompiled source, non-vacuous.** The re-decompile produced 27,720 real `.java` files including the okhttp3 library (`CertificatePinner.java`, `OkHttpClient.java`, `AndroidCertificateChainCleaner.java` all present). Over those same files, the pre-fix patterns match 151 times (49 `CertificatePinner`, 102 `X509TrustManager` references); the post-fix patterns match 0. The drop is the signature revision, not a scanning gap.
2. **Root attribution confirmed as flagged - and now surfaced in the report (not just the handoff).** Every root match in PropertyGuru's report traces to bundled third-party SDKs (Sentry `RootChecker.java`, Expo `DeviceModule.java`, Firebase Crashlytics `CommonUtils.java`, plus play/core, play/integrity, gms/ads) — not PropertyGuru's own logic. The report now says so plainly via a deterministic attribution step (`src/report/attribution.py`): it classifies each root match as app-owned vs bundled-SDK by namespace, and only asserts "all N matches are in bundled third-party libraries (...)" when every match is a recognized SDK vendor (`io.sentry`, `com.google`, `expo`, etc.). Critically, the discriminator is conservative - a namespace that isn't a recognized vendor (e.g. UnCrackable's own `sg.vantagepoint` root code, whose package differs from its manifest package `owasp.mstg.uncrackable1`) is never called third-party, so no false attribution. Latest PropertyGuru bundle `20260731T045156Z` (report `ee52fa64.md`) shows the attribution line; locked in by `tests/unit/test_attribution.py`.
3. **Hollow-cache fix validated end-to-end.** The on-disk cache for this hash was genuinely hollow at round-3 handoff (sidecar claimed 27,720 files, disk had 0). The fixed `decompile()` rebuilt it; the round-4 run then hit the real 27,720-file tree as a 123ms cache hit. The recovery path works, not just the unit test.
4. **A real robustness gap surfaced (not a fix regression) - now fixed.** Running with `--target propertyguru` (an unrecognized name) used to make the dynamic stage crash with a bare `'propertyguru'` KeyError and halt the pipeline with an unhelpful message, instead of gracefully reporting "no bypass available for this target." `run_dynamic_stage` now returns a `skipped` result (with the reason in evidence) *before* any device attach, so an unrecognized target completes the run and the report says "not dynamically verified" rather than crashing. Verified end-to-end against `--target propertyguru` (report `6f3c4461.md`): the run now exits 0 with `SKIPPED dynamic`. Locked in by `tests/unit/test_frida_runner.py`.
5. **Dynamic stage ran and, for a non-target app, correctly had nothing to verify.** `--target propertyguru` is not in the bypass-script registry, so the stage returns `skipped` with the reason — "no bypass script available for target 'propertyguru' (action ROOT_ONLY) - not dynamically verified" — and the report flags "Not evaluated (dynamic stage skipped)." No bypass was fabricated or forced via a wrong-target placeholder. (The earlier placeholder-based run `042556Z` had shown `Root bypassed: False` with a MISMATCH; that framing was an artifact of the placeholder target and is absent from the clean run.)

**One honest caveat carried forward:** `ROOT_ONLY` is derived from a *partial* decompile (27,720 files, jadx exit 1); absence of SSL signature matches on partial coverage cannot rule out pinning code that never decompiled. The claim being made is "the 0.90 was a false positive and is gone," not "PropertyGuru is provably pinning-free."

**Round-4 step 2 (re-run the 4 known targets) now done.** Fresh bundles for the original UnCrackable1/2/3 APKs and PropertyGuru: `20260731T044158Z`, `20260731T044210Z`, `20260731T044224Z`, `20260731T044237Z`. All three UnCrackable targets classify `ROOT_ONLY` and the real Frida bypass **dynamically confirmed** root (`Root bypassed: True`) — verification_state `dynamically_confirmed`, not just static. PropertyGuru is `ROOT_ONLY` with dynamic `SKIPPED` (honest, no bypass script for a non-target). Calibration Tier 2 root is now `precision 1.00 / recall 1.00 / F1 1.00` at `n=7`; SSL remains `N/A` (0/0), correctly, since nothing has been predicted SSL-positive. *(Superseded 2026-07-31 — see "Latest verification session" below: AndroGoat is now predicted SSL-positive, DETECTED 0.80.)*

## What changed

**SQLite replaces flat JSON.** `src/storage/db.py` (new) - two tables, `apks` and `runs`, not the full 7-table schema `high-level-architecture.md` originally previewed for later phases (corrected there, same "revise rather than silently diverge" pattern as the FR-2.4/FR-2.5 corrections). `storage/results.py` keeps its exact public interface (`save_metadata`, `existing_metadata`, `save_run`) - nothing about how you invoke the pipeline changes. The DB file lives at `outputs/analysis/results.db` (already covered by `.gitignore`'s `outputs/` and bare `*.db` lines - no new ignore rules needed).

**jadx crashing after writing real output is no longer a total loss.** If jadx exits non-zero but already wrote real `.java` files before dying (confirmed real behavior against a 151MB production app), the pipeline now continues with `status="success"` and an explicit `decompile_completeness: "partial"` marker - static analysis scans whatever did decompile. Zero files written is still a hard failure, unchanged. A small sidecar (`outputs/analysis/{hash}/decompile_status.json`) makes sure a second run against the same hash doesn't silently forget a decompile was partial.

**Every report now says plainly when it's based on an incomplete decompile.** A one-line caution badge right after the Decision line, plus the real file count/exit code in a new `## Limitations` section - which also states the structural facts that were always true but never written down: signature-based detection has blind spots, decompilation isn't guaranteed to succeed (citing the real F-Droid/Root Checker/Launcher/PropertyGuru failures), and bypass doesn't generalize to unseen apps (now an explicit PRD non-goal).

**A real calibration harness** (`src/calibration/`, new) - **two-tier by design, not one**, because using the pipeline's own dynamic-verification outcome as ground truth has a structural blind spot: it can never catch a false negative (no bypass script is ever attempted when static says `NEITHER`), and "bypass didn't confirm" doesn't distinguish "wasn't really there" from "the technique just failed." Tier 1 measures pipeline self-consistency (confirmation rate, no ground truth needed). Tier 2 measures real precision/recall/F1 against a small, independently-sourced registry (`config/ground_truth.yaml` - the 4 known targets, each with a cited source, never derived from the pipeline's own live predictions). Partial-decompile runs are excluded from Tier 2 entirely (a negative from incomplete coverage isn't proof of absence) but still count in Tier 1.

Run it with `PYTHONPATH=src uv run python -m cli calibration-report` - **note the CLI is now two commands**, `run` (the existing pipeline, unchanged in behavior) and `calibration-report` (new). This is a real, breaking change to the invocation shape if you have anything scripted around the old bare-command form - `run.sh` and `scripts/collect_verification_bundle.py` are both already updated; nothing else in this repo should need touching, but if you have your own local scripts calling `python -m cli --apk ...` directly, they need `run` inserted after `cli` (and the `PYTHONPATH=src` prefix, matching README - the bare `uv run python -m cli` form does not resolve the `cli` module from the repo root).

Today's real numbers, computed against the actual accumulated evidence: Tier 2 root precision/recall/F1 = 1.0 at n=4 (3 UnCrackable targets correctly positive, Contacts correctly negative) - but every real observation sits at confidence ~0.00 or exactly 0.80, so the confidence-calibration curve has zero evidence anywhere near the 0.7 threshold itself. That's the honest caveat to read off it, not "well-calibrated." SSL's Tier 2 precision/recall are `N/A` (0/0) - nothing has ever been predicted SSL-positive yet, which is correct, not a bug. *(Superseded 2026-07-31 — AndroGoat is now the first predicted SSL-positive, DETECTED 0.80; see "Latest verification session" below. SSL metrics remain N/A because Tier-1 needs a real bypass success-check and Tier-2 excludes the partial-decompile SSL observations.)*

**`scripts/collect_verification_bundle.py`** now also computes and exports a calibration snapshot on every run (`calibration_report_output.txt`, `calibration_runs_snapshot.json` - a portable JSON dump of the `runs` table's calibration-relevant columns, not the raw binary `.db`), since the accumulating calibration dataset is otherwise the project's least-regenerable artifact with no git-committed backup at all.

## 1. Pull

```bash
git pull
uv sync
```

(`sqlalchemy` is a new dependency - `uv sync` picks it up.)

## 2. Run the verification bundle script

Same as always - now also computes a calibration report as part of every invocation, regardless of `--apk`:

```bash
uv run python scripts/collect_verification_bundle.py --apk APK_Test/UnCrackable-Level3.apk --target uncrackable3 --justification ACADEMIC_TRAINING_TARGET
```

Then, separately, re-run against Level 1, Level 2, and Contacts too (each with their own `--target`/APK) so the SQLite `runs` table actually accumulates all 4 known targets before checking the calibration numbers below - a single run only adds one row.

Also worth doing once: re-attempt PropertyGuru (`APK_Test/propertyguru...apk` if you still have it, or re-download) to confirm the partial-decompile path now produces a `partial`-labeled classification instead of the total pipeline halt from last round.

Look at `SUMMARY.md` and the copied report before pushing - specifically:

- Does the report show the new `## Limitations` section? If a decompile was partial, does the badge/section actually say so with the real file count?
- Run `PYTHONPATH=src uv run python -m cli calibration-report` directly and check the printed table - after all 4 known targets have been run at least once, does Tier 2 root show `precision=1.00, recall=1.00, F1=1.00, n=4`? Does ssl show `N/A` across the board? Does the skeleton warning still show (expected until there's a lot more data)?
- Is `calibration_runs_snapshot.json` present in the bundle with one row per run you've done so far?

## 3. If something's off

Same rule as every phase - only these should need touching:

- `config/ground_truth.yaml` - if a new target's ground truth needs recording, add an entry with a real `source` citation (loading rejects entries without one).
- `src/calibration/report.py` / `outcomes.py` - if the confusion-matrix math looks wrong for a case not covered here, flag it - this is the correctness-critical piece, don't silently patch it without understanding why first.
- `src/static/decompile.py` - if a jadx failure that clearly wrote zero real files somehow gets treated as partial (or vice versa), that's a bug in the file-count check, not the underlying tolerance design.

Re-run the script after any fix.

## 4. Push it back

```bash
git add docs/plans/handoff/bundles/
git commit -m "Phase 4 verification: <one-line summary>"
git push
```

## Not part of this round

- Audit log SQL migration - `attestation.py`'s JSONL stays as-is, a real deferred decision, not silently dropped (see `docs/plans/architecture/high-level-architecture.md`'s revised Data Model section).
- Schema migration tooling (Alembic or similar) - no evidence of need yet.
- apktool partial-output tolerance - only jadx gets this treatment; no real evidence motivates extending it to apktool.
- JSON→SQLite backfill - the calibration dataset starts fresh from whatever you run from here forward, deliberately, not migrated from old bundles.

## Latest verification session — 2026-07-31 (SSL positive-control)

The reference machine ran a fresh from-scratch verification of all four `APK_Test/` targets, then sourced and validated intentional SSL-pinning training apps to close the previously-open SSL detection gap. Everything below is backed by pushed bundles/commits.

### All four SSL signatures are now proven to fire on genuine code

| Signature | Weight | Validated on |
|---|---|---|
| `okhttp_certificate_pinner` (`CertificatePinner.Builder(`) | 0.5 | AndroGoat — SSL **DETECTED 0.80** |
| `certificate_pin_hash_literal` (`sha256/…`) | 0.3 | AndroGoat |
| `network_security_config_pinset` (`<pin-set>`) | 0.5 | RS_CertPinning — SSL 0.50 Inconclusive |
| `custom_trustmanager_checkservertrusted` (`implements X509TrustManager`) | 0.3 | Conversations — SSL 0.30 Inconclusive |

Prior to this, Tier-1 SSL was `N/A (0/0)` and **no** SSL signature had ever fired on a genuine pinner. This closes that validation gap.

### Two concrete design findings (for the confidence-semantics / attribution design pass)

1. **A network-security-config-only pinner is capped at 0.50 and can never reach `DETECTED` (0.7).** RS_CertPinning is a dedicated cert-pinning app pinning solely via a framework-level `<pin-set>` — the most definitive mechanism on Android — yet scores 0.50 → Inconclusive, because it has no second signature to stack. AndroGoat reached DETECTED only because OkHttp pinning (0.5) plus pin-hash literals (0.3) stacked to 0.8. Same issue applies to an OkHttp-only pinner (0.5 alone).
2. **The root-side analogue:** InsecureBankv2 has genuine app-owned root detection (`PostLogin.java` `which su` + `/system/app/Superuser.apk`) that scores **0.60 → Inconclusive**, just under the 0.7 threshold. Both are cases where a real, unambiguous signal stays below `DETECTED` — worth deciding if that's intended.

### React Native structural blind spot (correction to earlier R8 framing)
PropertyGuru is a **React Native** app — its business logic lives in `assets/index.android.bundle` (JS), architecturally invisible to a Java static scan regardless of decompile quality or obfuscation. Its 27,720 decompiled files are largely the bundled SDK/Runtime; the own-package (`com.allproperty`, 41 files) has zero root/SSL indicators. This is a fundamental coverage limit, not an obfuscation issue, and cannot be reached by smali or `.so` scanning.

### Ground-truth additions (first-ever `ssl: true`)
`config/ground_truth.yaml` now has 7 entries; new ones registered with independently-verified `true` values and `null` where a partial decompile can't prove absence (no forced `false`):
- **AndroGoat** `a47a8b0d…`: `root: true, ssl: true`
- **RS_CertPinning** `bea63726…`: `root: null, ssl: true`
- **InsecureBankv2** `771cdae4…`: `root: true, ssl: null`

### Honest caveat: SSL metrics are unchanged (`N/A`)
The new `ssl: true` ground truth does **not** move calibration metrics, by design:
- **Tier 1** SSL needs *dynamic* bypass confirmation — `success_checks/*.py` still hardcode `ssl_bypassed=None` (not implemented). Only a real SSL bypass success-check changes this.
- **Tier 2** SSL excludes the new observations because both SSL-pinning apps partial-decompiled (`ssl=4` excluded for partial decompile — the collaborator's own exclusion rule, working as intended).

### Pushed evidence
Bundles: `20260731T121305Z` (AndroGoat), `20260731T121900Z` (RS_CertPinning), `20260731T122244Z` (Vapour), `20260731T122254Z` (InsecureBankv2). Commits: `ca8da1d33` (4 from-scratch targets), `d1e25e779` (AndroGoat), `0a6256387` (RS_CertPinning), `c17dd7266` (Vapour + InsecureBankv2), `71fb320a3` (ground truth).

### Open items for the collaborator
- Decide whether a single definitive pinning signal (netsec pin-set) should carry enough weight to cross `DETECTED` on its own (weights vs. 0.7 threshold).
- Implement a real SSL bypass success-check so Tier-1 SSL can move off `N/A`.
- Register a *fully-decompiling* SSL pinner, or revisit the partial-decompile Tier-2 exclusion, to validate Tier-2 SSL.
- AndroGoat + RS_CertPinning now stand as the canonical SSL positives; Vapour/Tutanota as SSL negatives; Conversations as a weak-positive (custom TrustManager, not pinning) data point.
