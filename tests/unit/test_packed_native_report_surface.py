"""Gap-4's UPX identification was computed, gated native coverage, and was never recorded.

`NativeLibrary.packer` held the packer's name and `unpacked` said whether the
analysis ran on the reconstructed copy. Nothing in src/ read `packer` at all - one
test asserted the field was set - so a report could show `| native | partial |`
with no cause and never state that a library was packed, or that its code was
analyzed from a copy this run rebuilt rather than the bytes the APK ships. The
coverage table's native note could not name it either, so a packed lib landed on
"a per-library rule outside the body sweep".

The distinction these tests protect: a packed lib that WAS unpacked and
body-scanned reaches `fully_analyzed`, so naming it as a bound would assert it
caused something it did not. The rows therefore carry the coverage state
`_lib_coverage` gives each library, and only the libs still below fully_analyzed
feed the note.
"""

from __future__ import annotations

from common import Action, CategoryVerdict, ClassificationResult
from report.generator import generate_report
from static.native import NativeLibrary, packed_library_rows
from storage.results import _to_serializable

SECTION = "### Native libraries detected as packed (Gap-4)"
BOUND_CLAUSE = "packed libraries whose code stays behind their stub"


def _classification():
    return ClassificationResult(
        action=Action.NEITHER,
        root=CategoryVerdict(confidence=0.2, detected=False, evidence=[]),
        ssl=CategoryVerdict(confidence=0.2, detected=False, evidence=[]),
    )


def _render(tmp_path, **kwargs):
    path = generate_report(
        run_id="upx1", apk_hash="upx001", timestamp="2026-09-19T12:00:00",
        metadata={"hashes": {"sha256": "upx001"},
                  "package": {"package_name": "com.example.app"}},
        classification=_classification(), verification=None, correlation=None,
        stage_results=[], output_dir=tmp_path,
        coverage={"java": "fully_analyzed", "native": "partial"},
        **kwargs,
    )
    return path.read_text(encoding="utf-8")


def _rows(**overrides):
    """A row as cli.py builds it from `packed_library_rows`."""
    row = {"name": "libfoo.so", "abi": "arm64-v8a", "packer": "UPX",
           "unpacked": False, "coverage": "partial"}
    row.update(overrides)
    return [row]


def test_the_accessor_asks_the_coverage_rule_rather_than_assuming_packed_means_bound():
    # Same library, two outcomes: unpacked + body-scanned reaches fully_analyzed
    # (native.py's first branch), so only the second one is a bound.
    unpacked = NativeLibrary(abi="arm64-v8a", name="liba.so", packed=True, packer="UPX",
                             unpacked=True, body_scanned=True)
    stub_only = NativeLibrary(abi="arm64-v8a", name="libb.so", packed=True, packer="UPX")
    plain = NativeLibrary(abi="arm64-v8a", name="libc.so", body_scanned=True)
    rows = packed_library_rows([unpacked, stub_only, plain])
    assert [r["name"] for r in rows] == ["liba.so", "libb.so"], rows
    assert rows[0]["coverage"] == "fully_analyzed", rows
    assert rows[1]["coverage"] == "partial", rows
    assert rows[0]["packer"] == rows[1]["packer"] == "UPX"


def test_a_packed_library_is_named_and_says_which_bytes_were_analyzed(tmp_path):
    content = _render(tmp_path, packed_native_libs=_rows())
    assert SECTION in content, content
    assert "`libfoo.so`" in content and "`arm64-v8a`" in content and "UPX" in content
    # The provenance half: the reader must be able to tell the shipped bytes from a
    # copy this run rebuilt.
    assert "**the packed stub only**" in content
    # And the bound it caused is named where the table is read.
    assert BOUND_CLAUSE in content


def test_an_unpacked_library_is_not_counted_as_a_bound(tmp_path):
    content = _render(tmp_path, packed_native_libs=_rows(unpacked=True, coverage="fully_analyzed"))
    assert SECTION in content
    assert "the unpacked copy (not the shipped bytes)" in content
    assert "| fully_analyzed |" in content
    # Not a cause: the note must not claim this library bounded the surface.
    assert BOUND_CLAUSE not in content
    assert "a per-library rule outside the body sweep" in content


def test_no_packed_library_means_no_section(tmp_path):
    assert SECTION not in _render(tmp_path)
    assert SECTION not in _render(tmp_path, packed_native_libs=[])


def test_the_rows_survive_the_stored_json_round_trip(tmp_path):
    """Regeneration reads these back from runs.coverage_causes as plain dicts."""
    stored = _to_serializable(_rows())
    assert stored == [{"name": "libfoo.so", "abi": "arm64-v8a", "packer": "UPX",
                       "unpacked": False, "coverage": "partial"}], stored
    content = _render(tmp_path, packed_native_libs=stored)
    assert SECTION in content and "**the packed stub only**" in content
    assert BOUND_CLAUSE in content


def test_both_native_causes_are_named_each_with_its_own_count(tmp_path):
    """A packed lib that also failed a scan is two faces of one library.

    `native_scan_errors` carries the tool failure and the packed row carries the
    packing, so the same library is named in both clauses; each clause counts its
    own set (1 and 1) and the sentence stays readable. Counting `;` would not test
    this - the packed clause carries its own `;` inside the parenthetical, which is
    exactly the trap the java note's boundary walk was written for.
    """
    content = _render(
        tmp_path,
        native_scan_errors=["libfoo.so: readelf timed out"],
        packed_native_libs=_rows(),
    )
    note = [ln for ln in content.splitlines() if ln.startswith("> **Native:**")][0]
    assert note == (
        "> **Native:** `partial` is a lower bound, not a confident negative - a native "
        "NEITHER is not proof that a native root/SSL check is absent. Bound by libraries a "
        "tool could not read (1); packed libraries whose code stays behind their stub (1; "
        'see "Native libraries detected as packed").'
    ), note
