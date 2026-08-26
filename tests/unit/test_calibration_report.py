from calibration.report import (
    CategoryTier1Report, CategoryTier2Report, DEFAULT_BUCKET_EDGES, RateWithCount,
    _bucket_index, _category_is_confident_negative, compute_calibration_report,
)
from calibration.types import GroundTruthEntry, RunRow
from static.decision_engine import DEFAULT_THRESHOLD


def _run(apk_hash, run_id, action, root_confidence, root_detected, root_bypassed,
         ssl_confidence=0.0, ssl_detected=False, ssl_bypassed=None,
         decompile_completeness="complete", coverage=None,
         root_all_third_party=False, ssl_all_third_party=False):
    return RunRow(
        apk_hash=apk_hash, run_id=run_id, action=action,
        root_confidence=root_confidence, root_detected=root_detected, root_bypassed=root_bypassed,
        ssl_confidence=ssl_confidence, ssl_detected=ssl_detected, ssl_bypassed=ssl_bypassed,
        decompile_completeness=decompile_completeness, coverage=coverage,
        root_all_third_party=root_all_third_party, ssl_all_third_party=ssl_all_third_party,
    )


FULLY_ANALYZED = {"java": "fully_analyzed", "native": "fully_analyzed", "manifest": "fully_analyzed", "js": "fully_analyzed"}


def test_js_unanalyzed_negative_is_not_confident_in_calibration():
    # js is a governing surface (Hermes/RN bundles, Gap-7). A NEITHER whose
    # js surface is not fully analyzed is NOT a confident negative and must be
    # excluded from Tier 2 (ADR-0006) - locks the js governing surface into
    # calibration semantics so a future edit cannot drop it back out.
    cov = {**FULLY_ANALYZED, "js": "partial"}
    run = _run(
        "hash", "run1", "NEITHER", 0.2, False, None,
        decompile_completeness="complete", coverage=cov,
    )
    assert _category_is_confident_negative(run, "root") is False
    assert _category_is_confident_negative(run, "ssl") is False

    # With js fully analyzed the same negative IS confident.
    run_full = _run(
        "hash", "run2", "NEITHER", 0.2, False, None,
        decompile_completeness="complete", coverage=FULLY_ANALYZED,
    )
    assert _category_is_confident_negative(run_full, "root") is True
    assert _category_is_confident_negative(run_full, "ssl") is True


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


def test_bundled_sdk_qualifier_is_consumer_visible_not_a_detection_downgrade():
    """Locks the ADR-0010 decision: a DETECTED verdict whose governing evidence
    is entirely bundled third-party code is STILL a real detection and is still
    counted as a Tier-2 true positive when ground truth is positive. The
    pinning/root-check code is present in the shipped binary and affects the
    app, so downgrading it to not-TP would undercount real detections. The
    all_third_party flag is a consumer-visible qualifier, not a requalifier -
    it must never change a Tier-2 outcome."""
    runs = [
        # Bundled-SDK-only root detection (e.g. PropertyGuru: Sentry/Expo/Firebase).
        _run("pg_hash", "r1", "ROOT_ONLY", 0.90, True, None,
             root_all_third_party=True, coverage=FULLY_ANALYZED),
    ]
    ground_truth = {
        "pg_hash": GroundTruthEntry("pg_hash", root=True, ssl=False, source="manual review"),
    }
    report = compute_calibration_report(
        runs, ground_truth, generated_at="2026-08-11T00:00:00", ground_truth_commit="abc123",
    )
    # The qualifier is carried but does not requalify: still a true positive.
    assert report.tier2["root"].true_positive == 1
    assert report.tier2["root"].false_negative == 0
    assert report.tier2["root"].precision.rate == 1.0
    assert runs[0].root_all_third_party is True  # qualifier survives to the row

    # The GT-false half of the ADR-0010 decision: a bundled-SDK-only detection
    # against an app-owned FALSE ground truth is a real FP. The qualifier does
    # not suppress it (and must not - that would hide a genuine measurement,
    # ADR-0006). This is the price of binary-inclusive detection when GT is
    # authored app-owned; it is reported, not masked.
    runs_false = [
        _run("pg_false_hash", "r2", "ROOT_ONLY", 0.90, True, None,
             root_all_third_party=True, coverage=FULLY_ANALYZED),
    ]
    gt_false = {
        "pg_false_hash": GroundTruthEntry("pg_false_hash", root=False, ssl=False, source="manual review"),
    }
    report_false = compute_calibration_report(
        runs_false, gt_false, generated_at="2026-08-11T00:00:00", ground_truth_commit="abc123",
    )
    assert report_false.tier2["root"].false_positive == 1
    assert report_false.tier2["root"].true_positive == 0


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


def test_full_coverage_miss_counts_as_false_negative_not_excluded():
    # Calibration-integrity, the recall-honesty guard (ADR-0006/FR-9). recall =
    # TP/(TP+FN), so a GENUINE miss - the engine said NEITHER, EVERY governing
    # surface was fully_analyzed, and the ground-truth registry says the technique
    # is really present - MUST count as a FALSE NEGATIVE. If it were silently
    # excluded like an under-covered negative, FN would undercount and recall
    # would inflate: the tool would overclaim its own completeness, the exact
    # failure ADR-0006 forbids. classify_tier2's FN branch is unit-tested
    # (test_calibration_outcomes.py:46), but nothing pinned that the report's two
    # negative-only exclusion gates + per-category ground-truth routing actually
    # let a full-coverage miss REACH that branch through compute_calibration_report.
    # Asymmetric truth (root present, ssl absent) additionally locks that the miss
    # is slotted into the RIGHT category: a getattr(gt_entry, category) misroute
    # would flip these two blocks and this test would catch it.
    runs = [
        _run("miss_hash", "r1", "NEITHER", 0.00, False, None,
             decompile_completeness="complete", coverage=FULLY_ANALYZED),
    ]
    ground_truth = {
        "miss_hash": GroundTruthEntry("miss_hash", root=True, ssl=False, source="manual review"),
    }

    report = compute_calibration_report(
        runs, ground_truth, generated_at="2026-07-30T00:00:00", ground_truth_commit="abc123",
    )

    # root: a real miss under full coverage is COUNTED as FN, not excluded.
    assert report.tier2["root"].false_negative == 1
    assert report.tier2["root"].true_negative == 0
    assert report.tier2["root"].n == 1
    assert report.excluded_partial_decompile["root"] == 0  # NOT dropped as under-covered
    assert report.excluded_no_ground_truth["root"] == 0
    # recall reflects the miss honestly: TP=0, FN=1 -> 0.0, never None-hidden or inflated.
    assert report.tier2["root"].recall.rate == 0.0
    # ssl: genuinely absent + full coverage + gt absent -> a real confident TN,
    # proving the root miss was NOT misrouted into ssl's bucket.
    assert report.tier2["ssl"].true_negative == 1
    assert report.tier2["ssl"].false_negative == 0


def test_calibration_curve_marks_each_runs_own_threshold_as_a_boundary_edge():
    # FR-9 (Finding D): the curve used one current threshold as the decision
    # boundary for the whole corpus. Now each run's persisted threshold is merged
    # into the edge set, so a run classified under a non-default threshold gets
    # that boundary annotated (a run tuned to 0.85 must split the 0.8-0.9 bucket).
    from calibration.types import RunRow
    runs = [
        RunRow(
            apk_hash="h1", run_id="r1", action="ROOT_ONLY",
            root_confidence=0.84, root_detected=True, root_bypassed=True,
            ssl_confidence=0.0, ssl_detected=False, ssl_bypassed=None,
            decompile_completeness="complete", root_threshold=0.85,
        ),
    ]
    report = compute_calibration_report(
        runs, ground_truth={}, generated_at="t", ground_truth_commit="c",
        threshold=0.7,
    )
    curve = report.calibration_curve["root"]
    # 0.85 was this run's governing threshold - it must appear as a bucket edge
    # even though the current shared threshold passed in is 0.7.
    edges = {curve[0].range_low, curve[0].range_high}
    for b in curve:
        edges.add(b.range_low)
        edges.add(b.range_high)
    assert 0.85 in edges
    # and the run lands in the bucket just below its own 0.85 boundary
    assert any(b.range_low <= 0.84 < b.range_high for b in curve)


def test_bucket_index_below_lowest_edge_goes_to_bottom_not_top():
    # CURVE1: half-open buckets [lo, hi); the top edge (1.0) belongs to the top
    # bucket, but a confidence BELOW the lowest edge must land in the BOTTOM
    # bucket, never fall through to the top. With a zoomed edge set (an analyst
    # focusing the curve on the decision region [0.5,1.0]) a 0.0-confidence run -
    # and EVERY NEITHER carries confidence 0.0 - previously landed in the TOP
    # high-confidence bucket via the bare `len(edges)-2` fallback, silently
    # corrupting the FR-9 calibration curve. The decider owns its own out-of-range
    # guard (cf. COV1/SIG1); a caller must not have to anchor edges at 0.0.
    zoom = [0.5, 0.7, 0.9, 1.0]      # buckets: 0=[0.5,0.7) 1=[0.7,0.9) 2=[0.9,1.0)
    assert _bucket_index(0.0, zoom) == 0     # below range -> bottom (was 2, the top bucket)
    assert _bucket_index(0.49, zoom) == 0    # below range -> bottom
    assert _bucket_index(0.5, zoom) == 0     # exactly the lowest edge -> bottom
    assert _bucket_index(0.8, zoom) == 1     # interior unchanged
    assert _bucket_index(1.0, zoom) == 2     # top edge -> top bucket (unchanged)


def test_bucket_index_default_edges_placement_unchanged():
    # The fix is behavior-preserving for the real consumer: default edges start
    # at 0.0 and confidence is a [0,1] score, so the below-range branch is never
    # taken and every placement is identical to before.
    e = DEFAULT_BUCKET_EDGES
    assert _bucket_index(0.0, e) == 0                # [0.0,0.1)
    assert _bucket_index(0.05, e) == 0
    assert _bucket_index(0.7, e) == 7                # [0.7,0.8)
    assert _bucket_index(0.95, e) == 9               # [0.9,1.0)
    assert _bucket_index(1.0, e) == len(e) - 2       # top edge -> top bucket [0.9,1.0)
