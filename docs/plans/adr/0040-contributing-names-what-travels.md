# ADR-0040: CONTRIBUTING's evidence list names what actually travels

**Status:** Accepted, 2026-09-25
**Applies to:** `CONTRIBUTING.md` (the phase-handoff loop, step 3)

## Context

`CONTRIBUTING.md` is the canonical source for the handoff protocol and for what
a bundle contains - `CLAUDE.md` says so explicitly, and defers to it. Its
phase-handoff loop, step 3 (`:70`), tells the primary developer what to read:

> **Primary developer side**: pulls, analyzes the actual pushed evidence
> (reports, run JSON, decompiled source, logs - not a summary of a summary),
> makes evidence-backed fixes if needed, ...

Four kinds of evidence are named. Measured against the bundle pushed as
`33e39753b` - 8 files, `git ls-files` on the bundle - the counts are:

| named | in a pushed bundle? | why |
|---|---|---|
| reports | yes | `reports/<apk_hash>/<run_id>.md` |
| run JSON | **no** | `run_*.json` lives only under `outputs/analysis/<apk_hash>/` |
| decompiled source | **no** | same subtree - jadx sources, apktool output |
| logs | yes | `cli_output.txt`, `pytest_output.txt` |

Policy **A1** (`.gitignore:29-43`) excludes every bundle's `analysis/` subtree for
current *and future* bundles, so the two absences are by design, not accident
(ADR-0038 kept A1 and kept the copy; only the claims were corrected).

So step 3 sends a reader to look for two things the policy guarantees are not
there. This is ADR-0038's defect one document further out: the same wrong claim
about what travels, in the artefact a human acts on rather than in the artefact
they read.

**It was quoted and left standing.** ADR-0036 cited this exact sentence as part
of its argument that the bundle should carry more evidence - the sentence was
read as a statement of intent. Then ADR-0036 amended a different part of the
same document (the `outputs/` bullet at `:83`, gaining the calibration
markdown), and ADR-0038 corrected the same claim inside the SUMMARY and the
copy-site comment. Neither went back to the sentence that had motivated them.
A document quoted as evidence is a document that was read; it is not a document
that was checked against the rule it describes.

## Decision

1. **Step 3 names what the bundle carries, not what a reader might hope it
   carries.** The list becomes the `reports/` markdown, `cli_output.txt`,
   `pytest_output.txt`, `environment.json` and the calibration markdown - the
   set a pushed bundle actually holds, and the same set the SUMMARY enumerates
   (ADR-0038 #3).

2. **The absence is stated in the same breath, with the remedy.** The decompiled
   tree and the run JSON do not travel: A1 excludes the subtree, so a reviewer
   who needs a specific file asks the collaborator for it (`git add -f <path>`).
   Naming the absence without the route would trade one dead end for another.

3. **"Not a summary of a summary" stays.** It is the sentence's real point and
   remains correct: the pushed `reports/` markdown and the consoles are raw
   artefacts, not a re-narration.

4. **The ordering of A1's list and A1's rule is stated rather than implied.**
   The enumeration here is a copy of A1's committed set, as the SUMMARY's is. If
   A1 changes, both copies must change; the authoritative check is `git ls-files`
   against a pushed bundle, never the working tree.

5. **No code change.** This corrects a document. Nothing about what the collector
   copies, or what git keeps, changes.

## Consequences

- A developer following the handoff loop for the first time no longer spends a
  round trip discovering that the decompiled source is not in the bundle, and
  no longer reads the absence as a broken push.
- Three surfaces now agree on the committed set - `CONTRIBUTING.md` step 3, the
  bundle's own `SUMMARY.md`, and the copy-site comment - and all three derive
  from A1. The class now has a home: A1 is the single rule, and every copy of it
  is a place to re-check when it moves.
- Bound, stated rather than implied: prose is not guarded by a test here. The
  enumeration is pinned by review, not by the suite - deliberately, because a
  test binding English to `.gitignore` would fail on rewording and pass on a
  wrong claim, which is the wrong direction for a guard. The check that does
  work is the one this ADR used: list the pushed bundle, compare the count.
