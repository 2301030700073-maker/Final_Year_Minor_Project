from calibration.report import (
    CategoryTier1Report, CategoryTier2Report, DEFAULT_BUCKET_EDGES, RateWithCount,
    _bucket_index, _category_is_confident_negative, compute_calibration_report,
)
from calibration.types import GroundTruthEntry, RunRow
from static.decision_engine import DEFAULT_THRESHOLD


def _run(apk_hash, run_id, action, root_confidence, root_detected, root_bypassed,
         ssl_confidence=0.0, ssl_detected=False, ssl_bypassed=None,
         decompile_completeness="complete", coverage=None,
         root_all_third_party=False, ssl_all_third_party=False, timestamp=None):
    return RunRow(
        apk_hash=apk_hash, run_id=run_id, action=action,
        root_confidence=root_confidence, root_detected=root_detected, root_bypassed=root_bypassed,
        ssl_confidence=ssl_confidence, ssl_detected=ssl_detected, ssl_bypassed=ssl_bypassed,
        decompile_completeness=decompile_completeness, coverage=coverage,
        root_all_third_party=root_all_third_party, ssl_all_third_party=ssl_all_third_party,
        timestamp=timestamp,
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


def test_tier2_f1_is_zero_not_none_when_every_case_went_wrong():
    # A detector that got EVERY case wrong (0 TP, but both denominators populated -
    # FP=3/FN=2) has a MEASURED precision and recall of 0.0 and an F1 of 0.0, not
    # "no data". Returning None there rendered N/A, conflating worst-possible with
    # not-yet-measured - the exact confusion this module's docstring forbids.
    report = CategoryTier2Report(true_positive=0, false_positive=3, false_negative=2, true_negative=1)
    assert report.precision.rate == 0.0
    assert report.recall.rate == 0.0
    assert report.f1 == 0.0


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


def test_calibration_curve_marks_the_threshold_edge_and_names_the_boundary():
    # ADR-0033: the curve INSERTS the decision threshold as an explicit edge
    # (Finding D) but never recorded WHICH edge that was, so on a 0.1-multiple
    # threshold the boundary the curve exists to surface was indistinguishable
    # from the grid edges around it. The bucket starting at the threshold is now
    # flagged, and the boundary value travels on the report.
    runs = [_run("uc1_hash", "r1", "ROOT_ONLY", 0.80, True, True)]
    ground_truth = {"uc1_hash": GroundTruthEntry("uc1_hash", root=True, ssl=False, source="manual review")}

    report = compute_calibration_report(
        runs, ground_truth, generated_at="2026-07-30T00:00:00", ground_truth_commit="abc123", threshold=0.7,
    )

    assert report.thresholds == {"root": 0.7, "ssl": 0.7}
    flagged = [b.range_low for b in report.calibration_curve["root"] if b.is_threshold_edge]
    assert flagged == [0.7]  # the range START at the boundary, exactly one edge
    assert sum(b.is_threshold_edge for b in report.calibration_curve["ssl"]) == 1


def test_calibration_curve_marks_a_historical_run_threshold_beside_the_current_one():
    # Finding D merges every run's OWN threshold into the edges, so a corpus
    # spanning two boundaries has two threshold edges. Both must be marked - and
    # the report must still name the boundary IN FORCE: a historical 0.84 is not
    # the current threshold and must not be reported as one.
    runs = [RunRow(
        apk_hash="uc1_hash", run_id="r1", action="ROOT_ONLY",
        root_confidence=0.80, root_detected=True, root_bypassed=True,
        ssl_confidence=0.0, ssl_detected=False, ssl_bypassed=None,
        decompile_completeness="complete", root_threshold=0.84,
    )]
    ground_truth = {"uc1_hash": GroundTruthEntry("uc1_hash", root=True, ssl=False, source="manual review")}

    report = compute_calibration_report(
        runs, ground_truth, generated_at="2026-07-30T00:00:00", ground_truth_commit="abc123", threshold=0.7,
    )

    assert sorted(b.range_low for b in report.calibration_curve["root"] if b.is_threshold_edge) == [0.7, 0.84]
    assert report.thresholds["root"] == 0.7  # the boundary in force, not the run's own


def test_calibration_curve_threshold_at_the_top_edge_marks_no_bucket_but_is_still_named():
    # A threshold of 1.0 is inserted into `edges` only as the final close, so no
    # bucket STARTS there and the marker structurally cannot appear. The named
    # boundary is the backstop that keeps the fact from being lost (ADR-0033 #3),
    # and the marker being absent here must not leak into the other category.
    runs = [_run("uc1_hash", "r1", "ROOT_ONLY", 0.80, True, True)]
    ground_truth = {"uc1_hash": GroundTruthEntry("uc1_hash", root=True, ssl=False, source="manual review")}

    report = compute_calibration_report(
        runs, ground_truth, generated_at="2026-07-30T00:00:00", ground_truth_commit="abc123",
        threshold={"root": 1.0, "ssl": 0.7},
    )

    assert not any(b.is_threshold_edge for b in report.calibration_curve["root"])
    assert report.thresholds["root"] == 1.0
    assert [b.range_low for b in report.calibration_curve["ssl"] if b.is_threshold_edge] == [0.7]


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


def test_tier2_keeps_one_datapoint_per_apk_latest_run_only():
    # CALIB-WEIGHT1: Tier 1 counts every run (FR-9.1 - each bypass attempt is its
    # own empirical observation), but Tier 2 measures the precision/recall of the
    # static detector, which is a property of an APK rather than of how many times
    # that APK was re-analyzed. Counting every row (a) weighted the measurement by
    # re-run frequency, so one heavily re-run APK dominated the corpus, and (b)
    # kept counting stale verdicts from superseded engine versions, so a false
    # positive fixed in the code could never leave the metric.
    gt = {"apk": GroundTruthEntry(apk_hash="apk", root=False, ssl=None, source="manual")}
    # three stale FP runs, then the corrected run that is now the detector's answer
    runs = [
        _run("apk", f"old{i}", "ROOT_ONLY", 0.9, True, None,
             coverage=FULLY_ANALYZED, timestamp=f"2026-09-01T00:0{i}:00Z")
        for i in range(3)
    ] + [
        _run("apk", "new", "NEITHER", 0.0, False, None,
             coverage=FULLY_ANALYZED, timestamp="2026-09-01T00:09:00Z"),
    ]

    report = compute_calibration_report(
        runs, gt, generated_at="now", ground_truth_commit="abc",
    )
    t2 = report.tier2["root"]
    assert (t2.true_positive, t2.false_positive, t2.false_negative, t2.true_negative) == (0, 0, 0, 1)
    assert t2.n == 1
    # Tier 1 still sees all four runs.
    t1 = report.tier1["root"]
    assert t1.confirmed + t1.not_confirmed + t1.unverified + t1.not_applicable == 4


def test_tier2_latest_run_per_apk_prefers_timestamp_over_list_order():
    # An out-of-order corpus must still resolve to the newest run, and an
    # untimestamped legacy row must never outrank a real timestamped one.
    gt = {"apk": GroundTruthEntry(apk_hash="apk", root=True, ssl=None, source="manual")}
    newest = _run("apk", "newest", "ROOT_ONLY", 0.9, True, None,
                  coverage=FULLY_ANALYZED, timestamp="2026-09-01T10:00:00Z")
    older = _run("apk", "older", "NEITHER", 0.0, False, None,
                 coverage=FULLY_ANALYZED, timestamp="2026-08-01T10:00:00Z")
    legacy = _run("apk", "legacy", "NEITHER", 0.0, False, None, coverage=FULLY_ANALYZED)

    report = compute_calibration_report(
        [newest, older, legacy], gt, generated_at="now", ground_truth_commit="abc",
    )
    t2 = report.tier2["root"]
    assert (t2.true_positive, t2.false_negative, t2.n) == (1, 0, 1)


def test_excluded_known_miss_named_at_the_coverage_gate_not_just_counted():
    # CALIB-EXCL-MISS1, the real case that motivated the field (RS_Vapour): the
    # engine said NEITHER, independent ground truth says root-detection IS
    # present, and a governing surface was under-covered - so the observation is
    # excluded from Tier 2. That exclusion is correct (an uncertifiable negative
    # is not proof of absence, ADR-0006/ADR-0008) and it means the miss is NOT an
    # FN, so it does not depress recall. It therefore has to be NAMED: folded
    # into a bare "excluded: N" it is indistinguishable from an honestly
    # uncertifiable negative, and a reader of "recall 1.00" cannot tell that we
    # know we missed one.
    cov = {**FULLY_ANALYZED, "native": "partial"}
    runs = [
        _run("known_miss_hash", "r1", "NEITHER", 0.30, False, None,
             decompile_completeness="complete", coverage=cov),
    ]
    ground_truth = {
        "known_miss_hash": GroundTruthEntry("known_miss_hash", root=True, ssl=False, source="DEX-verified"),
    }

    report = compute_calibration_report(
        runs, ground_truth, generated_at="2026-09-03T00:00:00", ground_truth_commit="abc123",
    )

    assert report.excluded_partial_decompile["root"] == 1          # still counted as excluded
    assert report.excluded_missed_positives["root"] == ["known_miss_hash"]
    # The whole point: it is NOT laundered into a metric. Tier 2 sees nothing.
    t2 = report.tier2["root"]
    assert (t2.true_positive, t2.false_positive, t2.false_negative, t2.true_negative, t2.n) == (0, 0, 0, 0, 0)
    assert t2.recall.rate is None  # no certifiable observation to measure against
    # ssl is genuinely absent here and also under-covered -> excluded too, but it
    # is NOT a known miss (gt says absent), so its list stays empty. This is what
    # separates "we missed a real detection" from "we could not certify a clean
    # scan" - the two must never share a bucket.
    assert report.excluded_partial_decompile["ssl"] == 1
    assert report.excluded_missed_positives["ssl"] == []


def test_excluded_known_miss_named_at_the_partial_decompile_gate_too():
    # The other exclusion gate (partial/unknown decompile, the legacy Java-only
    # one) must name its known misses identically - the two gates are mutually
    # exclusive, so a field wired into only one of them would silently report
    # zero known misses for every partial-decompile corpus.
    runs = [
        _run("partial_miss_hash", "r1", "NEITHER", 0.00, False, None,
             decompile_completeness="partial"),
    ]
    ground_truth = {
        "partial_miss_hash": GroundTruthEntry("partial_miss_hash", root=True, ssl=None, source="manual review"),
    }

    report = compute_calibration_report(
        runs, ground_truth, generated_at="2026-09-03T00:00:00", ground_truth_commit="abc123",
    )

    assert report.excluded_partial_decompile["root"] == 1
    assert report.excluded_missed_positives["root"] == ["partial_miss_hash"]
    assert report.tier2["root"].n == 0
    # ssl ground truth is None (not established) - an unknown label is not a
    # known miss, so it must not be named as one.
    assert report.excluded_missed_positives["ssl"] == []


def test_excluded_known_miss_empty_means_no_such_case_not_unchecked():
    # The complement, and the guard against the field reading as decoration: a
    # corpus with a genuine confident TN, a counted FN, and an excluded negative
    # whose ground truth says ABSENT must report an EMPTY known-miss list for
    # every category. Empty here is a measured "no such case", so it can only
    # stay trustworthy if the populated cases above are the only ones that fill it.
    runs = [
        # A real FN: full coverage, gt present -> counted in Tier 2, NOT a
        # "known miss" in this sense (recall already reflects it).
        _run("counted_fn", "r1", "NEITHER", 0.00, False, None, coverage=FULLY_ANALYZED),
        # An excluded negative whose gt says absent -> uncertifiable, not a miss.
        _run("uncertifiable", "r2", "NEITHER", 0.00, False, None,
             coverage={**FULLY_ANALYZED, "js": "unscannable"}),
    ]
    ground_truth = {
        "counted_fn": GroundTruthEntry("counted_fn", root=True, ssl=False, source="manual review"),
        "uncertifiable": GroundTruthEntry("uncertifiable", root=False, ssl=False, source="manual review"),
    }

    report = compute_calibration_report(
        runs, ground_truth, generated_at="2026-09-03T00:00:00", ground_truth_commit="abc123",
    )

    assert report.tier2["root"].false_negative == 1      # the real FN still depresses recall
    assert report.tier2["root"].recall.rate == 0.0
    assert report.excluded_partial_decompile["root"] == 1  # the uncertifiable one
    assert report.excluded_missed_positives == {"root": [], "ssl": []}

