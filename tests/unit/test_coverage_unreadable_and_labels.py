"""The two contradictions between what a run's coverage layer certified and what
its own output said about the same verdict (2026-09-04).

1. UNREAD1 - `apply_unreadable_files_java`. A candidate file the scan enumerated
   but could not READ (OSError) was surfaced as a console/report CAUTION and
   nowhere else: it never reached the coverage map, so `java` stayed
   `fully_analyzed`, the verdict certified as a confident negative, and Tier-2
   calibration counted it as a true negative - over bytes no signature was ever
   matched against.
2. LABEL1 - `verdict_label`. The per-category line rendered a bare
   `"DETECTED" if detected else "Inconclusive"`, so a fully-covered clean run
   printed "root: NEITHER is a confident negative (...)" and "Root: 0.00 ->
   Inconclusive" on adjacent lines while calibration counted that same verdict as
   a certified TN. Three layers, three different answers.
"""
from __future__ import annotations

from dataclasses import replace

import pytest

from common import CategoryVerdict
from static.coverage import (
    apply_coverage_bound,
    apply_unreadable_files_java,
    category_is_confident_negative,
    confidence_bound,
    coverage_bound_line,
    verdict_label,
)

FULL = {"java": "fully_analyzed", "native": "fully_analyzed",
        "manifest": "fully_analyzed", "js": "fully_analyzed"}


def _v(*, detected=False, confidence=0.0, limited=False):
    return CategoryVerdict(confidence=confidence, detected=detected, evidence=[],
                           coverage_limited=limited)


# --- UNREAD1: unread candidate files bind the java surface -------------------

def test_unreadable_files_downgrade_java_to_partial():
    assert apply_unreadable_files_java(dict(FULL), 1)["java"] == "partial"


def test_zero_unreadable_files_is_a_noop():
    assert apply_unreadable_files_java(dict(FULL), 0) == FULL


@pytest.mark.parametrize("state", ["partial", "unscannable"])
def test_never_upgrades_an_already_bound_surface(state):
    cov = {**FULL, "java": state}
    assert apply_unreadable_files_java(cov, 3)["java"] == state


def test_only_the_java_surface_is_touched():
    out = apply_unreadable_files_java(dict(FULL), 5)
    assert {k: v for k, v in out.items() if k != "java"} == {
        k: v for k, v in FULL.items() if k != "java"
    }


def test_input_dict_is_not_mutated():
    cov = dict(FULL)
    apply_unreadable_files_java(cov, 2)
    assert cov["java"] == "fully_analyzed", "must return a new dict, not mutate"


def test_it_is_idempotent_and_order_independent():
    once = apply_unreadable_files_java(dict(FULL), 1)
    assert apply_unreadable_files_java(once, 1) == once


def test_the_gap_this_closes_a_clean_negative_no_longer_certifies():
    """The whole point: with unread files present, root/ssl NEITHER must stop being
    a confident negative - which is what excludes it from Tier-2 as a TN."""
    for cat in ("root", "ssl"):
        assert category_is_confident_negative(cat, FULL) is True, "precondition"
    bound = apply_unreadable_files_java(dict(FULL), 5)
    for cat in ("root", "ssl"):
        assert category_is_confident_negative(cat, bound) is False


def test_real_run_shape_that_proved_this_was_not_hypothetical():
    """Run 2026-08-15T12:34:25 of 08e94c06... (com.allproperty.android.consumer.my)
    stored java=fully_analyzed with 5 unreadable candidates, one of them
    `assets/index.android.bundle` - the React Native bundle that is exactly where
    that app's root detection lives (it is this project's recorded known root
    miss). Same surface map, same count, asserted here as a regression fixture."""
    stored = {"java": "fully_analyzed", "native": "partial", "manifest": "fully_analyzed"}
    assert apply_unreadable_files_java(stored, 5) == {**stored, "java": "partial"}


def test_the_caution_and_the_coverage_map_now_agree():
    """The console/report CAUTION says "treat any NEITHER/Inconclusive verdict as
    degraded, not a full-scan clean". Before UNREAD1 the coverage line printed in
    the same run said the opposite; now both say lower-bound."""
    line = coverage_bound_line(apply_unreadable_files_java(dict(FULL), 1))
    assert "root: NEITHER is a lower bound, NOT confident" in line
    assert "ssl: NEITHER is a lower bound, NOT confident" in line


# --- LABEL1: the per-category label ------------------------------------------

def test_detected_still_reads_detected():
    assert verdict_label("root", _v(detected=True, confidence=1.0), FULL) == "DETECTED"


def test_detected_wins_even_when_coverage_limited():
    """A DETECTED verdict is a positive finding; the coverage bound annotates its
    confidence (confidence_bound) but must not relabel the finding itself."""
    v = _v(detected=True, confidence=1.0, limited=True)
    assert verdict_label("root", v, {"java": "partial"}) == "DETECTED"


def test_certified_negative_no_longer_reads_inconclusive():
    assert verdict_label("root", _v(), FULL) == "NOT DETECTED (confident negative)"


def test_coverage_limited_negative_stays_inconclusive():
    v = _v(limited=True)
    assert verdict_label("root", v, {**FULL, "native": "partial"}) == "Inconclusive"


def test_label_and_upper_bound_annotation_never_disagree():
    """Both halves of the rendered line gate on the same field, so "(upper bound:
    ...)" and "Inconclusive" always appear together - and never appear alongside
    "confident negative"."""
    for limited in (False, True):
        v = _v(limited=limited)
        cov = FULL if not limited else {**FULL, "native": "partial"}
        rendered = f"{confidence_bound('root', v, cov)} -> {verdict_label('root', v, cov)}"
        assert ("upper bound" in rendered) == ("Inconclusive" in rendered), rendered
        assert ("upper bound" in rendered) != ("confident negative" in rendered), rendered


def test_unattributed_indicator_bound_is_honoured_not_just_the_map():
    """Boundary-1 binds the VERDICT (coverage_limited=True) while leaving the
    coverage map fully_analyzed. Gating the label on the map alone would print
    "confident negative" next to an upper-bound confidence - the reason
    verdict_label reads the verdict's flag rather than re-deriving from the map."""
    v = _v(limited=True)
    assert category_is_confident_negative("root", FULL) is True, "map alone says confident"
    assert verdict_label("root", v, FULL) == "Inconclusive"


def test_the_diva_contradiction_is_gone_end_to_end():
    """DIVA printed 'root: NEITHER is a confident negative' and 'Root: 0.00 ->
    Inconclusive' in the same output. Drive the real pipeline helper the run uses
    and assert the two lines now say the same thing."""
    from common import Action, ClassificationResult

    cls = ClassificationResult(action=Action.NEITHER, root=_v(), ssl=_v())
    cls = apply_coverage_bound(cls, FULL)
    assert cls.unknown_uncovered == []
    line = coverage_bound_line(FULL)
    for cat, verdict in (("root", cls.root), ("ssl", cls.ssl)):
        assert f"{cat}: NEITHER is a confident negative" in line
        assert verdict_label(cat, verdict, FULL) == "NOT DETECTED (confident negative)"


def test_a_partial_run_keeps_both_layers_saying_lower_bound():
    from common import Action, ClassificationResult

    cov = {**FULL, "native": "partial"}
    cls = ClassificationResult(action=Action.NEITHER, root=_v(), ssl=_v())
    cls = apply_coverage_bound(cls, cov)
    assert set(cls.unknown_uncovered) == {"root", "ssl"}
    line = coverage_bound_line(cov)
    for cat, verdict in (("root", cls.root), ("ssl", cls.ssl)):
        assert f"{cat}: NEITHER is a lower bound, NOT confident" in line
        assert verdict_label(cat, verdict, cov) == "Inconclusive"


def test_regenerated_verdict_without_the_flag_defaults_to_the_map_free_answer():
    """Regen restores coverage_limited with default False (cli.py _cat). A verdict
    object missing the attribute entirely must not raise; with a complete coverage
    map it certifies, because the map is the other half of the decision."""
    class Bare:
        detected = False
        confidence = 0.0

    assert verdict_label("root", Bare(), FULL) == "NOT DETECTED (confident negative)"


# --- the decider owns its own guard -----------------------------------------

@pytest.mark.parametrize("cov", [None, {}])
def test_no_coverage_map_at_all_never_certifies(cov):
    """The first version of verdict_label gated ONLY on verdict.coverage_limited,
    which is False by dataclass default on any verdict that never went through
    apply_coverage_bound - so a report rendered with no coverage map at all came
    out as a confident negative (caught by
    test_report_generator.py::test_generate_report_renders_below_threshold_as_inconclusive_retaining_evidence).
    Nothing was analysed as far as this function can tell, so it must refuse."""
    assert verdict_label("root", _v(confidence=0.40), cov) == "Inconclusive"


@pytest.mark.parametrize("surface", ["java", "native", "manifest", "js"])
def test_an_unbound_verdict_over_an_incomplete_map_still_refuses(surface):
    """Belt and braces on the same slip: even if a caller forgot to set
    coverage_limited, an incomplete governing surface must not read as certified.
    `manifest` governs ssl only, so root is asserted through its own surfaces."""
    cov = {**FULL, surface: "partial"}
    category = "ssl" if surface == "manifest" else "root"
    assert verdict_label(category, _v(), cov) == "Inconclusive"


def test_unknown_category_never_certifies():
    assert verdict_label("bananas", _v(), FULL) == "Inconclusive"


def test_replace_on_a_verdict_preserves_the_label_contract():
    v = replace(_v(), coverage_limited=True)
    assert verdict_label("ssl", v, FULL) == "Inconclusive"
