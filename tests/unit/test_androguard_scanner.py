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

from static.androguard_scanner import _app_owned, _app_owned_strings, _class_namespace


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

    result = _app_owned_strings(dexs, dx, "com.example.app")

    assert "com.android.insecurebankv2" in result
    assert "test-keys" not in result  # vendor-only string not promoted


def test_app_owned_strings_whole_pool_when_cannot_attribute():
    # When no app-owned namespace can be derived, the whole pool is included
    # rather than silently dropping the DEX surface (the caller reports counts).
    app_class = _FakeClass("Lcom/example/app/Main;")
    s = _FakeString("ro.kernel.qemu", {app_class: None})
    dexs = [_FakeDex([app_class])]
    dx = _FakeDx([s])

    result = _app_owned_strings(dexs, dx, None)

    assert "ro.kernel.qemu" in result
