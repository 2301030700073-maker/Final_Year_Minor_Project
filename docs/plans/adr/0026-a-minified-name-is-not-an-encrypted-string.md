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
   identifier versus a string literal or a library name. That audit was run on
   2026-09-24 and it closes the narrowing: see "The pattern-shape audit, run"
   below.

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

## The pattern-shape audit, run (2026-09-24)

Decision 4 made narrowing conditional on measuring one thing: how much of the
corpus is a *value* - which a rename cannot erase, because the value must appear
verbatim or the shape is structural - versus a bare *name*, which a rename can.
That audit has now been run. It closes the narrowing.

Structural census of the shipped corpus, by `pattern_type`:

| file | signatures | `string_literal` | `regex` | `class_reference` |
|---|---|---|---|---|
| `root_detection.yaml` | 49 | 41 | 4 | 4 |
| `ssl_pinning.yaml` | 51 | 32 | 17 | 2 |
| `native_detection.yaml` | 12 | 8 (`embedded_string`) | - | 4 (`export_symbol`) |

A type alone does not settle it - a `string_literal` can hold a bare identifier
just as easily as a path or an uppercase constant - so the classification was
taken per pattern, not per type. A first pass keyed on "bare camelCase ⇒
app-authored" flagged 26 root, 18 ssl and 6 native signatures, and was rejected
as a classifier: it swept up platform and library API names that R8 *preserves*
as external references (`setSSLSocketFactory`, `setCertificateEntry`,
`setDefaultHostnameVerifier`, `SSL_CTX_set_cert_verify_callback`, `HurlStack`,
`CertificatePinner`) as though they were app declarations. The replacement is
empirical rather than shape-based: grep a *declaration* of each distinct bare
name across all 38 stored decompiled corpora. 54 names; 23 declaration hits:

* **1** is declared only by a known namespace - `CertificatePinner` →
  `okhttp3` - which is exactly the "kept library name" case decision 4 allowed
  for.
* **5** are declared by third-party SDK namespaces that are not the scanned
  app's own code: `com/facebook/react/modules/network` (`NetworkingModule`,
  `OkHttpClientFactory`, `CustomClientBuilder`) and
  `com/google/android/play/core/integrity` (`StandardIntegrityManager`,
  `IntegrityTokenResponse`). A bundled SDK's classes are renamed by the host
  app's R8 unless that SDK ships keep rules, so these are still renameable in
  principle - but the statement "declared by a known library" cannot be made
  about them from this evidence either.
* **48 are declared in no stored corpus at all** - including the ones this
  question turns on for SSL: `expectCertificatePin`, `spkiSha256Pin`,
  `initializeSslPinning`, `SSLPinningIntegration`, `SSLPinningX509TrustManager`,
  `TSKPinningValidator`, `PowerAuthSslPinningValidationStrategy`, and
  `TrustKitBuilder`; and, on the native side, the export symbols `checkRoot`,
  `isRooted` and `checkCertificatePinning` (which the Java surface does not
  govern in any case).

That 48-name bucket is not evidence of authorship, and the audit does not claim
it is: a *declaration-line* grep reports a name as absent from the corpus when
the source that declares it simply is not in the corpus, which is true of every
JDK and Android platform API in the list (`CertPathValidator`,
`setDefaultHostnameVerifier`, `PKIXBuilderParameters`). So the bucket mixes two
things the pattern alone cannot separate - a platform name whose declaring
source is unavailable here, and an app- or SDK-authored name a rename erases.

Both limits point the same way, which is why the audit settles the question
*against* narrowing rather than merely failing to settle it for it: the premise
decision 4 named - that the name-shaped patterns are literals or kept library
names, so a minified corpus bounds nothing they cover - is **measured false**.
At minimum `CertificatePinner` and the integrity/React-Native names are keyed on
declared identifiers, and the majority of the name-shaped patterns could not be
attributed to a library at all. A minified app that bundles a pinning SDK whose
classes R8 renamed stays invisible to the name-keyed half of
`ssl_pinning.yaml`, and that is a case the Java bound covers correctly.

Therefore: **UC1's and UC2's ground-truthed SSL true negatives stay outside
Tier-2** (`ssl` `Excl partial = 12` in the calibration report), now for a reason
that has been measured rather than assumed, and revisiting that exclusion
requires new evidence - a specific app shown to pin through patterns of the
value-shaped kind only - not a re-reading of this audit.
