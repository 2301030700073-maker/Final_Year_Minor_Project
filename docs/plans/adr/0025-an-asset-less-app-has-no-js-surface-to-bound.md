# 0025. An asset-less app has no JS surface to bound, and its decode still bounds it

Status: Accepted
Date: 2026-09-24
Relates to: ADR-0001 (the deterministic engine is the source of truth),
ADR-0006 (a negative is certified only over surfaces that were actually read),
ADR-0024 (whose decision 4 deferred exactly this change to its own ADR),
the ASSET-DROP1/ASSET-TRI1 record (`extract_assets`' documented tri-state),
[[count-derived-boolean-collapses-three-states]] (a `>0` flag cannot separate
"absent" from "lost"), and [[native-absent-vacuous-coverage]] (the native
surface's sibling precedent: a vacuous `fully_analyzed` for an app that ships no
`.so`, kept sound by its loads escape hatch).

## Context

`js` is a governing surface for **both** categories - `GOVERNING_SURFACES`
(`src/static/coverage.py:38-41`) reads `root -> (java, native, js)` and
`ssl -> (java, native, manifest, js)`. A `js` surface held at `partial`
therefore bounds a root negative and an SSL negative alike, and it is the reason
a Hermes/React-Native bundle cannot hide pinning logic behind a clean Java
result.

Today the js state is decided by two booleans:

```python
def js_surface_coverage(has_binary_bundle, asset_surface_extracted=True):
    if not asset_surface_extracted:
        return "partial"
    return "partial" if has_binary_bundle else "fully_analyzed"
```

and the second of them is `asset_file_count > 0` (`decompile.py:1346`) - a count
turned into a boolean, which is the collapse [[count-derived-boolean-collapses-three-states]]
names. `asset_surface_extracted: false` is therefore recorded for two different
worlds, and `js` reads `partial` for both:

| what is true of the APK | `asset_file_count` | `js` today | what the APK actually is |
|---|---|---|---|
| lists no `assets/` entries at all | 0 | `partial` | no JS surface exists to bound |
| lists assets, none reached disk | 0 | `partial` | a real loss (ASSET-DROP1) |

Measured 2026-09-24 (`extract_assets`' docstring, `decompile.py:290-296`): every
`asset_surface_extracted: false` on disk - AndroGoat x2, UnCrackable-Level1,
InsecureBankv2, RS_CertPinning - was the **first** row, while every APK that does
ship assets (PropertyGuru 25, jerboa 3) recorded `True` with its real count. The
three UnCrackable runs of ADR-0024 record `js_asset_entries_in_apk: 0` and print
`js=partial`. So the project's own measurement says the bound is being applied,
in every observed case, to an app that has no asset surface at all.

That is a bound over a non-existent surface, and the project already knows it:
`extract_assets` carries the entry count precisely because "a `js` surface held
at `partial` for it is bounded by a rule, not by a loss". ADR-0024 decision 3
made the console *explain* the rule rather than change it, and decision 4
deferred the change here because it moves coverage labels and therefore verdicts.

The premise that makes the upgrade sound is already in the code. The bundle walk
is **not** restricted to `assets/`: `_scan_binary_bundles` (HERM2,
`cli.py:489-548`) walks `static_roots = [jadx_output, apktool_output]` plus the
extracted asset tree, so a bundle under `res/raw/` or any other decoded resource
directory is found and `has_binary_bundle` reads `True`. The escape "the APK has
no `assets/`, but ships a bundle somewhere else" is closed by the walk, not by the
count. What the count was standing in for is something else: **whether the roots
the walk covered were complete** - the lazy per-DEX jadx path and an apktool
killed mid-`Baksmaling` both leave roots that the walk cannot read fully.

## Decision

**1. The js surface reads the tri-state the asset extractor already records.**
`js_surface_coverage` gains the entry count as its third input, and the ladder
becomes:

| `asset_entries_in_apk` | `has_binary_bundle` | `js` | recorded reason |
|---|---|---|---|
| any | `True` | `partial` | a binary bundle was found and only its constants recovered |
| `None` (archive unlistable) | `False` | `partial` | unknown, never an absence |
| `0` (the APK lists no assets) | `False` | `fully_analyzed` | no surface exists for a bundle to be in |
| `> 0`, surface extracted | `False` | `fully_analyzed` | the surface was read and holds no bundle |
| `> 0`, surface not extracted | `False` | `partial` | a real loss: ASSET-DROP1, unchanged |

`has_binary_bundle` stays the first row: a bundle the walk actually found is a
real bound on the js surface no matter what the APK's asset listing says. The
entry count defaults to `None`, so every existing two-argument caller keeps
today's behaviour exactly - the upgrade travels only where a caller passes the
recorded count, and the ASSET-DROP1 degradation survives for the unknown case
(`tests/unit/test_coverage.py:183-186` asserts precisely those calls).

**2. The incompleteness the old flag was standing in for must be carried
explicitly, or the upgrade is unsound.** `asset_surface_extracted` was doing two
jobs: recording a real extraction loss, and accidentally protecting an asset-less
APK whose *decode* was incomplete. The first job stays (row 5). The second must
be carried by its own recorded fact, because the walk can only find what the
roots contain: the call site passes the decompile stage's own completeness - the
sidecar already records `apktool_timed_out` and `jadx_timed_out`
(`decompile.py:93-94`), and the unlistable-archive case is already row 2. A
completeness signal that is absent, unreadable, or unknown yields the
conservative `partial`, never `fully_analyzed`: an unread signal is unknown, and
unknown is the case ADR-0006 forbids certifying. The lazy per-DEX path, where
jadx never sees the APK at all, is row 2 by construction (`extract_assets`
returns `None` when the path is not a file).

**3. This is a verdict change and is treated as one.** `js` governs root and SSL,
so `apply_coverage_bound` no longer sets `coverage_limited` on those verdicts for
an asset-less app, and every consumer of that flag moves with it:
`classification.unknown_uncovered` and the console's UNCOV-CAUSE1 line, the
report's Decision caveat, `verdict_label` (a negative that was `Inconclusive` can
become `NOT DETECTED (confident negative)` when the other governing surfaces are
complete), the coverage-bound console line, the two `coverage_limited` arms in
`dynamic/correlation.py` (L-M3/L-M4), and the Tier-2 certified-true-negative
count in the calibration report. The sweep is part of the change, not a
follow-up.

**4. The reading ADR-0024 added for this state is removed with the state.**
`_js_surface_console_note` (`cli.py:826-855`) fires exactly when `js == "partial"`
and `asset_entries_in_apk == 0`; under decision 1 that state no longer exists, so
the note and its test go rather than stay as unreachable code documenting a
reading the project has stopped making. The report's ASSET-DROP1 clause
(`report/generator.py:195-204`) is already gated on `coverage.get("js") == "partial"`
and so stops rendering on its own; it must be re-read to confirm it still fires
for rows 2 and 5, which are the cases it exists for.

## Consequences

- An app that ships no `assets/` is no longer bounded by a surface it does not
  have. Its root and SSL negatives certify as confident negatives when java,
  native and manifest are complete - which is the point: today a rule, not a
  reading, is what makes those runs `Inconclusive`.
- An app that ships assets which did not reach disk is bounded exactly as before,
  and an app whose decode was incomplete is bounded by decision 2's explicit
  signal instead of by an accident of its asset count.
- Nothing new is stored. The record already carries `asset_entries_in_apk` and
  the timed-out flags; this ADR makes the decider read facts the run already
  wrote.
- In the three measured UnCrackable runs no label moves: their `java` surface is
  `partial`, which governs root and SSL too, so the verdict stays `Inconclusive`.
  The visible change is the coverage line reading `js=fully_analyzed` and the
  ASSET-TRI1/ASSET-DROP1 qualifier no longer being printed for a surface that
  isn't there.
- Calibration's certified-true-negative count can grow for asset-less targets in
  the corpus. The Tier-2 exclusion for a partial/unknown decompile is unaffected
  and remains the guard for decision 2's case.
- A `js` surface that reads `fully_analyzed` now means one of two things - no
  bundle was found, or a bundle was found and recovered as constants - and the
  record still separates them (`has_binary_bundle`, `js_binary_bundle` in the
  causes block), so no consumer has to infer which.

## Alternatives considered

- **Keep the rule and only keep explaining it on both surfaces** (ADR-0024
  decision 3, taken then). Rejected: the explanation documents a bound the
  project does not intend to keep, and it leaves the machine consumers -
  `coverage_limited`, `unknown_uncovered`, the Tier-2 exclusion - reading a bound
  the console says is vacuous. A caveat cannot stand in for a verdict
  ([[prose-caution-is-not-a-coverage-bound]], [[verdict-label-must-match-certification]]).
- **Special-case the count at the call site** (`if entries == 0: coverage_map["js"]
  = "fully_analyzed"`). Rejected: the rule belongs with the state table it is
  derived from, and cli would be re-deriving a coverage state outside the one
  module that owns coverage.
- **Gate the upgrade on the walk having enumerated zero candidate files.**
  Rejected: that measures the walk, not the APK. An asset-less app shipping a
  bundle under `res/raw/` would then certify a negative over a bundle sitting on
  disk - the failure HERM2 was written to close.
- **Drop the `asset_surface_extracted` input entirely** now that the entry count
  carries the states. Rejected: rows 4 and 5 are not derivable from
  `has_binary_bundle` plus the count alone when the count says `> 0` but the
  surface is absent from disk, and the ASSET-DROP1 loss still needs its own
  recorded cause rather than being inferred.
- **Add a `js_libs_absent` flag mirroring `native_libs_absent`.** Partly adopted:
  that is the same idea on the native surface, which needs the flag because its
  loads escape hatch reconciles against it. The js surface has no such
  reconciliation, so the tri-state rule is sufficient and a second flag would be
  a value nothing reads.
