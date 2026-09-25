# ADR-0036: the bundle ships the calibration markdown, not only its console summary

**Status:** Accepted, 2026-09-25
**Applies to:** `scripts/collect_verification_bundle.py` (`ship_calibration_markdown`,
`write_summary`, `main`); `CONTRIBUTING.md` (the handoff loop); `tests/unit/`

## Context

`collect_verification_bundle.py` ships exactly one calibration artefact:
`calibration_report_output.txt`, which is the captured stdout/stderr of
`uv run python -m cli calibration-report` (`run_calibration_report`, lines
193-199). The SUMMARY's line about it reads:

```
- Report: `calibration_report_output.txt` (console summary) - full markdown also written locally under outputs/reports/calibration/
```

That sentence is true. It is also the whole problem: the word "locally" is doing
the work, and locally means *not in the evidence*.

- The markdown is written by `cli.py:3762` (`generate_calibration_report`) and
  its path printed at `cli.py:3765`.
- `outputs/` is gitignored (`.gitignore:13`), and `git ls-files
  outputs/reports/calibration/` is **empty** - no calibration markdown has ever
  been committed, across the corpus of runs this project has accumulated.
- `CONTRIBUTING.md:83` permits committing `outputs/` directly, but that is a
  permission, not a mechanism: nothing in the handoff loop requires it, and in
  practice it has not happened for this file.

The curve - its sample definition (ADR-0034), its threshold-edge markers
(ADR-0033), its exclusion accounting, its sample-size warning - exists **only**
in that markdown. ADR-0033 #5 and ADR-0034 #4 both recorded "markdown only, the
console renders no curve" as the *reason* no console parity fix was needed. That
was correct as a statement about the console. It was never checked against the
other surface that matters: the bundle, where the console text is the only
calibration evidence that travels.

The result is that the three most recent ADRs in this repo certified a section a
reviewer cannot see. A reviewer verifying FR-9.2 from the pushed bundle gets the
Tier-1/Tier-2 tables and their caveats, and no curve at all.

This is CONTRIBUTING's own rule read back: step 3 tells the primary developer to
analyze *"the actual pushed evidence (reports, run JSON, decompiled source, logs
- not a summary of a summary)"*. For calibration, the bundle currently ships the
summary and keeps the raw artefact.

Precedent for the fix is already in this file: the pipeline block copies **this
invocation's own** report, locating it authoritatively by the run id parsed from
the pipeline's own output, and refuses to ship stale prior reports - the
Finding H note ("shipping historical reports with no marker invites a reviewer to
mistake a stale one for this invocation's result. If the run produced no report
... ship none - an absent report is honest; a stale one is not.").

## Decision

1. **The collector copies the markdown the command reports having written.** The
   path is parsed from the command's own console line (`Calibration report:
   <path>`) - the calibration analogue of `_extract_run_id`. It is **not**
   "the newest file in the calibration directory": that heuristic ships a stale
   prior run's markdown whenever this invocation fails to produce one, which is
   the Finding H trap one artefact over.

2. **One helper owns parse, validate and copy.**
   `ship_calibration_markdown(bundle_dir, stdout) -> str | None` returns the
   bundle-relative path it shipped, or `None`. Because the parser and the copier
   are the same unit, the class of defect this ADR is about - a parser that is
   tested while the consumed signal is not - cannot open between them
   (`unit-tested-parser-neq-consumed-signal`).

3. **The SUMMARY states what travelled.** When the markdown shipped, the line
   names it and says the curve is there; when it did not, the line says no
   markdown was shipped - it does not repeat the "written locally" phrasing,
   which in that case would be the only remaining description of a file the
   reader cannot reach.

4. **Two failure modes ship nothing and print a note**: the command's output
   carried no report path, or it named a path that does not exist. Both are the
   honest-absence case, matching the pipeline block's behaviour.

5. **The console command is unchanged.** This changes what the *bundle* carries,
   not what a human sees at the terminal; the console remains the first-read
   surface (ADR-0032).

## Consequences

- The pushed bundle now carries the section this session spent three ADRs on, so
  the claim "calibration was measured" is checkable from the artefact the handoff
  protocol admits as evidence, without a second round trip.
- Cost, measured: the newest markdown is 7,208 bytes, against the 272 KB of
  `calibration_runs_snapshot.json` the bundle at `3ee360bce` already carries. The
  evidence-integrity argument is not in tension with bundle size.
- The bound, stated rather than implied: this ships the markdown for *this
  invocation's* run, located by the command's own printed path. If the console
  line's format changes, the parse fails closed - nothing ships and the note is
  printed - rather than silently shipping the wrong file. Whoever changes that
  print statement owns this parse.
- `CONTRIBUTING.md`'s handoff loop gains a line recording that the bundle carries
  the calibration markdown, since that document is the canonical source for what
  a bundle contains (`CLAUDE.md`).
