"""Execute the stored-render path, which nothing did.

`_regenerate_report` had no test that ran it. The template half was covered
directly (generate_report with the flag either way) and the CLI only parsed
statically, so the call site at cli.py's `re-attribute` loop could carry a
mistyped keyword and 2000+ passing tests would not notice - it would surface on
the first real backfill, which is exactly the path that rewrites a consumer-facing
report.

These call the real function with the real generate_report and the real template,
against a redirected REPORTS_ROOT, so the assertions are about rendered output and
not about a mock. The audit log is pointed at a path that does not exist, which is
the genuine "authorization unavailable on regeneration" branch.

The two cases are the two columns the flag gates on:
  * coverage_causes populated - a modern run regenerates faithfully, and the
    annotation-loss section must NOT render, because its every sentence ("the
    cause annotations ... are not persisted columns") would be false.
  * coverage_causes None - a run stored before the column existed. The section
    must render, and the per-surface callouts must fall back to "a coverage rule
    this report does not name" rather than inventing a cause from a missing fact.
"""

from pathlib import Path
from types import SimpleNamespace

import pytest

import cli

COVERAGE = {
    "java": "partial",
    "native": "fully_analyzed",
    "manifest": "fully_analyzed",
    "js": "partial",
}
APK_HASH = "a" * 64
RUN_ID = "regen0001"

ANNOTATION_LOSS = "Report regenerated from stored data (annotation loss)"
CAUSE_FALLBACK = "a coverage rule this report does not name"


def _run(coverage_causes):
    return SimpleNamespace(
        run_id=RUN_ID,
        apk_sha256=APK_HASH,
        timestamp="2026-09-20T10:00:00",
        package_name="com.example.app",
        obfuscation_level=None,
        # ADR-0026: the rule beside the level, read off the same row by the regen
        # path. None is this fixture's legacy run, and is what every run predating
        # the column carries - "not recorded", never a re-derived guess.
        obfuscation_reason=None,
        classification_json={
            "action": "NEITHER",
            "root": {"confidence": 0.2, "detected": False, "evidence": []},
            "ssl": {"confidence": 0.2, "detected": False, "evidence": []},
        },
        coverage_causes=coverage_causes,
        verification_json=None,
        correlation_json=None,
        stage_results_json=None,
        dynamic_skip_reason=None,
        correlation_skip_reason=None,
        manifest_json=None,
        coverage=dict(COVERAGE),
        # ADR-0022: a run stored before the field. _regenerate_report reads this
        # attribute directly rather than via getattr, so the double has to carry it -
        # and it must be the real column name, so a rename breaks this loudly here
        # rather than silently rendering "not recorded" for a run that recorded one.
        signature_corpus=None,
        # ADR-0028: the device the run executed against, read off the row by the
        # regen path exactly as the corpus is. None here is this fixture's legacy
        # run; the template names both possible causes rather than asserting one,
        # because a row cannot tell a pre-column run from a device-less one.
        device_environment=None,
    )


def _apk():
    return SimpleNamespace(
        raw_metadata={
            "hashes": {"sha256": APK_HASH},
            "package": {"package_name": "com.example.app"},
        }
    )


def _regenerate(monkeypatch, tmp_path, coverage_causes):
    monkeypatch.setattr(cli, "REPORTS_ROOT", tmp_path / "reports")
    monkeypatch.setattr(cli, "AUDIT_LOG_PATH", tmp_path / "absent_audit_log.jsonl")
    cli._regenerate_report(_run(coverage_causes), _apk(), "c0ffee")
    return tmp_path / "reports" / APK_HASH / f"{RUN_ID}.md"


def test_a_populated_run_regenerates_without_the_annotation_loss_section(monkeypatch, tmp_path):
    """The check that makes the rename matter: this is the case the flag must not fire for.

    Only the js cause is supplied, so the same report must show both halves of the
    design at once: a recorded cause renders, and a surface whose cause was not
    recorded says so rather than inventing one.
    """
    path = _regenerate(
        monkeypatch, tmp_path, {"js_binary_bundle": True, "js_asset_surface_extracted": True}
    )
    assert path.exists(), "the stored render must write where the live one does"
    content = path.read_text(encoding="utf-8")
    assert ANNOTATION_LOSS not in content, (
        "a run whose causes ARE persisted must not be told they are not persisted columns"
    )
    assert "| manifest | fully_analyzed |" in content
    assert "a binary Hermes/bytecode bundle whose control flow cannot be read" in content, (
        "a persisted cause must reach the regenerated report"
    )
    assert content.count(CAUSE_FALLBACK) == 1, (
        "java is partial with no cause among the persisted facts, js is partial with one"
    )


def test_a_legacy_run_regenerates_with_the_annotation_loss_section(monkeypatch, tmp_path):
    path = _regenerate(monkeypatch, tmp_path, None)
    content = path.read_text(encoding="utf-8")
    assert ANNOTATION_LOSS in content
    # A missing fact is not a negative: with no recorded cause, the bounded surfaces
    # say so instead of naming one.
    assert CAUSE_FALLBACK in content
    assert content.count(CAUSE_FALLBACK) == 2, (
        "java and js are both partial here; each bounded surface gets its own fallback"
    )


def test_the_regenerated_report_names_its_own_provenance(monkeypatch, tmp_path):
    content = _regenerate(monkeypatch, tmp_path, None).read_text(encoding="utf-8")
    assert "report regenerated from stored data" in content
    assert "unavailable on regeneration" in content, (
        "an unrecoverable authorization is disclosed, never rendered as absent"
    )


def test_regeneration_refuses_to_drop_cause_sections_it_cannot_reproduce(monkeypatch, tmp_path):
    """The rows whose stored report is the only surviving copy of its own causes.

    A run written before `coverage_causes` existed carries NULL in it, so a
    regenerated render has no cause section to emit - while the report already on
    disk has several, because the live run that wrote it held those causes in
    memory. Converging that file onto the lossier render deletes the last copy
    (measured 2026-09-24: 6 stored rows, 1-2 sections each), so the write is refused
    rather than performed.

    Asserted on the file's CONTENTS after the fact, not only on the raise: a guard
    that overwrote the report and then raised would satisfy a raise-only test while
    destroying exactly what it claims to protect.
    """
    path = tmp_path / "reports" / APK_HASH / f"{RUN_ID}.md"
    path.parent.mkdir(parents=True)
    original = "# run\n\n### Dynamic code loading (coverage-limited)\n\npayload\n"
    path.write_text(original, encoding="utf-8")
    with pytest.raises(RuntimeError, match="refusing to regenerate"):
        _regenerate(monkeypatch, tmp_path, None)
    assert path.read_text(encoding="utf-8") == original, (
        "a refused regeneration must leave the stored report byte-identical"
    )


def test_the_refusal_is_conditional_on_the_empty_column_not_the_section(monkeypatch, tmp_path):
    """The guard's positive control, and the reason it reads the COLUMN.

    A report carrying a cause section together with a row that recorded its causes
    is an ordinary regeneration - re-attribute rewriting a changed attribution
    produces exactly that file - so refusing here would block the backfill this
    path exists for. An empty column is the only thing treated as unreproducible.

    The section's body is not asserted: the render's wording is generator.py's
    business and is covered there, so this pins only that the write proceeded.
    """
    path = tmp_path / "reports" / APK_HASH / f"{RUN_ID}.md"
    path.parent.mkdir(parents=True)
    stale = "# run\n\n### Dynamic code loading (coverage-limited)\n\nstale\n"
    path.write_text(stale, encoding="utf-8")
    _regenerate(monkeypatch, tmp_path, {"dynamic_loads": ["com.example.Loader"]})
    content = path.read_text(encoding="utf-8")
    assert content != stale, "a recorded cause must still be able to rewrite the report"
    assert "### Dynamic code loading (coverage-limited)" in content


# ── ADR-0028: the device line, rendered from the row ──


def _regenerate_run(monkeypatch, tmp_path, device_environment):
    monkeypatch.setattr(cli, "REPORTS_ROOT", tmp_path / "reports")
    monkeypatch.setattr(cli, "AUDIT_LOG_PATH", tmp_path / "absent_audit_log.jsonl")
    run = _run({"dynamic_loads": ["com.example.Loader"]})
    run.device_environment = device_environment
    cli._regenerate_report(run, _apk(), "c0ffee")
    return (tmp_path / "reports" / APK_HASH / f"{RUN_ID}.md").read_text(encoding="utf-8")


def test_a_recorded_device_renders_the_values_that_were_read(monkeypatch, tmp_path):
    body = _regenerate_run(monkeypatch, tmp_path, {
        "serial": "emulator-5554",
        "ro.build.version.sdk": "34",
        "ro.build.version.release": "14",
        "ro.build.type": "userdebug",
        "ro.debuggable": "1",
        "ro.product.cpu.abi": "x86_64",
        "ro.hardware": "ranchu",
        "ro.build.fingerprint": "google/sdk_gphone64_x86_64/emu64x:14/UE1A:userdebug/test-keys",
    })
    assert "**Device:** `emulator-5554`" in body
    assert "API 34" in body
    assert "hardware `ranchu`" in body
    # No property placeholder fired. The assertion names the PLACEHOLDER text and
    # not the bare phrase, because the bare phrase is also in the line's own
    # explanation of what a missing property would mean.
    assert "release not reported" not in body
    assert "API not reported" not in body


def test_a_run_with_no_recorded_device_names_both_causes_and_asserts_neither(monkeypatch, tmp_path):
    # The row cannot tell a run that predates the column from one that never
    # resolved a device, so the report must not pick one - asserting "used no
    # device" here would be a guess about a stored run, which is the class of
    # statement this project's reports do not make.
    body = _regenerate_run(monkeypatch, tmp_path, None)
    assert "**Device:** not recorded (ADR-0028)" in body
    assert "predates the field" in body
    assert "used no device" in body
    assert "**Device:** `" not in body


def test_a_property_the_device_left_empty_renders_as_not_reported(monkeypatch, tmp_path):
    # The blank is inside the line, not a blank line: the run had a device, and
    # the report still says what that device answered (nothing, for this one).
    body = _regenerate_run(monkeypatch, tmp_path, {
        "serial": "emulator-5554",
        "ro.build.version.sdk": None,
        "ro.build.version.release": "14",
        "ro.build.type": "userdebug",
        "ro.debuggable": "1",
        "ro.product.cpu.abi": "x86_64",
        "ro.hardware": "ranchu",
        "ro.build.fingerprint": "google/sdk_gphone64_x86_64/emu64x:14/UE1A:userdebug/test-keys",
    })
    assert "**Device:** `emulator-5554`" in body
    assert "API not reported" in body
