import io
import subprocess
from pathlib import Path

import pytest
import typer

from cli import (
    PACKAGE_TO_TARGET,
    _apply_manifest_ssl_signal,
    _canonical_target,
    _git_commit_hash,
    _git_last_commit_touching,
    _load_thresholds,
    _wrap_stage,
)
from common import StageResult, StaticEvidence
from static.manifest import ManifestInfo


def _fake_settings(monkeypatch, body: str):
    """Point cli._load_thresholds at an in-memory settings.yaml body."""
    real_open = open

    def fake_open(path, *args, **kwargs):
        if str(path).endswith("settings.yaml"):
            return io.StringIO(body)
        return real_open(path, *args, **kwargs)

    monkeypatch.setattr("builtins.open", fake_open)


def test_apply_manifest_ssl_signal_records_nsc_evidence_without_weight():
    # RESID-4E: a bare NSC declaration is a prerequisite for config-based
    # pinning, not pinning evidence itself - it gets an attribution evidence
    # line but zero confidence contribution. Adding +0.2 here double-counted
    # the same NSC on apps that both declared and configured real <pin-set>
    # entries (the content signatures already credit those).
    evidence = StaticEvidence()
    manifest = ManifestInfo(debuggable=False, network_security_config="@xml/network_security_config")

    _apply_manifest_ssl_signal(evidence, manifest)

    assert evidence.ssl_confidence == 0  # declaration alone contributes no weight
    assert evidence.ssl_evidence[0].signature_id == "manifest_network_security_config"
    assert evidence.ssl_evidence[0].matched_text == "@xml/network_security_config"


def test_load_thresholds_rejects_out_of_range_value_loudly(monkeypatch):
    # RESID-4D: a typo'd threshold (root: 1.5) must raise, not silently pin
    # detection on/off - thresholds are the one hand-authored input that was
    # never range-checked.
    _fake_settings(monkeypatch, "thresholds:\n  root: 1.5\n  ssl: 0.7\n")

    with pytest.raises(ValueError, match="out of range"):
        _load_thresholds()


def test_load_thresholds_accepts_valid_range(monkeypatch):
    _fake_settings(monkeypatch, "thresholds:\n  root: 0.6\n  ssl: 0.8\n")
    assert _load_thresholds() == (0.6, 0.8)


def test_load_thresholds_missing_section_falls_back_to_default(monkeypatch):
    # RESID-4D: an absent thresholds section is not an active typo - it falls
    # back to the engine default rather than failing. Only an out-of-range
    # explicit value fails loudly (the active-typo case, covered above).
    _fake_settings(monkeypatch, "some: unrelated\n")
    assert _load_thresholds() == (0.7, 0.7)


def test_apply_manifest_ssl_signal_noops_without_nsc():
    evidence = StaticEvidence()

    _apply_manifest_ssl_signal(evidence, ManifestInfo(debuggable=False, network_security_config=None))

    assert evidence.ssl_confidence == 0
    assert evidence.ssl_evidence == []


def test_git_last_commit_touching_returns_the_files_own_commit_not_head(monkeypatch):
    # The bug this fixes: stamping HEAD implied a false precision about
    # which version of the file a report was computed against - HEAD moves
    # on every unrelated commit even when this specific file hasn't changed.
    def fake_run(cmd, capture_output, text=None, check=None):
        if cmd[:3] == ["git", "log", "-1"]:
            return subprocess.CompletedProcess(cmd, 0, stdout="deadbeef123\n", stderr="")
        return subprocess.CompletedProcess(cmd, 0, stdout="", stderr="")  # diff --quiet: clean

    monkeypatch.setattr("cli.subprocess.run", fake_run)

    assert _git_last_commit_touching(Path("config/ground_truth.yaml")) == "deadbeef123"


def test_git_last_commit_touching_flags_uncommitted_changes(monkeypatch):
    def fake_run(cmd, capture_output, text=None, check=None):
        if cmd[:3] == ["git", "log", "-1"]:
            return subprocess.CompletedProcess(cmd, 0, stdout="deadbeef123\n", stderr="")
        return subprocess.CompletedProcess(cmd, 1, stdout="", stderr="")  # diff --quiet: dirty

    monkeypatch.setattr("cli.subprocess.run", fake_run)

    result = _git_last_commit_touching(Path("config/ground_truth.yaml"))
    assert "deadbeef123" in result
    assert "uncommitted changes present" in result


def test_git_last_commit_touching_handles_no_history(monkeypatch):
    def fake_run(cmd, capture_output, text=None, check=None):
        return subprocess.CompletedProcess(cmd, 0, stdout="", stderr="")

    monkeypatch.setattr("cli.subprocess.run", fake_run)

    result = _git_last_commit_touching(Path("nonexistent.yaml"))
    assert "unknown" in result


def test_git_last_commit_touching_handles_git_failure(monkeypatch):
    def fake_run(cmd, capture_output, text=None, check=None):
        raise FileNotFoundError("git not found")

    monkeypatch.setattr("cli.subprocess.run", fake_run)

    assert _git_last_commit_touching(Path("config/ground_truth.yaml")) == "unknown"


def test_wrap_stage_success_returns_raw_result():
    stage_result, raw = _wrap_stage("demo", lambda x: x * 2, 21)
    assert stage_result.status == "success"
    assert raw == 42


def test_wrap_stage_failure_captures_error_and_returns_none():
    def boom():
        raise ValueError("something broke")

    stage_result, raw = _wrap_stage("demo", boom)

    assert stage_result.status == "failed"
    assert "something broke" in stage_result.error
    assert raw is None


def test_git_commit_hash_clean_tree_returns_bare_hash(monkeypatch):
    def fake_run(cmd, capture_output, text=None, check=None):
        if cmd == ["git", "rev-parse", "HEAD"]:
            return subprocess.CompletedProcess(cmd, 0, stdout="abc123\n", stderr="")
        return subprocess.CompletedProcess(cmd, 0, stdout="", stderr="")  # diff: clean
    monkeypatch.setattr("cli.subprocess.run", fake_run)

    assert _git_commit_hash() == "abc123"


def test_git_commit_hash_dirty_tree_is_flagged(monkeypatch):
    # RESID-7B: uncommitted edits to the code that ran must be flagged, not
    # silently presented as the committed revision - a report stamped "abc123"
    # would be a false statement about which code produced it.
    def fake_run(cmd, capture_output, text=None, check=None):
        if cmd == ["git", "rev-parse", "HEAD"]:
            return subprocess.CompletedProcess(cmd, 0, stdout="abc123\n", stderr="")
        return subprocess.CompletedProcess(cmd, 1, stdout="", stderr="")  # diff: dirty
    monkeypatch.setattr("cli.subprocess.run", fake_run)

    assert _git_commit_hash() == "abc123 (dirty working tree)"


def test_calibration_report_command_wires_tuned_thresholds(monkeypatch):
    # G2-residual: the calibration-report command must pass the same tuned
    # root/ssl thresholds the live decision engine uses (from settings.yaml via
    # _load_thresholds), not silently default both to 0.7 - otherwise a tuning
    # in config is honored at run time but the report's decision boundary stays
    # stale, defeating the 4-3 independence the per-category threshold exists to
    # represent. A tuned threshold must surface as an explicit bucket edge.
    import cli
    captured: dict = {}
    real_ccr = cli.compute_calibration_report

    def _spy(*args, **kwargs):
        captured["threshold"] = kwargs.get("threshold")
        captured["report"] = real_ccr(*args, **kwargs)
        return captured["report"]

    monkeypatch.setattr("cli.compute_calibration_report", _spy)
    monkeypatch.setattr("cli.load_runs_for_calibration", lambda _root: [])
    monkeypatch.setattr("cli.load_ground_truth", lambda _gt: {})
    monkeypatch.setattr("cli._load_thresholds", lambda: (0.6, 0.8))
    monkeypatch.setattr("cli.generate_calibration_report", lambda _report, _root: Path("calib.md"))

    cli.calibration_report(ground_truth=Path("unused.yaml"))

    assert captured["threshold"] == {"root": 0.6, "ssl": 0.8}
    root_edges = {b.range_low for b in captured["report"].calibration_curve["root"]} \
        | {captured["report"].calibration_curve["root"][-1].range_high}
    assert 0.6 in root_edges  # the tuned root threshold is a real bucket edge


def test_git_commit_hash_does_not_flag_git_diff_error_as_dirty(monkeypatch):
    # F2: `!= 0` conflated a `git diff HEAD --quiet` error (rc=128) with a
    # genuinely dirty tree (rc=1). Only rc=1 means differences exist; an errored
    # diff must not be reported as "dirty working tree" - that would be a false
    # statement about which code produced the report.
    def fake_run(cmd, capture_output, text=None, check=None):
        if cmd == ["git", "rev-parse", "HEAD"]:
            return subprocess.CompletedProcess(cmd, 0, stdout="abc123\n", stderr="")
        return subprocess.CompletedProcess(cmd, 128, stdout="", stderr="fatal: bad revision")
    monkeypatch.setattr("cli.subprocess.run", fake_run)

    assert _git_commit_hash() == "abc123"


def test_git_commit_hash_handles_git_failure(monkeypatch):
    def fake_run(cmd, capture_output, text=None, check=None):
        raise FileNotFoundError("git not found")
    monkeypatch.setattr("cli.subprocess.run", fake_run)

    assert _git_commit_hash() == "unknown"


class _FakeConsole:
    """Minimal stand-in for Rich's console so _finalize_run's prints are no-ops."""

    def print(self, *args, **kwargs):
        pass


def _finalize_kwargs():
    # Mirrors the real caller: report_kwargs and save_payload reference the SAME
    # stage_results list object, which is exactly the object-identity coupling H3
    # depends on (an append through one must be visible to the other).
    stage_results = []
    return {
        "report_kwargs": {"stage_results": stage_results, "output_dir": Path("/tmp")},
        "analysis_root": Path("/tmp"),
        "apk_hash": "hash",
        "run_id": "r1",
        "save_payload": {"stage_results": stage_results},
        "completion_kwargs": {},
    }


def test_finalize_run_failed_completion_is_not_silent(monkeypatch):
    # H1: a failed audit-completion write (e.g. a corrupt log) was previously
    # silent - the StageResult was discarded and the CLI printed unqualified
    # green success. It must now be surfaced in the report's stage_results and
    # exit non-zero instead of claiming success.
    import cli
    failed = StageResult(stage="audit", status="failed", evidence={}, error="audit log corrupt", duration_ms=0)
    monkeypatch.setattr("cli.generate_report", lambda **kw: Path("report.md"))
    monkeypatch.setattr("cli.save_run", lambda *a, **kw: None)
    monkeypatch.setattr("cli.record_run_completion", lambda **kw: failed)
    monkeypatch.setattr("cli.console", _FakeConsole())

    kwargs = _finalize_kwargs()
    with pytest.raises(typer.Exit) as excinfo:
        cli._finalize_run(**kwargs)

    assert excinfo.value.exit_code == 1
    assert len(kwargs["report_kwargs"]["stage_results"]) == 1  # completion stage surfaced
    assert kwargs["report_kwargs"]["stage_results"][0].status == "failed"


def test_finalize_run_save_failure_still_records_completion_and_surfaces_report(monkeypatch):
    # H2: a save_run DB failure must not silently drop the audit completion or
    # the report path - the audit log is the traceability loop's source of truth
    # (LIM-A), so completion is still recorded, the report is still generated,
    # and the command exits non-zero rather than leaving an inconsistent state.
    import cli
    ok = StageResult(stage="audit", status="success", evidence={}, duration_ms=0)
    recorded = {}

    def _record(**kw):
        recorded["called"] = True
        return ok

    monkeypatch.setattr("cli.generate_report", lambda **kw: Path("report.md"))

    def _boom(*a, **kw):
        raise RuntimeError("db full")

    monkeypatch.setattr("cli.save_run", _boom)
    monkeypatch.setattr("cli.record_run_completion", _record)
    monkeypatch.setattr("cli.console", _FakeConsole())

    with pytest.raises(typer.Exit) as excinfo:
        cli._finalize_run(**_finalize_kwargs())

    assert excinfo.value.exit_code == 1
    assert recorded.get("called") is True  # audit completion still recorded despite the DB failure


def test_finalize_run_success_returns_report_path(monkeypatch):
    import cli
    ok = StageResult(stage="audit", status="success", evidence={}, duration_ms=0)
    monkeypatch.setattr("cli.generate_report", lambda **kw: Path("report.md"))
    monkeypatch.setattr("cli.save_run", lambda *a, **kw: None)
    monkeypatch.setattr("cli.record_run_completion", lambda **kw: ok)
    monkeypatch.setattr("cli.console", _FakeConsole())

    result = cli._finalize_run(**_finalize_kwargs())
    assert result == Path("report.md")


def test_finalize_run_save_run_persists_the_completion_stage(monkeypatch):
    # H3: the completion stage must be appended to stage_results BEFORE save_run
    # snapshots it, so the persisted DB record and the report table agree. If
    # save_run ran first, it would store the list without the audit-completion
    # stage while the regenerated report showed it - a report-vs-DB mismatch.
    import cli
    ok = StageResult(stage="audit", status="success", evidence={}, duration_ms=0)
    captured: dict = {}

    def _save(analysis_root, apk_hash, run_id, save_payload):
        captured["stage_results"] = save_payload["stage_results"]

    monkeypatch.setattr("cli.generate_report", lambda **kw: Path("report.md"))
    monkeypatch.setattr("cli.save_run", _save)
    monkeypatch.setattr("cli.record_run_completion", lambda **kw: ok)
    monkeypatch.setattr("cli.console", _FakeConsole())

    cli._finalize_run(**_finalize_kwargs())

    assert "audit" in [s.stage for s in captured["stage_results"]]


def test_calibration_table_header_cell_parity_and_exclusion_counts():
    # Maintainability guard: the calibration table's column headers and row
    # cells live in one place (_calibration_table), so assert every row matches
    # the header count - a future added/removed cell can't misalign the Rich
    # table silently. Also verify both Tier-2 exclusion counts render.
    from calibration.report import compute_calibration_report
    from calibration.types import GroundTruthEntry, RunRow
    from cli import _calibration_table

    runs = [
        RunRow(
            apk_hash="h1", run_id="r1", action="ROOT_ONLY",
            root_confidence=0.9, root_detected=True, root_bypassed=True,
            ssl_confidence=0.0, ssl_detected=False, ssl_bypassed=None,
            decompile_completeness="complete",
        ),
        # h2: a negative from a partial decompile -> partial-decompile exclusion
        # (disjoint from no-GT; it is partial-excluded and continue'd before the
        # no-GT check).
        RunRow(
            apk_hash="h2", run_id="r2", action="ROOT_ONLY",
            root_confidence=0.2, root_detected=False, root_bypassed=None,
            ssl_confidence=0.0, ssl_detected=False, ssl_bypassed=None,
            decompile_completeness="partial",
        ),
        # h3: complete decompile, detected, but no ground-truth entry -> no-GT
        # exclusion (not partial-excluded, so it reaches the no-GT check).
        RunRow(
            apk_hash="h3", run_id="r3", action="ROOT_ONLY",
            root_confidence=0.8, root_detected=True, root_bypassed=True,
            ssl_confidence=0.0, ssl_detected=False, ssl_bypassed=None,
            decompile_completeness="complete",
        ),
    ]
    report = compute_calibration_report(
        runs, ground_truth={"h1": GroundTruthEntry("h1", root=True, ssl=False, source="manual")},
        generated_at="t", ground_truth_commit="c",
    )

    columns, rows = _calibration_table(report)

    assert len(rows) == 2  # one per category
    for row in rows:
        assert len(row) == len(columns), (
            f"calibration table header/cell parity broken: {len(columns)} columns "
            f"but {len(row)} cells in row {row[0]}"
        )
    assert "Excl no-GT" in columns and "Excl partial" in columns
    root_row = dict(zip(columns, rows[0]))
    assert root_row["Excl no-GT"] == "1"
    assert root_row["Excl partial"] == "1"


def test_canonical_target_resolves_androgoat_case_insensitively():
    # A live AndroGoat dynamic run with `--target androgoat` (lowercase) tripped
    # the "SCRIPTS_BY_TARGET_ACTION and SUCCESS_CHECKS must stay in sync" halt:
    # the dynamic stage ran a synthesized bypass, but SUCCESS_CHECKS.get("androgoat")
    # returned None (the registered key is the mixed-case "AndroGoat") and the
    # pipeline halted, discarding the captured Frida evidence. The canonical
    # resolver must map any casing to the registered key so both lookup sites
    # agree with how a user actually types the target.
    assert _canonical_target("androgoat") == "AndroGoat"
    assert _canonical_target("AndroGoat") == "AndroGoat"
    assert _canonical_target("ANDROGOAT") == "AndroGoat"


def test_canonical_target_passes_lowercase_uncrackable_through():
    # The uncrackable1/2/3 keys are already lowercase - unchanged.
    for t in ("uncrackable1", "uncrackable2", "uncrackable3"):
        assert _canonical_target(t) == t


def test_canonical_target_passes_unknown_target_through():
    # A real app target is not a registered key - it must pass through unchanged
    # so the dynamic stage still degrades gracefully to "no bypass script" rather
    # than being coerced into a wrong key.
    assert _canonical_target("com.example.realapp") == "com.example.realapp"


def test_package_to_target_maps_known_reference_packages():
    # App-agnostic routing: with --target omitted, the detected package resolves
    # to the canonical augmentation target so known reference apps keep their
    # hand-authored scripts + success checks, while any other package passes
    # through and runs the general synthesized path. Every app runs all phases.
    assert PACKAGE_TO_TARGET["owasp.sat.agoat"] == "AndroGoat"
    assert PACKAGE_TO_TARGET["owasp.mstg.uncrackable1"] == "uncrackable1"
    assert PACKAGE_TO_TARGET["owasp.mstg.uncrackable2"] == "uncrackable2"
    assert PACKAGE_TO_TARGET["owasp.mstg.uncrackable3"] == "uncrackable3"


def test_package_to_target_maps_every_known_augmentation_target():
    # The mapping must cover every target that has hand-authored scripts /
    # success checks, so an omitted --target never silently drops a known app
    # onto the general path. The union of the two known-target registries and
    # the package map's values must agree.
    from cli import SUCCESS_CHECKS
    from dynamic import frida_runner

    known = set(frida_runner.SCRIPTS_BY_TARGET_ACTION)
    assert SUCCESS_CHECKS.keys() == known
    assert set(PACKAGE_TO_TARGET.values()) == known
