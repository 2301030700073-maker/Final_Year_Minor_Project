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



def test_parse_input_fields_finds_edittext_with_centre():
    from dynamic.ui_liveness import _parse_input_fields
    xml = (
        '<hierarchy>'
        '<node class="android.widget.EditText" text="Name" '
        'bounds="[100,200][300,260]" focusable="true"/>'
        '<node class="android.widget.Button" text="Submit" '
        'bounds="[100,300][300,360]" clickable="true"/>'
        '<node class="android.widget.EditText" bounds="[100,400][300,460]"/>'
        '</hierarchy>'
    )
    inputs = _parse_input_fields(xml)
    assert len(inputs) == 2
    assert inputs[0]["center"] == [200, 230]
    assert inputs[0]["label"] == "Name"
    assert all("EditText" in i["class"] for i in inputs)


def test_drive_fills_form_field_then_taps_submit(monkeypatch):
    """A form-gated app (type a value -> submit) only makes its request after a
    field is filled. The exploratory drive must fill the EditText (focus + type)
    and THEN tap submit - a tap-only drive never reaches the request."""
    from dynamic import mitmproxy_capture, ui_liveness
    monkeypatch.setattr(ui_liveness, "wait_for_foreground",
                        lambda *a, **k: {"foreground": True, "reason": "ok"})
    calls = []
    dump = {"measured": True,
            "inputs": [{"label": "", "center": [200, 230],
                        "class": "android.widget.EditText"}],
            "targets": [{"label": "Submit", "center": [200, 330]}],
            "reason": None}
    monkeypatch.setattr(ui_liveness, "dump_ui_targets", lambda *a, **k: dump)
    monkeypatch.setattr(ui_liveness, "tap", lambda s, x, y: calls.append(("tap", x, y)))
    monkeypatch.setattr(ui_liveness, "type_text", lambda s, t: calls.append(("type", t)))
    monkeypatch.setattr("time.sleep", lambda s: None)
    rec = mitmproxy_capture._drive_ui_explore("serial", "pkg", max_taps=4)
    # The field was focused, filled with the sample, and THEN submit was tapped.
    assert ("tap", 200, 230) in calls
    assert ("type", "fympprobe123") in calls
    assert ("tap", 200, 330) in calls
    assert calls.index(("type", "fympprobe123")) < calls.index(("tap", 200, 330))
    assert rec["filled_fields"] and rec["filled_fields"][0]["ok"] is True
    assert rec["tap_count"] == 1
