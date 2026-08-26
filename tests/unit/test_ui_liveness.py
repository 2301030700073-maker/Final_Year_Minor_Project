"""Unit tests for static/dynamic ui_liveness.py - the pure, fixture-testable
parsers that turn real device output (dumpsys/logcat/uiautomator) into
UI-responsiveness signals. No device/toolchain needed - the parsers are pure
functions over captured output."""

from dynamic.ui_liveness import (
    _parse_activity_resumed, _parse_window_focused, _parse_anr, _parse_clickable_nodes,
    _parse_rendered_content, _parse_text_nodes, _classify_screen,
    _parse_tls_block,
)


def test_activity_resumed_when_package_foreground():
    dump = (
        "  * Hist #0: ActivityRecord{... com.propertyguru/.MainActivity}\n"
        "      state=RESUMED token=...\n"
        "      mResumed=true\n"
    )
    assert _parse_activity_resumed(dump, "com.propertyguru") is True


def test_activity_resumed_true_for_new_resumed_activity_field():
    """Regression: modern Android prints `ResumedActivity:` / `mResumedActivity:`
    (capital R), not an all-caps `RESUMED` marker. The parser must not report
    'no' when the device says the app is foregrounded (found live on PG)."""
    dump = (
        "  ResumedActivity: ActivityRecord{... u0 com.propertyguru.app/"
        "com.propertyguru.app.MainActivity t159}\n"
    )
    assert _parse_activity_resumed(dump, "com.propertyguru.app") is True
    assert _parse_activity_resumed(dump, "com.other.app") is False


def test_activity_resumed_false_when_not_resumed():
    dump = "      state=STOPPED token=..."
    assert _parse_activity_resumed(dump, "com.propertyguru") is False


def test_window_focused_when_current_focus_is_app():
    dump = "  mCurrentFocus=Window{... u0 com.propertyguru/com.propertyguru.MainActivity}"
    assert _parse_window_focused(dump, "com.propertyguru") is True
    assert _parse_window_focused(dump.replace("com.propertyguru", "com.other"), "com.propertyguru") is False


def test_window_focused_via_mfocusedapp_field():
    """Regression: some Android versions/states report focus as `mFocusedApp=`
    (the focused app token) rather than only `mCurrentFocus=`. The parser must
    not report 'no' when the device names the app as focused in that field -
    the same version-spelling class as the RESUMED capital-R fix."""
    dump = "  mFocusedApp=AppWindowToken{... token=com.propertyguru/com.propertyguru.MainActivity}"
    assert _parse_window_focused(dump, "com.propertyguru") is True
    assert _parse_window_focused(dump.replace("com.propertyguru", "com.other"), "com.propertyguru") is False


def test_anr_detected_for_package():
    log = (
        "08-20 10:00:00  E ActivityManager: ANR in com.propertyguru\n"
        "08-20 10:00:00  E ActivityManager: Input dispatching timed out (com.propertyguru)\n"
        "08-20 10:00:01  D unrelated: com.propertyguru startup ok\n"
    )
    hits = _parse_anr(log, "com.propertyguru")
    assert len(hits) == 2  # two frozen-UI markers, the unrelated line ignored
    assert "ANR in" in hits[0]


def test_anr_none_when_clean():
    assert _parse_anr("com.propertyguru started normally", "com.propertyguru") == []


def test_clickable_nodes_counts_interactive_widgets():
    xml = (
        '<node text="OK" resource-id="btn" clickable="true" />'
        '<node text="list" focusable="true" />'
        '<node text="label" />'
        '<node text="input" clickable="true" focusable="true" />'
    )
    assert _parse_clickable_nodes(xml) == 3  # two clickable + the clickable+focusable


def test_clickable_nodes_zero_on_blank_frame():
    assert _parse_clickable_nodes('<node text="loading" />') == 0


def test_rendered_content_true_when_children_beyond_rn_root():
    """RN dump: a single FrameLayout root (no clickable flag) wrapping real
    child widgets -> the surface IS rendering, so a 0 clickable count is
    expected (JS-driven), not proof of a blank frame."""
    xml = (
        '<hierarchy><node class="android.widget.FrameLayout" clickable="false">'
        '<node class="android.widget.TextView" text="Home"/>'
        '</node></hierarchy>'
    )
    assert _parse_clickable_nodes(xml) == 0
    assert _parse_rendered_content(xml) is True


def test_rendered_content_false_on_blank_frame():
    """A bare empty hierarchy / only-root frame -> nothing rendered."""
    assert _parse_rendered_content("") is False
    assert _parse_rendered_content(
        '<hierarchy><node class="android.widget.FrameLayout"/></hierarchy>'
    ) is False


def test_classify_screen_stuck_on_splash():
    """The PG reality: a splash tagline + region only, no interactive widgets ->
    honest 'splash/loading, NOT an interactive page', never a healthy UI."""
    xml = ('<node text="Bersama anda menuju ke rumah"/>'
           '<node text="Malaysia"/>')
    nodes = _parse_text_nodes(xml)
    assert len(nodes) == 2
    state = _classify_screen(nodes, 0)
    assert "splash/loading" in state
    assert "NOT an interactive page" in state


def test_classify_screen_interactive_when_clickables():
    xml = '<node text="Home" clickable="true"/>'
    assert "interactive" in _classify_screen(_parse_text_nodes(xml), 1)


def test_classify_screen_content_but_rn_surface():
    """Many text nodes, zero clickables -> RN/Flutter content surface, not
    mislabeled as a splash."""
    xml = ("<node text=\"Property 1\"/><node text=\"Property 2\"/>"
           "<node text=\"Property 3\"/><node text=\"Property 4\"/>")
    state = _classify_screen(_parse_text_nodes(xml), 0)
    assert "content rendered" in state
    assert "splash" not in state


def test_classify_screen_no_dump_is_unknown():
    # ui_liveness.py:182: when no UI dump was captured (text_nodes is None, the
    # uiautomator step never produced one), the honest label is "unknown", never
    # a healthy/interactive claim. Real coverage proved this branch untested -
    # the sibling tests always pass a real text-node list.
    state = _classify_screen(None, 0)
    assert "unknown" in state
    assert "interactive" not in state


def test_tls_block_detects_trust_anchor_failure():
    """The PG reality: Conscrypt/okhttp rejects the presented chain, so the
    app's startup TLS is blocked - distinct from an ANR."""
    log = (
        "08-20 18:01 E dev.expo.updates: Trust anchor for certification path "
        "not found: CertPathValidatorException\n"
        "other pkg: some unrelated line\n"
    )
    hits = _parse_tls_block(log, "dev.expo.updates")
    assert len(hits) == 1
    assert "trust anchor" in hits[0].lower()


def test_tls_block_empty_when_clean():
    assert _parse_tls_block("no tls errors here\n", "com.x") == []


def test_tls_block_pid_must_be_pid_tid_column_not_substring():
    """Regression: attribution must not match the pid as a bare substring. A
    line whose PID/TID columns belong to a DIFFERENT process but whose message
    body happens to contain the target pid's digits (or a hex literal) is NOT
    the app's line - it must not be attributed, or anr_detected/tls_blocked
    would flip on unrelated evidence."""
    log = (
        "08-20 18:01:20.176 99999 88888 E com.other: handler pid 20977 spawned\n"
    )
    # 20977 appears only in the body, not in the PID/TID columns -> not ours.
    assert _parse_tls_block(log, "com.propertyguru", "20977") == []
    assert _parse_anr(log, "com.propertyguru", "20977") == []


def test_tls_block_matches_sdk_tag_by_pid():
    """Regression: PG's TLS failures log under SDK tags (dev.expo.updates,
    Braze), NOT the main package - the line carries the app's pid instead.
    Without pid matching the detector missed exactly the case it was built for."""
    log = (
        "08-20 18:01:20.176 20977 21204 E dev.expo.updates: Trust anchor for "
        "certification path not found\n"
    )
    assert _parse_tls_block(log, "com.allproperty.android.consumer.my") == []
    assert len(_parse_tls_block(log, "com.allproperty.android.consumer.my", "20977")) == 1


def test_failed_dump_not_reported_as_live(monkeypatch):
    """Regression: when uiautomator fails ('ERROR: could not get idle state'),
    a STALE /sdcard/ui_dump.xml from a prior run must NOT be reported as live
    data - it degrades to 'not captured' instead of fabricating a screen."""
    import subprocess as _sp
    from dynamic import ui_liveness
    calls = []
    def fake_run(cmd, **kw):
        calls.append(cmd)
        if "uiautomator" in cmd:
            return type("R", (), {"stdout": "ERROR: could not get idle state"})()
        raise AssertionError(f"cat should NOT be called: {cmd}")
    monkeypatch.setattr(ui_liveness.subprocess, "run", fake_run)
    r = ui_liveness.check_ui_liveness("s", "com.x", adb="adb")
    assert r["clickable_nodes"] is None
    assert "not captured (uiautomator dump failed)" in r["screen_state"]
    # The stale cat must never run after a failed dump.
    assert not any("cat" in c for c in calls)


def test_successful_dump_uses_cat(monkeypatch):
    import subprocess as _sp
    from dynamic import ui_liveness
    seq = {"n": 0}
    def fake_run(cmd, **kw):
        seq["n"] += 1
        if "uiautomator" in cmd:
            return type("R", (), {"stdout": "UI hierchary dumped to: /sdcard/ui_dump.xml"})()
        if "cat" in cmd:
            return type("R", (), {"stdout": '<node text="Home" clickable="true"/>'})()
        if "dumpsys" in cmd or "pidof" in cmd or "logcat" in cmd:
            return type("R", (), {"stdout": ""})()
        raise AssertionError(cmd)
    monkeypatch.setattr(ui_liveness.subprocess, "run", fake_run)
    r = ui_liveness.check_ui_liveness("s", "com.x", adb="adb")
    assert r["clickable_nodes"] == 1
    assert "interactive" in r["screen_state"]


def test_cat_failure_degrades_honestly(monkeypatch):
    # ui_liveness.py:298-300: when the uiautomator dump SUCCEEDS but reading the
    # file back (cat) raises - a genuine wrapper failure, not a fake detection -
    # the whole step degrades to "not captured" and records the error, never a
    # fabricated screen. Closes the last reachable pure wrapper branch.
    from dynamic import ui_liveness
    def fake_run(cmd, **kw):
        if "uiautomator" in cmd:
            return type("R", (), {"stdout": "UI hierchary dumped to: /sdcard/ui_dump.xml"})()
        if "cat" in cmd:
            raise OSError("device offline")
        if "dumpsys" in cmd or "pidof" in cmd or "logcat" in cmd:
            return type("R", (), {"stdout": ""})()
        raise AssertionError(cmd)
    monkeypatch.setattr(ui_liveness.subprocess, "run", fake_run)
    r = ui_liveness.check_ui_liveness("s", "com.x", adb="adb")
    assert r["clickable_nodes"] is None
    assert any("uiautomator" in e for e in r["_errors"])


def test_matches_target_by_package_then_pid_column_token():
    # _matches_target: a line belongs to the app when it names the package, OR
    # carries the app's pid as the exact PID/TID column token (so SDK-tagged
    # lines that log under their own tag but carry the app's pid stay
    # attributed). A pid that appears only as a bare substring in the message
    # body must NOT match (would false-attribute unrelated lines). Had zero
    # coverage.
    from dynamic.ui_liveness import _matches_target
    assert _matches_target("com.example.app: msg", "com.example.app", None) is True
    assert _matches_target("other: msg", "com.example.app", None) is False
    # too few tokens to be a threadtime logcat line (need >= 4 to have a PID/TID column)
    assert _matches_target("a b c", "com.example.app", "1234") is False
    # pid at token[2] (PID column)
    assert _matches_target("01-01 12:00:00.000 1234 5678 V tag: msg", "com.example.app", "1234") is True
    # pid at token[3] (TID column) - the SDK-tagged case
    assert _matches_target("01-01 12:00:00.000 9999 5678 V dev.expo.updates: x", "com.example.app", "5678") is True
    # pid only as a bare substring in the message body -> no match
    assert _matches_target("01-01 12:00:00.000 9999 8888 V tag: addr 0x1234", "com.example.app", "1234") is False


def test_summarize_ui_liveness_renders_signals():
    # _summarize_ui_liveness: renders each real-time UI signal honestly - None
    # (tool unavailable) is "not captured", bools render yes/no, scalars inline.
    from dynamic.success_checks.technology import _summarize_ui_liveness
    s = _summarize_ui_liveness({"activity_resumed": True, "window_focused": None, "anr_detected": False})
    assert "activity RESUMED:yes" in s
    assert "window focused:not captured" in s
    assert "ANR/frozen-UI:no" in s


def test_pidof_failure_is_recorded_not_silent(monkeypatch):
    # ui_liveness.py:248: pid is a best-effort attribution helper, but a genuine
    # adb failure resolving it must be RECORDED in _errors (the module's
    # contract: a failed shell call is surfaced, never a silent absence) - not
    # swallowed by a bare except. Attribution still falls back to package-only
    # matching (a supported mode), so no signal is fabricated and the scan still
    # completes; the failure is simply made visible instead of vanishing.
    from dynamic import ui_liveness
    def fake_run(cmd, **kw):
        if "pidof" in cmd:
            raise OSError("device offline resolving pid")
        if "uiautomator" in cmd:
            return type("R", (), {"stdout": "UI hierchary dumped to: /sdcard/ui_dump.xml"})()
        if "cat" in cmd:
            return type("R", (), {"stdout": '<node text="Home" clickable="true"/>'})()
        if "dumpsys" in cmd or "logcat" in cmd:
            return type("R", (), {"stdout": ""})()
        raise AssertionError(cmd)
    monkeypatch.setattr(ui_liveness.subprocess, "run", fake_run)
    r = ui_liveness.check_ui_liveness("s", "com.x", adb="adb")
    assert any("pidof" in e for e in r["_errors"])
    # the scan still completed with package-only attribution - no signal lost
    assert r["clickable_nodes"] == 1
    assert r["anr_detected"] is False
