"""Computes precision/recall/F1 and a confidence-calibration curve from
accumulated run data (FR-9.2, ADR-0006). Pure `list[RunRow] + ground truth
-> CalibrationReport` - zero I/O, zero SQL, fully fixture-testable with no
Android toolchain and no DB (NFR-6, NFR-17). storage/results.py's
load_runs_for_calibration() is the only place that turns real SQLite rows
into the RunRow shape this module consumes.

Every rate reports None - never 0.0 - when its denominator is zero, always
alongside the raw counts, per ADR-0006's own "measured... as of N samples"
framing: a rate of 0 and "no data yet" must never look the same.
"""

from __future__ import annotations

from dataclasses import dataclass, field

from calibration.outcomes import Tier1Outcome, Tier2Outcome, classify_tier1, classify_tier2
from calibration.types import Category, GroundTruthEntry, RunRow
from static.decision_engine import DEFAULT_THRESHOLD

CATEGORIES: tuple[Category, ...] = ("root", "ssl")
DEFAULT_BUCKET_EDGES = [0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1.0]


@dataclass(frozen=True)
class RateWithCount:
    numerator: int
    denominator: int

    @property
    def rate(self) -> float | None:
        return None if self.denominator == 0 else self.numerator / self.denominator


@dataclass(frozen=True)
class CategoryTier1Report:
    confirmed: int = 0
    not_confirmed: int = 0
    unverified: int = 0
    not_applicable: int = 0

    @property
    def confirmation_rate(self) -> RateWithCount:
        return RateWithCount(numerator=self.confirmed, denominator=self.confirmed + self.not_confirmed)


@dataclass(frozen=True)
class CategoryTier2Report:
    true_positive: int = 0
    false_positive: int = 0
    false_negative: int = 0
    true_negative: int = 0

    @property
    def precision(self) -> RateWithCount:
        return RateWithCount(numerator=self.true_positive, denominator=self.true_positive + self.false_positive)

    @property
    def recall(self) -> RateWithCount:
        return RateWithCount(numerator=self.true_positive, denominator=self.true_positive + self.false_negative)

    @property
    def f1(self) -> float | None:
        p, r = self.precision.rate, self.recall.rate
        if p is None or r is None or (p + r) == 0:
            return None
        return 2 * p * r / (p + r)

    @property
    def n(self) -> int:
        return self.true_positive + self.false_positive + self.false_negative + self.true_negative


@dataclass(frozen=True)
class CalibrationCurveBucket:
    range_low: float
    range_high: float
    count: int
    observed_positive_rate: float | None  # fraction where ground truth is True, among this bucket's ground-truthed observations


@dataclass(frozen=True)
class CalibrationReport:
    generated_at: str
    ground_truth_commit: str
    analysis_code_commit: str
    tier1: dict[Category, CategoryTier1Report]
    tier2: dict[Category, CategoryTier2Report]
    calibration_curve: dict[Category, list[CalibrationCurveBucket]]
    excluded_no_ground_truth: dict[Category, int] = field(default_factory=dict)
    excluded_partial_decompile: dict[Category, int] = field(default_factory=dict)
    # Manually maintained, not derived from run data - whether any
    # success_checks/*.py module implements real SSL bypass verification is
    # a fact about the current codebase, not something a run's data can
    # tell you (all three currently hardcode ssl_bypassed=None). Flip to
    # False once a real SSL success-check exists; nothing here would ever
    # do that automatically, so this must be updated by hand and reviewed
    # if it ever silently goes stale.
    ssl_verification_not_implemented: bool = True
    skeleton_warning: str = ""


def _field_names(category: Category) -> tuple[str, str, str]:
    return f"{category}_confidence", f"{category}_detected", f"{category}_bypassed"


def _bucket_index(confidence: float, edges: list[float]) -> int:
    for i in range(len(edges) - 1):
        if edges[i] <= confidence < edges[i + 1]:
            return i
    return len(edges) - 2  # confidence == edges[-1] (e.g. exactly 1.0)


def compute_calibration_report(
    runs: list[RunRow],
    ground_truth: dict[str, GroundTruthEntry],
    generated_at: str,
    ground_truth_commit: str,
    analysis_code_commit: str = "unknown",
    threshold: float | dict[Category, float] = 0.7,
    bucket_edges: list[float] | None = None,
) -> CalibrationReport:
    # G2: the decision engine tunes root and ssl independently (4-3), so each
    # category's calibration curve must mark its OWN decision boundary as an
    # explicit bucket edge. Accepts either a single shared threshold
    # (backward-compatible) or a per-category dict; a dict with a missing
    # category falls back to the engine default 0.7.
    base_edges = sorted(set(bucket_edges or DEFAULT_BUCKET_EDGES))
    if isinstance(threshold, dict):
        # Single source of truth for the default: import DEFAULT_THRESHOLD from
        # the decision engine rather than a literal, so a missing dict key can't
        # silently drift from the engine's actual default.
        thresholds: dict[Category, float] = {c: float(threshold.get(c, DEFAULT_THRESHOLD)) for c in CATEGORIES}
    else:
        thresholds = {c: float(threshold) for c in CATEGORIES}

    tier1: dict[Category, CategoryTier1Report] = {}
    tier2: dict[Category, CategoryTier2Report] = {}
    curve: dict[Category, list[CalibrationCurveBucket]] = {}
    excluded_no_gt: dict[Category, int] = {}
    excluded_partial: dict[Category, int] = {}

    for category in CATEGORIES:
        confidence_field, detected_field, bypassed_field = _field_names(category)
        tier1_counts = {outcome: 0 for outcome in Tier1Outcome}
        tier2_counts = {outcome: 0 for outcome in Tier2Outcome}
        no_gt_count = 0
        partial_count = 0
        edges = sorted(set(base_edges) | {thresholds[category]})
        bucket_hits: list[list[bool]] = [[] for _ in range(len(edges) - 1)]  # per-bucket list of ground_truth booleans

        for run in runs:
            confidence = getattr(run, confidence_field)
            detected = getattr(run, detected_field)
            bypassed = getattr(run, bypassed_field)

            tier1_counts[classify_tier1(detected, bypassed)] += 1

            gt_entry = ground_truth.get(run.apk_hash)
            gt_value = getattr(gt_entry, category) if gt_entry else None

            if run.decompile_completeness != "complete" and not detected:
                # G3: exclude only the NEGATIVE direction from Tier 2 and the
                # curve - a detected=False from an incomplete decompile isn't
                # proof of absence (the signature may live in the un-decompiled
                # portion). A detected=True partial run is a real positive found
                # in the partial corpus and stays counted; dropping it too would
                # deflate measured precision/recall. Tier 1 above is unaffected.
                # G1: count every run excluded here in partial_count regardless
                # of whether it also has a ground-truth entry, so the two
                # "Excluded from Tier 2" lines sum to every excluded run instead
                # of a partial-and-GT-less run silently dropping from both.
                partial_count += 1
                continue

            tier2_counts[classify_tier2(detected, gt_value)] += 1
            if gt_value is None:
                no_gt_count += 1
            else:
                bucket_hits[_bucket_index(confidence, edges)].append(gt_value)

        tier1[category] = CategoryTier1Report(
            confirmed=tier1_counts[Tier1Outcome.CONFIRMED],
            not_confirmed=tier1_counts[Tier1Outcome.NOT_CONFIRMED],
            unverified=tier1_counts[Tier1Outcome.UNVERIFIED],
            not_applicable=tier1_counts[Tier1Outcome.NOT_APPLICABLE],
        )
        tier2[category] = CategoryTier2Report(
            true_positive=tier2_counts[Tier2Outcome.TRUE_POSITIVE],
            false_positive=tier2_counts[Tier2Outcome.FALSE_POSITIVE],
            false_negative=tier2_counts[Tier2Outcome.FALSE_NEGATIVE],
            true_negative=tier2_counts[Tier2Outcome.TRUE_NEGATIVE],
        )
        excluded_no_gt[category] = no_gt_count
        excluded_partial[category] = partial_count
        curve[category] = [
            CalibrationCurveBucket(
                range_low=edges[i], range_high=edges[i + 1], count=len(hits),
                observed_positive_rate=(sum(hits) / len(hits)) if hits else None,
            )
            for i, hits in enumerate(bucket_hits)
        ]

    total_n = sum(t2.n for t2 in tier2.values())
    skeleton_warning = (
        f"Calibration curve is a skeleton, not a statistically robust result - only {total_n} "
        "ground-truthed category-observations exist across all known targets. Read bucket rates "
        "as directional at best, not as a reliable estimate of confidence-vs-accuracy."
        if total_n < 30 else ""
    )

    return CalibrationReport(
        generated_at=generated_at,
        ground_truth_commit=ground_truth_commit,
        analysis_code_commit=analysis_code_commit,
        tier1=tier1,
        tier2=tier2,
        calibration_curve=curve,
        excluded_no_ground_truth=excluded_no_gt,
        excluded_partial_decompile=excluded_partial,
        skeleton_warning=skeleton_warning,
    )
