# Phase 4 Handoff — Harden the Deterministic Core

## What this phase is

Not a new target - this hardens the deterministic core (Phases 1-3, all proven) into the checkpoint deliverable: SQLite storage (FR-7.1), a real calibration harness computing precision/recall/F1 against empirical ground truth (FR-9.2, ADR-0006), an honest limitations section in every report (FR-6.2), and tolerating partial jadx output instead of all-or-nothing - the last one directly motivated by the real PropertyGuru evidence from last round (jadx decompiled 1563 real files before crashing, and the pipeline discarded all of it).

## Status as of round 2

Round 1's verification of the 4 known targets (UnCrackable1/2/3 + Contacts) is real and confirmed - fresh bundles, correct classifications, calibration numbers accumulating correctly across the sequence, 131/131 tests. Two things needed fixing:

1. **The `outputs/` rule was violated again** - 27,720 raw files under `outputs/analysis/08e94c06.../jadx/sources/` (PropertyGuru's decompiled tree) got committed directly, bypassing the bundle script entirely, mixed into the same commit as the legitimate bundle content. This looks like a broad `git add` sweeping up whatever was sitting in the working directory at the time, not a deliberate choice. Fixed here (`git rm -r --cached`, kept on disk, just untracked) - **please double-check what's staged before committing** (`git status` after a broad `git add` - if you see `outputs/...` paths in there, don't commit them) rather than relying on `.gitignore` catching everything automatically if something explicit (`git add -f`, an IDE action, a wildcard that happens to match) slips past it.
2. **The PropertyGuru claims don't hold up against the evidence - checked twice, including after the lessons-doc update that followed.** First check: the 27,720-file count committed matched *exactly* the leftover jadx output from a bundle two rounds ago (`20260730T072013Z`), from before the partial-decompile-tolerance code even existed. Second, more direct check, after `docs/execution_changes/phase-1-changes-and-lessons.md` was updated claiming a specific result (**classification `BOTH`, root confidence 1.00, SSL confidence 0.90 - a real production app with genuine SSL-pinning detected, which would be a first for this project**): searched the entire repo for anything backing that up - no `metadata.json`, no `run_*.json`, no `decompile_status.json`, no `apktool/` output, no report `.md` file, no bundle `SUMMARY.md` anywhere mentions PropertyGuru's hash. Only a `jadx/sources/` tree exists on disk, which is what a decompile-only, everything-after-it-never-ran state looks like - not what a full classified run looks like. The SSL=0.90 claim is plausible in principle (this project's existing OkHttp/network-security-config signatures could legitimately catch real pinning in a production app) - plausible is not the same as verified, and per this project's own standing rule, a specific, detailed claim without a pushed artifact behind it isn't something we can treat as true yet, no matter how precise the numbers sound. **This needs a genuine, fresh, pushed bundle**: `uv run python scripts/collect_verification_bundle.py --apk <propertyguru.apk> --target uncrackable1 --justification ACADEMIC_TRAINING_TARGET` (any `--target` is fine, PropertyGuru isn't a known target - the point is exercising the full pipeline for real), then push the resulting bundle before writing up what it found. If the BOTH/0.90 result is genuinely real, this will confirm it cleanly; if not, better to find out now than to build on a number that turns out to not be reproducible.

Also fixed: a real bug in `collect_verification_bundle.py` itself (not something you did) - the calibration-report step ran *before* the current invocation's own pipeline run, so every bundle's calibration snapshot only ever reflected prior runs, never its own fresh data. Reordered to run after.

## What changed

**SQLite replaces flat JSON.** `src/storage/db.py` (new) - two tables, `apks` and `runs`, not the full 7-table schema `high-level-architecture.md` originally previewed for later phases (corrected there, same "revise rather than silently diverge" pattern as the FR-2.4/FR-2.5 corrections). `storage/results.py` keeps its exact public interface (`save_metadata`, `existing_metadata`, `save_run`) - nothing about how you invoke the pipeline changes. The DB file lives at `outputs/analysis/results.db` (already covered by `.gitignore`'s `outputs/` and bare `*.db` lines - no new ignore rules needed).

**jadx crashing after writing real output is no longer a total loss.** If jadx exits non-zero but already wrote real `.java` files before dying (confirmed real behavior against a 151MB production app), the pipeline now continues with `status="success"` and an explicit `decompile_completeness: "partial"` marker - static analysis scans whatever did decompile. Zero files written is still a hard failure, unchanged. A small sidecar (`outputs/analysis/{hash}/decompile_status.json`) makes sure a second run against the same hash doesn't silently forget a decompile was partial.

**Every report now says plainly when it's based on an incomplete decompile.** A one-line caution badge right after the Decision line, plus the real file count/exit code in a new `## Limitations` section - which also states the structural facts that were always true but never written down: signature-based detection has blind spots, decompilation isn't guaranteed to succeed (citing the real F-Droid/Root Checker/Launcher/PropertyGuru failures), and bypass doesn't generalize to unseen apps (now an explicit PRD non-goal).

**A real calibration harness** (`src/calibration/`, new) - **two-tier by design, not one**, because using the pipeline's own dynamic-verification outcome as ground truth has a structural blind spot: it can never catch a false negative (no bypass script is ever attempted when static says `NEITHER`), and "bypass didn't confirm" doesn't distinguish "wasn't really there" from "the technique just failed." Tier 1 measures pipeline self-consistency (confirmation rate, no ground truth needed). Tier 2 measures real precision/recall/F1 against a small, independently-sourced registry (`config/ground_truth.yaml` - the 4 known targets, each with a cited source, never derived from the pipeline's own live predictions). Partial-decompile runs are excluded from Tier 2 entirely (a negative from incomplete coverage isn't proof of absence) but still count in Tier 1.

Run it with `python -m cli calibration-report` - **note the CLI is now two commands**, `run` (the existing pipeline, unchanged in behavior) and `calibration-report` (new). This is a real, breaking change to the invocation shape if you have anything scripted around the old bare-command form - `run.sh` and `scripts/collect_verification_bundle.py` are both already updated; nothing else in this repo should need touching, but if you have your own local scripts calling `python -m cli --apk ...` directly, they need `run` inserted after `cli`.

Today's real numbers, computed against the actual accumulated evidence: Tier 2 root precision/recall/F1 = 1.0 at n=4 (3 UnCrackable targets correctly positive, Contacts correctly negative) - but every real observation sits at confidence ~0.00 or exactly 0.80, so the confidence-calibration curve has zero evidence anywhere near the 0.7 threshold itself. That's the honest caveat to read off it, not "well-calibrated." SSL's Tier 2 precision/recall are `N/A` (0/0) - nothing has ever been predicted SSL-positive yet, which is correct, not a bug.

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
- Run `uv run python -m cli calibration-report` directly and check the printed table - after all 4 known targets have been run at least once, does Tier 2 root show `precision=1.00, recall=1.00, F1=1.00, n=4`? Does ssl show `N/A` across the board? Does the skeleton warning still show (expected until there's a lot more data)?
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
