# 0026. A minified name is not an encrypted string: the heavy level names the rule that produced it

Status: Accepted
Date: 2026-09-24
Relates to: ADR-0001 (the deterministic engine is the source of truth),
ADR-0006 (a negative is certified only over surfaces that were actually read),
ADR-0025 (the sibling case: a bound that fired on the rule rather than on the
evidence), the OBF-HARVEST1 record in `src/static/obfuscation.py`,
[[obf-harvest-ratio-inputs-not-declarations]] (the ratio's input population),
[[stored-derivation-vs-live-gate]] (a stored value's sibling belongs beside it),
[[docstring-caveat-reaches-no-reader]] (the report is the channel that reaches a
reader).

## Context

`obfuscation_level` is one value with two independent producers. `heavy` is
returned by `detect_obfuscation_level` (`src/static/obfuscation.py:276`) either
because the R8/ProGuard string-encryption fingerprint was found
(`_has_string_encryption`, line 201) or because the class-name minification
ratio exceeded 0.40 (`_minified_name_ratio`, line 260, via
`obfuscation_from_names`). The two rules bound a negative for *different*
reasons: an encrypted app's string literals are unrecoverable, while a minified
app's identifiers have been rewritten.

The coverage contract collapses both into one state - `java_coverage`
(`src/static/coverage.py:80`) returns `partial` when
`obfuscation_level == "heavy"` - and the report explained that state with a
single sentence:

> heavy obfuscation (encrypted or unreachable strings stay unreadable even on a
> complete decompile - N1/G-C)

Measured on 2026-09-24 against the three UnCrackable corpora on disk, with the
shipped functions:

| APK | files | declarations | minified ratio | string encryption | level |
|---|---|---|---|---|---|
| `1da8bf57d266` (UC1) | 5 | 5 | 0.800 | `False` | `heavy` |
| `4c7980ef1f6c` (UC2) | 282 | 514 | 0.895 | `False` | `heavy` |
| `6827f776b7d2` (UC3) | 563 | 996 | 0.002 | `False` | `clear` |

Both heavy runs fired the minification rule and no string encryption exists in
either corpus at all - yet both reports carried the encryption sentence. The
same runs' own bodies contradict it: 65 of 65 root signatures matched out of
that corpus, which is only possible because its literals are readable. The
report asserted an unreadable-literal bound over a corpus it had just read
successfully, and named a rule that had not fired.

This matters beyond wording. UC1 and UC2 are recorded `ssl: false` in
`config/ground_truth.yaml`, and their Java surface reads `partial` from this
rule, so their SSL negatives cannot certify and stay outside the Tier-2
population (`ssl` `Excl partial = 12` in the calibration report). That is a real
cost, and it was being paid under a stated reason that was false.

## Decision

1. **Both rules keep their bound.** A signature whose pattern is an app-authored
   identifier cannot match a renamed class, so a clean Java NEITHER over a
   minified corpus is not proof of absence (ADR-0006) - exactly as a clean
   NEITHER over encrypted literals is not. The bound is sound for both rules;
   only the *cause* was wrong.

2. **The run records which rule fired**, as a sibling of the level it explains
   ([[stored-derivation-vs-live-gate]]): `obfuscation_reason ∈
   {"string_encryption", "minified_names", None}`, persisted in a new
   `runs.obfuscation_reason` column (`src/storage/db.py`), added to existing
   databases by `_migrate_schema`'s ALTER path. `None` means "not recorded",
   which is what every run that predates this change carries - never a
   re-derived guess.

3. **Every consumer that names the cause names the recorded one.** The report's
   Java note (`src/report/generator.py:240`) splits into one clause per rule;
   a `heavy` with no recorded reason says the level decided the bound without
   claiming a cause, rather than defaulting to the encryption wording
   ([[docstring-caveat-reaches-no-reader]]).

4. **The cost is stated, not hidden.** UC1's and UC2's ground-truthed SSL true
   negatives remain outside Tier-2 under this decision. Narrowing the Java bound
   for the minification rule is admissible only against a measured audit of the
   corpus's pattern shapes - how many of the 120 patterns target an app-authored
   identifier versus a string literal or a library name - and that audit has not
   been run, so no narrowing is claimed here.

## Consequences

The two-rule distinction survives into the record, so a reader of UC1's report
now sees that its Java surface is bounded by shortened identifiers, not by
unreadable strings - a bound of a different kind, and one a future narrowing
could be argued against by measurement rather than by assertion. The
calibration aggregate does not move: the same two runs were already excluded,
now for a reason the report states correctly.

Relaxing the bound instead - the change that would have returned the two true
negatives to the corpus - was rejected because it would have been a rule
relaxation presented as an improvement, resting on the unmeasured premise that
no corpus pattern is an app-authored identifier. That premise is checkable, and
until it is checked, acting on it would certify two ground-truthed negatives on
a guess: the failure mode ADR-0006 exists to prevent.
