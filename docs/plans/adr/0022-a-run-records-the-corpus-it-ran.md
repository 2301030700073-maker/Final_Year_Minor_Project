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

**A limit, stated rather than left to be assumed.** The hash covers the four
YAML files in `config/signatures/`. This project has a *second* detection
surface carried in code rather than YAML: the hardcoded JS idiom lists in
`src/static/hermes.py` (`JS_ROOT_IDIOMS`, `JS_SSL_IDIOMS`), whose ids can never
appear in a YAML-derived id set. Those are covered by `git_commit` and not by
this hash. That asymmetry is accepted here deliberately, because those idioms
live in a Python file whose commit is recorded - but it is named, so that no
reader assumes "corpus hash" means "every rule that could have fired".

**What this does not fix.** The dirty-tree problem for *code* remains: a run
from a dirty tree still cannot name the code it ran. Hashing the Python source
tree would be a larger change (import-time graphs, generated files, the
vendored Ghidra bundle) and is not attempted here. This ADR closes the corpus
half because the corpus is a small, bounded, explicitly-listed set of files -
the condition that made a hash feasible in the first place.
