# ADR-0006: Empirical Calibration Tracking Replaces the "Zero False Positives" Claim

## Status
Accepted

## Context
An earlier version of this project's brief demanded "zero false positives." This is not a claim that can be proven for heuristic security analysis of arbitrary APKs — obfuscation, native code, reflection, and dynamic class loading can all defeat static analysis in ways that are only discoverable empirically, not provable to be absent in general. Asserting it anyway is indefensible in an academic evaluation and, more importantly, isn't true.

## Decision
Every dynamically-verified analysis run produces a real, empirical ground-truth data point: (static-predicted confidence, actual observed bypass outcome) per category. These accumulate into a calibration dataset from Phase 1 onward — pure instrumentation over the pipeline's own outputs, with no AI dependency. From Phase 4, this dataset is used to compute and report actual precision/recall/F1 and a confidence-calibration curve. Any finding below the confidence threshold is reported as `Inconclusive`, never silently upgraded to a confident claim.

## Consequences
- The project's accuracy claims are a measured, improving number ("measured precision X%, recall Y%, as of N samples") rather than an assertion nobody can verify.
- The calibration dataset also functions as a regression suite: any signature/threshold/model change is re-scored against the full accumulated set before being considered an improvement.
- This is a stronger, more defensible artifact for a final-year report than the original absolute claim, and requires no more engineering effort than instrumenting what the pipeline already produces.

## Alternatives considered
- **Assert zero false positives as originally briefed**: rejected as unfalsifiable and indefensible.
- **No accuracy tracking at all**: rejected — leaves no way to substantiate any accuracy claim, honest or otherwise.
