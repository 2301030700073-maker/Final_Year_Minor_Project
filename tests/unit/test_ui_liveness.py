"""Unit tests for static/dynamic ui_liveness.py - the pure, fixture-testable
parsers that turn real device output (dumpsys/logcat/uiautomator) into
UI-responsiveness signals. No device/toolchain needed - the parsers are pure
functions over captured output."""

from dynamic.ui_liveness import (
    _parse_activity_resumed, _parse_window_focused, _parse_anr, _parse_clickable_nodes,
    _parse_rendered_content, _parse_text_nodes, _classify_screen,
    _parse_tls_block, _matches_target,
)
from dynamic import ui_liveness


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


def test_clickable_nodes_ignores_long_clickable_only_node():
    # Regression: `long-clickable="true"` is a DISTINCT uiautomator attribute. A
    # \b-anchored match saw the `clickable="true"` substring inside it and counted
    # a non-tappable node - so a splash/logo frame with a long-clickable root read
    # as "interactive", overstating UI liveness (the dangerous direction). A node
    # that is long-clickable but NOT clickable/focusable must count as zero.
    assert _parse_clickable_nodes(
        '<node clickable="false" focusable="false" long-clickable="true" text="Brand"/>'
    ) == 0
    # context-clickable is the same hyphenated-attribute hazard.
    assert _parse_clickable_nodes('<node context-clickable="true" clickable="false"/>') == 0
    # But a node carrying BOTH long-clickable and a genuine clickable still counts
    # once, in either attribute order (the real attribute satisfies the match).
    assert _parse_clickable_nodes('<node long-clickable="true" clickable="true"/>') == 1
    assert _parse_clickable_nodes('<node clickable="true" long-clickable="true"/>') == 1


def test_classify_screen_long_clickable_root_is_not_interactive():
    # End-to-end of the fix: a splash frame whose only "interactive" attribute is
    # long-clickable, with minimal text, must classify as splash/loading - never
    # "interactive (has tappable widgets)".
    xml = '<node clickable="false" long-clickable="true" text="BrandName"/>'
    clk = _parse_clickable_nodes(xml)
    label = _classify_screen(_parse_text_nodes(xml), clk)
    assert "NOT an interactive page" in label


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


def test_tls_block_matches_every_marker_case_insensitively():
    # Regression for the marker-case bug (commit 0693fb29c): _TLS_BLOCK_MARKERS are
    # compared against a LOWERCASED logcat line, so a mixed-case marker in the table
    # could never be a substring and would silently never fire. Android/Java log
    # these exceptions in mixed case, so each real-world form MUST still match. One
    # line per marker (mixed case, as actually logged) - reverting ANY single marker
    # to mixed-case in the table breaks exactly one assertion here.
    pkg = "com.example.app"
    real_forms = [
        "Trust anchor for certification path not found.",
        "java.security.cert.CertPathValidatorException: chain invalid",
        "javax.net.ssl.SSLHandshakeException: handshake failed",
        "Could not validate certificate chain",
        "SSL handshake timed out after 10000ms",
    ]
    for form in real_forms:
        line = f"09-10 12:00:01.234 4521 4600 W {pkg}: {form}"
        assert _parse_tls_block(line, pkg, "4521") == [line.strip()], \
            f"marker not matched case-insensitively: {form!r}"


def test_tls_block_attributes_sdk_tagged_failure_by_pid_not_package():
    # logcat-sdk-tag-attribution: a real app's SDK (okhttp/Conscrypt/expo) logs TLS
    # failures under its OWN tag (System.err here), NOT the app package - but the
    # line carries the app's pid in the threadtime PID column, so matching on the
    # pid column keeps the failure attributed (matching only the package drops it).
    # A separate line whose pid digits appear only in the MESSAGE BODY (a hex
    # address) must NOT be attributed - the pid is a column token, not a substring.
    pkg, pid = "com.example.app", "4521"
    sdk_line = "09-10 12:00:01.234 4521 4600 W System.err: javax.net.ssl.SSLHandshakeException: trust failure"
    body_only = "09-10 12:00:02.000 9999 9999 I OtherProc: freed handshake buffer at 0x4521"
    assert _parse_tls_block("\n".join([sdk_line, body_only]), pkg, pid) == [sdk_line.strip()]


def test_matches_target_pid_is_a_column_token_not_a_substring():
    # The pid must match the threadtime PID (token 2) or TID (token 3) column, not
    # appear anywhere in the line - otherwise an unrelated process's message body or
    # a hex address containing the digits would be false-attributed to this app,
    # flipping anr_detected/tls_blocked on evidence that isn't the app's.
    pkg, pid = "com.example.app", "4521"
    assert _matches_target("09-10 12:00:03.000 4521 4600 I tag: msg", pkg, pid) is True     # PID column
    assert _matches_target("09-10 12:00:03.000 7000 4521 I tag: msg", pkg, pid) is True     # TID column
    assert _matches_target("09-10 12:00:03.000 9999 9999 I tag: at 0x4521", pkg, pid) is False  # body only
    assert _matches_target(f"09-10 12:00:03.000 9999 9999 I {pkg}: msg", pkg, None) is True     # package, no pid
    assert _matches_target("09-10 12:00:03.000 4521 4600 I tag: msg", pkg, None) is False       # no pid, no package


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


def test_tls_block_detects_each_marker_in_isolation():
    """Every TLS-block marker must fire on a line that carries ONLY that marker.
    Regression: the markers are compared against a lowercased line, but three of
    them (CertPathValidatorException, SSLHandshakeException, Could not validate)
    were stored mixed-case, so they could never be a substring of a lowercased
    line - a silent miss for an app whose startup-TLS rejection logs only that
    exception form (e.g. `Caused by: ...CertPathValidatorException: ...` with no
    accompanying "trust anchor" line). The prior test only passed because its
    single line ALSO contained the all-lowercase "trust anchor..." marker, never
    exercising these three independently."""
    pkg = "com.example.app"
    isolated = {
        "CertPathValidatorException only":
            "09-06 10:00:01.002  4521  4550 W System.err: "
            "Caused by: java.security.cert.CertPathValidatorException: bad chain",
        "SSLHandshakeException only":
            "09-06 10:00:01.001  4521  4550 W System.err: "
            "javax.net.ssl.SSLHandshakeException: Chain validation failed",
        "Could not validate only":
            "09-06 10:00:01.003  4521  4550 E okhttp: Could not validate certificate chain",
        "handshake timed out only":
            "09-06 10:00:01.004  4521  4550 E Conscrypt: handshake timed out",
    }
    for label, line in isolated.items():
        assert _parse_tls_block(line, pkg, "4521") == [line.strip()], label


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
    # ui_liveness.py uiautomator except arm: when the dump SUCCEEDS but reading the
    # file back (cat) raises - a genuine wrapper failure, not a fake detection - the
    # whole step degrades to "not captured" and records the error, never a fabricated
    # screen. This section's signals (clickable_nodes, rendered_content, screen_state)
    # all derive from the same dump+cat, so ALL must reach the "not captured" sentinel
    # together - not just clickable_nodes. Regression: only clickable_nodes got the
    # sentinel; rendered_content/screen_state were left ABSENT, so a serializing or
    # presence-checking consumer saw them vanish and _summarize_ui_liveness omitted the
    # screen line entirely (vs the honest "not captured" label the dump-failed branch
    # shows) - the same co-sourced asymmetry the logcat arm was fixed for.
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
    assert r["rendered_content"] is None           # co-sourced sibling, not left absent
    assert "screen_state" in r                      # honest sentinel, not a missing key
    assert "not captured" in r["screen_state"]
    assert any("uiautomator" in e for e in r["_errors"])


def test_logcat_failure_degrades_both_anr_and_tls_to_not_captured(monkeypatch):
    # ui_liveness.py logcat except arm: the ANR scan and the TLS-trust-block scan
    # BOTH derive from the same `logcat -d` call, so when it raises both signals
    # must degrade to the None "not captured" sentinel and the error be recorded -
    # the module's contract is a surfaced "not captured", never a silent absence.
    # Regression: only anr_detected got the sentinel; tls_blocked was left ABSENT,
    # so the two co-sourced signals ended in different states (None vs missing key)
    # and any presence-checking/serializing consumer would see the TLS signal
    # vanish silently. This except arm had no test at all (the other failure tests
    # exercise pidof/uiautomator/cat, never logcat itself raising).
    from dynamic import ui_liveness
    def fake_run(cmd, **kw):
        if "logcat" in cmd:
            raise OSError("device offline reading logcat")
        if "uiautomator" in cmd:
            return type("R", (), {"stdout": "UI hierchary dumped to: /sdcard/ui_dump.xml"})()
        if "cat" in cmd:
            return type("R", (), {"stdout": '<node text="Home" clickable="true"/>'})()
        if "dumpsys" in cmd or "pidof" in cmd:
            return type("R", (), {"stdout": ""})()
        raise AssertionError(cmd)
    monkeypatch.setattr(ui_liveness.subprocess, "run", fake_run)
    r = ui_liveness.check_ui_liveness("s", "com.x", adb="adb")
    assert r["anr_detected"] is None
    assert r["tls_blocked"] is None          # the fix: explicit "not captured"...
    assert "tls_blocked" in r                # ...not a silent absence
    assert any("logcat" in e for e in r["_errors"])
    # A failed logcat degrades only its OWN signals; the independent uiautomator
    # scan still succeeded, so no unrelated signal is lost.
    assert r["clickable_nodes"] == 1


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



def test_parse_tap_targets_reads_the_devices_own_bounds():
    # The coordinate comes from the dump, which is what makes one policy work across
    # devices and DPIs instead of a stored constant (project-limitations D2).
    xml = ('<hierarchy>'
           '<node class="android.widget.Button" text="START" clickable="true" '
           'bounds="[600,2200][840,2418]"/>'
           '<node class="android.widget.TextView" text="hello" clickable="false" '
           'bounds="[0,0][100,50]"/>'
           '</hierarchy>')
    targets = ui_liveness._parse_tap_targets(xml)
    assert len(targets) == 1
    assert targets[0]["label"] == "START"
    assert targets[0]["bounds"] == [600, 2200, 840, 2418]
    assert targets[0]["center"] == [720, 2309]


def test_parse_tap_targets_never_treats_long_clickable_as_tappable():
    # Same guard as _parse_clickable_nodes: `long-clickable="true"` must not make a
    # long-press-only control ("uninstall", "clear data") a tap target.
    xml = '<node class="android.widget.FrameLayout" long-clickable="true" bounds="[0,0][100,100]"/>'
    assert ui_liveness._parse_tap_targets(xml) == []


def test_parse_tap_targets_skips_degenerate_bounds():
    xml = '<node text="X" clickable="true" bounds="[10,10][10,10]"/>'
    assert ui_liveness._parse_tap_targets(xml) == []


def test_parse_tap_targets_falls_back_to_content_desc():
    xml = '<node content-desc="Play" clickable="true" bounds="[0,0][10,10]"/>'
    assert ui_liveness._parse_tap_targets(xml)[0]["label"] == "Play"


def test_choose_tap_target_prefers_a_label_that_names_the_action():
    targets = [{"label": "Settings", "center": [1, 2]},
               {"label": "START", "center": [3, 4]}]
    target, how = ui_liveness._choose_tap_target(targets)
    assert how == "label-match"
    assert target["center"] == [3, 4]


def test_choose_tap_target_taps_a_lone_target_without_a_known_label():
    # A sole widget is unambiguous even when its label is not in the vocabulary -
    # and how it was chosen is recorded, because it is the weaker justification.
    target, how = ui_liveness._choose_tap_target([{"label": "Begin demo", "center": [7, 8]}])
    assert how == "sole-target" and target["center"] == [7, 8]


def test_choose_tap_target_refuses_to_guess_between_widgets():
    # Several targets, none named by the vocabulary: tapping one could navigate,
    # open settings or destroy state, and the capture would be of a screen nobody
    # chose. Refusing is the honest outcome, not an error.
    targets = [{"label": f"item {i}", "center": [i, i]} for i in range(4)]
    target, why = ui_liveness._choose_tap_target(targets)
    assert target is None
    assert "refusing to guess" in why and "4 tappable widgets" in why


def test_choose_tap_target_refuses_on_an_empty_hierarchy():
    target, why = ui_liveness._choose_tap_target([])
    assert target is None and "no tappable widget" in why


def test_dump_ui_targets_never_trusts_a_stale_dump(monkeypatch):
    # A failed dump leaves the PREVIOUS screen's /sdcard/ui_dump.xml in place.
    # Tapping a coordinate read from it would press wherever an earlier screen had a
    # button, which is worse than not tapping at all - so the success marker is the
    # only thing standing between the two, and the cat must not even be attempted.
    import subprocess

    calls = []

    def fake_run(cmd, **kw):
        calls.append(cmd)
        return subprocess.CompletedProcess(
            cmd, 0, stdout="ERROR: could not get idle state\n", stderr="")

    monkeypatch.setattr(ui_liveness.subprocess, "run", fake_run)
    out = ui_liveness.dump_ui_targets("emulator-5554", adb="/bin/adb")
    assert out["measured"] is False
    assert "stale file not trusted" in out["reason"]
    assert out["targets"] == []
    assert not any("cat" in c for c in calls)


def test_dump_ui_targets_parses_a_fresh_dump(monkeypatch):
    import subprocess

    def fake_run(cmd, **kw):
        if "uiautomator" in cmd:
            return subprocess.CompletedProcess(
                cmd, 0, stdout="UI hierchary dumped to: /sdcard/ui_dump.xml", stderr="")
        return subprocess.CompletedProcess(
            cmd, 0,
            stdout='<node text="START" clickable="true" bounds="[600,2200][840,2418]"/>',
            stderr="")

    monkeypatch.setattr(ui_liveness.subprocess, "run", fake_run)
    out = ui_liveness.dump_ui_targets("emulator-5554", adb="/bin/adb")
    assert out["measured"] is True and out["reason"] is None
    assert out["targets"][0]["center"] == [720, 2309]


def test_dump_ui_targets_reports_a_failed_shell_as_not_measured(monkeypatch):
    def boom(*a, **k):
        raise OSError("adb gone")

    monkeypatch.setattr(ui_liveness.subprocess, "run", boom)
    out = ui_liveness.dump_ui_targets("emulator-5554", adb="/bin/adb")
    assert out["measured"] is False
    assert "uiautomator" in out["reason"] and out["targets"] == []


# --- waiting for the app to own the screen before dumping its hierarchy --------

_RESUMED = (
    "  * Hist #0: ActivityRecord{... PKG}\n"
    "      state=RESUMED token=...\n"
    "      mResumed=true\n"
)


def _dumpsys(monkeypatch, out):
    """Stub `dumpsys activity activities` for the drive's screen-ownership probe.

    Callers must still pass `adb=` explicitly: `wait_for_foreground` and `tap`
    resolve the REAL adb wrapper when it is omitted (`device._require_adb`), which
    raises on any machine without the Android platform-tools - so omitting it makes
    a test pass only where adb happens to be installed, and fail in CI. Every other
    call in this file passes it; these are no different."""
    class _R:
        stdout = out
    monkeypatch.setattr(ui_liveness.subprocess, "run", lambda *a, **k: _R())


def test_wait_for_foreground_returns_true_once_the_app_is_resumed(monkeypatch):
    _dumpsys(monkeypatch, _RESUMED.replace("PKG", "com.test.app/.Main"))
    got = ui_liveness.wait_for_foreground("s", "com.test.app", timeout=1.0, interval=0.0,
                                         adb="adb")
    assert got["foreground"] is True and got["polls"] == 1


def test_wait_for_foreground_is_false_when_another_app_holds_the_screen(monkeypatch):
    """The launcher being resumed is exactly the cold-start case the drive must
    not act on, and it is a measured absence - not a None."""
    _dumpsys(monkeypatch, _RESUMED.replace("PKG", "com.android.launcher3/.Launcher"))
    got = ui_liveness.wait_for_foreground("s", "com.test.app", timeout=0.0, interval=0.0,
                                         adb="adb")
    assert got["foreground"] is False
    assert "still not the resumed one" in got["reason"]


def test_wait_for_foreground_is_none_when_the_probe_never_ran(monkeypatch):
    """Every poll raising says nothing about the app; it must not be reported as
    the app having stayed away."""
    def _boom(*a, **k):
        raise OSError("adb: no devices/emulators found")
    monkeypatch.setattr(ui_liveness.subprocess, "run", _boom)
    got = ui_liveness.wait_for_foreground("s", "com.test.app", timeout=0.0, interval=0.0,
                                         adb="adb")
    assert got["foreground"] is None
    assert "not measured" in got["reason"]
