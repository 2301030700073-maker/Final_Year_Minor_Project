"""Unit tests for static/androguard_scanner.py - the DEX-level evidence source.

The module's real guarantees, tested with fake androguard objects so they run
anywhere (no APK, no toolchain - matching the project's pure-fixture testing
philosophy):
  - Bug A: namespace-aware matching (a flat lexicon has no namespace and would be
    silently vendor-excluded by scan()).
  - Bug B: app-root-aware attribution (an app's own package wins over a vendor
    prefix like com.android.*).
  - App-owned-only string promotion (a string reachable only from a vendor SDK is
    not promoted to detection evidence - FP discipline, ADR-0006).
The full AnalyzeAPK path is exercised for real on the reference environment as
the integration record, not mocked here.
"""

from pathlib import Path

import pytest

from static import androguard_scanner as ags
from static.androguard_scanner import _app_owned, _app_owned_strings, _class_namespace


def test_dex_string_cache_hit_avoids_reparse(tmp_path, monkeypatch):
    # The whole point of the cache: a second scan of the SAME APK bytes must NOT
    # re-run the expensive _extract_strings (AnalyzeAPK) - only the cheap matcher
    # re-runs. First call misses and parses; second call hits and skips parsing.
    apk = tmp_path / "app.apk"
    apk.write_bytes(b"APK-BYTES-001")

    calls = []
    monkeypatch.setattr(
        ags, "_extract_strings",
        lambda p: calls.append(str(p)) or ("com.example.app", {"sensitive-root-path"}, False),
    )

    sigs = [type("S", (), {"id": "root_sig", "patterns": ["sensitive"], "pattern_type": "string_literal", "case_sensitive": True})()]

    r1 = ags.scan_dex_strings(apk, sigs, cache_dir=tmp_path / "cache")
    r2 = ags.scan_dex_strings(apk, sigs, cache_dir=tmp_path / "cache")

    assert len(calls) == 1  # parse ran once, second call served from disk
    assert r1["string_count"] == 1 and r2["string_count"] == 1
    assert r1["app_package"] == r2["app_package"] == "com.example.app"
    cache_files = list((tmp_path / "cache").glob("*.json"))
    assert len(cache_files) == 1  # one entry written, keyed on the APK sha256


def test_dex_string_cache_stale_version_is_a_miss(tmp_path, monkeypatch):
    # A wrong-version entry must be a miss (re-parse), never served as a valid
    # result - the same no-silent-staleness discipline as native.analyze_so.
    apk = tmp_path / "app.apk"
    apk.write_bytes(b"APK-BYTES-001")
    cache_dir = tmp_path / "cache"
    cache_dir.mkdir()

    # write a stale-version entry under the REAL sha256 key for these APK bytes,
    # so a hit path genuinely exists - and must still be rejected by the version.
    stale = cache_dir / "514a6806133cf9d5b509f685f81ddd7f795d55346ebe2fe2cfa921838d948ea1.json"
    stale.write_text('{"version": "dex-string-v0", "payload": {"app_package": "x", "app_strings": []}}')

    calls = []
    monkeypatch.setattr(ags, "_extract_strings", lambda p: calls.append(p) or ("com.example.app", {"sensitive-root-path"}, False))
    sigs = [type("S", (), {"id": "root_sig", "patterns": ["sensitive"], "pattern_type": "string_literal", "case_sensitive": True})()]

    ags.scan_dex_strings(apk, sigs, cache_dir=cache_dir)

    assert len(calls) == 1  # stale entry ignored -> re-parsed


def test_dex_string_cache_androguard_version_change_is_a_miss(tmp_path, monkeypatch):
    # AG2: the cached payload (the app string pool) is produced by androguard's
    # AnalyzeAPK, so an androguard UPGRADE can change what gets extracted. The
    # manual _DEX_STRING_CACHE_VERSION bump only tracks THIS module's logic and
    # cannot know androguard changed underneath it. The androguard version is
    # therefore folded into the effective cache key: an entry written under one
    # androguard version must be a MISS (re-parse) under another, never served.
    apk = tmp_path / "app.apk"
    apk.write_bytes(b"APK-BYTES-001")
    cache_dir = tmp_path / "cache"

    calls = []
    monkeypatch.setattr(ags, "_extract_strings", lambda p: calls.append(p) or ("com.example.app", {"sensitive-root-path"}, False))
    sigs = [type("S", (), {"id": "root_sig", "patterns": ["sensitive"], "pattern_type": "string_literal", "case_sensitive": True})()]

    # First scan under androguard "9.9.9-a": misses, parses, writes an entry whose
    # stored version embeds that androguard version.
    monkeypatch.setattr(ags, "_androguard_version", lambda: "9.9.9-a")
    ags.scan_dex_strings(apk, sigs, cache_dir=cache_dir)
    assert len(calls) == 1

    # Same APK bytes, but androguard has been upgraded: the effective key differs,
    # so the prior entry must NOT be served - it re-parses.
    monkeypatch.setattr(ags, "_androguard_version", lambda: "9.9.9-b")
    ags.scan_dex_strings(apk, sigs, cache_dir=cache_dir)
    assert len(calls) == 2  # androguard version is part of the key -> miss

    # A repeat at the SAME (upgraded) version hits again: the key is stable within
    # a version; only crossing a version boundary invalidates.
    ags.scan_dex_strings(apk, sigs, cache_dir=cache_dir)
    assert len(calls) == 2  # served from the entry written under 9.9.9-b


def test_dex_string_cache_none_is_always_fresh(tmp_path, monkeypatch):
    # cache_dir=None (the test default) must keep the old always-parse behavior.
    apk = tmp_path / "app.apk"
    apk.write_bytes(b"APK-BYTES-001")
    calls = []
    monkeypatch.setattr(ags, "_extract_strings", lambda p: calls.append(p) or ("com.example.app", set(), False))
    sigs = [type("S", (), {"id": "root_sig", "patterns": [], "pattern_type": "string_literal", "case_sensitive": True})()]

    ags.scan_dex_strings(apk, sigs, cache_dir=None)
    ags.scan_dex_strings(apk, sigs, cache_dir=None)

    assert len(calls) == 2  # no cache -> every call parses


def test_broken_signature_raises_not_silently_skipped(tmp_path, monkeypatch):
    # A4: a signature whose matcher raises on EVERY string it is evaluated against
    # is a broken RULE, not an absent technique. The old `except: continue` in the
    # matcher loop swallowed it, so it contributed no evidence and read as a clean
    # negative - the silent failure principle 3/NFR-1 forbids, and an asymmetry with
    # signatures.scan(), which calls the same _line_matches unguarded. It must now
    # surface as BrokenSignatureError so the caller can halt loudly (distinct from
    # androguard being unavailable). An invalid pattern_type drives _line_matches'
    # own `raise ValueError("unknown pattern_type...")` on every evaluation - the
    # exact residual match-time path load-time validation (RESID-4B) cannot cover
    # for a signature object that reaches the scanner directly (e.g. a test double,
    # or a future matcher bug on DEX-pool strings the source scan never exercised).
    apk = tmp_path / "app.apk"
    apk.write_bytes(b"APK-BYTES-001")
    monkeypatch.setattr(
        ags, "_extract_strings",
        lambda p: ("com.example.app", {"any-app-string", "another-string"}, False),
    )
    broken = type("S", (), {"id": "root_sig", "patterns": ["x"], "pattern_type": "bogus", "case_sensitive": True})()

    with pytest.raises(ags.BrokenSignatureError) as excinfo:
        ags.scan_dex_strings(apk, [broken], cache_dir=None)
    # Names the offending signature so the halt is actionable, not just "something broke".
    assert "root_sig" in str(excinfo.value)


def test_partly_erroring_signature_that_matches_is_not_flagged(tmp_path, monkeypatch):
    # The all-errored guard must not fire on a signature that DOES match: a valid
    # string_literal signature matches its string and is never evaluated as broken,
    # even though other app strings don't match it (a non-match is not an error).
    # Proves the flag is "raised on every evaluation", not "didn't match everything".
    apk = tmp_path / "app.apk"
    apk.write_bytes(b"APK-BYTES-001")
    monkeypatch.setattr(
        ags, "_extract_strings",
        lambda p: ("com.example.app", {"sensitive-root-path", "unrelated-string"}, False),
    )
    good = type("S", (), {"id": "root_sig", "patterns": ["sensitive"], "pattern_type": "string_literal", "case_sensitive": True})()

    result = ags.scan_dex_strings(apk, [good], cache_dir=None)  # must NOT raise
    assert result["matched"] == {"root_sig": "sensitive"}


def test_class_namespace_parses_and_handles_malformed():
    assert _class_namespace("Lcom/foo/Bar;") == "com.foo"
    assert _class_namespace("Lcom/android/insecurebankv2/PostLogin;") == "com.android.insecurebankv2"
    assert _class_namespace("LBar;") is None          # no package component
    assert _class_namespace("") is None               # empty
    assert _class_namespace("plain") is None          # not an L...; descriptor
    assert _class_namespace("Lcom/foo;") == "com"     # 2 parts -> 'com'


def test_app_owned_app_package_overrides_vendor_prefix():
    # Bug B: com.android.* is a vendor prefix to is_known_third_party, but an
    # app whose OWN package is com.android.insecurebankv2 must not have its
    # classes excluded. The package override must win over the vendor match.
    assert _app_owned("com.android.insecurebankv2", "com.android.insecurebankv2") is True
    assert _app_owned("com.android.insecurebankv2.postlogin", "com.android.insecurebankv2") is True


def test_app_owned_vendor_lib_is_not_app_owned():
    # A bundled vendor namespace (okhttp3) under a different app package is NOT
    # app-owned - its strings must not be promoted to detection evidence.
    assert _app_owned("okhttp3", "com.example.app") is False
    assert _app_owned("com.squareup.okhttp", "com.example.app") is False


def test_app_owned_unknown_namespace_is_app_owned_when_no_app_package():
    # With no app package declared, an unknown (non-vendor) namespace is app-owned.
    assert _app_owned("com.example", None) is True


class _FakeClass:
    def __init__(self, name):
        self._name = name

    def get_name(self):
        return self._name

    def get_class_name(self):
        return self._name


class _FakeString:
    def __init__(self, value, xref_from):
        self._value = value
        self._xref = xref_from

    def get_value(self):
        return self._value

    def get_xref_from(self):
        return self._xref


class _FakeDex:
    def __init__(self, classes):
        self._classes = classes

    def get_classes(self):
        return self._classes

    def get_strings(self):
        return []


class _FakeDx:
    def __init__(self, strings):
        self._strings = strings

    def find_strings(self):
        return self._strings


def test_app_owned_strings_keeps_only_app_owned():
    # A string referenced only by a vendor class (okhttp3) is dropped; a string
    # referenced by an app-owned class is kept. The xref is keyed by class obj.
    app_class = _FakeClass("Lcom/example/app/Main;")
    vendor_class = _FakeClass("Lokhttp3/OkHttpClient;")
    app_string = _FakeString("com.android.insecurebankv2", {app_class: None})
    vendor_string = _FakeString("test-keys", {vendor_class: None})
    dexs = [_FakeDex([app_class, vendor_class])]
    dx = _FakeDx([app_string, vendor_string])

    result, degraded = _app_owned_strings(dexs, dx, "com.example.app")

    assert "com.android.insecurebankv2" in result
    assert "test-keys" not in result  # vendor-only string not promoted
    assert degraded is False  # attribution applied - no whole-pool fallback


def test_app_owned_strings_whole_pool_when_cannot_attribute():
    # When no app-owned namespace can be derived, the whole pool is included
    # rather than silently dropping the DEX surface (the caller reports counts).
    app_class = _FakeClass("Lcom/example/app/Main;")
    s = _FakeString("ro.kernel.qemu", {app_class: None})
    dexs = [_FakeDex([app_class])]
    dx = _FakeDx([s])

    result, degraded = _app_owned_strings(dexs, dx, None)

    assert "ro.kernel.qemu" in result
    # A None package still derives an app namespace from the non-vendor class, so
    # this is the ATTRIBUTED path - it must not report a degraded attribution.
    assert degraded is False


class _FakeDexFail:
    """get_classes() raises - the class-namespace iteration error path."""

    def get_classes(self):
        raise OSError("bad dex")


class _FakeDexStrings:
    """Carries no classes but real get_strings() for the whole-pool degrade."""

    def __init__(self, strings):
        self._strings = strings

    def get_classes(self):
        return []

    def get_strings(self):
        return self._strings


class _FakeDexStringsFail:
    """get_strings() raises inside the xref-walk degrade loop."""

    def get_classes(self):
        return []

    def get_strings(self):
        raise OSError("bad strings")


class _FakeDxFail:
    """find_strings() raises - the xref-walk failure path."""

    def find_strings(self):
        raise OSError("xref walk failed")


def test_app_owned_strings_continues_on_class_iteration_error():
    # androguard_scanner.py:75-76: a dex whose get_classes() raises is skipped
    # (per-dex except), and a healthy sibling dex still populates app_ns and
    # keeps its app-owned strings - the whole pool is NOT dropped for one bad dex.
    app_class = _FakeClass("Lcom/example/app/Main;")
    s = _FakeString("keep-me", {app_class: None})
    dexs = [_FakeDexFail(), _FakeDex([app_class])]
    dx = _FakeDx([s])
    result, degraded = _app_owned_strings(dexs, dx, "com.example.app")
    assert "keep-me" in result
    assert degraded is False  # a healthy sibling dex preserved attribution


def test_app_owned_strings_skips_none_valued_string():
    # androguard_scanner.py:83: a string analysis whose get_value() is None is
    # skipped, never added as the literal None.
    app_class = _FakeClass("Lcom/example/app/Main;")
    null = _FakeString(None, {app_class: None})
    good = _FakeString("real-string", {app_class: None})
    result, degraded = _app_owned_strings([_FakeDex([app_class])], _FakeDx([null, good]), "com.example.app")
    assert "real-string" in result
    assert None not in result
    assert degraded is False


def test_app_owned_strings_whole_pool_when_no_app_namespace():
    # androguard_scanner.py:87-88: when no class is app-owned (here only a known
    # vendor namespace), the whole pool is kept rather than silently dropped -
    # distinct from test_..._whole_pool_when_cannot_attribute which passes a
    # None package but still derives an app namespace.
    vendor_class = _FakeClass("Lokhttp3/OkHttpClient;")
    s = _FakeString("ro.kernel.qemu", {vendor_class: None})
    result, degraded = _app_owned_strings([_FakeDex([vendor_class])], _FakeDx([s]), "com.example.app")
    assert "ro.kernel.qemu" in result
    # F4: the whole-pool fallback is a WEAKER claim than an attributed scan (this
    # vendor string is now matchable), so it must be reported, not left implicit.
    assert degraded is True


def test_app_owned_strings_whole_pool_on_xref_walk_failure():
    # androguard_scanner.py:97-105: when find_strings() itself raises, the walk
    # degrades to the whole string pool via dex.get_strings() instead of silently
    # dropping the DEX surface. A dex whose get_strings() also raises is skipped.
    s = "survives-the-walk"
    dexs = [_FakeDexStrings([s]), _FakeDexStringsFail()]
    result, degraded = _app_owned_strings(dexs, _FakeDxFail(), "com.example.app")
    assert s in result
    # F4: a failed xref walk means the whole pool was substituted - the caller
    # must learn attribution was lost, or a whole-pool scan reads as attributed.
    assert degraded is True  # xref walk failed -> whole-pool fallback
