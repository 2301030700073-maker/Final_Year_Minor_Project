"""Unit tests for static/jnibridge.py - the boundary-3 static-half reconciliation
of every Java-declared `native` method against the real native libraries.

Verifies the three honest statuses (resolved / dynamic_candidate / unresolved),
the STRICT conservative JNI-name matching (never a false `resolved` - ADR-0006),
and the coverage degradation an unresolved binding forces. Pure module: fixtures
only, no toolchain (NFR)."""

import os
from pathlib import Path

from static.jnibridge import (
    DeclaredNative,
    _class_fqn,
    extract_declared_natives,
    has_unresolved,
    resolve_jni_bindings,
)
from static.coverage import apply_unresolved_native


class _Lib:
    """Duck-typed stand-in for native.NativeLibrary (jni_exports + jni_onload)."""

    def __init__(self, jni_exports=(), jni_onload=False):
        self.jni_exports = list(jni_exports)
        self.jni_onload = jni_onload


def _fqn_for(tmp_path, name, text):
    p = tmp_path / f"{name}.java"
    p.write_text(text)
    return _class_fqn(p.name, text)


def test_class_fqn_uses_package_and_stem(tmp_path):
    assert _fqn_for(tmp_path, "CodeCheck",
                    "package sg.vantagepoint.uncrackable3;\nclass CodeCheck {}") == \
        "sg.vantagepoint.uncrackable3.CodeCheck"


def test_class_fqn_default_package(tmp_path):
    assert _fqn_for(tmp_path, "MainActivity", "class MainActivity {}") == "MainActivity"


def test_extract_declared_natives_parses_real_l3_shape(tmp_path):
    f = tmp_path / "CodeCheck.java"
    f.write_text(
        "package sg.vantagepoint.uncrackable3;\n"
        "public class CodeCheck {\n"
        "    private native boolean bar(byte[] bArr);\n"
        "    static native long init();\n"
        "    protected native void notify();\n"
        "}\n"
    )
    declared = extract_declared_natives([f])
    names = {(d.class_name, d.method_name) for d in declared}
    assert ("sg.vantagepoint.uncrackable3.CodeCheck", "bar") in names
    assert ("sg.vantagepoint.uncrackable3.CodeCheck", "init") in names
    assert ("sg.vantagepoint.uncrackable3.CodeCheck", "notify") in names


def test_extract_dedupes_same_class_method_across_modules(tmp_path):
    # Two module dirs emit the SAME class (p.A) declaring the same native 'x'
    # (jadx can emit a class into several modules) -> one DeclaredNative, not two.
    a = tmp_path / "m1" / "A.java"
    b = tmp_path / "m2" / "A.java"
    a.parent.mkdir()
    b.parent.mkdir()
    a.write_text("package p;\nclass A { native void x(); }\n")
    b.write_text("package p;\nclass A { native void x(); }\n")
    declared = extract_declared_natives([a, b])
    assert len(declared) == 1
    assert declared[0].class_name == "p.A" and declared[0].method_name == "x"


def test_extract_skips_unreadable_file(tmp_path):
    # NFR: an unreadable/missing file degrades per-file, never raises the extract.
    #
    # PLATFORM: chmod(0o000) is a NO-OP on Windows (the mode reads back 0o444 and
    # the read still succeeds), so an unconditional chmod assertion would leave
    # the skip branch untested there. A directory in place of a file raises
    # OSError on every platform and pins the same branch; the missing-file case
    # covers the other half of that OSError path and works everywhere. The chmod
    # case is kept under POSIX, where it is the real mechanism.
    unreadable = tmp_path / "A_unreadable.java"
    unreadable.mkdir()
    assert extract_declared_natives([unreadable, tmp_path / "missing.java"]) == []

    if os.name == "posix":
        f = tmp_path / "A.java"
        f.write_text("package p;\nclass A { native void x(); }\n")
        f.chmod(0o000)
        try:
            assert extract_declared_natives([f, tmp_path / "missing.java"]) == []
        finally:
            f.chmod(0o644)


def test_resolve_binds_exact_jni_export():
    # Real L3 anchor: CodeCheck.bar -> Java_sg_vantagepoint_uncrackable3_CodeCheck_bar.
    declared = [DeclaredNative("sg.vantagepoint.uncrackable3.CodeCheck", "bar")]
    lib = _Lib(jni_exports=["Java_sg_vantagepoint_uncrackable3_CodeCheck_bar"])
    bindings = resolve_jni_bindings(declared, [lib])
    assert bindings[0].status == "resolved"


def test_resolve_dynamic_candidate_with_jni_onload():
    # A declared native method with no Java_* export, but a lib defines JNI_OnLoad
    # (RegisterNatives candidate) -> dynamic_candidate, NOT resolved.
    declared = [DeclaredNative("pkg.Cls", "hybrid")]
    lib = _Lib(jni_exports=["JNI_OnLoad"], jni_onload=True)
    bindings = resolve_jni_bindings(declared, [lib])
    assert bindings[0].status == "dynamic_candidate"


def test_resolve_unresolved_with_no_symbol_no_onload():
    # A declared native method with NO Java_* export and NO JNI_OnLoad anywhere
    # is unresolved - a genuine unexamined surface (ADR-0006).
    declared = [DeclaredNative("pkg.Cls", "mystery")]
    lib = _Lib(jni_exports=["JNI_OnUnload"], jni_onload=True)  # onload present -> dynamic
    assert resolve_jni_bindings(declared, [lib])[0].status == "dynamic_candidate"
    lib2 = _Lib(jni_exports=["some_other_export"], jni_onload=False)
    assert resolve_jni_bindings(declared, [lib2])[0].status == "unresolved"


def test_resolve_is_strict_never_false_resolved():
    # A Java_* export for a DIFFERENT method/class must NOT resolve this one
    # (false-resolved would certify a body we can't see). Conservative.
    declared = [DeclaredNative("pkg.Cls", "a")]
    lib = _Lib(jni_exports=["Java_pkg_Cls_b", "Java_other_Cls_a"], jni_onload=False)
    assert resolve_jni_bindings(declared, [lib])[0].status == "unresolved"


def test_resolve_nested_class_underscore_mangling_is_conservative():
    # A nested $ class cannot strict-match an unmangled export -> conservative
    # (falls to unresolved when no onload), never a false resolved.
    declared = [DeclaredNative("pkg.Outer$Inner", "m")]
    lib = _Lib(jni_exports=["Java_pkg_Outer_00024Inner_m"], jni_onload=False)
    assert resolve_jni_bindings(declared, [lib])[0].status == "unresolved"


def test_has_unresolved():
    assert has_unresolved([]) is False
    assert has_unresolved([_bind("resolved")]) is False
    assert has_unresolved([_bind("resolved"), _bind("unresolved")]) is True


def _bind(status):
    from static.jnibridge import JNIBinding
    return JNIBinding("pkg.C", "m", status)


def test_apply_unresolved_native_downgrades_only_fully_analyzed():
    base = {"java": "fully_analyzed", "native": "fully_analyzed", "manifest": "fully_analyzed"}
    # No unresolved -> unchanged.
    assert apply_unresolved_native(base, False) == base
    # Unresolved -> native forced to partial.
    out = apply_unresolved_native(base, True)
    assert out["native"] == "partial"
    assert out["java"] == "fully_analyzed"  # untouched


def test_apply_unresolved_native_never_upgrades_worse_state():
    # A native surface already partial/unscannable stays as-is (never upgraded).
    for worse in ("partial", "unscannable"):
        base = {"native": worse}
        assert apply_unresolved_native(base, True) == base


def test_declared_natives_in_text_linewise():
    # _declared_natives_in_text: one native method per declaration line, each
    # attributed to class_name; a line carrying the word 'native' but no real
    # declaration is skipped, never a crash. Had zero direct coverage.
    from static.jnibridge import _declared_natives_in_text
    text = (
        "public native String encrypt(String s);\n"
        "private static native void init()\n"
        "// no native methods here\n"
        "int x = 5;\n"
    )
    found = _declared_natives_in_text(text, "com.example.Crypto")
    names = [d.method_name for d in found]
    assert names == ["encrypt", "init"]
    assert all(d.class_name == "com.example.Crypto" for d in found)
    assert _declared_natives_in_text("no native anywhere", "X") == []


def test_declared_natives_ignores_comments_and_string_literals():
    # Regression: `_NATIVE_DECL` ran over raw jadx text, so a native-looking call
    # MENTIONED in a `//` comment, a javadoc/block-comment line, or a string
    # literal fabricated a DeclaredNative - a phantom binding that renders a fake
    # row in the JNI-bindings table and can force native coverage to `partial` on
    # non-code text (a Principle-3 fake finding, and an under-claim of coverage).
    # Masking strings / stripping comments can only REMOVE false matches: a real
    # `native` declaration contains neither, so a genuine declaration - including
    # an annotated one or one with a trailing comment - is never dropped (dropping
    # it would be the dangerous false-negative direction). The fix is strictly
    # one-directional.
    from static.jnibridge import _declared_natives_in_text

    text = (
        "package com.example;\n"
        "public class Crypto {\n"
        "    // the loader calls the native helper doCheck() indirectly\n"
        "    /* native disabledOld() left for reference */\n"
        "     * javadoc: uses nativeInit() under the hood\n"
        '    private void log() { Log.d(TAG, "loading native lib initCrypto()"); }\n'
        "    public static native String encrypt(String s);\n"
        "    native long init(); // TODO: remove before ship\n"
        "}\n"
    )
    names = [d.method_name for d in _declared_natives_in_text(text, "com.example.Crypto")]
    # Only the two REAL declarations survive; every mention in comment/string/
    # javadoc is gone, and the trailing-comment declaration is kept.
    assert names == ["encrypt", "init"]
    assert "doCheck" not in names        # // comment mention
    assert "disabledOld" not in names    # /* block comment
    assert "nativeInit" not in names     # javadoc continuation line
    assert "initCrypto" not in names     # string literal
