"""Pure WebView JS-bridge / remote-JS detection - no device, no toolchain, testable anywhere."""

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
    p = _write(tmp_path, "J.java", 'web.loadUrl("https://x.example.com/");')
    p.chmod(0o000)
    try:
        sites, remote = webview.find_webview_js([p])
        assert sites == []
        assert remote is False
    finally:
        p.chmod(0o644)
