"""SMALI-SPELL1 (2026-09-04): a dotted-package pattern must also match the
slash-spelled form of the same type.

The corpus writes library markers the way source does - `com.scottyab.rootbeer` -
but `.smali` is in `SCANNED_SUFFIXES` and apktool's smali tree is scanned, and
smali/DEX spell that same type `Lcom/scottyab/rootbeer/RootBeer;`. Measured before
the fix, 32 package-form patterns across the two YAMLs had no slash twin (24 in
root_detection.yaml, 8 in ssl_pinning.yaml) while `root_tools_library` carried
both spellings by hand - so the intent was always "match this type however it is
spelled" and 32 patterns silently missed half of it.

Why it bites where it hurts: the app whose jadx decompile was incomplete
(`java=partial`) is precisely the app whose only remaining evidence for a class is
smali. That is the same population that dominates the Tier-2 exclusion buckets.
"""
from __future__ import annotations

from pathlib import Path

import pytest

from static.signatures import Signature, _is_dotted_package_pattern, _line_matches, load_signatures

ROOT_YAML = Path("config/signatures/root_detection.yaml")
SSL_YAML = Path("config/signatures/ssl_pinning.yaml")


@pytest.fixture(scope="module")
def all_sigs():
    return load_signatures(ROOT_YAML) + load_signatures(SSL_YAML)


def _matching_ids(line: str, sigs) -> set[str]:
    return {s.id for s in sigs if _line_matches(line, s) is not None}


def _sig(patterns, *, case_sensitive=True, pattern_type="string_literal"):
    return Signature(
        id="t", category="root", weight=0.1, pattern_type=pattern_type,
        patterns=patterns, evidence_type="source", case_sensitive=case_sensitive,
    )


# --- the guard admits package/class names and nothing path-shaped ------------

@pytest.mark.parametrize(
    "pattern,expected",
    [
        ("com.scottyab.rootbeer", True),
        ("com.wultra.android.sslpinning", True),
        ("ro.build.fingerprint", True),           # dotted system property, same shape
        ("com.apollographql.apollo.ApolloClient", True),
        ("/data/adb/ksu", False),                 # path: already matches raw
        ("com/stericson/RootTools", False),       # already the slash form
        ("Build.TAGS", False),                    # one dot only
        ("test-keys", False),
        ("checkServerTrusted", False),
        ("this. that. other", False),             # whitespace excluded
    ],
)
def test_which_patterns_get_the_extra_surface(pattern, expected):
    assert _is_dotted_package_pattern(pattern) is expected


# --- the actual behavior, both case modes ------------------------------------

def test_slash_form_matches_a_dotted_pattern_case_sensitive():
    sig = _sig(["com.scottyab.rootbeer"])
    assert _line_matches("const-class v0, Lcom/scottyab/rootbeer/RootBeer;", sig) == \
        "com.scottyab.rootbeer"


def test_slash_form_matches_a_dotted_pattern_case_insensitive():
    sig = _sig(["com.stericson.roottools"], case_sensitive=False)
    assert _line_matches(
        "invoke-static {}, Lcom/stericson/RootTools/RootTools;->isAccessGiven()Z", sig
    ) == "com.stericson.roottools"


def test_the_dotted_form_still_matches_unchanged():
    sig = _sig(["com.scottyab.rootbeer"])
    assert _line_matches("import com.scottyab.rootbeer.RootBeer;", sig) is not None


def test_a_slash_bearing_pattern_is_untouched_by_normalization():
    """The raw line is always tried first, so a path pattern keeps matching a path.
    If normalization had replaced the line instead of adding a second surface, this
    is the test that would have caught it - `/data/adb/ksu` cannot survive
    slash->dot rewriting."""
    sig = _sig(["/data/adb/ksu"])
    assert _line_matches('    const-string v1, "/data/adb/ksu"', sig) == "/data/adb/ksu"


def test_regex_signatures_are_not_given_the_extra_surface():
    """Normalizing for a regex could silently change what `.` and `/` mean in the
    pattern, so the extra surface is confined to literal pattern types."""
    sig = _sig([r"com\.scottyab\.rootbeer"], pattern_type="regex")
    assert _line_matches("Lcom/scottyab/rootbeer/RootBeer;", sig) is None
    assert _line_matches("com.scottyab.rootbeer.RootBeer", sig) is not None


def test_no_match_is_invented_for_an_unrelated_line():
    sig = _sig(["com.scottyab.rootbeer"])
    for line in (
        "const-class v0, Lcom/scottyab/other/Thing;",
        "import com.example.app.MainActivity;",
        "    // rootbeer float recipe",
    ):
        assert _line_matches(line, sig) is None, line


def test_the_returned_evidence_is_the_pattern_not_the_rewritten_line():
    """Evidence strings are read by humans and stored in reports; returning the
    normalized copy of the line would put a string in the report that does not
    appear in the file."""
    sig = _sig(["com.saurik.substrate"])
    matched = _line_matches("const-class v0, Lcom/saurik/substrate/MS;", sig)
    assert matched == "com.saurik.substrate"


# --- end to end on the real corpus ------------------------------------------

@pytest.mark.parametrize(
    "line,expected_id",
    [
        ("    const-class v0, Lcom/scottyab/rootbeer/RootBeer;", "rootbeer_framework"),
        ('    const-string v1, "com/topjohnwu/magisk"', "su_management_apps"),
        ("    const-class v0, Lde/robv/android/xposed/XposedBridge;", "xposed_framework"),
        ('    const-string v2, "re/frida/server"', "frida_detection"),
        ("    const-class v0, Lcom/saurik/substrate/MS;", "cydia_substrate_detection"),
        ("    const-class v0, Lme/weishu/kernelsu/Natives;", "kernelsu_manager_package"),
        ("    const-class v0, Lme/bmax/apatch/Natives;", "apatch_manager_package"),
        ("    const-class v1, Lcom/devadvance/rootcloak/Main;", "root_cloaking_detection"),
        ("    const-class v0, Lorg/lsposed/manager/App;", "lsposed_manager"),
        ("    const-class v0, Lcom/chelpus/luckypatcher/A;", "lucky_patcher_root_tool"),
        (
            "invoke-virtual {v0}, Lcom/google/android/gms/safetynet/SafetyNetClient;"
            "->attest([BLjava/lang/String;)Lcom/google/android/gms/tasks/Task;",
            "safetynet_attestation",
        ),
        (
            "    const-class v0, Lcom/datatheorem/android/trustkit/TrustKit;",
            "trustkit_pinning",
        ),
        ("    const-class v0, Lapp/cash/paraphrase/FormattedResource;", "pin_cash_paraphrase"),
        ("    const-class v0, Lcom/gs/rnsslpinning/SSLPinningModule;", "rn_ssl_pinning_library"),
    ],
)
def test_real_signatures_now_fire_on_the_smali_spelling(line, expected_id, all_sigs):
    assert expected_id in _matching_ids(line, all_sigs)


def test_every_package_pattern_in_the_corpus_now_reaches_the_smali_spelling(all_sigs):
    """The point of doing this in the matcher rather than by hand-adding 32 slash
    twins: the invariant now holds for every package pattern in the corpus, and for
    every one added later, with no YAML duplication to keep in sync.
    """
    unreachable = []
    for sig in all_sigs:
        if sig.pattern_type == "regex":
            continue
        for pattern in sig.patterns:
            p = pattern.strip("'\"")
            if not _is_dotted_package_pattern(p) or p.startswith("ro."):
                continue
            smali = f"    const-class v0, L{p.replace('.', '/')}/Thing;"
            if _line_matches(smali, sig) is None:
                unreachable.append((sig.id, p))
    assert unreachable == []


def test_no_production_apk_line_shape_gains_a_spurious_match(all_sigs):
    """The extra surface can only newly match the slash spelling of a dotted name
    already in the corpus. These are real shapes from the APKs on disk that contain
    slashes and must stay unmatched by the packages they superficially resemble.
    """
    for line in (
        '    const-string v0, "https://api.example.com/v1/users"',
        '    const-string v0, "assets/fonts/roboto.ttf"',
        '    const-string v0, "res/layout/activity_main.xml"',
        '    const-string v0, "application/x-www-form-urlencoded"',
        '    const-string v0, "META-INF/services/java.security.Provider"',
    ):
        assert _matching_ids(line, all_sigs) == set(), line
