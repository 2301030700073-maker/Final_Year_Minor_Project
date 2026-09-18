# 0021. An interrupted run is on record as one, and names where it stopped

Status: Accepted
Date: 2026-09-18
Relates to: ADR-0005 (every run is authorized and audited - the audit log is the
traceability loop's source of truth), ADR-0013 (a launch is verified by its
effect, not by having been issued), ADR-0017 (a verdict carries the observation
it rests on), ADR-0020 (a dynamic confirmation names its instrumentation)

## Context

On 2026-09-17 a sweep run of Netflix (`com.netflix.mediaclient`, 226 MB, 64 native
libraries across 4 ABIs) stopped after `OK manifest_parse` and never came back.
The python process was gone, the sweep wrapper was gone with it, and the record
it left was: an `apks` row from ingest, a 924 MB analysis directory, and a
per-target log whose last line is `OK manifest_parse  (1ms)`. No `runs` row. No
report. No error.

That much is a report of a death. The question this ADR answers is what the
platform's own records said about it, and the answer is less bad than it first
looked and worse than it should be.

**The run IS on record, and has been for every such run.** `run_id` is minted at
`cli.py:1330` and the authorization is written to the immutable audit log right
after ingest, long before the heavy stages; the completion is written only at the
end. So an interrupted run leaves an authorization with no completion, and
`verify_audit_log` already pairs them semantically (`attestation.py:528-535`)
into `uncompleted_runs`. Read back from this repository's log rather than inferred
from the source: **32 such runs**, from `2026-08-13T16:44:11Z` to Netflix's
`2026-09-17T02:59:12Z` (`run_id 5142108c…`, `apk_hash b8965fec…`), against exactly
246 completions - the 246 rows in `runs`. The two surfaces are complementary and
between them account for every authorized run.

What the record does not hold is anything that makes a dangling authorization
readable as a run:

- **The CLI cannot reach it.** `verify-audit-log` exits on `result["errors"]`
  before printing the uncompleted note (`cli.py:3517-3534`). This log carries the
  known line-185 fork (2026-08-17, since fixed; the log is never rewritten), so on
  the authoritative log the note is unreachable and the 32 orphans are invisible
  from the command line. Chain integrity and run-history incompleteness are
  independent facts collapsed into one exit path.
- **It names no place.** A dangling authorization carries what the authorization
  knew at ingest - `apk_hash`, `action`, `justification`, `operator`. It cannot
  distinguish "killed during the native scan" from "Ctrl-C at ingest" from a crash
  inside the dynamic stage. Netflix's last stage was knowable: the console printed
  it, and the operator's log file still shows it that day. Nothing durable did.
- **Nothing joins the surfaces.** The DB has completions; the audit log has
  authorizations; the analysis directory has artefacts. No reader presents them
  together, so 32 interrupted runs accumulated across five weeks without ever
  being surfaced as a fact about the corpus.

The counter-argument is that a killed process cannot write anything, so no
in-process record can be demanded of it. That is true of the *final* record and
false of the *progress* record: a stage completed one second before the kill is
known to the process, and writing it down costs one small file write. The gap is
not that the death was unrecordable; it is that everything was recorded at the
end.

## Decision

Three parts.

**1. A run records its progress on disk as it proceeds, not only at the end.** A
run-status sidecar (`outputs/analysis/<hash>/run_status.json`) is written when the
run starts - `run_id`, `apk_hash`, package, target, operator, justification,
`git_commit`, `started_at`, `state: "started"` - and rewritten as each stage
completes, carrying the stage's name, status and duration. It is finalized
(`state: "finished"`, report path) after the run is saved and its completion
audited. A sidecar left in `started` is therefore the record of a run that
reached a named stage and did not reach the next one, and it survives a SIGKILL
that could not run a handler, a `finally`, or a trap.

**2. The join is readable at the command line, and a broken chain cannot hide
it.** `verify-audit-log` reports each uncompleted run with the identity the audit
log holds and the last stage the sidecar names, and it prints that note *before*
exiting on chain errors, because the note is derived from the parsed log whether
or not the chain verifies. Orphaned authorizations are named individually, never
summarized as a count.

**3. `runs` gains no partial row.** The table's columns are verdict fields -
action, confidences, coverage, classification, verification. A run that died
before deciding has no verdict, and a row asserting one that was never reached is
a fabricated finding, not a record of incompleteness. The authoritative record of
an unfinished run stays the dangling authorization in the audit log; the sidecar
supplies the where; the DB stays a table of completed verdicts.

## Consequences

- "Never ran" and "died at the native scan" stop being indistinguishable. The
  distinction costs one file write per stage.
- The 32 existing orphans are surfaced by the command that already computes them,
  and by the identity the audit log already holds - no backfill, no log rewrite.
- A sidecar is not authoritative for whether a run finished. Finalization happens
  last, so a run that dies between `save_run` and the finalize would leave a
  sidecar reading `started` for a run the audit log shows as completed. The join
  takes orphanhood from the audit log and uses the sidecar only for the stage, so
  that window can never manufacture a phantom interrupted run.
- A sidecar write that fails (a full disk) must not silently lose the trace: it
  prints a red caution and the run continues. Halting a 40-minute analysis over a
  telemetry write is the wrong trade, but silence is not an option either.
- The sidecar is per-APK, like `decompile_status.json`, so a re-run of the same
  APK overwrites it. The audit log is the history; the sidecar is the current
  state of the latest attempt.

## Rejected alternatives

- **Write a partial row into `runs` at the start and merge the verdict at the
  end.** It makes an unfinished run a first-class row, at the cost of putting
  never-reached values into verdict columns and of every consumer - calibration,
  regeneration, the attribution paths - having to learn to skip rows that are not
  verdicts. `load_runs_for_calibration` would silently drop them, and a silently
  dropped run is the failure mode this project has a rule about. The audit log
  already carries the fact cleanly; the DB does not need a second, dirtier copy.
- **Reconstruct the last stage from the analysis directory** (which `.so` files
  were extracted, whether `xref.sqlite` exists). That infers a stage boundary from
  side effects whose presence depends on the stage's internals, and it reports a
  guess as a record. A stage that extracts nothing writes the same directory as a
  stage that never ran.
- **Record progress in the audit log.** It is hash-chained, immutable by design,
  and one entry per stage would multiply a 783-entry log by a factor of ten for
  telemetry that is not an authorization decision. The chain's meaning is
  "authorized, then completed"; stage progress is not a party to that.
- **Delete the sidecar on success.** Then its absence means both "finished" and
  "never started", which is the conflation this ADR exists to remove.
- **Treat the missing `runs` row as the signal** (a reader notices an `apks` row
  with no run row). It requires the reader to already suspect the answer, it
  cannot distinguish a run that never started, and it says nothing about where the
  run stopped.

## Verification

The empirical claims above are read from this repository, not inferred: 32
uncompleted run IDs and 246 completions from `verify_audit_log("outputs/
audit_log.jsonl")`; Netflix's authorization (`5142108c…`, `b8965fec…`,
`2026-09-17T02:59:12.226232+00:00`) among them; zero `runs` rows for
`apk_hash b8965fec…`; the single verification error being the known line-185 fork
of 2026-08-17.

What this ADR does not establish: **why** the Netflix process died. It left no
exception, which rules out a Python-level failure inside a `_wrap_stage` (every
`Exception` is caught there and printed as `FAILED`), and no handler can run under
SIGKILL - consistent with the kernel OOM killer on a `memory=12GB, swap=0`
WSL2 box, whose `dmesg` here carries boot messages only. Consistent is not
established, and the fix above is correct either way, which is why it does not
depend on the answer.

The remaining sections (what the tests pin) are recorded once the code lands.
