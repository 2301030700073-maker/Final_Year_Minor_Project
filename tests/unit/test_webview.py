"""Pure WebView JS-bridge / remote-JS detection - no device, no toolchain, testable anywhere."""

import os
from pathlib import Path

from static import webview


def _write(tmp_path: Path, name: str, text: str) -> Path:
    p = tmp_path / name
    p.write_text(text, encoding="utf-8")
    return p


def test_finds_add_javascript_interface(tmp_path):
    p = _write(
        tmp_path, "A.java",
        'web.getSettings().setJavaScriptEnabled(true);\n'
        'web.addJavascriptInterface(bridge, "Android");',
    )
    sites, remote = webview.find_webview_js([p])
    assert len(sites) == 1
    assert "A.java" in sites[0]
    assert "addJavascriptInterface(" in sites[0]
    assert remote is False


def test_finds_evaluate_javascript(tmp_path):
    p = _write(tmp_path, "B.java", 'web.evaluateJavascript("isRooted()", cb);')
    sites, remote = webview.find_webview_js([p])
    assert len(sites) == 1
    assert "evaluateJavascript(" in sites[0]
    assert remote is False


def test_finds_javascript_url_load(tmp_path):
    p = _write(tmp_path, "C.java", 'web.loadUrl("javascript:checkRoot()");')
    sites, remote = webview.find_webview_js([p])
    assert len(sites) == 1
    assert "loadUrl(" in sites[0]
    # inline javascript: is readable JS, NOT remote - labels but does not degrade
    assert remote is False


def test_finds_load_data_with_base_url(tmp_path):
    p = _write(
        tmp_path, "D.java",
        'web.loadDataWithBaseURL(base, data, "text/html", "utf-8", null);',
    )
    sites, remote = webview.find_webview_js([p])
    assert len(sites) == 1
    assert "loadDataWithBaseURL(" in sites[0]
    assert remote is False


def test_remote_load_url_sets_has_remote_js(tmp_path):
    p = _write(tmp_path, "E.java", 'web.loadUrl("https://cdn.example.com/check.js");')
    sites, remote = webview.find_webview_js([p])
    assert len(sites) == 1
    assert remote is True


def test_remote_load_data_base_sets_has_remote_js(tmp_path):
    p = _write(
        tmp_path, "F.java",
        'web.loadDataWithBaseURL("https://cdn.example.com/", html, "text/html", "utf-8", null);',
    )
    sites, remote = webview.find_webview_js([p])
    assert len(sites) == 1
    assert remote is True


def test_local_bridge_does_not_degrade(tmp_path):
    # addJavascriptInterface with a local asset is scannable (gap A2) - labels,
    # never degrades coverage.
    p = _write(
        tmp_path, "G.java",
        'web.addJavascriptInterface(bridge, "Android");\n'
        'web.loadUrl("file:///android_asset/check.html");',
    )
    sites, remote = webview.find_webview_js([p])
    # only the bridge is a labeled call site; the local file:/// asset load is
    # scannable HTML (gap A2) so it is neither remote nor a bridge primitive
    assert len(sites) == 1
    assert "addJavascriptInterface(" in sites[0]
    assert remote is False


def test_skips_non_webview_code(tmp_path):
    p = _write(
        tmp_path, "H.java",
        "WebStuff w;\n"
        "w.evaluateSomething();\n"
        "int loadUrl;\n"
        "Class<?> k = Class.notAddJavascriptInterface(\"x\");",
    )
    sites, remote = webview.find_webview_js([p])
    assert sites == []
    assert remote is False


def test_does_not_match_identifier_suffix(tmp_path):
    p = _write(tmp_path, "I.java", "myAddJavascriptInterface bridge = factory.make();")
    sites, remote = webview.find_webview_js([p])
    assert sites == []
    assert remote is False


def test_empty_corpus():
    sites, remote = webview.find_webview_js([])
    assert sites == []
    assert remote is False


def test_skips_unreadable_file(tmp_path):
    # NFR: an unreadable source degrades per-file, never raises the scan.
    #
    # PLATFORM: chmod(0o000) is the natural way to make a file unreadable, but
    # it is a NO-OP on Windows - the mode reads back 0o444 (the read-only
    # attribute) and read_text still succeeds, so an unconditional chmod
    # assertion exercises nothing there. A DIRECTORY in place of a file raises
    # OSError on every platform, so it pins the same skip branch everywhere;
    # the chmod case is kept for POSIX, where it is the real mechanism.
    unreadable = tmp_path / "J_unreadable.java"
    unreadable.mkdir()
    sites, remote = webview.find_webview_js([unreadable])
    assert sites == []
    assert remote is False

    if os.name == "posix":
        p = _write(tmp_path, "J.java", 'web.loadUrl("https://x.example.com/");')
        p.chmod(0o000)
        try:
            sites, remote = webview.find_webview_js([p])
            assert sites == []
            assert remote is False
        finally:
            p.chmod(0o644)


def _write_at(tmp_path: Path, relpath: str, text: str) -> Path:
    # A decompiled-source path with a real `sources/<pkg>/...` layout so
    # derive_namespace anchors on the marker (a bare tmp filename has no
    # namespace and reads app-owned).
    p = tmp_path / relpath
    p.parent.mkdir(parents=True, exist_ok=True)
    p.write_text(text, encoding="utf-8")
    return p


# WEBVIEW-VENDOR1: a bundled WebView SDK's remote-JS load is the vendor's content,
# not the app hiding its own root/SSL checks. It must NOT set has_remote_js (which
# degrades the app's java surface to partial) - mirroring DYNLOAD-VENDOR1. Only the
# app's OWN remote-JS load degrades.

_REMOTE_JS = 'web.loadUrl("https://ads.example.com/interstitial.js");'


def test_vendor_remote_js_is_excluded(tmp_path):
    # A Facebook Audience Network (com.facebook.ads) WebView loading remote JS: a
    # recognized vendor, not under the app package -> skipped entirely. Without the
    # fix this set has_remote_js=True and degraded java to partial for every app
    # bundling such an SDK.
    p = _write_at(tmp_path, "sources/com/facebook/ads/AudienceNetworkActivity.java", _REMOTE_JS)
    sites, remote = webview.find_webview_js([p], app_package="com.myapp")
    assert sites == []
    assert remote is False


def test_app_own_remote_js_still_degrades(tmp_path):
    # The app's OWN remote-JS load (in its own package subtree) is still counted -
    # a real coverage limitation over JS we cannot read (ADR-0006), never excluded.
    p = _write_at(tmp_path, "sources/com/myapp/net/WebCheck.java", _REMOTE_JS)
    sites, remote = webview.find_webview_js([p], app_package="com.myapp")
    assert len(sites) == 1
    assert remote is True


def test_bugb_app_sharing_vendor_prefix_still_degrades(tmp_path):
    # Bug-B parity: an app whose own package shares a recognized vendor prefix
    # (e.g. Cash App is com.squareup.cash) keeps its own subtree app-owned, so its
    # own remote-JS load still degrades - the vendor skip must never swallow the
    # app's own code.
    p = _write_at(tmp_path, "sources/com/squareup/cash/ui/Web.java", _REMOTE_JS)
    sites, remote = webview.find_webview_js([p], app_package="com.squareup.cash")
    assert len(sites) == 1
    assert remote is True


def test_default_app_package_none_excludes_recognized_vendor(tmp_path):
    # Safe default: with no app_package the test reduces to the plain vendor check,
    # so a recognized-vendor path is still excluded (the historical no-filter
    # behavior only ever OVER-degraded; the default now matches dynload's).
    p = _write_at(tmp_path, "sources/com/facebook/ads/AudienceNetworkActivity.java", _REMOTE_JS)
    sites, remote = webview.find_webview_js([p])
    assert sites == []
    assert remote is False


def test_default_app_package_none_keeps_unknown_namespace_scanned(tmp_path):
    # ...and an UNKNOWN namespace (could be the app's own code under a different
    # package) is never asserted third-party, so it is still scanned and still
    # degrades - the recall-safe direction is preserved with no app_package.
    p = _write_at(tmp_path, "sources/org/unknownapp/Web.java", _REMOTE_JS)
    sites, remote = webview.find_webview_js([p])
    assert len(sites) == 1
    assert remote is True
