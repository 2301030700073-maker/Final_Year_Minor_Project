"""Regression: the Boundary-1 unattributed-indicator scan must read the
mapping-DEOBFUSCATED view, not the original text alone.

The ROOT indicators (indicators.ROOT_INDICATORS) key on app-defined method
names - isRooted()/checkRoot()/detectRoot()/... - which R8 renames to a()/b().
A custom, UNSIGNATURED root check the obfuscator renamed is therefore invisible
in the original decompiled text and only reappears once the app's own
mapping.txt is applied (the deobfuscated view scan() already builds for its
signature passes). find_indicator_categories was being run over the original
text alone, so this ADR-0006 safety net was blind in exactly the obfuscated-app
population it exists for: the root category could certify a CONFIDENT NEITHER
over a renamed custom root check. These tests pin that the deobfuscated view is
what surfaces the indicator, and that scan() now reads it.

The signature side of this was never affected (the signature passes always
iterated `texts`); only the indicator safety net had the gap.
"""

from pathlib import Path

from static.deobfuscate import deobfuscate_source, parse_mapping
from static.indicators import find_indicator_categories
from static.signatures import scan

# A custom root check whose method R8 renamed to `a`. In the shipped/decompiled
# DEX the method reads `a()` - none of the ROOT_INDICATORS (which look for the
# ORIGINAL names isRooted/checkRoot/...) can match it. The body is deliberately
# neutral (no su path, no root-shaped string) and `check()` is deliberately NOT
# `checkRoot`, so the ONLY thing that can surface a root indicator is the
# mapping-restored method name isRooted() - nothing in the original text.
_OBFUSCATED_JAVA = """\
package com.example.secure;
public class Guard {
    boolean a() { return System.getenv("PATH") != null; }
    public boolean check() { if (a()) { return true; } return false; }
}
"""

# The app's own R8 mapping restoring the renamed method: a -> isRooted.
_MAPPING = """\
com.example.secure.Guard -> com.example.secure.Guard:
    boolean isRooted() -> a
"""


def _write_tree(tmp_path: Path) -> Path:
    root = tmp_path / "sources"
    pkg = root / "com" / "example" / "secure"
    pkg.mkdir(parents=True)
    (pkg / "Guard.java").write_text(_OBFUSCATED_JAVA, encoding="utf-8")
    return root


def test_indicator_absent_in_original_present_in_deobfuscated_view():
    # The premise, pinned at the source: the obfuscated text carries NO root
    # indicator; only the mapping-restored view does. If a future indicator edit
    # made the ORIGINAL (renamed) form match, this contrast would no longer hold
    # and the test flags it.
    assert find_indicator_categories(_OBFUSCATED_JAVA) == set()
    deobf = deobfuscate_source(_OBFUSCATED_JAVA, parse_mapping(_MAPPING))
    assert "isRooted()" in deobf
    assert find_indicator_categories(deobf) == {"root"}


def test_scan_without_mapping_misses_the_renamed_root_check(tmp_path):
    # Baseline: with no mapping there is only the original view, and the renamed
    # custom check leaves no indicator. This is the state before a mapping is
    # supplied - and, before the fix, was ALSO the state WITH a mapping, because
    # the indicator scan only read the original text.
    root = _write_tree(tmp_path)
    ev = scan(root, [], mapping=None)
    assert ev.unattributed_indicators == {}


def test_scan_with_mapping_surfaces_renamed_root_check_as_unattributed(tmp_path):
    # The fix: scan() now runs the indicator layer over the deobfuscated view
    # too, so the renamed custom root check surfaces as an unattributed 'root'
    # indicator -> coverage-limited, never a silent confident NEITHER. The empty
    # signature list is the UNKNOWN-technique case the indicator layer exists for
    # (no signature matched, so matched_categories is empty and the indicator is
    # not swallowed). Before the fix this returned {} because indicators scanned
    # the original text alone.
    root = _write_tree(tmp_path)
    ev = scan(root, [], mapping=parse_mapping(_MAPPING))
    assert ev.unattributed_indicators == {"root": True}
