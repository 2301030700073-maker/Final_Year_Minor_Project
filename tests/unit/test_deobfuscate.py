"""Unit tests for L-M3 mapping.txt deobfuscation (the `chimera` pattern).

Obfuscation renames app identifiers (MainActivity -> a), so original-name
signatures can silently miss renamed code. When the app bundles its R8/ProGuard
mapping.txt, deobfuscate restores obfuscated identifiers to originals so the
deterministic matcher can hit them. Pure and fixture-testable - no toolchain.
"""

from pathlib import Path

from static.deobfuscate import (
    MappingTable,
    deobfuscate_source,
    find_mapping_file,
    parse_mapping,
)

_MAPPING = """\
com.example.MainActivity -> com.example.a:
    void onCreate(android.os.Bundle) -> b
    5:5:void onResume():12:12 -> c
    int mSecret -> d
com.example.util.CertHelper -> com.example.util.z:
    void verifyPinning() -> e
"""


def test_parse_mapping_handles_all_line_kinds():
    t = parse_mapping(_MAPPING)
    assert t.obfuscated_to_original["a"] == "MainActivity"
    assert t.obfuscated_to_original["b"] == "onCreate"
    assert t.obfuscated_to_original["c"] == "onResume"  # ranged method form
    assert t.obfuscated_to_original["d"] == "mSecret"   # field form
    assert t.obfuscated_to_original["z"] == "CertHelper"  # second class
    assert t.obfuscated_to_original["e"] == "verifyPinning"


def test_parse_mapping_skips_junk_and_comments():
    t = parse_mapping("# proguard mapping\n\nnot a valid line\n\ncom.x.Y -> com.x.a:\n")
    assert t.obfuscated_to_original["a"] == "Y"


def test_deobfuscate_source_restores_original_names():
    src = "void a() { new com.example.util.e(); int v = this.d; }"
    out = deobfuscate_source(src, parse_mapping(_MAPPING))
    assert "void a()" not in out        # a was a mapped class name -> MainActivity
    assert "com.example.util.e()" not in out  # e (method) -> verifyPinning
    assert "this.d" not in out           # d (field) -> mSecret


def test_deobfuscate_source_no_mapping_unchanged():
    src = "int a = 1;"
    assert deobfuscate_source(src, MappingTable()) == src


def test_deobfuscate_source_longest_first_no_prefix_shadow():
    # A mapped name that is a prefix of another mapped name must not shadow it.
    t = parse_mapping("com.x.Alpha -> com.x.aa:\ncom.x.AlphaLong -> com.x.a:\n")
    # aa (longer) -> Alpha; a (shorter) -> AlphaLong. Longest-first ordering
    # must restore "aa" to "Alpha" and "a" to "AlphaLong" correctly.
    out = deobfuscate_source("aa a", t)
    assert out == "Alpha AlphaLong"


def test_find_mapping_file_locates_bundled_mapping(tmp_path):
    assets = tmp_path / "assets"
    assets.mkdir(parents=True)
    (assets / "mapping.txt").write_text(_MAPPING)
    found = find_mapping_file(tmp_path)
    assert found is not None and found.name == "mapping.txt"


def test_find_mapping_file_none_when_absent(tmp_path):
    assert find_mapping_file(tmp_path) is None


def test_scan_uses_deobfuscated_view_to_match_renamed_code(tmp_path):
    from static.signatures import Signature, scan

    # An app-specific signature referencing the app's ORIGINAL cert-handling
    # class. The obfuscator renamed it to `a`, so the original-name pattern can
    # only hit the deobfuscated view that restores com.example.a ->
    # com.example.CertActivity. (Library/framework signatures like TrustKit are
    # NOT obfuscated and need no mapping - this demonstrates the genuine case
    # where deobfuscation changes detection.)
    sig = Signature(
        id="app_cert_activity", category="ssl", weight=0.5,
        pattern_type="class_reference",
        patterns=["com.example.CertActivity"], evidence_type="source",
    )
    mapping_txt = "com.example.CertActivity -> com.example.a:\n"
    (tmp_path / "a.java").write_text("class com.example.a { void c() {} }\n")

    ev_without = scan(tmp_path, [sig])
    assert "app_cert_activity" not in {e.signature_id for e in ev_without.ssl_evidence}

    ev_with = scan(tmp_path, [sig], mapping=parse_mapping(mapping_txt))
    assert "app_cert_activity" in {e.signature_id for e in ev_with.ssl_evidence}


def test_scan_does_not_double_count_a_match_shared_by_both_views(tmp_path):
    # L-M3 additive contract: a file is matched against its ORIGINAL text and,
    # with a mapping, its DEOBFUSCATED view. A line the obfuscator left untouched
    # (a framework FQCN, a string literal with no renamed token) is byte-identical
    # in both views, so a signature hitting it used to fire TWICE - inflating
    # total_counts' truncation note and putting the SAME match in ssl_evidence
    # twice. The deobfuscated view is meant to surface matches the renamed code
    # HID, not re-count the ones both views share.
    from static.signatures import Signature, scan

    shared = Signature(  # un-renamed framework class -> identical in both views
        id="shared_hv", category="ssl", weight=0.5, pattern_type="class_reference",
        patterns=["javax.net.ssl.HostnameVerifier"], evidence_type="source",
    )
    renamed = Signature(  # only matches after deobfuscation restores com.example.a
        id="renamed_app", category="ssl", weight=0.5, pattern_type="class_reference",
        patterns=["com.example.MainActivity"], evidence_type="source",
    )
    # Line 1 is renamed (com.example.a -> com.example.MainActivity), so the file
    # differs overall and the deobfuscated view IS appended; line 2 carries no
    # mapped token, so it is byte-identical in both views.
    (tmp_path / "a.java").write_text(
        "class com.example.a {\n"
        "    javax.net.ssl.HostnameVerifier v = null;\n"
        "}\n"
    )
    mapping = parse_mapping("com.example.MainActivity -> com.example.a:\n")

    ev = scan(tmp_path, [shared, renamed], mapping=mapping)

    # the identical-in-both-views match is recorded ONCE, not once-per-view
    shared_rows = [e for e in ev.ssl_evidence if e.signature_id == "shared_hv"]
    assert len(shared_rows) == 1
    # ...and additivity is preserved: the renamed-only match still surfaces from
    # the deobfuscated view (proving the dedup did not over-suppress).
    renamed_rows = [e for e in ev.ssl_evidence if e.signature_id == "renamed_app"]
    assert len(renamed_rows) == 1


def test_deobfuscate_source_skips_empty_obfuscated_key(tmp_path):
    # deobfuscate.py:115: a mapping entry with an EMPTY obfuscated name (which a
    # malformed "orig -> " line can produce) must be skipped, not regex-applied.
    # re.sub(r"\b\b", ...) with an empty pattern would match at every word
    # boundary and corrupt the whole source - the guard prevents that. Real
    # coverage proved this line untested.
    from static.deobfuscate import MappingTable, deobfuscate_source

    t = MappingTable(obfuscated_to_original={"": "Whatever", "a": "Main"})
    src = "public class a { }"
    out = deobfuscate_source(src, t)
    # the empty key was SKIPPED (had it been applied, re.sub would have matched
    # every word boundary and rewritten the whole source to "Whatever");
    # the real non-empty key still restored its mapping.
    assert "Whatever" not in out
    assert "public class Main { }" in out


def test_deobfuscate_source_literal_replacement_does_not_raise_on_backslash_escape():
    # Confirmed crash: as a string template, re.sub interprets backslash escapes
    # in the REPLACEMENT, so an original name carrying `\q` raised
    # `re.error: bad escape \q`. That call in signatures.scan() sits past the
    # per-file OSError guard, so the raise escaped the whole signature stage - a
    # denial-of-analysis on an attacker-shipped mapping.txt. It must now insert
    # the name verbatim, never raise.
    t = parse_mapping("Foo\\qux -> a:\n")
    assert t.obfuscated_to_original == {"a": "Foo\\qux"}
    assert deobfuscate_source("return a;", t) == "return Foo\\qux;"


def test_deobfuscate_source_literal_replacement_does_not_raise_on_group_ref():
    # The other template hazard: a `\1` in the original name was read as a group
    # backreference -> `re.error: invalid group reference 1`. Same escape route,
    # same abort. Literal insertion must keep the backslash-digit verbatim.
    t = parse_mapping("x\\1y -> a:\n")
    assert deobfuscate_source("return a;", t) == "return x\\1y;"


def test_deobfuscate_source_backslash_hazard_is_reachable_end_to_end(tmp_path):
    # Reachability through the real consumer surface: a bundled mapping.txt whose
    # class line carries a backslash-escape must not abort the deobfuscated view.
    # Pre-fix, scanning the file below raised out of scan(); it must now complete
    # and the deobfuscated view is simply the verbatim-substituted text.
    (tmp_path / "assets").mkdir()
    (tmp_path / "assets" / "mapping.txt").write_text("Foo\\qux -> a:\n")
    found = find_mapping_file(tmp_path)
    assert found is not None
    mapping = parse_mapping(found.read_text())
    # Does not raise; the additive view carries the literal original name.
    assert deobfuscate_source("class a {}", mapping) == "class Foo\\qux {}"


def test_deobfuscate_source_dollar_is_part_of_identifier_not_a_boundary():
    # `$` is a legal Java identifier char that R8/the JVM use for synthetic
    # names (nested classes Outer$Inner, lambda captures val$x, access$000,
    # Kotlin delegates). A one-letter mapping like `c -> verify` must NOT fire
    # inside `access$c` / `val$c` / `c$field` - `\b` wrongly saw a boundary
    # between the letter and the `$` and made that false in-identifier
    # substitution, corrupting an unrelated synthetic name and potentially
    # inventing/destroying a signature hit in the deobfuscated view. A genuine
    # standalone call still restores.
    t = MappingTable(obfuscated_to_original={"c": "verify"})
    src = "obj.c(); this.c$field = access$c + val$c;"
    out = deobfuscate_source(src, t)
    assert "obj.verify()" in out            # real call restored
    assert "this.c$field" in out            # synthetic id untouched
    assert "access$c" in out and "val$c" in out  # both captures untouched
    assert "verify$" not in out and "$verify" not in out


def test_deobfuscate_source_nested_class_segment_not_falsely_renamed():
    # R8 renames nested classes with `$` segments (Outer$Inner). A mapping for a
    # simple name that equals one segment must not rewrite that segment when it
    # sits against a `$` - only a true standalone occurrence is restored.
    t = MappingTable(obfuscated_to_original={"a": "Outer"})
    # `a$b` is one synthetic identifier; the leading `a` is NOT the standalone
    # class `a`, so it must stay put. A bare `a` elsewhere still restores.
    out = deobfuscate_source("new a$b(); Class k = a.class;", t)
    assert "new a$b()" in out
    assert "Outer.class" in out


def test_deobfuscate_source_real_mapping_output_unchanged_by_literal_fix():
    # Regression: for every genuine Java identifier (no backslash), the literal
    # callable replacement is byte-identical to the old template form. This pins
    # that the hardening changed nothing for real R8/ProGuard mappings.
    t = parse_mapping(
        "com.example.MainActivity -> com.example.a:\n"
        "    void onCreate(android.os.Bundle) -> b\n"
    )
    assert deobfuscate_source("class a { void b(){} }", t) == "class MainActivity { void onCreate(){} }"
