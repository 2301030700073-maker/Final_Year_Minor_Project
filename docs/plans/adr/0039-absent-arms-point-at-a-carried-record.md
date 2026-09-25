# ADR-0039: the absent-evidence arms point at a record the bundle actually carries

**Status:** Accepted, 2026-09-25
**Applies to:** `scripts/collect_verification_bundle.py` (`ShippedEvidence`,
`write_summary`, `main`); `tests/unit/`

## Context

ADR-0037 decision 3 states the rule this ADR enforces:

> **The not-shipped line asserts no cause.** The collector knows only that it
> copied nothing; the reason was printed to its own console, which is not
> shipped. So the line states the absence and points at the evidence that can
> explain it, rather than inventing a reason it did not measure.

The implementation does not hold to it, in two reachable branches.

**What `cli_output.txt` is.** Written at `:437-439` from
`pipeline_result["stdout"] + "\n" + pipeline_result["stderr"]` - the *pipeline's*
console, and nothing else. The collector's own branch notes (`:473`, `:475`,
`:496`) are `print()` calls in the collector's process; a grep of the whole file
for `redirect_stdout`, `tee`, `sys.stdout`, `collector_output` or `notes`
returns no mechanism that captures them into the bundle. So when the *collector*
is the cause of an absence, the SUMMARY points at a file that records a
successful run and says nothing about the absence.

**Reachable branches where the collector is the cause:**

| arm | sentence | branch |
|---|---|---|
| report absent | "`cli_output.txt` carries the pipeline's own account of why" | `_extract_run_id` returns `None` on a run that otherwise succeeded (`:475`) - the parse is anchored on the pipeline's printed `Report: …` line and fails closed if that format changes |
| report absent | same sentence | `_extract_run_id` matched but `_find_fresh_report` found no `*/<run_id>.md` (`:473`) |
| analysis absent | "`cli_output.txt` shows where the run **stopped** before producing them" | `fresh_run_id is None` on a successful run, so `apk_hash = _sha256_of(Path(args.apk))` (`:490`) - the *raw input's* hash |

The last row is the sharpest: for a normalized input (`.aab`/`.apks`) the
analysis dir is keyed to the **converted** apk's hash, so the raw hash points at
a directory that never existed while the run itself completed. The arm then
asserts a stop that did not happen. This is the exact hazard the comment at
`:446-454` documents - it was fixed for the report lookup and left standing for
the analysis lookup, one artefact over, and the console note at `:496` compounds
it by naming a cause ("ingest may have failed") the collector never observed.

**Status: latent.** No bundle in the corpus has rendered either arm - ADR-0037
established that every pipeline bundle so far shipped its report and its tree.
This is therefore provable by construction and by test, not by a corpus
instance, exactly as ADR-0037 was.

## Decision

1. **The collector records its own branch reasons, and the summary carries
   them.** `main` appends one note per branch taken; `write_summary` renders a
   `## Collector notes` section. The arms point at *that* section, which is in
   the artefact being read - so the pointer cannot point at something that
   records a different story.

2. **`ShippedEvidence` gains `notes: tuple[str, ...] = ()`.** ADR-0037 #4 chose
   this shape so the next thing the bundle learns to carry adds a field rather
   than a sixth parameter; this is the first use of it.

3. **A note states an observation and the decision, never an unmeasured cause.**
   `:496`'s "ingest may have failed before producing it" is replaced by the
   observation plus *which hash basis was used*, because that is precisely where
   the normalized-input hazard bites: "expected `outputs/analysis/<hash>` from
   this run but it does not exist (sha256 of <apk> - no report was found to key
   it)".

4. **The notes name paths relative to the repo root.** They are rendered into a
   SUMMARY that is committed and pushed; the console note it replaces could
   safely print an absolute path, this one cannot. The operator's home directory
   does not belong in a pushed artefact.

5. **`cli_output.txt` is still named, without the claim.** It is the pipeline's
   full console and worth reading; what it must stop doing is carrying the
   assertion that it explains the absence.

6. **An arm that renders with no notes says so.** Rather than dangling silently,
   the arm renders a second text naming that state as a collector defect and
   pointing at the console that ran it - which is where the reason really is.
   A missing note then reads as a bug, not as an empty explanation.

7. **No change to which branches copy what**, and none to the console: the notes
   print with their existing `  (note: …` prefix.

## Consequences

- In every branch that renders an absent-evidence arm, the collector took a
  branch that appended a note, so the pointer resolves. The one way to break
  that is a future branch that copies nothing and records no note - which
  decision 6 makes visible in the artefact instead of silent.
- The absent arms are now testable as claims about *the same document* they
  appear in: `write_summary` can be asserted to render the pointer and the
  target together, with no filesystem fixture standing in for the bundle.
- Bound, stated rather than implied: notes are per-invocation and short (0-3
  lines). If a future branch needs to record something longer than a line, the
  record belongs in a shipped file, not in the summary - the summary is the
  index, and this ADR keeps it that way.
- The class, third time in this family and the same failure direction as ADR-0036
  and ADR-0037: a sentence written to be *helpful* names a cause or a location
  the writing code never checked. The guard that now exists for all three is the
  same: derive the sentence from the value the deciding code produced.
