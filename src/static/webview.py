"""Coverage-limited signal: WebView JS bridge / remote-JS loading (gap A2).

An app that drives WebView/JS root-detection or SSL-pinning logic via
`addJavascriptInterface` / `evaluateJavascript` / `loadUrl("javascript:...")` /
`loadDataWithBaseURL` executes JavaScript whose root/SSL checks may not live in
readable DEX/HTML at all. Two complementary treatments:

* Local HTML/JS containers (the `.html`/`.htm` WebView assets the signature
  engine now scans) are readable statically - the scan labels the bridge call
  (surfacing the "unlabeled" gap) but does NOT degrade coverage, because we can
  already read the checked code.
* A **remote/external** JS source - `loadUrl("http(s)://...")` or a remote
  `loadDataWithBaseURL` base URL - loads JS we CANNOT see statically. That forces
  the `java` surface to `partial` so a java NEITHER is never a confident negative
  over unreadable remote checks (ADR-0006).

We cannot read the JS itself here; the honest treatment is to detect the bridge
primitive (label it in the report) and, only on a remote source, degrade the java
surface. Local bridge calls label but never over-degrade.

Pure module - operates on the decompiled .java corpus, unit-testable anywhere (no
Android toolchain). Mirrors `dynload.py` structure (loop, unreadable-file skip,
`"{path}:{lineno}: {snippet}"` hit format, a negative-lookbehind suffix guard)
but returns a tuple, because the caller needs `has_remote_js` standalone to drive
the coverage downgrade.
"""

from __future__ import annotations
from common import is_third_party_decompiled_file, read_text_ignore

import re
from pathlib import Path

# WebView JS-execution / bridge idioms as they survive decompilation. These are
# method calls on a WebView, so they are *always* preceded by `.` (e.g.
# `web.addJavascriptInterface(`) - the guard is therefore `(?<![\w$])`, which
# blocks an identifier suffix like `myAddJavascriptInterface` but allows the `.`
# method-call form (dynload's `(?<![\w$.])` is right for its class-loader tokens,
# whose leading `.` would be a package qualifier, but would wrongly reject every
# `.method(` call here). Recall-biased by design: a false "bridge present" only
# labels a call site, and a false "remote JS present" only degrades java to
# partial (honest, ADR-0006) - whereas a missed remote load silently over-claims
# a confident negative over JS we never read. Names are distinct from the
# unrelated `webview_ssl_error_handler_proceed` SSL-taxonomy signature.
_WVB_BRIDGE = re.compile(r"(?<![\w$])addJavascriptInterface\s*\(")
_WVB_EVAL = re.compile(r"(?<![\w$])evaluateJavascript\s*\(")
_WVB_JS_URL = re.compile(r"(?<![\w$])loadUrl\s*\(\s*[\"']javascript:")
_WVB_LOAD = re.compile(r"(?<![\w$])loadDataWithBaseURL\s*\(")
# Remote/external JS source: an explicit http(s) URL handed to loadUrl (the page
# itself is remote) or as the base URL of loadDataWithBaseURL. This is JS we
# cannot read statically - the coverage-degrading case. A `javascript:` inline
# URL or a local asset is NOT remote (readable), so it labels but does not
# degrade.
_WVB_REMOTE = re.compile(
    r"(?<![\w$])"
    r"(?:loadUrl|loadDataWithBaseURL)"
    r"\s*\(\s*[\"']https?://"
)


def find_webview_js(java_files, app_package: str | None = None) -> tuple[list[str], bool]:
    """Scan the decompiled .java corpus for WebView JS-bridge / JS-execution calls.

    Args:
        java_files: iterable of paths to decompiled .java sources (the same corpus
            threaded into `find_dynamic_loading`).
        app_package: the analyzed app's own declared package, used for the shared
            Bug-B-correct third-party test below. None reduces that test to the
            plain vendor check (safe direction).

    Returns:
        A `(call_sites, has_remote_js)` tuple. `call_sites` is a list of
        human-readable strings `"{path}:{line}: {snippet}"` for every bridge /
        eval / `javascript:`-URL / loadDataWithBaseURL call. `has_remote_js` is
        True when any of them loads JS from an explicit remote http(s) URL - the
        source we cannot read, which forces the java surface to `partial`.

    WEBVIEW-VENDOR1: bundled-SDK code is excluded, via the SAME
    `common.is_third_party_decompiled_file` `find_dynamic_loading` uses, so the two
    java coverage-limited scans cannot drift on the shared jadx+CFR corpus. This
    mirrors DYNLOAD-VENDOR1 exactly: a bundled SDK's WebView remote-JS load - an ad
    SDK's `loadUrl("https://...")`, a Cordova/analytics/in-app-browser container -
    is the *vendor's* remote content, not the app hiding its own root/SSL checks in
    JS we cannot read. Counting it set `has_remote_js` and degraded the app's java
    surface to `partial` for essentially every app that bundles a WebView-based
    SDK, making a confident java negative unreachable (the same false-partial that
    held the only registered negative control out of Tier-2 calibration for
    dynload). The app's OWN remote-JS check stays app-owned under Bug-B parity and
    still degrades - only recognized-vendor code is skipped, never the app's.
    """
    hits: list[str] = []
    has_remote_js = False
    for f in java_files:
        path = Path(f)
        if is_third_party_decompiled_file(str(path), app_package):
            continue
        text = read_text_ignore(path)
        if text is None:
            # Unreadable source (perm/race) - skip rather than abort. Same idiom
            # as find_dynamic_loading.
            continue
        for lineno, line in enumerate(text.splitlines(), 1):
            # _WVB_REMOTE is both a coverage signal (remote JS -> java partial)
            # and a call site: a remote http(s) page load is JS we cannot read, so
            # it must surface in the report block too, not just degrade coverage.
            if _WVB_REMOTE.search(line):
                has_remote_js = True
            if (
                _WVB_BRIDGE.search(line)
                or _WVB_EVAL.search(line)
                or _WVB_JS_URL.search(line)
                or _WVB_LOAD.search(line)
                or _WVB_REMOTE.search(line)
            ):
                hits.append(f"{path}:{lineno}: {line.strip()[:90]}")
    return hits, has_remote_js
