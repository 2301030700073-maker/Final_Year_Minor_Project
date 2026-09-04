"""Commercial RASP / app-shielding SDK coverage (root_detection.yaml, 2026-09-04).

A hardened production app often hand-writes none of the su-path / Build-tags /
RootBeer checks the rest of the corpus targets - it links a RASP SDK and lets the
vendor own root detection. These tests pin the two SDKs whose markers survive in
a shipping app's own DEX, plus the standalone-RootShell miss found by corpus
extraction, and they pin the structural invariants that keep the additions from
inflating an already-detected app.
"""
from __future__ import annotations

from pathlib import Path

import pytest

from static.signatures import _line_matches, load_signatures

ROOT_YAML = Path("config/signatures/root_detection.yaml")
SSL_YAML = Path("config/signatures/ssl_pinning.yaml")


@pytest.fixture(scope="module")
def root_sigs():
    return load_signatures(ROOT_YAML)


@pytest.fixture(scope="module")
def all_sigs():
    return load_signatures(ROOT_YAML) + load_signatures(SSL_YAML)


def _matching_ids(line: str, sigs) -> set[str]:
    return {s.id for s in sigs if _line_matches(line, s) is not None}


# --- standalone RootShell (corpus-verified miss) ---------------------------

@pytest.mark.parametrize(
    "line",
    [
        "import com.stericson.RootShell.execution.Command;",
        "        if (com.stericson.RootShell.RootShell.isRootAvailable()) {",
        "    const-class v0, Lcom/stericson/RootShell/execution/Shell;",
        "invoke-static {}, Lcom/stericson/RootShell/RootShell;->isRootAvailable()Z",
    ],
)
def test_standalone_rootshell_matches_root_tools_library(line, root_sigs):
    """RootShell ships separately from RootTools, so a RootTools-only pattern list
    misses it. Measured on org.fossify.filemanager (9e97d2fa...): 54 files
    reference RootShell, isRootAvailable() is called 9x, and the app scored 0.00
    against the pre-fix corpus. Both the dotted (jadx/cfr) and slash (apktool
    smali) spellings must match, because the smali carries ONLY the slash form.
    """
    assert "root_tools_library" in _matching_ids(line, root_sigs)


def test_rootshell_reuses_the_existing_id_rather_than_adding_weight(root_sigs):
    """isRootAvailable() is the same root-availability query that earns RootTools
    its 0.4, so RootShell belongs to that ID. Extending a pattern list is
    recall-only; a NEW id would add a second weight to every app that already
    matched RootTools and silently inflate its confidence."""
    owners = {
        s.id
        for s in root_sigs
        for p in s.patterns
        if "stericson" in p.lower()
    }
    assert owners == {"root_tools_library"}


# --- Promon SHIELD / OneSpan ----------------------------------------------

@pytest.mark.parametrize(
    "line",
    [
        "import no.promon.shield.callbacks.RootingData;",
        "public class MyCallbacks extends no.promon.shield.callbacks.ShieldCallbacks {",
        "    const-string v1, \"no/promon/shield/callbacks/CallbackData\"",
    ],
)
def test_promon_shield_callback_package_matches(line, root_sigs):
    """Per OneSpan's own integration guide, an integrating app subclasses the
    callback types, which "reside in the no.promon.shield.callbacks package" -
    so the package survives in the APP's DEX even though SHIELD's native blob is
    renamed per build."""
    assert "promon_shield_rasp" in _matching_ids(line, root_sigs)


# --- Talsec freeRASP ------------------------------------------------------

def test_talsec_runtime_package_and_maven_group_are_both_required(root_sigs):
    """freeRASP 19.2.1's integration guide states the Maven group
    (com.aheaditec.talsec.security) DIFFERS from the runtime package
    (app.talsec.rasp.security.api). Neither line below contains the other's
    string, so dropping either pattern silently loses a whole population of
    shipped apps - current integrations for the first, older SDK versions and
    build metadata for the second. This test exists to make that non-obvious
    asymmetry break loudly if a future edit "deduplicates" the pattern list.
    """
    runtime = "import app.talsec.rasp.security.api.ThreatListener;"
    maven = "implementation 'com.aheaditec.talsec.security:TalsecSecurity-Community:19.2.1'"
    assert "com.aheaditec.talsec.security" not in runtime
    assert "app.talsec.rasp.security.api" not in maven
    assert "talsec_freerasp_sdk" in _matching_ids(runtime, root_sigs)
    assert "talsec_freerasp_sdk" in _matching_ids(maven, root_sigs)


def test_talsec_smali_spelling_matches(root_sigs):
    line = "invoke-static {}, Lapp/talsec/rasp/security/api/Talsec;->start(...)V"
    assert "talsec_freerasp_sdk" in _matching_ids(line, root_sigs)


@pytest.mark.parametrize(
    "line",
    [
        # bare type names are deliberately NOT patterns: too generic to attribute
        "    private ThreatListener listener;",
        "public interface Talsec { }",
        # near-miss namespaces that must not be swept in
        "import com.promontory.banking.RootHelper;",
        "import com.talsecurity.analytics.Tracker;",
        "import io.aheaditec.other.Thing;",
    ],
)
def test_rasp_signatures_do_not_fire_on_near_miss_or_generic_lines(line, root_sigs):
    assert not _matching_ids(line, root_sigs) & {
        "promon_shield_rasp",
        "talsec_freerasp_sdk",
    }


# --- structural invariants ------------------------------------------------

def test_no_single_signature_can_reach_the_detection_threshold(all_sigs):
    """confidence = min(1.0, sum of distinct matched weights), DETECTED at >= 0.70.
    A single signature at >= 0.70 would make one match sufficient, removing the
    corroboration the anti-false-positive design depends on."""
    assert [s.id for s in all_sigs if s.weight >= 0.70] == []


def test_new_rasp_patterns_are_not_substrings_of_another_ids_pattern(all_sigs):
    """A new ID whose literal is a substring of another ID's literal double-counts
    on every app that matched the original, inflating apps already over threshold."""
    new_ids = {"promon_shield_rasp", "talsec_freerasp_sdk", "root_tools_library"}
    literals = [
        (s.id, p)
        for s in all_sigs
        if s.pattern_type in ("string_literal", "class_reference")
        for p in s.patterns
    ]
    collisions = [
        (a, pa, b, pb)
        for a, pa in literals
        for b, pb in literals
        if a != b and (pa in pb or pb in pa) and (a in new_ids or b in new_ids)
    ]
    assert collisions == []


def test_rasp_sdk_namespaces_are_not_classified_as_vendors(all_sigs):
    """Vendor classification SKIPS the file, so listing a RASP namespace in
    KNOWN_VENDOR_PREFIXES would make these signatures unfirable. The rule that
    makes GMS a vendor - the app did not choose to ship an X509TrustManager -
    inverts here: linking a RASP SDK IS the app's own anti-tampering decision."""
    from common import is_known_third_party

    for ns in (
        "no.promon.shield",
        "no.promon.shield.callbacks",
        "app.talsec.rasp.security.api",
        "com.aheaditec.talsec.security",
        "com.stericson.RootShell",
    ):
        assert not is_known_third_party(ns), f"{ns} must stay scannable"
