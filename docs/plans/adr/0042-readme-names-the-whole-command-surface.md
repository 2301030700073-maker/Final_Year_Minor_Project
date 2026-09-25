# ADR-0042: README names the whole command surface it claims to close

**Status:** Accepted, 2026-09-25
**Applies to:** `README.md` (the "Other commands" section)

## Context

`README.md:311` opens the maintenance section with a completeness claim:

> Two maintenance commands round out the CLI (`src/cli.py`):

and lists `verify-audit-log` and `re-attribute`. The parenthetical cites
`src/cli.py` as the authority; measured against it, that authority registers
**six** commands:

```
run  calibration-report  re-attribute  verify-audit-log  verify-device  regen-reports
```

README names five of them (`run`, `calibration-report`, `verify-device`,
`verify-audit-log`, `re-attribute` - the last two here, the other three earlier
in the document). **`regen-reports` appears zero times in `README.md` and zero
times in `CONTRIBUTING.md`.** A whole-document grep for `regen` returns no hit;
across `docs/`, the only non-bundle references are ADR-0027 (which introduced it)
and the audit ledger's line for `cli.py` - both of which a user setting up the
project is not reading.

So the sentence is not merely an incomplete list; it asserts that two commands
*complete* the CLI, and the command it omits is the one with the largest blast
radius: `regen-reports` rewrites stored, consumer-visible report files in bulk
(`cli.py:4482-4500`). It carries a required `--justification` on the same M3
gate as a run - its own help text says "this rewrites consumer-visible reports
and must be as traceable as the runs that produced them" - plus `--dry-run` and
`--missing-corpus`. ADR-0027's decision 1 makes it a command rather than a
one-off script *precisely because* it is the class of act Principle 7 exists to
put on the audit trail; the surface that act was made discoverable on does not
name it.

**What the omission costs.** `regen-reports` and `re-attribute` look
interchangeable from README's `re-attribute` bullet alone, and the command's own
docstring (`:4484-4486`) says they are not: `re-attribute` regenerates only the
rows it **changes**, "which is correct for a backfill and useless for a
refresh". A reader who needs a refresh has README's `re-attribute --force` as
their only visible lever, and that lever does not do the job.

This is the ADR-0040 defect again, one axis over: 0040 was a document naming
evidence that never travels; this is a document asserting a closure over a
surface it does not enumerate. Both are a durable artefact stating a fact whose
deciding rule lives in another file - there `git`/policy A1, here the
`@app.command` registrations in `cli.py` - and neither artefact consulted it.

## Decision

1. **The section stops claiming closure and states the count the code makes
   true.** "Two maintenance commands round out the CLI" becomes an enumeration of
   the three maintenance commands `src/cli.py` actually registers. A sentence
   that has to be re-derived when the surface changes is the defect; a count
   with the citation attached is at least re-checkable.

2. **`regen-reports` gets its own bullet**, derived from `cli.py:4456-4500`, not
   from ADR-0027's prose: what it does (re-render stored reports from their own
   rows, in bulk), the required `--justification`, `--dry-run`, `--missing-corpus`,
   and - stated rather than left to be discovered - the trade that a regenerated
   report is **not** the artefact the original run produced (its `Generated:`
   timestamp, `Analysis code:` line and body wording become today's).

3. **The relationship to `re-attribute` is stated in both bullets.** This is the
   confusion the omission creates, and it is the one thing a reader cannot infer
   from either bullet alone: `re-attribute` backfills the rows it changes and
   never rewrites a verdict; `regen-reports` refreshes every stored row and does
   rewrite the file. Naming both without the distinction would trade a missing
   command for a wrong choice between two present ones.

4. **No code change.** Nothing about what either command does, or which rows it
   touches, changes. This corrects a document.

5. **The authoritative check is stated, not implied.** The command surface is
   whatever `grep -n '@app.command' src/cli.py` lists; the reader-facing surface
   is whatever `python -m cli <name>` occurrences README carries. Those two sets
   are compared, as they were here, by enumeration rather than by reading the
   prose that describes them.

## Consequences

- A user who reads the whole of README now knows all six commands exist, and
  knows which of the two data-mutating ones to reach for.
- The 3 registered-but-unmentioned-here state is gone; the surface is enumerable
  in one place instead of reconstructable only from `cli.py` or an ADR.
- Bound, stated rather than implied: as with ADR-0040, this enumeration is
  pinned by review, not by the suite. A test binding README to
  `@app.command` would fail on rewording and pass on a wrong claim - the wrong
  direction for a guard. The check that does work is the enumeration above, and
  it must be re-run whenever a command is added or renamed.
- Not superseded: ADR-0027's decisions about what `regen-reports` does are
  untouched. This ADR is about whether a user can find out that it exists.
