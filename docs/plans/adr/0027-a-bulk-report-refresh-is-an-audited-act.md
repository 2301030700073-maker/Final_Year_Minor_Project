# ADR-0027: a bulk report refresh is an audited act

**Status:** Accepted, 2026-09-24
**Applies to:** `src/cli.py` (a new command), `src/audit/` (a new record type)

## Context

A stored run has two artefacts that can drift apart: the row in `results.db`
(the record) and the `.md` under `outputs/reports/<sha>/` (what a reader sees).
Much of this project's history is a fix to one side leaving the other stale -
F2 (a changed attribution left the report reading as app-implemented), REGEN-
FIELDLOSS1 (regeneration dropping fields), DYN-SKIPSTATUS1 (a report rendering a
stage that never ran). The direction of repair is always the same: the record is
authoritative, the report is re-rendered from it.

The corpus has reached the point where that repair is needed at scale, and the
measurement is unambiguous: of **289 stored runs, 289 have a report on disk**
(verified 2026-09-24 - zero missing), and **264 of them were rendered before
ADR-0022** and therefore say nothing at all about the rule corpus they ran
against. Not "not recorded" - no line, because the renderer of their day had no
such line. Every run from here on carries it.

There is no command that can do this. `re-attribute` regenerates only the rows it
*changes*, which is correct for a backfill and useless for a refresh. And the
alternative - a one-off script driven from a shell - writes consumer-visible
state outside the run flow with no authorization and no audit record, which is
what Principle 7 (ADR-0005) exists to forbid. The act is small; the reason it
must be a command and not a script is that it is exactly the class of act the
audit trail is for.

It is also **not information-neutral**, which the spec has to face rather than
assume. Preparing this ADR found **3 stored rows whose `coverage_causes` column
is NULL while their reports still carry ~5 cause sections each** - sections the
live run rendered from memory, before that column was persisted. Regenerating
them cannot reproduce those sections, and the DB holds no copy to restore from.
That is now refused loudly (REGEN-FIELDLOSS2, commit `872c20c2e`), which is why
the command below needs to distinguish a refusal from a failure.

## Decision

**1. A `regen-reports` command owns bulk report refresh.** It re-renders stored
reports from their rows and nothing else. `re-attribute` keeps its current
behaviour (regenerate what it changed).

**2. It is gated and audited exactly as `re-attribute` is.** Same
`--operator`/`--justification` requirement, same refusal of an unverifiable
operator before any write, and its own audit record type carrying the counts,
the rendering commit and the affected run ids. Running it *is* a traceable act
even when it changes nothing, for the same reason running a backfill is.

**3. A per-row failure is recorded and the run continues.** One unrenderable row
must not abort the other 263. The summary separates **regenerated**,
**refused** (the REGEN-FIELDLOSS2 guard) and **failed** (an exception), because
collapsing them would render a row that cannot be repaired as one that merely
errored. The refusal raises a distinct `RegenerationRefused`, so that split is
structural rather than decided by matching a row's own error text - a category
inferred from a string is one refactor away from silently collapsing into
`failed`.

**4. `--dry-run` writes no report file.** It renders into a temporary tree,
reports the same three categories, and deletes the tree. A bulk rewrite of
hundreds of consumer-facing files should be previewable with the real renderer
rather than described in prose - this ADR's own numbers came from exactly such a
run, and reconstructing it by hand is not something a second person should have
to repeat. It is still **recorded** (decision 2): a preview is a real act by a
real operator against real stored state, and the record's `dry_run` flag is what
keeps it distinguishable from a rewrite.

Making the preview honest required splitting the regeneration root in two:
`out_root` is where the render is written, `source_root` is where the report
already on disk is read from. With a single root the REGEN-FIELDLOSS2 guard would
inspect the empty temporary tree, find no report, and report **zero refusals** -
a preview confidently wrong about the one category it exists to surface.

**5. `--missing-corpus` restricts the sweep to rows whose recorded corpus is
None.** The default is every row; the flag is the common case, and it is a filter
on the record, never a re-derivation of anything.

**6. Regeneration re-derives nothing.** The corpus comes from the row (ADR-0022)
and the level/rule pair comes from the row (ADR-0026). The `Analysis code:` line
becomes the **rendering** commit, because that is the code that produced the
file - the same rule `_regenerate_report` already follows.

## Consequences

- After a refresh, the 264 reports state the corpus field explicitly, in the
  same "not recorded for this run - it predates ADR-0022" form every other
  corpus-less surface uses.
- **The trade, stated plainly:** a regenerated report is no longer the artefact
  the original run produced. Its `Generated:` timestamp and `Analysis code:` line
  become today's, and its body text becomes today's wording - measured at ~750
  changed lines per report across the methodology paragraph and coverage tables.
  What it gains is agreement with its own row and a legible corpus field. An
  operator who wants the original artefacts preserved should not run this, and
  that is a legitimate choice, not a mistake.
- The 3 unreproducible rows stay exactly as they are, and the command says so by
  name rather than skipping them.

## What is still not covered

**Backfilling `coverage_causes` for those 3 rows.** The only surviving copy of
their cause sections is the prose in their own reports. Reading facts back out of
rendered markdown would put a guess in a column the whole coverage-bound
machinery trusts, so it is deliberately not attempted here. Until someone decides
otherwise, those reports are their own record - which is the honest state, and
the guard makes it a permanent, visible one rather than a silent drift.

**No stored value is ever re-derived by this command** - not the corpus, not the
classification, not the coverage map. The direction of repair is one-way: the
report is rebuilt from the record, never the reverse.
