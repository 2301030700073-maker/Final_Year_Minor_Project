# ADR-0034: the curve's sample is stated where its counts are, not only by a caveat that expires

**Status:** Accepted, 2026-09-25
**Applies to:** `src/report/generator.py` (`CALIBRATION_TEMPLATE`, the
`## Confidence-Calibration Curve` section); `tests/unit/`

## Context

Measured on the `calibration-report` run of 2026-09-25, over the 303 stored runs.

The curve's `Count` column counts the **ground-truthed Tier-2 observations in
that bucket** - one datapoint per APK (`CALIB-WEIGHT1`), and only those whose
ground-truth join succeeded and whose negative was not excluded as
not-proof-of-absence (`report.py`'s `bucket_hits` receives an entry only in the
`gt_value is not None` branch, and excluded negatives `continue` before reaching
it). It is not a count of runs. The gap, measured:

- `root_confidence >= 0.9`: **169 runs**, bucket `[0.9, 1.0)` reads `Count = 4`
- `root_confidence < 0.1`: **66 runs**, bucket `[0.0, 0.1)` reads `Count = 1`
- the buckets sum to 6 (root) and 4 (ssl) - exactly the Tier-2 `n`, as expected

That population is named in exactly one place in the report: `skeleton_warning`
("only 10 ground-truthed category-observations exist across all known targets"),
which `report.py` produces **only while `total_n < 30`**. The definition
therefore expires at the moment the curve becomes large enough to be read as a
measurement rather than a skeleton - the caveat and the thing it defines have
different lifetimes, and the shorter one is carrying the definition.

Nothing in the report currently says anything false. The column header is a bare
`Count`, and the adjacent `Observed Positive Rate` implies the ground-truth frame
strongly enough that a careful reader supplies it. This ADR is therefore about a
**latent** gap, not a live falsehood, and it is taken because the expiry is
structural: it is decided by corpus size, so it will happen on its own, later,
without anyone editing this section.

The inverse of ADR-0032 (a denominator named where its rate is read) and the
completion of ADR-0033 (a boundary made identifiable where it is claimed). All
three are the same rule applied to the three numbers in this one section.

Verified scope of the claim: `skeleton_warning` is the **only** gate in
`CALIBRATION_TEMPLATE` decided by a numeric threshold. The others are presence
guards (`report.thresholds`, ADR-0033), property flags
(`report.ssl_verification_partial`), per-category non-emptiness (`hashes`), or
shape gates - the TN0 caveat stops firing when its own claim stops being true
(CALIB-TN0-LABEL), which is correct and is a different thing from a definition
expiring while still true.

## Decision

1. **The column carries its population.** `Count` becomes
   `Count (ground-truthed)`. A reader who reads only the table gets the
   definition without needing the warning above it.

2. **The definition is stated where the counts are, unconditionally.** The curve
   section's prose names the population and both reasons an observation is absent
   from *both* columns - no ground-truth entry, or a negative excluded as not
   proof of absence. This prose is not gated, so the definition cannot expire.

3. **The skeleton warning keeps its job.** It remains a caution about sample size,
   which is what its own text is about ("read bucket rates as directional at
   best"). It simply stops being the sole carrier of a definition. A caution may
   be conditional; a definition may not.

4. **Markdown only.** The console renders no curve, so there is no second surface
   (same parity answer as ADR-0033 #5).

5. **No arithmetic changes.** `count` and `observed_positive_rate` compute exactly
   as before; this names what they were always over.

## Consequences

- The curve's population survives the `total_n >= 30` threshold, so the first
  report that is large enough to trust is also a report that states what it is
  over.
- Duplication bound, stated rather than implied: the warning's "N ground-truthed
  category-observations" and the curve's bucket counts are two renderings of the
  same set (the warning sums `t2.n`; the buckets count the same observations).
  A future change to what the curve counts must change the warning's wording too,
  or the two will disagree in the same document.
- The general rule, for later sections: a caveat may be gated on a threshold; a
  definition may not. When a note both warns and defines, the definition belongs
  in ungated prose or in the label it describes - `prose-caution-is-not-a-
  coverage-bound` one step over, into the sample rather than the verdict.
