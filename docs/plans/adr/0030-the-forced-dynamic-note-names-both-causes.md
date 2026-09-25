# ADR-0030: the forced-dynamic note names both causes of a coverage bound

**Status:** Accepted, 2026-09-25
**Applies to:** `src/report/generator.py` (the `--force-dynamic` note, line 540),
`tests/unit/test_report_generator.py`

## Context

Found by sweeping for siblings after ADR-0029, which is the same defect class one
layer down: a sentence that asserts a **cause** without checking which cause
applies.

The note is rendered when an operator forces the dynamic stage on a target the
static engine did not detect:

> this target's static verdict is **coverage-limited** — a lower bound over
> surfaces the engine could not fully analyze (e.g. a React-Native/Hermes bundle),
> so a NEITHER here is "unknown, not absent" (ADR-0006)

Two mechanisms populate `classification.unknown_uncovered`, and the sentence
commits to one. The Decision line a few inches above it gets this right: it maps
each recorded cause to its own wording, per category
(`"governing surface not fully analyzed"` for `incomplete_coverage`,
`"detection-shaped code matched no signature"` for `unattributed_indicator`).
This note reads the same list and hardcodes the first cause's sentence.

The other cause is not hypothetical. `unattributed_indicator` exists for exactly
the case where a surface **was** fully analyzed and detection-shaped code in it
matched no signature - Boundary-1, and the reason `apply_unattributed_indicators`
was added at all. A forced run on such a target renders a clause saying the engine
could not fully analyze a surface, when it fully analyzed every one of them.

Three things about the note were checked before this decision, and hold:

- The flag it branches on is `bool(classification.unknown_uncovered)` -
  `generator.py:913`, whose own comment records that it is deliberately the same
  signal the Decision-line caveat gates on rather than a parallel predicate.
  ADR-0029's fix therefore reaches this note, since a detected category can no
  longer put an entry in that list.
- `forced_dynamic` is `dynamic_action != classification.action`, and
  `_effective_dynamic_action` differs from the classification's action *only* on a
  NEITHER verdict (`cli.py:2546`). So the note's other two claims - "the
  deterministic engine did not detect root/SSL above the threshold" and, in the
  else branch, "nothing matched" - are true by construction, not by luck. The
  option's help string ("no-op when a category was already detected") is enforced
  by that predicate rather than only promised in prose.
- The else branch is unaffected: with an empty list, every category is a confident
  negative, which requires all four governing surfaces to be complete - so "all
  governing surfaces were fully analyzed" is exactly right there.

## Decision

1. **The note names both causes**, in the vocabulary the Decision line already
   uses: "a lower bound over a surface the engine could not fully analyze (e.g. a
   React-Native/Hermes bundle) or over detection-shaped code that matched no
   signature". One clause, both mechanisms, true whichever fired.

2. **No new abstraction.** The Decision line's cause→wording mapping stays where it
   is, because that line owes per-category precision and this one does not: it is a
   single prose sentence summarizing why the stage was forced. Extracting a shared
   helper would be the right move if a third consumer appeared; for one sentence it
   would be machinery in service of an abstraction nobody needs yet (ADR-0002's
   reasoning, applied to prose rather than to a framework).

3. **The example stays attached to the coverage cause.** "(e.g. a
   React-Native/Hermes bundle)" is an illustration of a surface that cannot be fully
   analyzed, so it belongs to that clause and not to the sentence as a whole.

4. **Wording only.** No flag, gate, branch, or rendered-vs-stored behaviour changes.

## Consequences

- The test that pinned the old sentence was asserting only its **first four
  words** (`"**coverage-limited** — a lower bound over surfaces"`), which is how a
  sentence naming one cause stayed green while the other cause could produce the
  list it described. It now asserts the full clause plus the second cause, and the
  second assertion is anchored past the point where the Decision line's identical
  phrase would satisfy it - the Decision line already contains
  "code that matched no signature", so a loose assertion would have passed for the
  wrong reason.
- The bound on this fix, stated rather than implied: the sentence enumerates the
  two causes that exist. A **third** mechanism added to `unknown_uncovered` would
  make it wrong again, and the strengthened assertions would not catch that - they
  name the two rendered strings they expect. Whoever adds the third cause owns this
  sentence.
- This is a wording change with no LOC delta. It is recorded because it changes
  what a report tells a reader, which is the property this project treats as
  load-bearing - the same reason ADR-0029 was written for a line of Jinja in the
  same file.
