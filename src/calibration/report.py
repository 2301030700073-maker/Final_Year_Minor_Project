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
from static.coverage import category_is_confident_negative
from static.decision_engine import DEFAULT_THRESHOLD

from common import CATEGORIES


def _category_is_confident_negative(run: RunRow, category: str) -> bool:
    """F2/G-A: a NEITHER is a confident negative only when every governing
    surface (root->{java,native,js}, ssl->{java,native,manifest,js}) is fully_analyzed.
    A run with NO coverage map (pre-coverage, or native.py not yet emitting
    states) scanned only Java - every other surface is effectively unscannable -
    so it cannot certify native/manifest clean. Its negative is NOT confident
    and is excluded from Tier 2 (types.py:46-48 documents this conservative
    default; returning True here would over-certify absence, ADR-0006/0008)."""
    if not run.coverage:
        return False  # no coverage -> surfaces unscannable -> not a confident negative
    return category_is_confident_negative(category, run.coverage)

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
        if p is None or r is None:
            # No data at all (an empty denominator) - genuinely undefined.
            return None
        # p + r == 0 with BOTH denominators non-empty (precision.rate is None when
        # its denominator is empty, so reaching here means both are measurable) is
        # a MEASURED F1 of 0.0 - every case got wrong - not "no data". Rendering it
        # None/N-A conflates the two, the exact confusion this module's docstring
        # says it exists to prevent.
        if (p + r) == 0:
            return 0.0
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
    # ADR-0033: this bucket's LOWER edge came from a decision threshold - either
    # the boundary this report was computed with, or one a run in the corpus was
    # actually classified at (Finding D, the edge merge below). The curve's own
    # prose claims the boundary always appears explicitly, and on a 0.1-multiple
    # threshold it is otherwise indistinguishable from the ordinary grid edges
    # around it. Set from the same expression that fed `edges`, so a marked
    # bucket and an inserted edge cannot disagree. A threshold equal to the TOP
    # edge marks no bucket (none starts there); the report's named threshold
    # covers that case.
    is_threshold_edge: bool = False


@dataclass(frozen=True)
class CalibrationReport:
    generated_at: str
    ground_truth_commit: str
    analysis_code_commit: str
    tier1: dict[Category, CategoryTier1Report]
    tier2: dict[Category, CategoryTier2Report]
    calibration_curve: dict[Category, list[CalibrationCurveBucket]]
    # ADR-0033: the decision boundary this report was computed with, per category
    # (root and ssl tune independently, 4-3). Named in the rendered header so a
    # marked curve edge can be matched to its value even when it lands on the
    # 0.1 grid, and so a corpus classified at more than one boundary says so.
    thresholds: dict[Category, float] = field(default_factory=dict)
    excluded_no_ground_truth: dict[Category, int] = field(default_factory=dict)
    # Despite the "decompile" in the name, this counts a NEITHER excluded from
    # Tier 2 for EITHER reason a negative isn't proof of absence: a partial/
    # unknown decompile (compute loop's first gate) OR an under-covered governing
    # surface - native/manifest/js, incl. pre-coverage runs (the per-surface
    # coverage gate). The two gates are mutually exclusive (the decompile gate
    # `continue`s first), so this stays a single, non-double-counted total; every
    # consumer must describe both causes, never the decompile alone.
    excluded_partial_decompile: dict[Category, int] = field(default_factory=dict)
    # CALIB-EXCL-MISS1: the subset of the above that is a KNOWN MISS - APK hashes
    # whose prediction for this category was NEITHER, whose independently-sourced
    # ground truth says the category IS present, and which were nonetheless
    # excluded because coverage could not certify the negative. They are not
    # counted as false negatives (correctly: an uncertifiable negative is not
    # proof of absence, ADR-0006/ADR-0008), so they do NOT depress recall - which
    # is exactly why they have to be named. Folded into a bare "excluded: N"
    # count, a reader of "recall 1.00" cannot tell an honestly-uncertifiable
    # negative apart from a case where independent ground truth says a real
    # detection was missed. Empty list = no such case, never "not checked".
    excluded_missed_positives: dict[Category, list[str]] = field(default_factory=dict)
    # Manually maintained, not derived from run data - whether every
    # success_checks/*.py module implements real SSL bypass verification is
    # a fact about the current codebase, not something a run's data can
    # tell you. Coverage is PARTIAL: AndroGoat (success_checks/androgoat.py)
    # implements real verification (ssl_bypassed=True on a fired
    # CertificatePinner.check hook), while the three UnCrackable checks
    # hardcode ssl_bypassed=None. Flip to False only once ALL modules do;
    # nothing here would ever do that automatically, so this must be updated
    # by hand and reviewed if it ever silently goes stale.
    ssl_verification_partial: bool = True
    skeleton_warning: str = ""


def _field_names(category: Category) -> tuple[str, str, str]:
    return f"{category}_confidence", f"{category}_detected", f"{category}_bypassed"


def _bucket_index(confidence: float, edges: list[float]) -> int:
    # Half-open buckets [edges[i], edges[i+1]); the very top edge (e.g. exactly
    # 1.0) belongs to the top bucket, caught by the fall-through below. A
    # confidence BELOW the lowest edge belongs to the BOTTOM bucket, never the
    # top: the bare `return len(edges) - 2` fallback used to catch BOTH cases, so
    # with a zoomed edge set (bucket_edges not anchored at 0.0) a low/zero-
    # confidence run - and every NEITHER carries confidence 0.0 - would land in
    # the TOP high-confidence bucket and silently corrupt the calibration curve.
    # The decider owns its own out-of-range guard; a caller must not have to
    # anchor edges at 0.0 for this to be correct (cf. COV1/SIG1). No behavior
    # change under the default edges (they start at 0.0, confidence is in [0,1]).
    if confidence < edges[0]:
        return 0
    for i in range(len(edges) - 1):
        if edges[i] <= confidence < edges[i + 1]:
            return i
    return len(edges) - 2  # confidence >= edges[-1] (e.g. exactly 1.0) -> top bucket


def _latest_run_per_apk(runs: list[RunRow]) -> list[RunRow]:
    """One row per APK - the most recent run, by `timestamp`.

    Rows with no timestamp (pre-column history) sort as oldest, so a real
    timestamped run always wins over them; among untimestamped rows the last
    one in list order wins (the loader's insertion order). Ties on an identical
    timestamp resolve to the later list position for the same reason. Input
    order of the surviving rows is preserved so downstream counting is stable.
    """
    best: dict[str, tuple[tuple[int, str], int, RunRow]] = {}
    for position, run in enumerate(runs):
        key = ((0, "") if run.timestamp is None else (1, run.timestamp), position)
        current = best.get(run.apk_hash)
        if current is None or key >= (current[0], current[1]):
            best[run.apk_hash] = (key[0], position, run)
    return [entry[2] for entry in sorted(best.values(), key=lambda e: e[1])]


def compute_calibration_report(
    runs: list[RunRow],
    ground_truth: dict[str, GroundTruthEntry],
    generated_at: str,
    ground_truth_commit: str,
    analysis_code_commit: str = "unknown",
    threshold: float | dict[Category, float] = DEFAULT_THRESHOLD,
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
    excluded_missed: dict[Category, list[str]] = {}

    # CALIB-WEIGHT1: Tier 1 is per-run by requirement (FR-9.1: "every
    # dynamically-verified run records ... into the calibration dataset") - each
    # bypass attempt is its own empirical observation. Tier 2 is not: it is the
    # precision/recall of the STATIC DETECTOR against independent ground truth,
    # and that is a property of an APK, not of how many times an APK happened to
    # be re-analyzed. Counting every row made the measurement (a) weighted by
    # re-run frequency - one APK in this corpus has 36 rows while others have 1,
    # so it silently dominated - and (b) permanently polluted by stale
    # predictions from superseded engine versions: a false positive fixed in the
    # code could never leave the metric, since its old row is still counted.
    # Tier 2 and the calibration curve therefore keep exactly one datapoint per
    # APK - its most recent run, i.e. the current detector's verdict.
    tier2_runs = _latest_run_per_apk(runs)

    for category in CATEGORIES:
        confidence_field, detected_field, bypassed_field = _field_names(category)
        threshold_field = "root_threshold" if category == "root" else "ssl_threshold"
        tier1_counts = {outcome: 0 for outcome in Tier1Outcome}
        tier2_counts = {outcome: 0 for outcome in Tier2Outcome}
        no_gt_count = 0
        partial_count = 0
        # CALIB-EXCL-MISS1: hashes excluded below whose ground truth says the
        # category IS present - a known miss that recall never sees.
        missed_positives: list[str] = []
        # Finding D: the decision boundary for each run is the threshold it was
        # actually classified under, which may differ across the corpus once
        # per-category tuning moves thresholds. Merge every run's own threshold
        # into the edge set so the curve annotates the boundary that governed
        # each run, rather than one current threshold over all of history.
        # None (pre-threshold runs) falls back to the current engine default.
        per_run_thresholds = {
            getattr(run, threshold_field) for run in tier2_runs
            if getattr(run, threshold_field) is not None
        }
        # ADR-0033: the SAME two sets feed the edge list and the bucket
        # provenance flag below - a threshold inserted as an edge is a threshold
        # the curve marks, and neither can drift from the other.
        threshold_edges = {thresholds[category]} | per_run_thresholds
        edges = sorted(set(base_edges) | threshold_edges)
        bucket_hits: list[list[bool]] = [[] for _ in range(len(edges) - 1)]  # per-bucket list of ground_truth booleans

        for run in runs:
            # Tier 1 only - every run, per FR-9.1.
            tier1_counts[classify_tier1(getattr(run, detected_field), getattr(run, bypassed_field))] += 1

        for run in tier2_runs:
            confidence = getattr(run, confidence_field)
            detected = getattr(run, detected_field)

            gt_entry = ground_truth.get(run.apk_hash)
            gt_value = getattr(gt_entry, category) if gt_entry else None

            if run.decompile_completeness != "complete" and not detected:
                # W1 (documented, not gated): "complete" is exit-code-derived
                # (jadx and apktool both exit 0), so a decompile that exits 0 on a
                # truncated corpus is treated as complete for Tier-2. This is not
                # separately gated on corpus size - RunRow carries no jadx_file_count
                # and there is no arbitrary low-corpus threshold to over-exclude on;
                # the report's RESID-4C low-corpus warning is not mirrored here.
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
                if gt_value is True:
                    missed_positives.append(run.apk_hash)
                continue

            # ADR-0008 (F2/G-A): the legacy decompile_completeness gate above is
            # the Java-only exclusion. Per-surface coverage (when present) gates
            # EVERY governing surface: a category's NEITHER is excluded if any of
            # its governing surfaces (root->{java,native,js}, ssl->{java,native,
            # manifest,js}) is partial/unscannable - so a root check hiding in a
            # stripped .so excludes the root negative even when Java is complete.
            # A run with no coverage field (pre-coverage, or native.py not yet
            # emitting states) scanned only Java, so all other governing surfaces
            # are unscannable and its negative is NOT confident (types.py:46-48) -
            # excluded here exactly like a partial-decompile negative (H1).
            if not detected and not _category_is_confident_negative(run, category):
                # An under-covered negative is not proof of absence - excluded from
                # Tier 2 and the curve exactly like a partial-decompile negative.
                partial_count += 1
                if gt_value is True:
                    missed_positives.append(run.apk_hash)
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
        excluded_missed[category] = missed_positives
        curve[category] = [
            CalibrationCurveBucket(
                range_low=edges[i], range_high=edges[i + 1], count=len(hits),
                observed_positive_rate=(sum(hits) / len(hits)) if hits else None,
                is_threshold_edge=edges[i] in threshold_edges,
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
        thresholds=dict(thresholds),
        excluded_no_ground_truth=excluded_no_gt,
        excluded_partial_decompile=excluded_partial,
        excluded_missed_positives=excluded_missed,
        skeleton_warning=skeleton_warning,
    )
