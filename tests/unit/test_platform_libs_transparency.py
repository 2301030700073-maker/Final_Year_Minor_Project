"""The platform-library exemption must be visible to the report's reader.

PLATFORM-LIB1 stops OS-provided libraries being reported as unexamined native
surfaces, which is right - but on its own it leaves no trace: a report with an
empty unaccounted-loads list cannot be told apart from one where loads were seen
and deliberately excluded, so the reader over-reads what was covered. These tests
fix the record of the decision (what was exempted, computed from the same inputs
as the decision itself) and its whole path to the page - result field, evidence
dict, regeneration, render.
"""

from __future__ import annotations

from pathlib import Path

from static.native import (
    platform_libs_exempted,
    unaccounted_native_loads,
)

from report.generator import TEMPLATE

_REPO = Path(__file__).resolve().parents[2]


def test_exempted_names_only_os_libraries_the_apk_does_not_ship():
    got = platform_libs_exempted(["log", "z", "GLESv2"], {"libapp.so"})
    assert got == ["libGLESv2.so", "liblog.so", "libz.so"]


def test_a_platform_library_the_apk_ships_is_never_exempted():
    # The app decides to bundle its own liblog.so: that IS an app surface, so it
    # must be treated as one (accounted for, or reported if it was not analyzed),
    # never waved through as the OS's.
    assert platform_libs_exempted(["log"], {"liblog.so"}) == []
    assert unaccounted_native_loads(["log"], {"liblog.so"}) == []


def test_a_non_platform_target_is_never_exempted():
    # An absolute-path load of the platform's own library name is still the app
    # asking for a library the APK does not contain; only known OS basenames are
    # exempted, and the report must still show the rest.
    assert platform_libs_exempted(["hermes", "/data/local/tmp/evil.so"], {"libapp.so"}) == []
    assert unaccounted_native_loads(
        ["hermes", "/data/local/tmp/evil.so"], {"libapp.so"}
    ) == ["hermes", "/data/local/tmp/evil.so"]


def test_the_record_cannot_drift_from_the_decision_it_reports():
    # Both functions resolve a load target the same way, so a target must never
    # appear as exempted while also being reported unaccounted - the record is
    # only honest if it is the decision.
    loads = ["log", "z", "hermes", "/data/x.so", "log"]
    shipped = {"libapp.so"}
    exempted = set(platform_libs_exempted(loads, shipped))
    unaccounted = set(unaccounted_native_loads(loads, shipped))
    assert exempted == {"liblog.so", "libz.so"}
    assert unaccounted == {"hermes", "/data/x.so"}
    assert not (exempted & unaccounted)


def _section() -> str:
    """The render block for this evidence, bounded by the next section's opening
    tag rather than the first `{% endif %}` (which closes an inner `if`)."""
    src = (_REPO / "src" / "report" / "generator.py").read_text()
    start = src.index("{% if platform_libs_exempted -%}")
    end = src.index("{% if dynamic_loads", start)
    return src[start:end]


def _render(value):
    env = getattr(TEMPLATE, "environment", TEMPLATE)
    return env.from_string(_section()).render(platform_libs_exempted=value)


def test_the_section_names_the_libraries_and_what_was_not_claimed():
    out = _render(["liblog.so", "libz.so"])
    assert "`liblog.so`" in out and "`libz.so`" in out
    assert "not an unexamined app surface" in out
    # it must say the loads were seen and excluded, not merely list them
    assert "deliberately excluded" in out


def test_the_section_stays_silent_when_nothing_was_exempted():
    assert _render([]).strip() == ""
    assert _render(None).strip() == ""  # absent evidence is not "none exempted"


def test_the_evidence_crosses_every_seam():
    # Recorded on the result, written into the run's causes (which is also what
    # the run record persists), read back by the regeneration path, and forwarded
    # into the template. A break at any one of these renders the section blank.
    native = (_REPO / "src" / "static" / "native.py").read_text()
    cli = (_REPO / "src" / "cli.py").read_text()
    gen = (_REPO / "src" / "report" / "generator.py").read_text()
    assert "platform_libs_exempted: list[str] = field(default_factory=list)" in native
    # Same inputs as the decision, on EVERY path: the exemption is only a record
    # of what the check did if both read the same shipped set. The ships-no-.so
    # path passes set() to both (the APK really does ship nothing); the analyzed
    # path passes the extracted names to both.
    for shipped in ("set()", "_shipped"):
        assert f"unaccounted_native_loads(_loads, {shipped})" in cli
        assert f"platform_libs_exempted(_loads, {shipped})" in cli
    assert "platform_libs_exempted=(" in cli
    assert 'causes.get("platform_libs_exempted")' in cli
    assert "platform_libs_exempted=platform_libs_exempted," in gen
