# ADR-0010: Bundled-SDK Attribution Is a Consumer-Visible Qualifier, Not a Detection Downgrade

## Status
Accepted

## Context
Attribution (ADR-0001's deterministic engine) can show that every governing
match for a DETECTED root-detection or SSL-pinning verdict is recognized
bundled third-party code (e.g. OkHttp's `CertificatePinner`, Sentry/Expo/Firebase
root-checks) with none in the app's own package. A question keeps surfacing:
should such a verdict be requalified — demoted from a confident true positive —
on the grounds that it is "not the app's own implementation"?

## Decision
**No.** A bundled-SDK-only DETECTED verdict remains a genuine detection and is
still counted as a Tier-2 true positive when ground truth is positive. The
pinning/root-check code is present in the shipped binary and affects the app's
runtime behavior (an interceptor using that app's network stack will typically
encounter OkHttp's pinning), so demoting it would be a false negative that
undercounts real detections. Detection answers "is the technique present in the
binary?"; attribution answers "whose code is it?". These are separate questions.

The `all_third_party` qualifier is therefore a **consumer-visible annotation**:
it is carried on the machine output (per-category flags, denormalized DB
columns, calibration's `RunRow`) and on the report headline, but it must never
change a Tier-2 outcome. `classify_tier2(detected, ground_truth)` is
deliberately untouched by attribution.

## Consequences
- A consumer reading a run sees DETECTED **and** `all_third_party=True` — the
  caveat is machine-visible, not buried in prose.
- Precision/recall measure detection against ground truth, which is what the
  tool claims to measure; they are not silently deflated by ownership.
- A test (`test_bundled_sdk_qualifier_is_consumer_visible_not_a_detection_downgrade`)
  locks this: a detected + all-third-party run is still a Tier-2 TP.

## Reconciliation with ground-truth authoring

This ADR takes a **binary-inclusive** detection bar: a technique bundled in a
shipped library counts as present. The `ground_truth.yaml` registry is currently
authored at a different, narrower bar — every entry names app-owned code
(AndroGoat's `TrafficActivity`, UnCrackable's `sg.vantagepoint`). The two bars
are not reconciled, and today they do not overlap (none of the 21 all-third-party
runs has a ground-truth entry). But the conventions must be documented so the
conflict cannot become a silent spurious FP: if a bundled-only app is ever given
an **app-owned** ground-truth *false* entry, `classify_tier2(True, False)`
yields a false positive that this ADR actively mandates (the detection is real
under the binary-inclusive bar even though the app owns none of it). Ground-truth
authors must state which bar they are using. A spurious FP is the price of
binary-inclusive detection when GT is written app-owned; it is reported, not
hidden, per ADR-0006.

## Alternatives considered
- **Requalify** (demote bundled-SDK-only DETECTED out of the TP pool): rejected —
  it is a false negative. Detection is about the code present in the binary,
  which is real and user-affecting regardless of which package owns it.
- **Drop the qualifier** entirely: rejected — attribution is real, valuable
  context for an analyst and belongs in the machine output, just not in the
  verdict.
