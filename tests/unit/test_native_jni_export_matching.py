"""JNI-mangled export matching for native export_symbol signatures (2026-09-04).

native_detection.yaml has always documented export_symbol as matching "symbol
names, incl. Java_* JNI exports", but matching was pure exact membership: a
technique-level pattern like `isRooted` could only ever match a plain C export of
that literal name, never `Java_com_foo_A_isRooted` - the form the JNI spec mangles
a real Android native method into. These tests pin the fix and, just as
importantly, pin the false-positive guarantees it must not break.
"""
from __future__ import annotations

from pathlib import Path

import pytest

from static.native import (
    NativeLibrary,
    _jni_export_matches,
    load_native_signatures,
    match_native,
)

NATIVE_YAML = Path("config/signatures/native_detection.yaml")


@pytest.fixture(scope="module")
def native_sigs():
    return load_native_signatures(NATIVE_YAML)


def _fired(native_sigs, *, exports=(), strings=()) -> set[str]:
    lib = NativeLibrary(
        name="libtarget.so", abi="arm64-v8a",
        exports=list(exports), strings=list(strings),
    )
    result = match_native([lib], native_sigs)
    return {e.signature_id for e in result.root_evidence + result.ssl_evidence}


# --- the gap that was closed -----------------------------------------------

@pytest.mark.parametrize(
    "symbol",
    [
        "Java_com_foo_RootCheck_isRooted",
        "Java_org_example_app_util_Native_checkRoot",
        # overloaded native method: the method component is followed by `__<argsig>`
        "Java_com_foo_RootCheck_isRooted__Ljava_lang_String_2",
    ],
)
def test_jni_mangled_root_export_now_fires(symbol, native_sigs):
    assert "native_jni_root_check" in _fired(native_sigs, exports=[symbol])


def test_jni_mangled_pinning_export_now_fires(native_sigs):
    assert "native_ssl_pinning_verify" in _fired(
        native_sigs, exports=["Java_com_foo_Pinner_verify_certificate"]
    )


def test_plain_c_export_still_fires(native_sigs):
    """No regression: the exact-membership path that already worked."""
    assert "native_jni_root_check" in _fired(native_sigs, exports=["isRooted"])


# --- the `_1` underscore escape --------------------------------------------

def test_jni_underscore_escape_form_fires(native_sigs):
    """The JNI spec escapes `_` in a Java identifier to `_1`, so a native method
    declared `verify_certificate` exports as `..._verify_1certificate`. Measured
    2026-09-04: 382 of 6269 Java_* symbols across the corpus's 952 .so files carry
    a `_1` escape, so this spelling is the common case, not an edge case."""
    assert "native_ssl_pinning_verify" in _fired(
        native_sigs, exports=["Java_com_foo_Pinner_verify_1certificate"]
    )
    assert "native_ssl_pinning_verify" in _fired(
        native_sigs, exports=["Java_com_foo_Pinner_verify_1certificate__Ljava_lang_String_2"]
    )


def test_jni_escape_form_fires_for_the_openssl_callback_pattern(native_sigs):
    """SSL_CTX_set_cert_verify_callback has five underscores, so the escaped form is
    the only spelling a Java-declared native of that name can have."""
    assert "native_ssl_custom_verify_callback" in _fired(
        native_sigs,
        exports=["Java_com_foo_Crypto_SSL_1CTX_1set_1cert_1verify_1callback"],
    )


def test_real_corpus_escaped_symbols_stay_unmatched(native_sigs):
    """Escape-awareness must not sweep in the benign `_1`-carrying JNI exports the
    corpus actually ships. Both symbols below were extracted from real .so files in
    the analysed corpus (Telegram), and neither is a root or pinning check."""
    for symbol in (
        "Java_org_telegram_messenger_voip_ConferenceCall_call_1get_1verification_1state",
        "Java_org_telegram_tgnet_ConnectionsManager_native_1test_1AuthAuthorization",
    ):
        assert _fired(native_sigs, exports=[symbol]) == set(), symbol


# --- the false positives the fix must NOT introduce -----------------------

@pytest.mark.parametrize(
    "symbol",
    [
        # substring matching was rejected as the fix precisely because of this one
        "my_verify_certificate_helper",
        "verify_certificate_chain_internal",
        # not a JNI export, so the trailing method component means nothing
        "internal_isRooted",
        "_isRooted",
        "libfoo_checkRoot",
    ],
)
def test_non_jni_symbols_are_not_swept_in(symbol, native_sigs):
    assert not _fired(native_sigs, exports=[symbol]) & {
        "native_jni_root_check",
        "native_ssl_pinning_verify",
    }


def test_embedded_string_signatures_stay_exact_only(native_sigs):
    """The JNI rule is passed only for symbol corpora. embedded_string patterns are
    path/string literals for which the JNI form is meaningless, so a string that
    merely ends in `_magisk` must not credit native_su_binary_embedded."""
    assert "native_su_binary_embedded" not in _fired(
        native_sigs, strings=["Java_com_foo_Bar_magisk"]
    )
    # ...while the real literal still matches
    assert "native_su_binary_embedded" in _fired(native_sigs, strings=["magisk"])


def test_require_all_semantics_survive_jni_awareness(native_sigs):
    assert "native_ptrace_fork_antidebug" in _fired(native_sigs, exports=["ptrace", "fork"])
    assert "native_ptrace_fork_antidebug" not in _fired(native_sigs, exports=["ptrace"])


# --- evidence fidelity -----------------------------------------------------

def test_evidence_reports_the_real_symbol_not_the_pattern(native_sigs):
    """An analyst has to be able to find the match in readelf output, so the row
    must carry `Java_com_foo_RootCheck_isRooted`, not the pattern `isRooted`."""
    lib = NativeLibrary(
        name="libtarget.so", abi="arm64-v8a",
        exports=["some_other_symbol", "Java_com_foo_RootCheck_isRooted"],
    )
    result = match_native([lib], native_sigs)
    row = next(e for e in result.root_evidence if e.signature_id == "native_jni_root_check")
    assert row.matched_text == "Java_com_foo_RootCheck_isRooted"
    assert row.line_or_offset == "symbol[1]", "index must point at the real symbol"


# --- unit-level predicate --------------------------------------------------

@pytest.mark.parametrize(
    ("symbol", "pattern", "expected"),
    [
        ("Java_a_B_isRooted", "isRooted", True),
        ("Java_a_B_isRooted__I", "isRooted", True),
        ("Java_a_B_isRootedNow", "isRooted", False),
        ("NotJava_a_B_isRooted", "isRooted", False),
        ("Java_a_B_isRooted", "", False),
        # `_1` escape: the spec form for a pattern containing an underscore
        ("Java_a_B_verify_1certificate", "verify_certificate", True),
        ("Java_a_B_verify_1certificate__I", "verify_certificate", True),
        # the raw spelling stays accepted (hand-written RegisterNatives exports)
        ("Java_a_B_verify_certificate", "verify_certificate", True),
        # ...but the Java_ anchor is still mandatory, so a bare C symbol is out
        ("verify_1certificate", "verify_certificate", False),
        ("my_verify_1certificate_helper", "verify_certificate", False),
    ],
)
def test_jni_export_matches_predicate(symbol, pattern, expected):
    assert _jni_export_matches(symbol, pattern) is expected


# --- the removed placeholder ----------------------------------------------

def test_no_com_example_placeholder_patterns_remain(native_sigs):
    """`Java_com_example_verify_cert` could never fire - no real app ships the
    com.example package - so it was dead weight overclaiming native SSL surface,
    the same defect already removed from native_jni_root_check."""
    offenders = [
        (s.id, p) for s in native_sigs for p in s.patterns if "com_example" in p or "com.example" in p
    ]
    assert offenders == []
