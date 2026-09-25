# ADR-0032: the console Tier-1 line names its denominator and what it excludes

**Status:** Accepted, 2026-09-25
**Applies to:** `src/cli.py` (the `calibration-report` console block, the table
built at `cli.py:3583` and the notes printed after it);
`tests/unit/` for the console output

## Context

Measured on the `calibration-report` run of 2026-09-25, over 303 stored runs.

The console prints one row per category:

```
│ root     │ 1.00 (77/77)  │ 1.00          │ 1.00          │ 1.00      │ 6 │ 4 │ 9  │ 2 │
│ ssl      │ 1.00 (10/10)  │ 1.00          │ 1.00          │ 1.00      │ 4 │ 4 │ 11 │ 0 │
```

The same run's markdown report (`outputs/reports/calibration/20260925T164335Z.md`)
publishes the whole Tier-1 breakdown:

```
| Category | Confirmed | Not Confirmed | Unverified | N/A (not predicted) | Confirmation Rate |
| root | 77 | 0 | 118 | 108 | 1.00 |
| ssl  | 10 |  0 |  87 | 206 | 1.00 |
```

Both were recomputed here from the corpus independently of the rendering path -
raw `sqlite3` over the 303 `runs` rows, classified through the project's own
`calibration.outcomes.classify_tier1` via `calibration.report._field_names` - and
reproduce `77/0/118/108` and `10/0/87/206` exactly. The numbers are not stale and
not wrong; what is wrong is what the console does with them.

`cli.py:3591` prints the rate as `confirmed / (confirmed + not_confirmed)`. That
denominator is correct **for the question it answers**, and the markdown states
that question above its table ("Among runs where a category was predicted detected
AND dynamic verification actually ran…"). The console states no such thing and
shows no excluded mass, so the one number a reader takes away is `1.00`:

- **root**: 118 of the 195 predicted runs were `unverified` - 60% of the
  dynamic stage's opportunities produced no verdict at all.
- **ssl**: 87 of 97 predicted runs - 90%.

A reader who sees `1.00 (77/77)` concludes the bypass machinery essentially always
confirms. The measured picture is that it confirms every time it reaches a
verdict, and reaches one roughly 40% (root) / 10% (ssl) of the time. Those are
different findings, and only the first is on the console.

The asymmetry is visible inside the console's own table. Tier-2's exclusions get
three columns - `Excl no-GT`, `Excl partial`, `Excl known-miss` - and a printed
paragraph for the known misses. Tier-1's exclusions get nothing, on the same
table, one column to the left. `classify_tier1` returns **four** states
(`CONFIRMED`, `NOT_CONFIRMED`, `UNVERIFIED`, `NOT_APPLICABLE`); the console renders
two of them.

That third state is the one this project's principle 2 and ADR-0006 exist to
protect: an inconclusive result must never be blended into, or dropped from sight
of, a confident one. The markdown already refuses to blend it - so the console is
the single surface where the pipeline's own `unverified` mass disappears. This
project has fixed this exact shape before, when the TN=0 caveat existed only in
the markdown (`calibration-console-caveat-parity`).

## Decision

1. **The console names the denominator and the excluded states.** A line after the
   table, in the same paragraph style as the existing known-miss note, states per
   category: confirmed, not confirmed, unverified, and not-predicted, and says the
   rate is over conclusive attempts only. The markdown's own sentence is the
   template; the console quotes the same definition rather than paraphrasing it.

2. **The rate cell is not reshaped.** `1.00 (77/77)` is honest arithmetic over a
   denominator once the denominator is named, and the parenthesis already shows
   that denominator. The defect is the missing definition, not the fraction - so
   the fix adds the missing fact instead of rewriting a correct one.

3. **A note, not a tenth column.** The table is already nine columns wide; a
   fifth state column would push it past what a terminal renders legibly, and the
   existing console pattern for exactly this kind of qualification is a paragraph
   under the table (the known-miss note). If a future surface needs the counts
   machine-readably, it should read them from the markdown or the report object,
   not from a widened console table.

4. **Rendering only.** No calibration arithmetic, exclusion rule, ground-truth
   join, or Tier-2 weighting changes. The counts verified above are the counts the
   console will print.

5. **The four states are named, not counted generically.** The note enumerates the
   states `classify_tier1` can return, because "excluded" is not one state: a
   `NOT_APPLICABLE` run was never an opportunity for the dynamic stage, while an
   `UNVERIFIED` one was an opportunity that produced nothing. Collapsing them into
   a single "excluded" figure would hide the very number that changes the reading.

## Consequences

- A console reader can no longer take `1.00` as the dynamic stage's success rate;
  the same run now says, in the same view, that 118 root and 87 SSL attempts
  reached no verdict.
- The bound, stated rather than implied: the note enumerates four states by name,
  so a fifth added to `Tier1Outcome` would make it incomplete, and the test pins
  the four names rather than asserting a total. Whoever adds a state owns this
  line - the ADR-0030 bound, one surface over.
- The markdown is unchanged: it already published all four states, and this ADR
  brings the console up to it rather than the reverse. Parity direction matters
  here because the console is the surface a run is actually read on.
