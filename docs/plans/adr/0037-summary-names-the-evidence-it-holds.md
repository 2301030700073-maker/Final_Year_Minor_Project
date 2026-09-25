# ADR-0037: the summary names the evidence the bundle holds, not a pattern it hopes was filled

**Status:** Accepted, 2026-09-25
**Applies to:** `scripts/collect_verification_bundle.py` (`ShippedEvidence`,
`write_summary`, `main`); `tests/unit/`

## Context

`write_summary`'s pipeline section ends with two pointer lines
(`scripts/collect_verification_bundle.py:366-367`):

```python
lines.append("- Copied reports (if any): `reports/<apk_hash>/`")
lines.append("- Full decompiled evidence + metadata + run results (if the run got that far): `analysis/<apk_hash>/`")
```

Both are rendered in the `else` arm - i.e. on every run that passes `--apk` -
and they carry two separate defects.

**The placeholder is literal.** `<apk_hash>` is never interpolated:
`write_summary` has no `apk_hash` parameter at all (its signature is
`bundle_dir, environment, test_result, pipeline_result, calibration_markdown`),
while `main` holds the real value from `:421` onward
(`fresh_report.parent.name`, with a `_sha256_of` fallback at `:443`). A reader of
the pushed SUMMARY is told to look in a directory whose name is a template
string, and cannot resolve it without listing the bundle first.

**The lines are unconditional; the copies are not.** There are three states, and
the summary renders one:

| what happened | where | rendered as |
|---|---|---|
| report copied | `:425-426` | "Copied reports (if any): `reports/<apk_hash>/`" |
| no run id, or no fresh report for it | `:431-434` (prints "not shipping any reports") | the same line |
| analysis dir absent | `:448-450` (prints a note) | "…(if the run got that far): `analysis/<apk_hash>/`" |

The hedges - "(if any)", "(if the run got that far)" - are the entire signal that
nothing may be there, and they name a possibility rather than a fact. A reviewer
cannot tell from the artefact whether the run produced a report, produced none,
or was never run to that stage.

**Status: latent.** No shipped bundle has yet produced the failure rendering -
every pipeline bundle on disk (the 2026-07-28 bundles, `20260728T103840Z`
onward) carries a populated `reports/` directory, because those runs succeeded.
This is therefore provable by construction and by test, not by a corpus instance
(contrast ADR-0032 and ADR-0033, both measured in real artefacts). It is taken
now because the failure rendering is exactly what a reviewer would meet on the
run that most needs reading - the one that failed.

This is ADR-0036's shape, in the same function, one artefact over: a line written
before knowing what travelled. ADR-0036 fixed it for the calibration markdown by
passing the shipped path down into `write_summary`; these two lines were left
behind, and they are the older instance.

## Decision

1. **Every claim about a copy is derived from the code that performed the copy.**
   `main` records the bundle-relative path at the moment it copies
   (`report_shipped`, `analysis_shipped`), and `write_summary` states those. A
   line can then never name a directory the copying code did not create.

2. **Three states render as three.** Shipped: the actual path, run id included,
   so the reader can open it directly. Not shipped: said plainly, with a pointer
   to `cli_output.txt` - which *is* in the bundle for any pipeline run, and which
   carries the pipeline's own account of why it produced no report or no analysis
   output. Not run: unchanged ("Not run (no --apk given to this script)").

3. **The not-shipped line asserts no cause.** The collector knows only that it
   copied nothing; the reason was printed to its own console, which is not
   shipped. So the line states the absence and points at the evidence that can
   explain it, rather than inventing a reason it did not measure
   (`catch-block-cause-not-measured`).

4. **`ShippedEvidence` groups the bundle's contents as one value.** A frozen
   dataclass (`calibration_markdown`, `report`, `analysis`, all
   `str | None`), so the next artefact the bundle learns to carry adds a field
   rather than a seventh parameter. This is the third time this function has
   grown a "what travelled" argument; the shape it is converging on is worth
   naming before the fourth.

5. **No change to what is copied.** The copy sites, their conditions, the
   Finding H refusal to ship stale reports, and the fallback hash for the
   analysis directory all behave exactly as before. This corrects what the
   summary says about them.

## Consequences

- A reviewer can open this run's report from the summary alone, without listing
  the bundle to discover the hash - the round trip ADR-0036 removed for the
  calibration markdown, removed for the report.
- Bound, stated rather than implied: the paths are set by the copying code. If a
  future branch copies an artefact without recording it in `ShippedEvidence`, the
  summary will under-claim ("none shipped" while the file is present). That
  failure direction is chosen deliberately - an under-claim sends a reviewer to
  the bundle's contents, while an over-claim (today's direction) sends them to a
  directory that is not there.
- The three states are now unit-testable without a real pipeline run: each is a
  `ShippedEvidence` value, not a filesystem accident.
