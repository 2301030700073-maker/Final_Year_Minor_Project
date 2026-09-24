# 0022. A run records the rule corpus it was analysed against

Status: Accepted
Date: 2026-09-20
Relates to: ADR-0001 (the deterministic rule engine is the sole source of truth
for detection), ADR-0006 (empirical calibration, never an asserted verdict),
ADR-0007 (reproducibility across the two-machine split), ADR-0021 (an
interrupted run is on record as one)

## Context

A verdict from this platform is a function of two inputs: the *code* that ran,
and the *rule corpus* it ran against. The run record captures the first and
neither of them completely.

**`git_commit` does not identify the executed code.** Measured over this
repository's own `runs` table (264 rows, 2026-08-13 .. 2026-09-20):

- 183 of 264 carry the literal suffix `(dirty working tree)`.
- 61 distinct values collapse to 51 distinct commit prefixes.
- **16 of those 51 prefixes hold rows that disagree with each other on
  `(root_confidence, ssl_confidence)`** - the two numbers the whole system
  exists to produce. One prefix (`c6fe6082…`) carries ten distinct outcome
  pairs, from `(0.0, 0.3)` to `(1.0, 1.0)`.

So for roughly a third of the commit history, the recorded commit names a tree
that was not the tree that ran. This was already known and already cost time:
reconstructing why InsecureBankv2 moved `0.90/0.30` → `0.85/0.00` required
separating the dirty rows from the clean ones and dating the boundary by hand.

**The corpus has no identity at all.** None of the four files in
`config/signatures/` carries a version key, a revision, or a date; `grep` for
one returns nothing. The corpus's identity in a run record is "whatever bytes
happened to be on disk at scan time", where it is recorded nowhere.

The concrete cost, from work done the same day this ADR was written: a pattern
was removed from `emulator_detection` (`53a6b2641`, the `Build.HARDWARE` false
surface). Asking "which of the 264 stored runs were analysed under the old
rule?" has exactly one handle - `git_commit` - and 183 of those rows cannot
answer it, because a dirty tree's content is not in the commit. The question is
currently answerable only by re-running targets and diffing, which measures the
present, not the stored runs.

The same wall appears in the other direction. When the shared third-party
attribution gate (`7ceba66a8c`) changed what counted as the app's own evidence,
the corpus-era boundary could be located only by dating rows against commit
history and the dirty/clean marker. That is a reconstruction. It should be a
lookup.

## Decision

1. **Every run records a fingerprint of the corpus it loaded.** A SHA-256 taken
   over the exact bytes of the signature YAML files that run read, in a
   deterministic order (each file's relative name and contents), computed from
   the same list of paths the pipeline actually loads.

2. **It is a fingerprint of content, not a version label.** No hand-maintained
   version string is introduced. A label is a claim that can go stale or be
   forgotten in a commit that edits a rule; a hash cannot disagree with the
   bytes it was taken over. This is ADR-0006's discipline applied to the corpus
   itself: measure, never assert.

3. **It is recorded alongside `git_commit`, not instead of it.** The commit
   identifies the code (modulo dirt); the corpus hash identifies the rules
   (including dirt). Neither substitutes for the other, and the report shows
   both.

4. **It joins `IDENTITY_FIELDS`** (`storage/run_status.py`), so the sidecar and
   the `runs` row agree on what a run's identity is, and a field added to the
   tuple reaches both.

5. **No backfill.** The corpus bytes for a historical run are not recoverable:
   183 rows ran from a working tree whose content exists only in that tree, and
   a clean commit prefix does not prove which YAML the operator had checked out
   and edited. A value derived from a commit would be a plausible-looking number
   standing in for an unobserved one - the precise failure ADR-0006 and the
   project's no-fabrication rule forbid. Historical rows keep NULL, and NULL
   renders as an explicit statement that the corpus was not recorded for that
   run, never as a blank.

## Consequences

**What this buys.** "Which runs were analysed under rule set X" becomes a
lookup instead of a re-run-and-diff. A corpus change gets a before/after handle
that does not depend on a clean tree or a fresh commit, which is exactly the
handle 183 of the existing 264 rows lack.

**What it costs.** A new nullable column on `runs` (handled by the existing
`_migrate_schema` declared-vs-actual ALTER, `storage/db.py:171-206`), one entry
in `IDENTITY_FIELDS`, one report line beside `Analysis code`, and one entry in
the report template's variable-coverage guard - an unguarded Jinja variable
renders as a silent blank, which is the failure mode that guard exists for.

**A limit, stated rather than left to be assumed - CLOSED 2026-09-24, see the
section at the end of this ADR.** The hash covers the four
YAML files in `config/signatures/`. This project has a *second* detection
surface carried in code rather than YAML: the hardcoded JS idiom lists in
`src/static/hermes.py` (`JS_ROOT_IDIOMS`, `JS_SSL_IDIOMS`), whose ids can never
appear in a YAML-derived id set. Those are covered by `git_commit` and not by
this hash. That asymmetry is accepted here deliberately, because those idioms
live in a Python file whose commit is recorded - but it is named, so that no
reader assumes "corpus hash" means "every rule that could have fired".

*Left standing above as what was decided at the time. The asymmetry turned out to
be closable without the larger change the next paragraph rules out, because those
lists are bounded data in the same way the YAML is - see "Closed" below.*

**What this does not fix.** The dirty-tree problem for *code* remains: a run
from a dirty tree still cannot name the code it ran. Hashing the Python source
tree would be a larger change (import-time graphs, generated files, the
vendored Ghidra bundle) and is not attempted here. This ADR closes the corpus
half because the corpus is a small, bounded, explicitly-listed set of files -
the condition that made a hash feasible in the first place.

## Closed: the second detection surface is in the hash (2026-09-24)

The limit above was named rather than assumed, which made it checkable, and it has
been checked and closed. The JS idiom lists are bounded data in the same way the
YAML is, so they did not need the source-tree hash the last paragraph rules out.
What closing them needed was three things, two of which are only visible once you
try:

1. **The weight moved beside the lists.** `JS_EVIDENCE_WEIGHT` (0.2) lived in
   `cli.py` and was the constant every JS idiom match was emitted at. Hashing the
   patterns alone would have moved the recorded identity when a rule changed but
   *not* when its influence over a verdict did: the weight is summed into a
   category score, so changing it alters what a NEITHER means with every pattern
   byte-identical. Two rules that produce different verdicts cannot share one
   identity. It now lives in `hermes.py`, beside the lists it scales.

2. **`js_idiom_fingerprint()`** (`src/static/hermes.py`) hashes that surface as
   data - each entry's list, id, category, regex source and flags, plus the weight
   - sorted, so reordering the lists (which changes nothing about what matches)
   does not move it while a one-pattern edit does. `corpus_fingerprint`
   (`src/static/signatures.py`) folds it in, so the one recorded value covers both
   surfaces and no call site can record a run against half the rules.

3. **`_JS_IDIOM_LISTS` is a declared registry**, the JS analogue of
   `SIGNATURE_CORPUS`: a third idiom list added to `hermes.py` and not registered
   would fire rules the hash never described. Held structurally by
   `test_every_js_idiom_list_is_registered`, which also asserts its own pattern
   matched something, so a stale regex cannot satisfy it vacuously.

**What it costs.** A fingerprint recorded before this change was taken over the
YAML files alone, so a value from before it is not comparable with one from after,
even when the rules are identical - and comparing two runs' corpus is exactly what
a reader does with this field. Both the report's `Signature corpus` line and
`corpus_fingerprint`'s own docstring say so. No stored fingerprint is rewritten:
the existing rows stay as recorded, because re-deriving one would attribute
today's rule set to a run that never loaded it - the misattribution this
fingerprint exists to prevent.

**What is still not covered, named so that "closed" is not read as "complete".**
Two surfaces remain outside this value, and both are code covered by
`Analysis code`:

* The Python that *runs* the rules - the dirty-tree problem above, unchanged.
* `src/static/indicators.py`: `ROOT_INDICATORS`, `SSL_INDICATORS`,
  `NATIVE_ROOT_INDICATORS`, `NATIVE_SSL_INDICATORS` are hardcoded pattern lists
  whose matches mark a verdict `coverage_limited`
  (`coverage.py`'s `verdict_label` docstring: that flag is the union of the
  governing-surface bound *and* unattributed detection indicators), so a NEITHER
  is certified or reads `Inconclusive` according to content this hash does not
  cover. Editing one of those lists changes what the platform will certify while
  the recorded corpus stays still - the same asymmetry, one surface over.

**The thresholds: measured, and deliberately not folded in (2026-09-24).** The
other rule parameter a verdict depends on is the decision boundary -
`config/settings.yaml`'s `thresholds` (root/ssl), read by `cli._load_thresholds`
and applied where DETECTED is separated from NEITHER. It is not in this hash, and
that is a decision rather than an oversight:

* The boundary is already recorded per run and disclosed where the verdict is read:
  `runs.threshold` / `runs.ssl_threshold` (`storage/db.py`), read per run by
  calibration to place its curve edges ("Finding D", `calibration/report.py`), and
  rendered in every report's Decision line (`report/generator.py`). Nothing about it
  lives only in code, which is the condition that made the JS idioms worth folding.
* Folding it in would be the defect this project has just written an ADR about: one
  value with two producers cannot say which one moved (ADR-0026). A reader could no
  longer tell "the patterns changed" from "the boundary moved", and the hash would
  stop answering the question it exists for - did the *rules* change - because every
  threshold edit would move it, including edits made for calibration of an unrelated
  category.
* What was actually missing was one sentence: a reader comparing two corpus hashes
  could conclude "same rules" while the boundary differed. The report's corpus line
  now says the thresholds are recorded per run and rendered on the Decision line,
  which closes that misreading without blending the two facts into one value.

The general rule this leaves behind: a value belongs in the corpus identity when its
content *is* a rule, and beside it - recorded and rendered in its own right - when it
*scales* the rules. Weights are summed into a score the patterns determine, so they
are part of the surface (the JS idioms above); a threshold is a line drawn across
scores, so it is recorded as its own fact.
