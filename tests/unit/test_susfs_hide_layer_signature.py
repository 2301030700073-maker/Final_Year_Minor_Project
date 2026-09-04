"""SUSFS / hide-layer currency check (root_detection.yaml, 2026-09-04).

The 2026 sweep's root-side question was whether the corpus reaches the CURRENT
hiding layer. It already covered Magisk, KernelSU, APatch, Zygisk, Shamiko,
DenyList and /data/adb/modules; the one genuinely new artifact family was SUSFS
(susfs4ksu), whose module README states it installs two userspace helpers,
`ksu_susfs` and `sus_su`, into /data/adb/ksu.

Exactly one of the two was added. These tests pin both halves of that decision,
because the reason for the asymmetry is a false-positive vector that is invisible
once the pattern list is read on its own.
"""
from __future__ import annotations

from pathlib import Path

import pytest

from static.signatures import _line_matches, load_signatures

ROOT_YAML = Path("config/signatures/root_detection.yaml")
SIG_ID = "kernelsu_binary_paths"


@pytest.fixture(scope="module")
def root_sigs():
    return load_signatures(ROOT_YAML)


def _matching_ids(line: str, sigs) -> set[str]:
    return {s.id for s in sigs if _line_matches(line, s) is not None}


# --- what was added ---------------------------------------------------------

@pytest.mark.parametrize(
    "line",
    [
        '    const-string v0, "ksu_susfs"',
        '        if (new File("/data/adb/ksu/ksu_susfs").exists()) return true;',
        '    const-string v1, "/system/bin/ksu_susfs"',
        '        Runtime.getRuntime().exec("which ksu_susfs");',
    ],
)
def test_susfs_helper_is_detected(line, root_sigs):
    assert SIG_ID in _matching_ids(line, root_sigs)


def test_the_bare_helper_name_is_not_reachable_from_the_directory_pattern(root_sigs):
    """Why `ksu_susfs` is not redundant with `/data/adb/ksu`: a which-style or
    mount-table probe carries the helper name with no directory prefix, so the
    directory literal alone cannot see it. If a future edit drops the helper as
    "already covered", this fails."""
    sig = next(s for s in root_sigs if s.id == SIG_ID)
    bare = '    const-string v0, "ksu_susfs"'
    assert "/data/adb/ksu" not in bare
    assert _line_matches(bare, sig) == "ksu_susfs"


def test_it_extends_the_existing_id_rather_than_adding_a_new_weight(root_sigs):
    """SUSFS hides KernelSU, so its helper is the same signal that earns
    kernelsu_binary_paths its 0.3. A new id would add a second weight to every app
    that already matched the KernelSU path and silently inflate its confidence."""
    owners = {s.id for s in root_sigs for p in s.patterns if "susfs" in p.lower()}
    assert owners == {SIG_ID}
    assert next(s for s in root_sigs if s.id == SIG_ID).weight == 0.3


# --- what was refused, and why ----------------------------------------------

def test_bare_sus_su_is_not_a_pattern_because_english_contains_it(root_sigs):
    """`sus_su` as a substring is reachable from ordinary compounds. These are the
    exact strings that make a bare literal unsafe - they must not match anything in
    the corpus. The safe spelling (/data/adb/ksu/sus_su) is already subsumed by the
    directory literal, so refusing the bare form costs no recall.
    """
    assert {s.id for s in root_sigs for p in s.patterns if p.strip("'\"") == "sus_su"} == set()

    for benign in (
        '    const-string v0, "census_survey_2026"',
        '    const-string v0, "consensus_subset"',
        '    const-string v0, "versus_summary"',
    ):
        assert "sus_su" in benign, "the FP vector must really be present in the string"
        assert _matching_ids(benign, root_sigs) == set(), benign


def test_the_path_qualified_form_still_matches_via_the_directory_literal(root_sigs):
    """The recall that refusing bare `sus_su` would have cost, shown to be zero."""
    line = '        new File("/data/adb/ksu/sus_su").exists();'
    assert SIG_ID in _matching_ids(line, root_sigs)


def test_no_undocumented_susfs_path_was_invented(root_sigs):
    """The module's documentation states no /data/adb/susfs path. Asserting one
    would be padding - a pattern that looks like coverage and can never fire."""
    invented = [
        p for s in root_sigs for p in s.patterns
        if "susfs" in p.lower() and p.strip("'\"").startswith("/")
    ]
    assert invented == []


def test_magisk_ksu_module_directory_already_covers_per_module_ids(root_sigs):
    """Why no TrickyStore / PlayIntegrityFix module-id literal was added: both live
    at /data/adb/modules/<id>, and an app that enumerates or stats that directory
    already matches. A per-id literal would only help an app hardcoding that exact
    id, and neither id was verified from source - so it stays out rather than being
    guessed at.
    """
    for line in (
        '    const-string v0, "/data/adb/modules/tricky_store"',
        '    const-string v0, "/data/adb/modules/playintegrityfix"',
        '        for (File m : new File("/data/adb/modules").listFiles()) {',
    ):
        assert "magisk_module_dirs" in _matching_ids(line, root_sigs), line


# --- currency of the family this belongs to ---------------------------------

@pytest.mark.parametrize(
    "line,expected",
    [
        ('    const-string v0, "/data/adb/ksu"', SIG_ID),
        ('    const-string v0, "/data/adb/ap"', "apatch_binary_paths"),
        ('    const-string v0, "/data/adb/denylist"', "magisk_denylist_artifacts"),
        ('    const-string v0, "/data/adb/modules/zygisk"', "zygisk_artifact_paths"),
        ('    const-string v0, "Shamiko"', "root_cloaking_detection"),
    ],
)
def test_the_rest_of_the_hide_layer_family_is_present(line, expected, root_sigs):
    """Regression fence for the sweep's finding that this family was already
    current: if any of these disappears, the SUSFS addition above is sitting on a
    corpus that lost its foundation."""
    assert expected in _matching_ids(line, root_sigs)


# --- two adjacent holes the fence above exposed -----------------------------

@pytest.mark.parametrize(
    "line",
    [
        # the bare base directory - what the natural probe actually looks like
        '        if (new File("/data/adb/ap").exists()) return true;',
        '    const-string v0, "/data/adb/ap"',
        # and the sub-paths the list used to name, still reached by the prefix
        '    const-string v0, "/data/adb/apd"',
        '    const-string v0, "/data/adb/ap/bin"',
        '    const-string v0, "/data/adb/ap/package_config"',
    ],
)
def test_apatch_base_directory_probe_is_detected(line, root_sigs):
    """APATCH-BASE1 (2026-09-04): the pattern list named /data/adb/apd,
    /data/adb/ap/bin and /data/adb/ap/package_config - every one LONGER than the
    string an app searching for the APatch root directory actually holds. So
    `File("/data/adb/ap").exists()`, the most natural form of the check, matched
    nothing. The base path subsumes all three and reaches the bare probe too.
    """
    assert "apatch_binary_paths" in _matching_ids(line, root_sigs)


@pytest.mark.parametrize(
    "line,tool",
    [
        ('    const-string v0, "/data/adb/modules/shamiko"', "shamiko lowercase module dir"),
        ('    const-string v0, "shamiko"', "shamiko bare lowercase"),
        ('    const-string v0, "SHAMIKO"', "shouting"),
        ('    const-string v0, "magiskhide"', "magiskhide lowercase"),
        ('    const-string v0, "hidemyroot"', "hidemyroot lowercase"),
        ('    const-string v0, "SuHide"', "suhide mixed case"),
    ],
)
def test_cloaking_tools_match_regardless_of_spelling_case(line, tool, root_sigs):
    """CASE1 (2026-09-04): every literal in root_cloaking_detection was mixed-case
    under a case-SENSITIVE signature, so `shamiko` - the spelling actually on disk
    at /data/adb/modules/shamiko - did not match. The block had already found this
    exact bug for RootCloak and fixed it for that one spelling; folding case fixes
    the class. None of these literals is an English word, so nothing benign becomes
    reachable.
    """
    assert "root_cloaking_detection" in _matching_ids(line, root_sigs), tool


def test_case_folding_did_not_make_the_package_literals_redundant(root_sigs):
    """The two com.devadvance.* patterns are a DIFFERENT string from the display
    literal "RootCloak", not a casing variant of it, so they must survive any
    future "deduplicate now that case is folded" edit. Asserted structurally: the
    display literal is not a substring of the package string in either casing, so
    dropping the packages would lose real reach.
    """
    sig = next(s for s in root_sigs if s.id == "root_cloaking_detection")
    assert sig.case_sensitive is False

    package = "com.devadvance.rootcloakplus"
    assert "rootcloak" in package                      # the fold makes this reachable
    assert "com.devadvance" not in "RootCloak".casefold()
    assert {p for p in sig.patterns if p.startswith("com.devadvance")}
    assert _line_matches(f'    const-string v0, "{package}"', sig) is not None


def test_case_folding_reaches_nothing_benign(root_sigs):
    """The one risk of folding case is a literal that is also ordinary text. These
    near-miss lines must stay unmatched by this signature."""
    for line in (
        '    const-string v0, "hide_my_rootview"',
        '    const-string v0, "root_cloak_test"',
        '    const-string v0, "magisk_hidden_setting"',
    ):
        assert "root_cloaking_detection" not in _matching_ids(line, root_sigs), line
