"""Regression guard for the exploratory (multi-tap) UI drive.

The single-tap `_choose_tap_target` refuses to guess when no label names a network
action, so an app that gates its request behind a tab / menu item / list row leaves
the path un-exercised (app-silence) and the capture is empty. `_choose_explore_target`
lets a BOUNDED drive tap safe, not-yet-tapped controls to exercise the network path -
but it must NEVER tap a destructive control (delete/logout/pay/...) and must never
re-tap a center already pressed (no screen change, or a loop).
"""
from dynamic.ui_liveness import _choose_explore_target


def _t(label, center):
    return {"label": label, "center": list(center)}


def test_prefers_intent_label():
    targets = [_t("Settings", [10, 10]), _t("Continue", [20, 20]), _t("Help", [30, 30])]
    t, how = _choose_explore_target(targets, set())
    assert t["label"] == "Continue"
    assert how == "label-match"


def test_never_taps_destructive_even_if_it_is_the_only_one():
    targets = [_t("Delete account", [10, 10]), _t("Log out", [20, 20])]
    t, how = _choose_explore_target(targets, set())
    assert t is None
    assert "destructive" in how


def test_avoids_already_tapped_center():
    targets = [_t("Continue", [20, 20]), _t("Next", [40, 40])]
    t, how = _choose_explore_target(targets, {(20, 20)})
    assert t["label"] == "Next"


def test_falls_back_to_first_safe_when_no_intent_label():
    targets = [_t("Settings", [10, 10]), _t("Profile", [20, 20])]
    t, how = _choose_explore_target(targets, set())
    assert t["label"] == "Settings"
    assert how == "explore"


def test_returns_none_when_every_target_already_tapped():
    targets = [_t("Continue", [20, 20])]
    t, how = _choose_explore_target(targets, {(20, 20)})
    assert t is None
    assert "already been tapped" in how


def test_empty_targets():
    t, how = _choose_explore_target([], set())
    assert t is None
