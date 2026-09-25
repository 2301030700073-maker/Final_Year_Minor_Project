# ADR-0035: the bundle's tree-state line states the scope its predicate has

**Status:** Accepted, 2026-09-25
**Applies to:** `scripts/collect_verification_bundle.py` (`working_tree_dirty`,
`collect_environment`, `write_summary`); `tests/unit/`

## Context

`scripts/collect_verification_bundle.py` is the artefact the handoff protocol
admits as evidence - a reviewer trusts it in place of looking. Its SUMMARY.md
states whether the tree it measured was clean, and it names a scope:

```
Working tree clean (code under src/, config/, scripts/): no - uncommitted changes under src/, config/ or scripts/
```

The predicate behind that line has two branches, and they do not share that
scope (`working_tree_dirty`, lines 46-66):

```python
tracked = subprocess.run(["git", "diff", "HEAD", "--quiet"], cwd=repo_root, ...)
...
untracked = subprocess.run(
    ["git", "status", "--porcelain", "--untracked-files=all", "--", *CODE_PATHSPEC],
    ...)
```

The tracked branch is **repo-wide** - `CODE_PATHSPEC = ("src", "config",
"scripts")` appears only in the untracked branch. Falsified against the real
function in a throwaway repo: pristine tree `False`; a tracked edit to
`tests/b.py` **and nothing else** `True`, with `git status --porcelain` reading
`M tests/b.py`. The summary would then print *"uncommitted changes under src/,
config/ or scripts/"* while the change is under `tests/`. The claim names a
location the predicate never checked - ADR-0032's shape (a fixed sentence whose
gate reads a wider set than the sentence describes) one artefact over, in the
file whose job is to be believed.

Three further surfaces carry the same mis-description:

- the label's parenthetical, `(code under src/, config/, scripts/)`;
- the docstring, *"Whether the code under test differs from HEAD"* - the tracked
  branch is not scoped to the code under test;
- the environment key `working_tree_dirty_code` (line 147), whose `_code` suffix
  asserts the narrower scope to anything that reads the JSON.

The pipeline's own stamp - the sibling this bundle ships, and the thing the
existing guard `test_the_pathspec_matches_the_pipelines_own_dirty_stamp`
("The bundle must not disagree with the report it ships about the same tree")
exists to hold in agreement - uses the *identical* two-branch shape
(`src/cli.py:226-235`, repo-wide tracked, path-limited untracked) and words it
with no location at all:

```python
return f"{commit} (dirty working tree)" if dirty else commit
```

So the codebase's own precedent for this predicate is "state that the tree is
dirty, do not name where". The bundle is the one surface that names a place, and
it names the wrong one.

The existing tests cannot reach the branch in question: `test_an_edit_to_a_
tracked_file_is_dirty` edits `src/module.py`, inside the pathspec, so it is
satisfied by either reading, and `test_the_summary_states_the_code_dirty_state_
and_never_guesses_it` asserts `"src" in lines[False]` - which the *label*
satisfies, not the measurement. A guard whose fixture cannot reach the branch it
claims to guard, per the `guard-order-relative-to-the-branch-it-guards` family.

## Decision

1. **The predicate is kept, not narrowed.** The tracked half stays repo-wide. A
   modified test file changes what "all passed" means, and a modified ADR changes
   what the shipped design says; both belong in a bundle's verdict. Narrowing it
   to `-- src config scripts` would also make the bundle disagree with the
   pipeline's stamp about the same tree - creating the defect that the guard
   above exists to prevent.

2. **The summary states both scopes.** The label loses the parenthetical that
   asserts the narrower one; the `True` state names both branches ("a tracked
   file differs from HEAD anywhere in the tree, or an untracked file sits under
   src/, config/ or scripts/"). The following bullet keeps its job of naming what
   is *not* counted, and gains the half it was silently relying on the label for:
   tracked changes are counted wherever they sit.

3. **The key is renamed `working_tree_dirty_code` -> `working_tree_dirty`.**
   A machine-read name is a claim too, and this one is false. Only the script and
   its tests read it; nothing outside the repo consumes the key.

4. **The docstring states the two scopes**, rather than "the code under test".

5. **A test that can reach the branch.** A tracked edit *outside* `CODE_PATHSPEC`
   must (a) read as dirty and (b) render a line that does not claim the change is
   under `src/`, `config/` or `scripts/`. This is the assertion the existing
   tests structurally could not make.

6. **No behaviour change.** `working_tree_dirty` returns the same boolean for
   every tree; this corrects what the bundle says about what it measured.

## Consequences

- The bundle's two statements about one tree - its own SUMMARY line and the
  provenance stamp of the report it ships - now rest on predicates of the same
  shape, which is what the CODE_PATHSPEC comment and the parity guard intended.
- Residual gap, named rather than implied: only the tracked half is repo-wide. An
  *untracked* new test file or ADR outside `CODE_PATHSPEC` reads as clean, in both
  artefacts. That is the deliberate trade the comment above `CODE_PATHSPEC`
  records - a blunt check counted every artifact this repo always carries
  (`outputs/`, bundles, `run_logs/`) and so carried no information - and it is now
  stated on the reader-facing line instead of only in a source comment.
- The environment.json key changed. A reviewer's script written against
  `working_tree_dirty_code` breaks loudly (`KeyError`), not silently, which is the
  correct failure direction for a provenance field.
- The general rule, extending ADR-0034's: a caveat may be gated on a threshold, a
  definition may not - and a *predicate* may be narrower or wider than its name,
  but the sentence printed from it must state the predicate, not the name. Where
  two scopes meet in one boolean, the reader is owed both.
