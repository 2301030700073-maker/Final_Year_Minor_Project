# 0019. A signature scheme the toolchain cannot evaluate is not a signature that is absent

Status: Accepted
Date: 2026-09-17
Relates to: ADR-0006 (tiers are never blended), ADR-0017 (a verdict must carry the
observation it rests on), ADR-0005 (the audit record)

## Context

A sweep of four real-world APKs (`scripts/run_unexecuted_realworld_sweep.sh`) ran
AndroGoat and WhatsApp end to end but halted on Facebook and Netflix at the first
stage, with no report produced:

```
FAILED  ingest  (852ms)
    ApksignerError: apksigner exited 1: DOES NOT VERIFY
```

Ingest treats that verdict as the APK's own property and refuses to analyse the
app. The verdict is wrong, and the shape of its wrongness is what this ADR is
about.

### The measurement

`apksigner verify` was run against both APKs across a range of `--min-sdk-version`
values. The outcome flips at exactly **28**, identically for both:

| APK | manifest minSdk | ≤ 27 | ≥ 28 |
| --- | --- | --- | --- |
| netflix-9-77-0-build-9-64489 | 28 | `Verifies`, **`v2: true`** | `DOES NOT VERIFY` |
| facebook-571-0-0-44-73 | 30 | `Verifies`, **`v2: true`** | `DOES NOT VERIFY` |
| whatsapp-messenger-2-26-30-70 | 23 | `Verifies`, `v2: true` | (v3 never engaged) |

At ≥ 28 the error is the same for both:

```
ERROR: Target SDK version 36 requires a minimum of signature scheme v2; the APK
is not signed with this or a later signature scheme
```

The same v2 block is verified true at 27 and reported absent at 28. It cannot be
both. What changes at 28 is not the APK but **which scheme apksigner engages**:
v1/v2 for SDK 24-27, v3 for SDK >= 28 (Android 9 uses v3 when present). Netflix
and Facebook both declare a minSdk at or above 28, so apksigner runs its v3
verifier over their signing blocks, does not reach a verdict it accepts, and then
reports the *absence* of a scheme it never disproved.

The installed tool is `31.0.2-1ubuntu1` (build-tools 31.0.2, Android 12 era -
`apksigner --version` misleadingly prints `0.9`). Both APKs carry v3.1-era
signing blocks, and apksigner says so in the only line that names a cause:

```
WARNING: APK Signature Scheme v3 signer #1: Unknown additional attribute: ID 0x559f8b02
```

v3.1 and the rotation attribute family shipped with build-tools 33. A build-tools
31 v3 verifier meeting them does not say "I cannot read this"; it says the APK is
not signed. WhatsApp passes only because its declared minSdk of **23** keeps
apksigner off the v3 path entirely - its `v3: false` is as uninformative as the
other two, and its passing is an accident of a low minSdk, not evidence its v3
block is sound.

### Nothing consumes it

The verdict is not a gate anywhere in the platform. Searching every consumer:

- `report/generator.py:108` renders v1-v4 as informational text
- `storage/results.py:68-71` persists them into the `apks` table

No branch, decision, threshold, or score reads `v*_verified`, `certificate_sha256`
or `signer_count`. The verdict is evidence, and the platform is halting its entire
analysis of two validly-signed production applications over evidence no decision
depends on.

### The conflation

`DOES NOT VERIFY` currently means all of these at once:

1. the signature is present and the tool verified it;
2. the signature is present, the tool checked it, and it **failed** - i.e. the APK
   may have been tampered with, a finding worth reporting;
3. the tool **could not evaluate** the scheme the APK carries, which is a fact
   about the toolchain and says nothing about the APK.

State 3 is being rendered as state 2 and, because state 2 halts ingest, is
preventing analysis. This is the same hole ADR-0017 closed on the capture side: a
verdict that makes a claim about the target must carry the observation licensing
it, and a probe that saw nothing cannot assert an absence. Here the probe is a
tool that could not read the block, and the absence it asserts is false.

## Decision

Three parts.

**1. The signer verdict becomes tri-state.** `verified` / `failed` /
`not_evaluated`, on the same discipline as `verification_state` (ADR-0006) and
`reached` in `proxy_attribution`. A single boolean cannot carry three states, and
the two that matter most - a real verification failure and a toolchain that could
not look - are the two it currently merges.

**2. `not_evaluated` is a measured claim, never an inference.** A new deterministic
module parses the APK Signing Block and enumerates the signature schemes the file
actually carries: read the End-Of-Central-Directory record, take the Central
Directory offset from it, then read the block that ends immediately before it
(`[size uint64][ID-value pairs][size uint64]["APK Sig Block 42"]`) and collect the
pair IDs (`0x7109871a` v2, `0xf05368c0` v3, `0x1b93ad61` v3.1). The label is
returned only when apksigner verified no scheme **and** the block demonstrably
carries a pair for a scheme apksigner was required to check. The record carries
the measured pair IDs, the apksigner version, and apksigner's own reason text. A
caveat gates on the exact predicate its text asserts; "the toolchain could not
evaluate this" is grounded in "the scheme is provably there and the tool reported
none verified", not in a message match.

**3. Ingest does not halt on the signer verdict.** It is recorded as evidence and,
when `failed`, rendered as a finding. The loud halt for installability stays where
the consequence actually lives - the install stage, which already fails loudly
with adb's own diagnostic. A signature that failed verification is something to
report about a suspicious app; it is not a reason to refuse to look at it, which
is precisely backwards for a tool whose purpose is analysing untrusted APKs.

## Consequences

- Facebook and Netflix ingest and are analysed. Their reports state the measured
  toolchain bound - which schemes are present, which the installed apksigner could
  verify, and which version could not - instead of asserting the app is unsigned.
- A genuine verification failure is still surfaced, as a `failed` finding on the
  report rather than as a swallowed success.
- Every report naming a signer verdict now names the apksigner version that
  produced it, so a toolchain-shaped verdict is legible as one.
- New machinery: an APK Signing Block parser. Pure Python, no subprocess, and
  fixture-testable anywhere - it fits the deterministic core rather than the
  reference-environment-only layer.
- The dynamic stage's install gate is unchanged. If a signature genuinely does not
  install, that still fails loudly, from adb, with adb's reason.
- Toolchain currency is a separate, still-required fix: build-tools 33+ knows
  v3.1 and would have returned `verified` here. It is an environment change
  (README), not this decision - and it does not remove the need for the tri-state,
  because the next unreadable scheme reproduces this exactly.

## Rejected alternatives

- **Upgrade build-tools and leave the gate as it is.** Necessary but insufficient.
  It fixes this instance and not the defect: the platform would still render "I
  cannot read this scheme" as "this app is unsigned and unanalysable", and would
  reproduce it on the next scheme the pinned tool predates. Toolchain currency is
  worth doing and is not a substitute for distinguishing the states.
- **Detect the condition by matching apksigner's message text.** The message names
  `targetSdk` and `v2`; neither is the cause, which is an unreadable v3 block. A
  string match would be a caveat gating on a proxy rather than on its predicate -
  the failure mode this project has already been bitten by more than once, and
  which would break the moment the message is reworded between apksigner versions.
- **Run apksigner at a lowered `--min-sdk-version` and trust that verdict.** This
  is how the root cause was found and it discriminates usefully - it proved the v2
  block intact. But it cannot separate "the toolchain could not reach v3" from "v3
  is genuinely broken while v2 is fine"; both produce the same pair of results. It
  corroborates a conclusion the block parse measures directly, and cannot ground
  the label on its own.
- **Keep the halt and only improve the message.** The message is already fixed
  (`2ac8a3d61`): the failure now carries apksigner's reason instead of only its
  verdict. That made this diagnosis possible and it does not change the outcome -
  the platform still stops analysing the app.
- **Record `not_evaluated` as `failed`.** Blending the tiers is what ADR-0006
  forbids. A toolchain bound promoted to a verification failure is a fabricated
  finding about the APK, which is the one thing principle 3 rules out entirely.

## Verification

Implemented 2026-09-17: `ef687e55a` (the parse), `329edcbb5` (the verdict and the
removed halt), `12d363a1d` (the render), with a ledger-currency commit after each.
Full suite **1917 passed**, from 1893 before - 24 new tests across three files.

Each part is pinned by a test that fails without it:

- Part 1 - `tests/unit/test_signer_verdict.py` fixes the rule's three arms and, in
  particular, the order of its tests: a scheme apksigner verified settles the
  verdict even when a refusal was reported alongside it
  (`test_a_verified_scheme_is_never_downgraded_by_a_refusal`), and a refusal with
  no scheme in the block is `failed`, never the softer label
  (`test_a_refusal_with_no_scheme_in_the_block_is_a_failure`).
- Part 2 - `tests/unit/test_signing_block.py` builds fixtures the way a real APK
  is laid out (the block spliced in before the Central Directory with the EOCD
  offset corrected), and `test_the_block_is_located_from_the_eocd_not_a_tail_window`
  asserts the magic sits more than 100 kB from the end of the file - so the
  fixture cannot shrink into a case the tail search would also have passed. The
  negative arm is `test_a_refusal_with_no_scheme_in_the_block_is_a_failure` and
  `test_a_file_with_no_scheme_at_all_is_a_failure`.
- Part 3 - `test_an_apksigner_refusal_no_longer_halts_ingest` runs the real
  `ingest()` over an APK whose apksigner arm refuses, and requires `success` with
  the package name extracted; `test_an_aapt2_failure_still_halts_ingest` pins the
  gate that was deliberately left in place. `tests/unit/test_report_signer_verdict.py`
  requires the three states to be distinguishable in the rendered text and a
  pre-verdict record to gain no claim.

### What is and is not established

Established, against the real files rather than fixtures: `read_signing_block`
reports the pairs of all four sweep APKs, matching the hand investigation ID for
ID (Facebook `7109871a 1b93ad61 f05368c0 6dff800d 2146444e 42726577`, Netflix
`7109871a 1b93ad61 f05368c0 42726577`, WhatsApp `1b93ad61 7109871a 1b93ad61
f05368c0 42726577`, AndroGoat `7109871a 42726577`); and `verify_signature`
returns `verified` for AndroGoat and WhatsApp and `not_evaluated` for Facebook and
Netflix, naming v2/v3.1/v3 in each reason. `whatsapp`'s duplicate v3.1 pair is
named once, as the scheme set it is.

Not established: whether the two `not_evaluated` APKs reach a completed analysis
end to end. The re-run is in flight; this section records the outcome once it
lands, rather than implying from the unit evidence that the pipeline now finishes.

One thing this does **not** fix and never claimed to: the installed apksigner is
still build-tools 31.0.2 and still cannot verify a v3.1 block, so on this machine
a v3.1-signed APK's v3 status is genuinely unknown. The decision makes that
legible - it does not make the tool newer. Installing build-tools 33+ remains
worth doing, and `README.md` carries no version pin for `apksigner` today, which
is how the gap stayed invisible.
