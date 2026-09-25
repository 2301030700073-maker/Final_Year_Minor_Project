# ADR-0033: the calibration curve identifies the edges that are decision thresholds

**Status:** Accepted, 2026-09-25
**Applies to:** `src/calibration/report.py` (`CalibrationCurveBucket`,
`CalibrationReport`, `compute_calibration_report`);
`src/report/generator.py` (`CALIBRATION_TEMPLATE`); `tests/unit/`

## Context

Measured on the `calibration-report` run of 2026-09-25
(`outputs/reports/calibration/20260925T164956Z.md`), thresholds `root: 0.7`,
`ssl: 0.7` (`config/settings.yaml:15-17`).

The curve inserts decision boundaries into its own bucket edges, deliberately:

```python
# src/calibration/report.py:243
edges = sorted(set(base_edges) | {thresholds[category]} | per_run_thresholds)
```

`_fmt_edge`'s docstring (`src/report/generator.py:64-84`) records why that
precision exists: a fixed `%.1f` would round a tuned 0.75 to "0.8" and so hide
"the very boundary this curve exists to surface". The template's prose states the
same intent to the reader (`generator.py:1862`): *"Bucket edges always include the
real decision threshold explicitly - the one boundary that matters for future
threshold re-scoring."*

The edge is inserted, and nothing records that it was. `per_run_thresholds`
(`report.py:239-241`) is a local set discarded at the end of the loop;
`CalibrationCurveBucket` (`report.py:90-94`) carries `range_low`, `range_high`,
`count`, `observed_positive_rate` and no provenance; `CalibrationReport`
(`report.py:97-124`) has no threshold field at all. So neither renderer can name
the boundary even if the template wanted to - the value exists only as one float
among the others in `edges`.

The consequence, in the artefact: both categories were classified at 0.7, which
is a 0.1 multiple, so the threshold edge is indistinguishable from the nine
ordinary edges around it. The reader sees

```
| [0.6, 0.7) | 0 | no data |
| [0.7, 0.8) | 0 | no data |
```

and cannot tell which boundary the corpus was classified at. The data does not
give it away either: every root observation sits at `< 0.1` or `>= 0.8`, so no
bucket count implies 0.7.

This is the inverse of the shape ADR-0032 fixed. There, a fact the artefact
displayed was dropped from a surface. Here, a fact the artefact asserts - that its
own boundary is present and explicit - cannot be located on it.

Every other surface records the boundary:

- The per-run report prints it in the Decision line (`generator.py:174`:
  "root threshold …, ssl threshold …").
- The signature-corpus note (`generator.py:101`) argues thresholds are kept *out*
  of the corpus fingerprint precisely because "each run records the boundary it
  was classified at - so a boundary change reads as a boundary change, not as a
  rules change".
- `RunRow` persists `root_threshold` / `ssl_threshold` per run (`types.py:56-63`)
  for exactly this purpose.

The aggregate report - the one surface built *across* runs, where a threshold
change is what a re-scoring decision would read - records none of them.

Per-run thresholds make a current-value-only fix insufficient: because
historical thresholds are merged into the same edge set, a corpus spanning two
boundaries contains several threshold edges of unknown provenance, and a reader
cannot tell which of them is the boundary in force.

## Decision

1. **The provenance travels with the bucket.** `CalibrationCurveBucket` gains
   `is_threshold_edge: bool = False`, set where the buckets are built
   (`report.py:326-333`) from `{thresholds[category]} | per_run_thresholds` - the
   exact same expression that fed `edges`, so a marked bucket and an inserted
   edge cannot disagree. A boolean, not a re-derived comparison in the template:
   the marker is then a unit-testable fact about the data model, and no Jinja
   float equality decides what the reader sees.

2. **The report carries the boundary in force.** `CalibrationReport` gains
   `thresholds: dict[Category, float]` (default empty, so existing constructions
   keep working), populated from the same resolved `thresholds` dict.

3. **Both are rendered.** The report header names the current decision threshold
   per category, and each curve row whose lower edge is a threshold edge is
   marked. The header line is the backstop that cannot be missed: a threshold
   equal to the top edge (1.0) marks no bucket, because no bucket starts there,
   and the named value still tells the reader the boundary.

4. **The marker does not distinguish current from historical.** One marker for
   "a boundary a run was classified at", with the header supplying the current
   value - the reader matches the marked edge to the named number. A per-run
   threshold renders as its own edge label (a 0.84 boundary appears as
   `[0.84, 0.9)`), so its value is already on the page; what was missing was only
   that it *is* a boundary. Adding a second marker class would encode a
   distinction the header already makes unambiguously.

5. **Markdown only.** The console renders no curve, so there is no second surface
   for this fact to be dropped from; stating that is the parity answer, not
   adding a threshold line to a table that shows no buckets (contrast ADR-0032,
   where both renderers showed the rate).

6. **No curve arithmetic changes.** The edge set, bucket membership, counts, and
   observed rates are untouched: `edges` computes exactly as before. This adds
   provenance and its rendering, nothing else.

## Consequences

- The sentence at `generator.py:1862` becomes checkable by its reader: the
  boundary it claims is explicit is now identifiable in the table below it.
- A corpus whose runs were classified at more than one boundary now says so
  visibly, rather than presenting a curve whose edges silently encode two
  regimes. This is the aggregate-report form of the per-run report's existing
  rule that a boundary change must read as a boundary change.
- The bound, stated rather than implied: `is_threshold_edge` is computed from the
  same two sets as `edges`, so a future change that inserts edges from a *third*
  source (say, a per-surface threshold) would mark nothing for it and the reader
  would again be unable to find that boundary. Whoever adds such a source owns
  both expressions - the ADR-0032/0030 bound, one artefact over.
- Pre-threshold runs (`root_threshold is None`, `types.py:60-62`) still fall back
  to the current default, unchanged; they contribute no historical edge and
  therefore mark none. Their readings are unaffected, since the fallback was
  already the behaviour.
