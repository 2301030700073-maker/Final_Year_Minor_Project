# ADR-0031: correlation records per-category agreement, and its verdict says what it is about

**Status:** Accepted, 2026-09-25
**Applies to:** `src/dynamic/correlation.py` (`correlate`), `src/common.py`
(`CorrelationResult`), `src/report/generator.py` (the "Static vs. Dynamic
Correlation" block, lines 570-599), `src/cli.py` (`_correlation_from_json`);
`tests/unit/test_correlation.py`, `tests/unit/test_report_generator.py`

## Context

The UnCrackable Level 1 dynamic run of 2026-09-25 (`outputs/reports/1da8bf57…/
223cb613084d42a480d48be8213a11ec.md`) renders:

```
## Static vs. Dynamic Correlation

- Verdict: UNVERIFIED (dynamic verification was inconclusive - not a disagreement)
- UNVERIFIED: static analysis was coverage-limited on SSL-pinning (unknown, not
  absent) and dynamic verification could not confirm a bypass either - neither
  engine could certify this category, so it is inconclusive, not an agreement
```

The section directly above it records `Root bypassed: True`, on the basis that
the app's own root-check probed a root artifact and was answered false (on the
rooted test device that probe would otherwise have returned rooted), with four
root hooks engaged - and the static engine classified the app `ROOT_ONLY`. On
root, the two engines agreed on the strongest evidence this pipeline produces.
The correlation section does not say so, and its gloss claims the opposite:
"dynamic verification was inconclusive" is a statement about the dynamic stage's
whole result, and on this run it is false.

Two defects share that section, and they are fixed together because each is what
makes the other unreadable.

**1. A false run-wide claim.** The gloss is attached to the UNVERIFIED arm, which
fires when *any* category is unverified. Nothing in it says it is about
SSL-pinning; the reader has to infer the scope from the bullet below, which is the
only place the category is named.

**2. Agreement is represented by absence.** `CorrelationResult` records
disagreement (`mismatches`), gaps dynamic filled (`coverage_confirmed`) and
inconclusives (`unverified`). A category that *agreed* writes to none of them. The
run-level `matches` boolean is read by nobody - the two renderers and
`_failure_correlation_note` read the three lists, and calibration reads no
correlation field at all - so agreement exists in the record only as the emptiness
of other lists, and an empty list is indistinguishable from a category the section
never looked at.

The 2x3 table makes the silence exact. Per category, `(predicted, bypassed)` has
six cells plus the `coverage_limited` qualifier on `(False, None)`. Five cells
write an entry. Two do not:

- **`(True, True)`** - static predicted the category and the dynamic bypass
  confirmed it. No arm fires, because every arm tests `False` or `None`. This is
  the confirmation case - the best outcome the pipeline can produce - and it is
  the silent one. It is this run's root.
- **`(False, None)` with `coverage_limited=False`** - documented at
  `correlation.py:72-74` as "genuine agreement by non-claim (both point to 'not
  present')". Also silent.

Measured, this run: `mismatches=[]`, `coverage_confirmed=[]`, `unverified=[the ssl
entry]`, `matches=False`. Nothing in that record says root agreed.

## Decision

1. **`CorrelationResult` gains `matched: list[str]`** - one sentence per category
   that agreed, appended by `correlate()` at those two cells and nowhere else.
   Additive by construction: the three existing lists keep their meaning exactly,
   so every current reader's interpretation of them is unchanged, and a row stored
   before the field existed reports `[]` rather than a guess.

2. **Every cell of the table is now written to exactly one list.** That is the
   whole of the change - not a new verdict tier, but the removal of a fall-through
   where "agreed" and "never evaluated" were the same bytes. `matches` keeps its
   formula (`len(mismatches) == len(unverified) == len(coverage_confirmed) == 0`)
   and therefore its exact value on every existing run; it stays a write-only
   mirror.

3. **The verdict gloss names its scope.** "dynamic verification was inconclusive -
   not a disagreement" becomes "dynamic verification was inconclusive **for the
   categories listed below** - not a disagreement". The other three glosses are
   deliberately unchanged, and the reason is not symmetry: MISMATCH's "(static and
   dynamic disagreed)" is existentially true of a run in which they disagreed about
   one category, and COVERAGE-CONFIRMED's already reads "in a category". The
   UNVERIFIED gloss was the only one asserting a property of the dynamic stage's
   entire result, which is why it was the only one that could be false.

4. **The non-claim sentence says non-claim.** A `bypassed is None` with no coverage
   bound means dynamic made no contrary finding - which covers both a stage that
   never attempted the category (a bypass runs only for a predicted one) and a
   stage that ran and could not exercise the check (RESID-6F). "dynamic confirmed
   no bypass" would be a false claim of exactly the class this ADR fixes, so the
   sentence reads "made no contrary finding … agreement by non-claim, not a
   confirmed absence".

5. **Both renderers are considered; only one changes.** The report block and
   `_failure_correlation_note` are a matched pair by that function's own docstring
   ("change one, change the other"). `matched` bullets are added to the report
   block; the console note is left alone because it prints the run-level state
   only, which `matched` cannot change - verified, not assumed: it branches on the
   three lists and never on `matches`.

6. **`_correlation_from_json` round-trips the field.** REGEN-FIELDLOSS1: a field
   the deserializer does not read is a field a regenerated report silently loses.
   A row stored before the field exists regenerates with no agreement bullets -
   less informative than the original report, and honestly so, because the stored
   row does not contain the data (the ADR-0027 consequence, accepted again).

7. **No backfill.** Reports already written keep what they were written with.

## Consequences

- On regeneration, this run's section gains a `- MATCH:` bullet naming root
  beside the SSL-pinning `- UNVERIFIED:` bullet, and its gloss no longer claims
  dynamic was inconclusive run-wide. The stored row itself is unchanged.
- **MATCH now always carries its reasons.** With two categories, all three lists
  empty requires both to be in an agreement cell, so a MATCH verdict renders two
  `- MATCH:` bullets where it previously rendered none - the same
  representation-by-absence problem seen from the other side. This is pinned as an
  invariant test rather than left as prose.
- No detection, confidence, action, threshold, evidence row, `matches` value, or
  stored field changes meaning. This is a record-and-render change.
- **The bound, stated rather than implied:** the per-category sentences are
  hand-written per category (`root`, `ssl`), so a third governing surface needs
  new arms in `correlate()` and new wording. The completeness invariant asserts
  exactly two entries for a clean two-category run, so that addition fails loudly
  here instead of silently rendering an unaccounted category as agreement.
