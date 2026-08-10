from calibration.report import CategoryTier1Report, CategoryTier2Report, RateWithCount, compute_calibration_report
from calibration.types import GroundTruthEntry, RunRow
from static.decision_engine import DEFAULT_THRESHOLD


def _run(apk_hash, run_id, action, root_confidence, root_detected, root_bypassed,
         ssl_confidence=0.0, ssl_detected=False, ssl_bypassed=None,
         decompile_completeness="complete", coverage=None):
    return RunRow(
        apk_hash=apk_hash, run_id=run_id, action=action,
        root_confidence=root_confidence, root_detected=root_detected, root_bypassed=root_bypassed,
        ssl_confidence=ssl_confidence, ssl_detected=ssl_detected, ssl_bypassed=ssl_bypassed,
        decompile_completeness=decompile_completeness, coverage=coverage,
    )


FULLY_ANALYZED = {"java": "fully_analyzed", "native": "fully_analyzed", "manifest": "fully_analyzed"}


def test_rate_with_count_reports_none_not_zero_on_empty_denominator():
    rate = RateWithCount(numerator=0, denominator=0)
    assert rate.rate is None


def test_rate_with_count_computes_real_rate():
    rate = RateWithCount(numerator=3, denominator=4)
    assert rate.rate == 0.75


def test_tier1_confirmation_rate_none_when_nothing_predicted_detected():
    report = CategoryTier1Report(confirmed=0, not_confirmed=0, unverified=0, not_applicable=4)
    assert report.confirmation_rate.rate is None


def test_tier2_precision_recall_f1_none_on_zero_denominators():
    report = CategoryTier2Report(true_positive=0, false_positive=0, false_negative=0, true_negative=4)
    assert report.precision.rate is None  # 0/0
    assert report.recall.rate is None      # 0/0
    assert report.f1 is None


def test_tier2_precision_recall_f1_real_math():
    report = CategoryTier2Report(true_positive=3, false_positive=0, false_negative=0, true_negative=1)
    assert report.precision.rate == 1.0
    assert report.recall.rate == 1.0
    assert report.f1 == 1.0


def test_end_to_end_against_real_current_numbers():
    """Regression test using the actual, real, currently-committed report
    data - not synthetic (docs/plans/handoff/bundles/20260729T163534Z,
    20260729T163412Z, 20260730T025301Z, 20260730T042612Z). Locks in the
    exact numbers a real calibration-report run should produce today."""
    runs = [
        _run("uc1_hash", "r1", "ROOT_ONLY", 0.80, True, True, coverage=FULLY_ANALYZED),
        _run("uc2_hash", "r2", "ROOT_ONLY", 0.80, True, True, coverage=FULLY_ANALYZED),
        _run("uc3_hash", "r3", "ROOT_ONLY", 0.80, True, True, coverage=FULLY_ANALYZED),
        # Contacts is a *fixture* fully-analyzed run (all surfaces clean), so its
        # NEITHER is a confident TN. This locks in the calibration MATH given the
        # fixture input, not a claim about contacts' real per-surface coverage - a
        # real no-native-lib app would be native=unscannable and its negatives
        # excluded (F3). FULLY_ANALYZED is the fixture choice that makes the
        # expected TN counts deterministic here.
        _run("contacts_hash", "r4", "NEITHER", 0.00, False, None, coverage=FULLY_ANALYZED),
    ]
    ground_truth = {
        "uc1_hash": GroundTruthEntry("uc1_hash", root=True, ssl=False, source="manual review"),
        "uc2_hash": GroundTruthEntry("uc2_hash", root=True, ssl=False, source="manual review"),
        "uc3_hash": GroundTruthEntry("uc3_hash", root=True, ssl=False, source="manual review"),
        "contacts_hash": GroundTruthEntry("contacts_hash", root=False, ssl=False, source="known stock app"),
    }

    report = compute_calibration_report(
        runs, ground_truth, generated_at="2026-07-30T00:00:00", ground_truth_commit="abc123",
    )

    # Root: 3 true positives (detected + genuinely there), 1 true negative
    # (Contacts, correctly not detected) - a clean, real 1.0/1.0/1.0.
    assert report.tier2["root"].true_positive == 3
    assert report.tier2["root"].true_negative == 1
    assert report.tier2["root"].precision.rate == 1.0
    assert report.tier2["root"].recall.rate == 1.0
    assert report.tier2["root"].f1 == 1.0

    # SSL: nothing was ever predicted detected, so precision/recall have a
    # genuine 0/0 denominator - must be None, not a misleading 1.0 that
    # would result from blending root and ssl together.
    assert report.tier2["ssl"].true_positive == 0
    assert report.tier2["ssl"].true_negative == 4
    assert report.tier2["ssl"].precision.rate is None
    assert report.tier2["ssl"].recall.rate is None
    assert report.tier2["ssl"].f1 is None

    # Tier 1: all three root bypasses genuinely confirmed; ssl was never
    # even attempted (NEITHER/ROOT_ONLY never triggers an ssl bypass script).
    assert report.tier1["root"].confirmed == 3
    assert report.tier1["root"].confirmation_rate.rate == 1.0
    assert report.tier1["ssl"].not_applicable == 4
    assert report.tier1["ssl"].confirmation_rate.rate is None


def test_partial_decompile_run_with_positive_detection_stays_in_tier2():
    # G3: a detected=True partial run is a real positive found in the partial
    # corpus - excluding it too would deflate precision/recall. Only the
    # negative direction (detected=False, where an incomplete decompile isn't
    # proof of absence) is dropped from Tier 2.
    runs = [
        _run("propertyguru_hash", "r1", "ROOT_ONLY", 0.80, True, True, decompile_completeness="partial"),
    ]
    ground_truth = {"propertyguru_hash": GroundTruthEntry("propertyguru_hash", root=True, ssl=None, source="manual review")}

    report = compute_calibration_report(
        runs, ground_truth, generated_at="2026-07-30T00:00:00", ground_truth_commit="abc123",
    )

    assert report.tier1["root"].confirmed == 1
    assert report.tier2["root"].true_positive == 1  # partial positive counts as a real TP
    assert report.tier2["root"].n == 1
    assert report.excluded_partial_decompile["root"] == 0


def test_partial_decompile_run_with_negative_detection_excluded_from_tier2():
    # G3: a detected=False partial run is ambiguous (the corpus was incomplete,
    # so absence isn't proof) and is dropped from Tier 2.
    runs = [
        _run("propertyguru_hash", "r1", "NEITHER", 0.20, False, None, decompile_completeness="partial"),
    ]
    ground_truth = {"propertyguru_hash": GroundTruthEntry("propertyguru_hash", root=False, ssl=None, source="manual review")}

    report = compute_calibration_report(
        runs, ground_truth, generated_at="2026-07-30T00:00:00", ground_truth_commit="abc123",
    )

    assert report.tier2["root"].n == 0
    assert report.excluded_partial_decompile["root"] == 1


def test_partial_no_ground_truth_run_counted_in_partial_tally():
    # G1: a partial-decompile run with no ground-truth entry used to drop from
    # BOTH exclusion tallies - the partial branch only incremented when a
    # gt_value existed, and the no_gt branch was skipped by the continue. So the
    # report undercounted excluded runs. It's now counted in partial_count, its
    # primary exclusion reason.
    runs = [
        _run("unknown_app", "r1", "NEITHER", 0.20, False, None, decompile_completeness="partial"),
    ]

    report = compute_calibration_report(
        runs, ground_truth={}, generated_at="2026-07-30T00:00:00", ground_truth_commit="abc123",
    )

    assert report.tier2["root"].n == 0
    assert report.excluded_partial_decompile["root"] == 1
    assert report.excluded_no_ground_truth["root"] == 0  # not double-counted


def test_no_ground_truth_entry_excluded_from_tier2_counted_separately():
    runs = [_run("unknown_app", "r1", "ROOT_ONLY", 0.75, True, True)]

    report = compute_calibration_report(
        runs, ground_truth={}, generated_at="2026-07-30T00:00:00", ground_truth_commit="abc123",
    )

    assert report.tier2["root"].n == 0
    assert report.excluded_no_ground_truth["root"] == 1
    assert report.tier1["root"].confirmed == 1  # Tier 1 doesn't need ground truth at all


def test_calibration_curve_buckets_include_the_threshold_as_an_explicit_edge():
    runs = [_run("uc1_hash", "r1", "ROOT_ONLY", 0.80, True, True)]
    ground_truth = {"uc1_hash": GroundTruthEntry("uc1_hash", root=True, ssl=False, source="manual review")}

    report = compute_calibration_report(
        runs, ground_truth, generated_at="2026-07-30T00:00:00", ground_truth_commit="abc123", threshold=0.7,
    )

    edges = sorted({b.range_low for b in report.calibration_curve["root"]} | {report.calibration_curve["root"][-1].range_high})
    assert 0.7 in edges


def test_calibration_curve_supports_per_category_thresholds():
    # G2: the decision engine tunes root and ssl independently (4-3), so each
    # category's curve must mark its OWN decision boundary. A dict threshold
    # yields a distinct explicit edge per category; the values chosen (0.75 /
    # 0.85) are not in DEFAULT_BUCKET_EDGES, so their presence proves the
    # per-category threshold, not a default edge.
    runs = [_run("uc1_hash", "r1", "ROOT_ONLY", 0.80, True, True)]
    ground_truth = {"uc1_hash": GroundTruthEntry("uc1_hash", root=True, ssl=False, source="manual review")}

    report = compute_calibration_report(
        runs, ground_truth, generated_at="2026-07-30T00:00:00", ground_truth_commit="abc123",
        threshold={"root": 0.75, "ssl": 0.85},
    )

    def _edges(cat):
        return sorted({b.range_low for b in report.calibration_curve[cat]} | {report.calibration_curve[cat][-1].range_high})

    assert 0.75 in _edges("root")
    assert 0.85 in _edges("ssl")
    assert 0.75 not in _edges("ssl")  # each category carries only its own boundary


def test_calibration_curve_uses_engine_default_when_threshold_omitted():
    # The no-arg library path must track the engine's DEFAULT_THRESHOLD, not a
    # magic literal - otherwise a caller who omits threshold silently diverges
    # from the live decision engine the moment that default changes. The edge is
    # asserted against the symbol, not a hardcoded 0.7, so the test stays valid
    # if the engine default ever changes.
    runs = [_run("uc1_hash", "r1", "ROOT_ONLY", 0.80, True, True)]
    ground_truth = {"uc1_hash": GroundTruthEntry("uc1_hash", root=True, ssl=False, source="manual review")}

    report = compute_calibration_report(
        runs, ground_truth, generated_at="2026-07-30T00:00:00", ground_truth_commit="abc123",
    )  # no threshold arg -> must use the engine default

    edges = {b.range_low for b in report.calibration_curve["root"]} | {report.calibration_curve["root"][-1].range_high}
    assert DEFAULT_THRESHOLD in edges


def test_calibration_curve_empty_bucket_reports_no_data_not_zero_percent():
    runs = [_run("uc1_hash", "r1", "ROOT_ONLY", 0.80, True, True)]
    ground_truth = {"uc1_hash": GroundTruthEntry("uc1_hash", root=True, ssl=False, source="manual review")}

    report = compute_calibration_report(
        runs, ground_truth, generated_at="2026-07-30T00:00:00", ground_truth_commit="abc123",
    )

    empty_buckets = [b for b in report.calibration_curve["root"] if b.count == 0]
    assert empty_buckets  # at least one bucket has no observations
    assert all(b.observed_positive_rate is None for b in empty_buckets)


def test_skeleton_warning_present_below_sample_floor():
    runs = [_run("uc1_hash", "r1", "ROOT_ONLY", 0.80, True, True)]
    ground_truth = {"uc1_hash": GroundTruthEntry("uc1_hash", root=True, ssl=False, source="manual review")}

    report = compute_calibration_report(
        runs, ground_truth, generated_at="2026-07-30T00:00:00", ground_truth_commit="abc123",
    )

    assert report.skeleton_warning  # non-empty - n is nowhere near statistically robust yet


def test_pre_coverage_negative_excluded_from_tier2():
    # H1: a complete-decompile NEITHER with coverage=None (pre-coverage run that
    # only scanned Java) must NOT certify as a confident TN - native/manifest
    # were never scanned. Its negative is excluded from Tier 2 (types.py:46-48),
    # not counted as a verified true negative.
    runs = [
        _run("old_hash", "r1", "NEITHER", 0.00, False, None, decompile_completeness="complete", coverage=None),
    ]
    ground_truth = {"old_hash": GroundTruthEntry("old_hash", root=False, ssl=False, source="manual review")}

    report = compute_calibration_report(
        runs, ground_truth, generated_at="2026-07-30T00:00:00", ground_truth_commit="abc123",
    )

    assert report.tier2["root"].n == 0              # excluded, not a TN
    assert report.tier2["root"].true_negative == 0  # no fabricated confident negative
    assert report.excluded_partial_decompile["root"] == 1  # excluded like an under-covered negative


def test_pre_coverage_negative_but_full_coverage_counts_tn():
    # Contrast: the SAME NEITHER with full per-surface coverage IS a confident
    # TN - coverage is what earns the negative a place in Tier 2, not its absence.
    runs = [
        _run("new_hash", "r1", "NEITHER", 0.00, False, None, decompile_completeness="complete", coverage=FULLY_ANALYZED),
    ]
    ground_truth = {"new_hash": GroundTruthEntry("new_hash", root=False, ssl=False, source="manual review")}

    report = compute_calibration_report(
        runs, ground_truth, generated_at="2026-07-30T00:00:00", ground_truth_commit="abc123",
    )

    assert report.tier2["root"].true_negative == 1
    assert report.tier2["root"].n == 1
