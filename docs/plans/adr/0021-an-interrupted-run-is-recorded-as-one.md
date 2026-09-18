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
completes, carrying the stage's name, status and duration. It is finalized as soon
as the run reaches an outcome - `state: "finished"` when its completion reached
the log, `ended_unaudited` when that write failed - and records the report path. A
sidecar left in `started` is therefore the record of a run that
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
- A sidecar is not authoritative for whether a run finished - the audit log is -
  and its states are not verdicts either. Finalization happens as soon as the run
  reaches an outcome, ahead of the branches that exit non-zero, so three endings
  stay distinct: `started` for a run that died mid-stage, `finished` for a
  complete run whose `runs` row may be missing, and `ended_unaudited` for a run
  that ended on purpose yet stands as an orphan in the log. The join takes
  orphanhood from the log and uses the sidecar only for the stage and the ending.
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

### What the tests pin

`40a4340e2` fixed the same defect class in the sweep harness that drove the
Netflix run: it printed each target's exit status to stdout and kept nothing
durable, so the wrapper's death took the account of the sweep with it. It now
journals each target before it launches and names how it died (rc, signal,
timeout, or `no_report`), which is the harness half of the same rule.

The implementation is `60ead000f`; the surface tests and this record follow it.

- **The record's states are pinned by tests, not by the run that raised the
  question.** Eleven tests in `tests/unit/test_run_status.py` cover identity at
  start, a stage appended from both producer shapes (the live path hands
  `StageResult` objects, the regeneration path hands dicts), a failed stage
  keeping its reason, finalization with and without a report, the write being
  atomic and leaving no temp file, and the two collapses this module exists to
  prevent: absent-versus-unreadable, and a corrupt sidecar reading as a run that
  never started. A write failure must raise rather than go silent - that failure
  is the condition that loses the trace.
- **The surface is pinned where the defect was.** Eleven tests in
  `tests/unit/test_uncompleted_run_surface.py` cover the pairing carrying
  identity rather than bare ids, a completed run not being reported as an orphan,
  both `verify_audit_log` return sites carrying the same keys, the note naming
  the APK and last stage, `no sidecar` and `sidecar unreadable` staying distinct,
  and `_print_stage` recording through the choke point while printing a caution
  instead of raising when the sidecar cannot be written. The load-bearing one is
  `test_the_command_reports_orphans_before_exiting_on_chain_errors`: it builds a
  genuinely broken chain (a flipped `prev_hash`, the same class of break the
  authoritative log carries at line 185) and requires the note to print *and*
  the exit code to stay 1. That is the original defect stated as an assertion -
  it fails against the code before this change.

### The end-to-end record

Netflix, run `86074f6762cc468bacf42ced4d5e7059` (2026-09-18T03:53:39Z). This run
was meant to show the record surviving a signal nothing can catch. **It does not
show that, and as first written this section claimed it did.** The kill never
landed: `pid 17977` was still alive 26 minutes later, its own process group and
session, and had recorded six stages by then - audit, decompile,
signature_load:root, signature_load:ssl, `static_scan` (851,677 ms by itself) and
manifest_parse - before carrying on into the native scan. The snapshot read 110 s
in was a run mid-flight, not a death.

What the run does establish, and what the change exists for:

- **Progress is recorded as the run proceeds**, which is the claim that survives.
  While the process was still working, the sidecar on disk carried its identity
  (`run_id`, `apk_hash`, `package_name`, `operator`, `justification`,
  `git_commit`) and each completed stage with its duration - a 14-minute
  `static_scan` is on disk as a finished stage, which no console line could name.
  The original Netflix run left a log line and nothing else.
- **`verify-audit-log` reached the run** as an authorization with no completion,
  on the same invocation that printed `Audit log integrity FAILED` for the known
  line-185 fork. That is the reachability fix, and it holds whether or not the run
  was dead.

And what the snapshot exposed, which the first version of this ADR missed:
**`state: "started"` does not mean the run died.** A live run reads `started`
too, and this one proved it by staying alive for half an hour under a snapshot
that had been read as an interruption. The premise above - "a sidecar left in
`started` is therefore the record of a run that reached a named stage and did not
reach the next one" - is false for every run still in flight, and the surface
built on it counts an in-flight run among those that "never completed". The
correction this record owes is a liveness probe: the sidecar records the host and
the process that owns it, and the note asks whether that process is still alive
before it says a run ended. Where the host is not the one asking, the answer is
unknown - never dead.

`f81836c9c` is that correction. The sidecar now writes `host`, `pid` and the
kernel's start time for that pid - the start time is what keeps "alive" from
becoming a fact about whatever process inherits the pid later - and `run_is_alive`
answers True, False or None, where None covers a sidecar written on another host,
one from before the field existed, and a platform exposing no `/proc`. The note
says `IN FLIGHT` for the first, `ended with its process gone` for the second, and
`liveness not established` for the third. Its heading no longer says these runs
"never completed": what the log holds is that they have no completion in it, which
is also true of a run still in flight. Five tests pin the reader's answers and
three the note's wording.

### The ending that exits non-zero

The implementation as first committed got this wrong; `6a17d9f4a` corrects it, and
the correction is recorded here rather than quietly folded in. `_finalize_run`
finalized the sidecar *after* its two branches that exit non-zero, so a run whose
audit completion failed - precisely the run the log reports as an orphan - left
`started` on disk while the process was still alive and its outcome was known.
That is a false interruption claim, and it contradicts this ADR's own authority
rule: the log says "ended without a completion", the sidecar said "still running".
The store's rule that an absence claim needs the probe that saw it (ADR-0017) has
a sibling here - a sidecar claiming a run never reached its end needs the run to
have actually not reached one.

Two endings were collapsed into one, and they are not the same fact: a run whose
completion write failed ended deliberately and is an orphan, while a run that
completed and was audited but whose `save_run` failed is complete and merely
absent from the `runs` table. The sidecar now states which happened
(`ended_unaudited` / `finished`) and records why (`audit_error` / `save_error`), so
a reader holding only that file knows which end-record is missing rather than
having to infer it from a state that named neither.

Five tests pin it. Two state-level tests in `test_run_status.py` (an unaudited
ending is not `finished`; a save error is recorded against a completed run), one
on the note's wording in `test_uncompleted_run_surface.py` - matched against the
flattened console text, because the message wraps at the console width and a
phrase-spanning assertion passes or fails on where the break lands - and two that
call `_finalize_run` with a failing completion and with a failing save, asserting
the sidecar on disk is finalized on both paths. Those last two fail against the
pre-fix ordering by construction: the file would still read `started`.

### What is and is not established

Established: an interrupted run is on disk with the stage it reached and did not
pass; the orphan surface prints where it can be seen, on both the valid and the
failed path; the pairing carries the identity an auditor needs; and the DB
deliberately holds no partial verdict row.

Not established by this record: the **ingest window**. The sidecar's identity
needs the package name ingest computes, so the recorder starts after ingest - a
run killed during ingest still leaves only its `apks` row and its authorization,
and this ADR does not claim otherwise. Ingest is bounded and precedes every heavy
stage, which is why the boundary was drawn there. Also not established: the cause
of the original Netflix death, which no record can settle after the fact - the
demonstration run above was killed deliberately, and it establishes what an
interrupted run now leaves, not why the first one died.

