# ADR-0029: a detected category is never coverage-limited

**Status:** Accepted, 2026-09-25
**Applies to:** `src/static/coverage.py` (`apply_coverage_bound`,
`apply_unattributed_indicators`); the console banner in `src/cli.py` and the
Decision line in `src/report/generator.py` inherit the change through the list
they already read

## Context

Measured on the RS_CertPinning run of 2026-09-25, `--skip-dynamic`, live and
again on a second fresh run:

```
Decision: SSL_ONLY
Coverage-limited (unknown, not absent): root (governing surface not fully
analyzed); ssl (governing surface not fully analyzed) - a NEITHER here is a
lower bound, not a confident negative; see Limitations.
  Root: 0.00 (upper bound: java=partial) -> Inconclusive
  SSL : 1.00 (upper bound: java=partial) -> DETECTED
```

One line says SSL is detected at 1.00 and lists SSL among the categories whose
result is "unknown, not absent". Both are rendered from
`classification.unknown_uncovered`, and both are wrong about SSL.

`src/static/coverage.py:498` builds that list:

```python
limited = [
    cat for cat in GOVERNING_SURFACES
    if not category_is_confident_negative(cat, coverage)
]
```

The predicate is a function of the **coverage map alone**. It never reads
`classification.root.detected` or `classification.ssl.detected`. With
`java=partial` the predicate is false for ssl whatever ssl's verdict is, so a
category detected at 1.00 is flagged exactly as a category with no evidence is.

The field's own contract says the flag is about the other case. `common.py:691`:
*"a `detected=False` here is 'unknown, not absent' - never a confident
negative."* That is the whole of what `coverage_limited` and
`unknown_uncovered` are for.

The direction of the error is what settles it. An incomplete surface can cause a
detection to be **missed**; it cannot cause one to be **invented**, because a
signature match is a fact about code that was read. So an incomplete scan
weakens a negative and leaves a positive untouched. A bound that applies to a
positive is not conservatism - it is a false statement about the run, printed
above the verdict it contradicts.

Why 2,257 passing tests did not catch it: every fixture in
`tests/unit/test_lm4_lm3_unknown.py` builds its verdicts with `detected=False`
(`_cls()`, line 25). The function is well covered over the input shape its
author had in mind, and the detected branch has never been exercised. This is
the class of gap that only a real run closes.

## Decision

1. **A category whose verdict is `detected=True` is never coverage-limited.**
   It is not entered in `unknown_uncovered`, it carries no
   `unknown_uncovered_causes` entry, and its verdict's `coverage_limited` is
   False. The bound describes a negative; a positive has no negative to bound.

2. **Both arms take the gate, not just the one measured.** `apply_coverage_bound`
   (cause `incomplete_coverage`) and `apply_unattributed_indicators` (cause
   `unattributed_indicator`) write the same list and the same flag, and the
   banner renders both under one header. A detected category can carry
   unattributed indicator code - some pinning matched a signature, some
   detection-shaped code did not - and the second arm would reproduce the same
   contradiction by the other cause. Fixing one arm and leaving the other is how
   this returns.

3. **The flag goes with the list, so the numeric suffix goes too.** A detected
   confidence can only be under-counted by an incomplete scan: more code could
   have matched and pushed it higher, never lower. It is a floor, not a ceiling,
   so the `(upper bound: java=partial)` suffix on a `DETECTED` verdict is the
   same category error in numeric form. Clearing `coverage_limited` removes it,
   because `confidence_bound` renders that suffix off this one flag.

4. **No downstream decision changes.** `src/dynamic/correlation.py` reads
   `coverage_limited` in four places, and every one is already guarded by
   `not <cat>_predicted` (lines 29, 58, 89, 115), so a detected category never
   reaches them. The change is verified to be render-only for correlation.
   Derivations that read the list rather than the flag inherit the correction:
   the `--force-dynamic` note's `forced_dynamic_coverage_limited` is
   `bool(unknown_uncovered)` (`generator.py:913`), which after this change says
   "coverage-limited" only when some category's absence is genuinely unbounded.

5. **The counterfactual line is deliberately not changed.**
   `coverage_bound_line` prints `ssl: NEITHER is a lower bound, NOT confident
   (java=partial, ...)` for this same run, and that one is correct: it states
   what a NEITHER *would* mean under this coverage map, not what this run's ssl
   verdict is. It reads identically for a detected category because the
   counterfactual is about the map. Four tests assert its wording, and the
   distinction it relies on - "a NEITHER is a lower bound" versus "is a lower
   bound" - is the same distinction this ADR restores in the line above it.

6. **No backfill.** Reports already written keep the line they were written
   with, following ADR-0028 decision 5. A regenerated report re-renders from the
   stored row and will therefore carry the corrected line, which is a difference
   between a stored report and its regeneration - the same, already-accepted
   consequence ADR-0027 records for the cause annotations.

## Consequences

- The console banner and the report Decision line are corrected together, since
  both read `unknown_uncovered` rather than deriving the bound themselves. That
  was already true by design (`verdict_label`'s docstring: "console (cli.py) and
  report (generator.py) both call it, so the two can no longer drift").
- `tests/unit/test_lm4_lm3_unknown.py` gains the fixtures it never had: a
  detected category under partial coverage, asserted absent from the list, with
  no flag and no cause; and a control in the same run asserting that a
  *negative* sibling is still listed, so the test cannot pass by emptying the
  list.
- This is a label correction and nothing more. No detection, confidence value,
  action, threshold, or evidence row changes. It is recorded as an ADR because
  it changes what a report tells a reader, which is the thing this project
  treats as load-bearing.
- The bound on the fix: it removes a contradiction that was visible in every run
  where a category was detected under partial coverage - which is the ordinary
  case for any partially-decompiled app, not an edge case.
