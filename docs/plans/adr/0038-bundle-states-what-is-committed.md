# ADR-0038: the bundle states which of its contents are committed, because A1 decides that

**Status:** Accepted, 2026-09-25
**Applies to:** `scripts/collect_verification_bundle.py` (the analysis copy comment,
`write_summary`); `tests/unit/`

## Context

Measured 2026-09-25, on the pipeline bundle `20260925T172339Z`.

`.gitignore:29-43` carries policy **A1**: `docs/plans/handoff/bundles/*/analysis/`
is excluded, for current *and future* bundles, because that subtree is
regenerable decompiler output duplicated once per timestamped bundle of the same
APK - recorded there as ~630k files / ~7.6 GB, "the exact repo bloat `outputs/`
is ignored to prevent, just landing under `docs/` instead". The rule ends with
an enumeration of what a pushed bundle *does* carry: "reports/, SUMMARY.md,
environment.json, pytest_output.txt, cli_output.txt, calibration_*".

Two surfaces state the opposite, and neither consults A1:

1. **The collector's reason for the copy** (`:470-472`): *"Pull in the full
   decompiled evidence (jadx sources, apktool output, metadata.json, run_*.json)
   so a mismatch between what a signature expects and what the real app contains
   can be diagnosed directly from the pushed bundle - no separate 'please paste
   the code' round trip needed."* A repo-wide grep for claims of that shape
   returns exactly one hit: this comment. The copy it justifies is real; the
   reason it gives is void, because that tree is never in a pushed bundle.

2. **ADR-0037's SUMMARY line**, written twenty minutes before this ADR: `- Decompiled
   evidence + metadata + run results: \`analysis/1da8bf57…f21\``. Verified locally
   with `find` - which is exactly the verification that cannot see a gitignore
   rule - as 38 files. Measured across all bundles: **12 local `analysis/` trees,
   67 MB / 6,099 files, 0 tracked** (`git ls-files … | grep -c /analysis/` → 0).
   The line it replaced was a literal `<apk_hash>` placeholder hedged with "(if
   the run got that far)"; that was misleading too, but unactionable, and this
   one reads as a path a reviewer will go looking for.

The class is this session's, one artefact over: a claim one artefact makes about
what another artefact will carry, where the rule that decides it lives somewhere
else and is never consulted. ADR-0037 made the summary name what the *collector*
copied; A1 decides what the *repository* keeps, and the two are not the same set.

## Decision

1. **A1 stays.** This ADR does not relitigate it. The measured 67 MB is today's
   residue for one APK across twelve bundles; A1's own figure records where that
   path leads. Un-ignoring the subtree was considered and rejected on A1's
   grounds, not on this turn's convenience.

2. **The copy stays as well.** It is the run's local record - the report and the
   decompiled context it was derived from, in one directory - and that is worth
   having regardless of what git does with it. What was wrong was the claim, not
   the copy.

3. **The SUMMARY states committed versus present.** The analysis line keeps
   naming the path, and adds that it was copied into this bundle directory and
   is deliberately **not committed**, cites the policy that decides it, lists
   what a pushed bundle carries, and names the remedy for a reviewer who needs a
   file from it: `git add -f <path>` - the move A1's own pruning note already
   contemplates.

4. **The copy-site comment says the same thing**, replacing the void reason. A
   reader of the source should not be told the tree travels.

5. **"Shipped" is not used for a thing that cannot ship.** The not-copied arm
   reads "none copied into this bundle" - the word describes what the collector
   did, not what the repository will do.

## Consequences

- A reviewer holding the pushed bundle learns from the bundle itself that the
  decompiled tree exists, that it does not come with it, and how to ask for it -
  instead of discovering a directory that was never going to be there.
- Duplication bound, stated rather than implied: the summary's enumeration is a
  copy of A1's list. If A1 changes - an artefact is added to the committed set,
  or the subtree is un-ignored - the summary's list must change with it. The
  authoritative check is `git ls-files` against a pushed bundle, never the
  working tree (`local-run-measures-the-tree-ci-measures-the-commit`, one
  artefact over).
- The class, named for later: when one artefact describes what another will
  carry, either consult the deciding rule or state the split without asserting
  which side of it a path lands on. Guessing optimistic has now produced the same
  defect three times in this file (ADR-0036, ADR-0037, here).
