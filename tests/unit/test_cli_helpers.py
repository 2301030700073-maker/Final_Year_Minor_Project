import io
import subprocess
from pathlib import Path

import pytest
import typer
import yaml

from cli import (
    PACKAGE_TO_TARGET,
    _apply_manifest_ssl_signal,
    _canonical_target,
    _completeness_console_caveat,
    _correlation_from_json,
    _correlation_skip_reason_for_failed_stage,
    _effective_dynamic_action,
    _git_commit_hash,
    _git_last_commit_touching,
    _halt,
    _load_thresholds,
    _operator_identity,
    _stage_from_json,
    _wrap_stage,
)
from common import Action, CategoryVerdict, ClassificationResult, StageResult, StaticEvidence
from static.manifest import ManifestInfo


def test_effective_dynamic_action_forces_only_neither():
    # --force-dynamic (ADR-0005 operator override) deploys the universal bypass on a
    # NEITHER target by driving synthesis/deployment with Action.BOTH - and must be a
    # strict no-op for every already-detected action (dynamic already runs there) and
    # whenever the flag is off. If it ever forced a detected action too it would be a
    # meaningless relabel; if it forced with the flag off, --force-dynamic would not
    # be opt-in.
    assert _effective_dynamic_action(Action.NEITHER, True) == Action.BOTH
    assert _effective_dynamic_action(Action.NEITHER, False) == Action.NEITHER
    assert _effective_dynamic_action(Action.ROOT_ONLY, True) == Action.ROOT_ONLY
    assert _effective_dynamic_action(Action.SSL_ONLY, True) == Action.SSL_ONLY
    assert _effective_dynamic_action(Action.BOTH, True) == Action.BOTH
    for a in (Action.NEITHER, Action.ROOT_ONLY, Action.SSL_ONLY, Action.BOTH):
        assert _effective_dynamic_action(a, False) == a  # flag off is always identity


def test_effective_dynamic_action_does_not_mutate_classification():
    # The honesty guarantee (ADR-0006): the static verdict is computed from
    # classification.action and must be byte-identical with/without the flag. The
    # override lives ONLY in the separate returned action; the classification the
    # rest of the pipeline (confidence, calibration, storage, correlation) reads is
    # never rewritten. Passing classification.action in and getting BOTH out must
    # leave the classification object's own action untouched.
    cls = ClassificationResult(
        action=Action.NEITHER,
        root=CategoryVerdict(confidence=0.2, detected=False, evidence=[]),
        ssl=CategoryVerdict(confidence=0.1, detected=False, evidence=[]),
    )
    effective = _effective_dynamic_action(cls.action, True)
    assert effective == Action.BOTH        # the deployment action is overridden
    assert cls.action == Action.NEITHER    # ...but the static verdict is not


def test_correlation_from_json_roundtrips_unverified():
    # The UNVERIFIED third state must survive the DB store -> regenerate parse
    # seam (cli._correlation_from_json). If a refactor dropped `unverified` from
    # the parse, stored runs with an inconclusive dynamic would silently lose the
    # state on regeneration - no correlation test would catch it because this
    # seam is only exercised via _regenerate_report.
    parsed = _correlation_from_json({
        "matches": False,
        "mismatches": [],
        "unverified": [
            "static analysis predicted root-detection present, but dynamic "
            "verification could not test a bypass (not attempted or inconclusive)"
        ],
    })
    assert parsed is not None
    assert parsed.matches is False
    assert parsed.mismatches == []
    assert len(parsed.unverified) == 1
    assert "could not test" in parsed.unverified[0]


def test_correlation_from_json_legacy_without_unverified_defaults_to_empty():
    # Runs stored before the unverified field existed have no `unverified` key.
    # It must default to [] (not crash, not read as a mismatch), so regenerated
    # legacy reports stay honest.
    parsed = _correlation_from_json({
        "matches": True,
        "mismatches": [],
    })
    assert parsed is not None
    assert parsed.matches is True
    assert parsed.unverified == []


def test_correlation_from_json_none_returns_none():
    assert _correlation_from_json(None) is None


def test_stage_from_json_roundtrips_all_fields():
    # The Stage Results table on a regenerated report is fed by this parse seam
    # (cli._stage_from_json). A stored stage must round-trip every field so the
    # regenerated report shows the same durations/errors/evidence as the live run.
    parsed = _stage_from_json({
        "stage": "dynamic",
        "status": "success",
        "evidence": {"engaged": True},
        "error": None,
        "duration_ms": 1234,
    })
    assert parsed.stage == "dynamic"
    assert parsed.status == "success"
    assert parsed.evidence == {"engaged": True}
    assert parsed.error is None
    assert parsed.duration_ms == 1234


def test_stage_from_json_missing_optional_fields_default_to_none():
    # A stage stored without optional fields (evidence/error/duration) must parse
    # without crashing and carry None for them - the honest "not recorded"
    # rendering, never a fabricated value. A missing duration is None, NOT a
    # fabricated 0: asdict normally serializes the dataclass default 0, so a None
    # duration here only appears when the record genuinely lacks it (legacy/partial
    # JSON) - asserting None locks that we never invent a "0ms" duration.
    parsed = _stage_from_json({"stage": "decompile", "status": "skipped"})
    assert parsed.stage == "decompile"
    assert parsed.status == "skipped"
    assert parsed.evidence is None
    assert parsed.error is None
    assert parsed.duration_ms is None


def _fake_settings(monkeypatch, body: str):
    """Point cli._load_thresholds at an in-memory settings.yaml body."""
    real_open = open

    def fake_open(path, *args, **kwargs):
        if str(path).endswith("settings.yaml"):
            return io.StringIO(body)
        return real_open(path, *args, **kwargs)

    monkeypatch.setattr("builtins.open", fake_open)


def test_settings_yaml_declares_nothing_the_loader_ignores():
    # _load_thresholds reads the `thresholds` section and nothing else, so any
    # other LIVE top-level key in settings.yaml is a knob that changes nothing.
    # The file carried `signatures:` and `outputs:` blocks no code read - editing
    # `outputs.audit_log` still wrote the hardcoded cli.AUDIT_LOG_PATH - and they
    # are commented now. Commented keys do not load, so this asserts on what yaml
    # actually returns: re-adding a block fails here instead of quietly shipping
    # a config surface whose edits go nowhere.
    body = (Path(__file__).resolve().parents[2] / "config" / "settings.yaml").read_text()
    loaded = yaml.safe_load(body) or {}

    assert set(loaded) == {"thresholds"}, (
        f"settings.yaml carries {sorted(set(loaded) - {'thresholds'})}, which "
        f"_load_thresholds never reads; wire it or comment it"
    )


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


def test_load_thresholds_present_but_non_numeric_value_raises_loudly(monkeypatch):
    # A2: the file is PRESENT (someone placed tuned thresholds intending them to
    # govern detection) but a value is non-numeric. Silently falling back to the
    # engine default here would move the decision boundary with no signal - the
    # principle-3 silent-wrong-answer the anchor+loud-fail fix removes. Distinct
    # from an ABSENT file (legitimate default, above) and an out-of-RANGE value (a
    # ValueError raised after parse, above): a non-numeric value trips float()
    # inside the read and is surfaced as a loud RuntimeError, never swallowed.
    _fake_settings(monkeypatch, "thresholds:\n  root: not_a_number\n  ssl: 0.7\n")

    with pytest.raises(RuntimeError, match="could not be read/parsed"):
        _load_thresholds()


def test_load_thresholds_scalar_section_raises_loudly(monkeypatch):
    # Wrong SHAPE: `thresholds: 0.7` (a hand-edit expecting a single knob) is a
    # present-but-malformed file. The .get() lookups raise AttributeError, which is
    # NOT in the loader's except tuple - so without the isinstance guard this
    # escaped as a raw traceback, bypassing the curated fail-loud guidance every
    # other malformed-settings mode gets (principle 3).
    _fake_settings(monkeypatch, "thresholds: 0.7\n")
    with pytest.raises(RuntimeError, match="could not be read/parsed"):
        _load_thresholds()


def test_load_thresholds_list_section_raises_loudly(monkeypatch):
    # Same shape defect, list form: `thresholds:` as a sequence, not a mapping.
    _fake_settings(monkeypatch, "thresholds:\n  - 0.7\n  - 0.8\n")
    with pytest.raises(RuntimeError, match="could not be read/parsed"):
        _load_thresholds()


def test_load_thresholds_non_mapping_top_level_raises_loudly(monkeypatch):
    # The TOP LEVEL is a sequence, not a mapping - .get("thresholds") itself raises
    # AttributeError. Also funneled into the curated loud failure.
    _fake_settings(monkeypatch, "- a\n- b\n")
    with pytest.raises(RuntimeError, match="could not be read/parsed"):
        _load_thresholds()


def test_load_thresholds_explicit_null_section_falls_back_to_default(monkeypatch):
    # A bare `thresholds:` (explicit null) carries no value to lose, so it is
    # treated like an ABSENT section - engine defaults, not a loud failure. This
    # pins the boundary between "malformed value present" (raise) and "no value
    # present" (default), so the shape guard never over-fails an empty section.
    _fake_settings(monkeypatch, "thresholds:\n")
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


def test_git_commit_hash_untracked_code_file_is_flagged(monkeypatch):
    # RESID-7B covered edits to TRACKED files. An untracked module in src/ - or a
    # signature YAML in config/, or a change under scripts/ - changes what runs while
    # `git diff HEAD` reports a clean tree, so the stamp would name a commit that does
    # not contain the code that produced the report. The second check is path-limited
    # so the untracked artifacts this repo always carries cannot dirty every stamp;
    # that limit is asserted on the command actually issued, not on the return value.
    calls: list = []

    def fake_run(cmd, capture_output, text=None, check=None):
        calls.append(cmd)
        if cmd == ["git", "rev-parse", "HEAD"]:
            return subprocess.CompletedProcess(cmd, 0, stdout="abc123\n", stderr="")
        if cmd[:3] == ["git", "status", "--porcelain"]:
            return subprocess.CompletedProcess(cmd, 0, stdout="?? src/static/newthing.py\n", stderr="")
        return subprocess.CompletedProcess(cmd, 0, stdout="", stderr="")  # diff: clean
    monkeypatch.setattr("cli.subprocess.run", fake_run)

    assert _git_commit_hash() == "abc123 (dirty working tree)"
    status_cmd = next(c for c in calls if c[:3] == ["git", "status", "--porcelain"])
    assert status_cmd[-4:] == ["--", "src", "config", "scripts"]


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
    # CALIB-EXCL-MISS1: h2 is an excluded negative with NO ground-truth entry, so
    # it is uncertifiable but not a known miss - the known-miss cell must read 0
    # rather than inheriting the partial count.
    assert root_row["Excl known-miss"] == "0"


def test_tn0_tautology_caveat_fires_for_positive_only_category_console_parity():
    # Console parity with the generated report's CALIB-TN0-LABEL caveat: a
    # positive-only Tier-2 corpus (TP>0, FP=0, TN=0) makes precision 1.00 a
    # tautology - the false-positive direction was never tested. _calibration_table
    # shows a bare 1.00; the markdown report warns; the console (read first, often
    # alone) carried nothing. root here is a single ground-truth positive that was
    # detected on a complete decompile (TP=1, no negatives at all) -> the tautology
    # shape; ssl has no positive (TP=0) so it must NOT fire - guarding the TP>0
    # clause, since an empty/N/A category is not a tautology.
    from calibration.report import compute_calibration_report
    from calibration.types import GroundTruthEntry, RunRow
    from cli import _tn0_tautology_caveats

    runs = [RunRow(
        apk_hash="h1", run_id="r1", action="ROOT_ONLY",
        root_confidence=0.9, root_detected=True, root_bypassed=True,
        ssl_confidence=0.0, ssl_detected=False, ssl_bypassed=None,
        decompile_completeness="complete",
    )]
    report = compute_calibration_report(
        runs,
        ground_truth={"h1": GroundTruthEntry("h1", root=True, ssl=False, source="manual")},
        generated_at="t", ground_truth_commit="c",
    )
    # precondition: root is exactly the tautology shape and precision reads 1.00
    assert report.tier2["root"].true_positive > 0
    assert report.tier2["root"].false_positive == 0
    assert report.tier2["root"].true_negative == 0
    assert report.tier2["root"].precision.rate == 1.0

    lines = _tn0_tautology_caveats(report)
    assert len(lines) == 1
    assert lines[0].startswith("root ")
    assert "TN=0" in lines[0]
    assert "tautology" in lines[0]
    # selectivity: ssl (no positive) is not a tautology and must not be named
    assert not any("ssl" in line for line in lines)


def test_tn0_tautology_caveat_suppressed_when_a_negative_control_exists():
    # The gate is the caveat's EXACT claim, not a precision==1.00 proxy: once a
    # mis-detected negative control exists (FP>0), precision drops below 1.00 and
    # the caveat's "no negative control / a false positive would be structurally
    # invisible" text is FALSE - so it must NOT fire, even though TN is still 0.
    # A precision==1.00 proxy would (correctly) also stay silent here, but this
    # pins the FP==0 clause directly (caveat-gate-matches-its-text).
    from calibration.report import compute_calibration_report
    from calibration.types import GroundTruthEntry, RunRow
    from cli import _tn0_tautology_caveats

    runs = [
        RunRow(apk_hash="h1", run_id="r1", action="ROOT_ONLY",
               root_confidence=0.9, root_detected=True, root_bypassed=True,
               ssl_confidence=0.0, ssl_detected=False, ssl_bypassed=None,
               decompile_completeness="complete"),
        # a ground-truth root-NEGATIVE that was detected -> a false positive: the
        # negative control the tautology text claims does not exist.
        RunRow(apk_hash="h4", run_id="r4", action="ROOT_ONLY",
               root_confidence=0.9, root_detected=True, root_bypassed=True,
               ssl_confidence=0.0, ssl_detected=False, ssl_bypassed=None,
               decompile_completeness="complete"),
    ]
    report = compute_calibration_report(
        runs,
        ground_truth={
            "h1": GroundTruthEntry("h1", root=True, ssl=False, source="manual"),
            "h4": GroundTruthEntry("h4", root=False, ssl=False, source="manual"),
        },
        generated_at="t", ground_truth_commit="c",
    )
    assert report.tier2["root"].false_positive > 0   # negative control exists
    assert report.tier2["root"].true_negative == 0    # but still no TN
    assert report.tier2["root"].precision.rate < 1.0
    assert _tn0_tautology_caveats(report) == []        # exact gate: no false caveat


def test_tier1_denominator_note_names_the_unverified_mass_and_keeps_states_separate():
    # ADR-0032: the console Tier-1 cell prints confirmed/(confirmed+not_confirmed),
    # which on the 2026-09-25 corpus dropped 118 of 195 root and 87 of 97 ssl
    # predicted runs - the markdown publishes all four states. The note restores
    # the denominator AND keeps UNVERIFIED (an opportunity that produced no
    # verdict) distinct from NOT_APPLICABLE (never an opportunity), because
    # collapsing them into one "excluded" count would hide the number that
    # changes what "1.00" means.
    from calibration.report import compute_calibration_report
    from calibration.types import GroundTruthEntry, RunRow
    from cli import _tier1_denominator_notes

    runs = [
        # root predicted + bypass confirmed; ssl not predicted at all
        RunRow(apk_hash="h1", run_id="r1", action="ROOT_ONLY",
               root_confidence=0.9, root_detected=True, root_bypassed=True,
               ssl_confidence=0.0, ssl_detected=False, ssl_bypassed=None,
               decompile_completeness="complete"),
        # root predicted, verification inconclusive; ssl not predicted
        RunRow(apk_hash="h2", run_id="r2", action="ROOT_ONLY",
               root_confidence=0.9, root_detected=True, root_bypassed=None,
               ssl_confidence=0.0, ssl_detected=False, ssl_bypassed=None,
               decompile_completeness="complete"),
    ]
    report = compute_calibration_report(
        runs,
        ground_truth={
            "h1": GroundTruthEntry("h1", root=True, ssl=False, source="manual"),
            "h2": GroundTruthEntry("h2", root=True, ssl=False, source="manual"),
        },
        generated_at="t", ground_truth_commit="c",
    )
    # preconditions: pin the fixture's shape so a classify_tier1 change fails HERE
    # loudly instead of silently re-wording the note
    assert (report.tier1["root"].confirmed, report.tier1["root"].not_confirmed,
            report.tier1["root"].unverified, report.tier1["root"].not_applicable) == (1, 0, 1, 0)
    assert (report.tier1["ssl"].confirmed, report.tier1["ssl"].not_confirmed,
            report.tier1["ssl"].unverified, report.tier1["ssl"].not_applicable) == (0, 0, 0, 2)

    lines = _tier1_denominator_notes(report)
    assert len(lines) == 2
    root_line = next(line for line in lines if line.startswith("root "))
    ssl_line = next(line for line in lines if line.startswith("ssl "))

    # the denominator the cell shows, now stated
    assert "1 confirmed and 0 not confirmed out of 1 run(s)" in root_line
    # the mass outside it, named as two different states
    assert "1 unverified run(s)" in root_line
    assert "0 run(s) where root-detection was not predicted" in root_line
    # an UNVERIFIED-only category still names the N/A state (counted, not omitted)
    assert "1 unverified run(s)" in root_line
    # the N/A-only category names a real zero unverified count rather than staying silent
    assert "0 unverified run(s)" in ssl_line
    assert "2 run(s) where ssl-detection was not predicted" in ssl_line
    # the other half of what that rate is: the markdown's own lower-bound caveat
    assert all("lower bound on precision, not precision itself" in line for line in lines)
    # never the Tier-2 tautology caveat's wording, which answers a different question
    assert not any("TN=0" in line for line in lines)


def test_tier1_denominator_note_is_silent_when_every_prediction_reached_a_verdict():
    # The gate is the note's own claim - a mass sits outside the denominator - so a
    # corpus where every predicted run reached a verdict prints NOTHING. A note
    # asserting "0 unverified" there would be noise under a cell that needs no
    # qualification (caveat-gate-matches-its-text).
    from calibration.report import compute_calibration_report
    from calibration.types import GroundTruthEntry, RunRow
    from cli import _tier1_denominator_notes

    runs = [RunRow(
        apk_hash="h1", run_id="r1", action="FULL",
        root_confidence=0.9, root_detected=True, root_bypassed=True,
        ssl_confidence=0.9, ssl_detected=True, ssl_bypassed=True,
        decompile_completeness="complete",
    )]
    report = compute_calibration_report(
        runs,
        ground_truth={"h1": GroundTruthEntry("h1", root=True, ssl=True, source="manual")},
        generated_at="t", ground_truth_commit="c",
    )
    assert report.tier1["root"].unverified == 0 and report.tier1["root"].not_applicable == 0
    assert report.tier1["ssl"].unverified == 0 and report.tier1["ssl"].not_applicable == 0
    assert _tier1_denominator_notes(report) == []


def test_tier1_denominator_note_is_wired_into_the_calibration_console_command():
    # A note the command never prints is the defect this change exists to fix, so
    # the consumer is pinned too, not just the helper's text (unit-tested-parser-
    # neq-consumed-signal): parse the source rather than importing it, so this
    # cannot be satisfied by a stale .pyc.
    import ast
    from pathlib import Path

    source = Path(__file__).resolve().parents[2] / "src" / "cli.py"
    tree = ast.parse(source.read_text(encoding="utf-8"))
    command = next(
        node for node in ast.walk(tree)
        if isinstance(node, ast.FunctionDef) and node.name == "calibration_report"
    )
    called = {
        node.func.id for node in ast.walk(command)
        if isinstance(node, ast.Call) and isinstance(node.func, ast.Name)
    }
    assert "_tier1_denominator_notes" in called


def test_calibration_table_surfaces_known_miss_count_separately_from_partial():
    # CALIB-EXCL-MISS1 console parity: the markdown report names the excluded
    # known misses, and _calibration_table's docstring promises parity with its
    # "Excluded from Tier 2..." lines. Without its own cell, a known miss is
    # invisible on the console - indistinguishable from an ordinary
    # uncertifiable negative inside "Excl partial", next to a recall it does not
    # depress.
    from calibration.report import compute_calibration_report
    from calibration.types import GroundTruthEntry, RunRow
    from cli import _calibration_table

    fully_analyzed = {
        "java": "fully_analyzed", "native": "fully_analyzed",
        "manifest": "fully_analyzed", "js": "fully_analyzed",
    }
    runs = [
        # A certifiable TP so root recall is a real 1.00 - the number the
        # known-miss line has to qualify.
        RunRow(
            apk_hash="tp", run_id="r1", action="ROOT_ONLY",
            root_confidence=0.9, root_detected=True, root_bypassed=True,
            ssl_confidence=0.0, ssl_detected=False, ssl_bypassed=None,
            decompile_completeness="complete", coverage=fully_analyzed,
        ),
        # The known miss: NEITHER, ground truth says root IS present, excluded
        # because a governing surface is under-covered.
        RunRow(
            apk_hash="vapour", run_id="r2", action="NEITHER",
            root_confidence=0.3, root_detected=False, root_bypassed=None,
            ssl_confidence=0.0, ssl_detected=False, ssl_bypassed=None,
            decompile_completeness="complete",
            coverage={**fully_analyzed, "java": "partial"},
        ),
    ]
    report = compute_calibration_report(
        runs,
        ground_truth={
            "tp": GroundTruthEntry("tp", root=True, ssl=False, source="manual"),
            "vapour": GroundTruthEntry("vapour", root=True, ssl=False, source="DEX-verified"),
        },
        generated_at="t", ground_truth_commit="c",
    )

    columns, rows = _calibration_table(report)
    for row in rows:  # parity holds with the added column
        assert len(row) == len(columns)
    root_row = dict(zip(columns, rows[0]))
    assert root_row["Tier 2 recall"] == "1.00"        # undepressed by the miss
    assert root_row["Excl partial"] == "1"
    assert root_row["Excl known-miss"] == "1"         # ...and the miss is still visible
    ssl_row = dict(zip(columns, rows[1]))
    assert ssl_row["Excl known-miss"] == "0"          # absent-in-gt exclusion isn't a miss



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


def test_verify_audit_log_command_reports_ok_on_valid_log(tmp_path, capsys):
    # The user-facing surface of the tamper-evidence feature (ADR-0005): the
    # verify-audit-log command must report OK on a genuine chained log and exit 0.
    import cli
    from audit.attestation import record_authorization

    log = tmp_path / "audit.jsonl"
    record_authorization(
        audit_log_path=log, run_id="r1", apk_hash="a", justification="CTF",
        operator="tester", git_commit="g",
    )
    cli.verify_audit_log_cmd(audit_log=log)
    out = capsys.readouterr().out
    assert "Audit log OK" in out
    assert "1 record(s)" in out
    # r1 was authorized but never completed (no classification/completion) - the
    # OK line must NOT let an auditor read "every run finished". Surface it.
    assert "have no completion in this log" in " ".join(out.split())
    assert "r1" in out


def test_verify_audit_log_command_no_uncompleted_note_when_all_runs_finish(tmp_path, capsys):
    # When every authorized run also completed, the OK output must carry no
    # "never completed" note - surfacing it would be noise.
    import cli
    from audit.attestation import record_authorization, record_run_completion

    log = tmp_path / "audit.jsonl"
    record_authorization(
        audit_log_path=log, run_id="r1", apk_hash="a", justification="CTF",
        operator="tester", git_commit="g",
    )
    record_run_completion(
        audit_log_path=log, run_id="r1", apk_hash="a", justification="CTF",
        operator="tester", git_commit="g", action="NEITHER",
        stage_statuses={}, verification="not_attempted",
    )
    cli.verify_audit_log_cmd(audit_log=log)
    out = capsys.readouterr().out
    assert "Audit log OK" in out
    assert "never completed" not in out


def test_verify_audit_log_command_fails_loudly_on_corrupt_log(tmp_path, capsys):
    # A corrupted log must exit non-zero and say so - the command must never
    # silently swallow an integrity failure (principle 3: no silent failures).
    import cli

    log = tmp_path / "audit.jsonl"
    log.write_text("not json\n")
    with pytest.raises(typer.Exit) as exc:  # typer.Exit is a click.Exit (RuntimeError)
        cli.verify_audit_log_cmd(audit_log=log)
    assert exc.value.exit_code == 1
    out = capsys.readouterr().out
    assert "Audit log integrity FAILED" in out


def test_re_attribute_aborts_on_invalid_justification_before_any_write(capsys):
    # ADR-0005 gate on a consumer-visible mutation: re-attribute writes stored
    # attribution (ADR-0010 caveats), so an invalid justification must abort
    # BEFORE any DB write. The gate fires first, so this needs no DB mocking -
    # and the storage import is inside the function, unreachable here.
    import cli

    with pytest.raises(typer.Exit) as exc:  # typer.Exit is a click.Exit (RuntimeError)
        cli.re_attribute_cmd(justification="not-a-real-justification", force=False)
    assert exc.value.exit_code == 1
    out = capsys.readouterr().out
    assert "Invalid --justification" in out


def test_manifest_from_json_none_for_preexisting_runs():
    # _manifest_from_json: a regenerated report must keep its Debuggable/network-
    # security-config section (manifest_json item 3). Runs that predate manifest
    # persistence carry no manifest -> the rebuild yields None, not a fabricated
    # default manifest. Had zero coverage.
    from cli import _manifest_from_json
    assert _manifest_from_json(None) is None
    assert _manifest_from_json({}) is None


def test_manifest_from_json_rebuilds_and_coerces_types():
    # _manifest_from_json: the JSON->ManifestInfo bridge. Booleans are coerced
    # with bool(), stored_certs via int(.. or 0) (None/non-numeric -> 0), and
    # application_present/resources_complete default True when absent so a
    # partial persisted manifest still reads as a complete app.
    from cli import _manifest_from_json
    from static.manifest import ManifestInfo

    m = _manifest_from_json({
        "debuggable": True,
        "network_security_config": "@xml/network_security_config",
        "stored_certs": "3",
        "device_admin": 1,
    })
    assert isinstance(m, ManifestInfo)
    assert m.debuggable is True
    assert m.network_security_config == "@xml/network_security_config"
    assert m.stored_certs == 3          # int coercion
    assert m.device_admin is True        # 1 -> bool
    # defaults: absent fields read as present/complete, not falsy
    assert m.application_present is True
    assert m.resources_complete is True
    assert m.nsc_file_present is None

    # a partial manifest (real bools, from asdict) still reads as complete where
    # the defaults apply; stored_certs=None degrades to 0, device_admin=0 -> False
    m2 = _manifest_from_json({"debuggable": False, "stored_certs": None, "device_admin": 0})
    assert m2.debuggable is False
    assert m2.stored_certs == 0          # None -> int(None or 0) == 0
    assert m2.device_admin is False
    assert m2.application_present is True


def test_manifest_from_json_roundtrips_security_and_attack_surface_fields():
    # Regression: _manifest_from_json restored only 7 of 15 fields, silently
    # dropping package_name, permissions, exported_components, allow_backup,
    # cleartext_permitted/domains, uses_cleartext_traffic, and pin_set_expirations.
    # save_run asdicts the FULL ManifestInfo into manifest_json (via
    # _to_serializable), so those ARE stored - dropping them on regenerate blanked
    # real attack-surface/SSL-policy facts. Most consequential: an EXPIRED
    # pin_set_expirations (declared-but-inactive pinning the report MUST flag) and
    # permissions (whose empty list inverts the INTERNET cross-reference). Build
    # the blob the way the pipeline does - asdict(ManifestInfo) - so the test
    # tracks the real serialization instead of a hand-shaped dict that could drift.
    from dataclasses import asdict
    from cli import _manifest_from_json
    from static.manifest import ManifestInfo

    original = ManifestInfo(
        debuggable=True,
        network_security_config="@xml/nsc",
        application_present=True,
        nsc_file_present=True,
        stored_certs=2,
        device_admin=True,
        resources_complete=True,
        package_name="com.example.app",
        uses_cleartext_traffic=True,
        allow_backup=True,
        cleartext_permitted=True,
        cleartext_domains=["insecure.example.com"],
        pin_set_expirations=["2020-01-01"],  # expired -> inactive pinning, must survive
        permissions=["android.permission.INTERNET", "android.permission.CAMERA"],
        exported_components=[{"name": "com.example.app.Exported", "exported": True}],
    )
    rebuilt = _manifest_from_json(asdict(original))
    assert rebuilt == original  # every field round-trips losslessly


def test_manifest_from_json_preserves_tristate_unset_vs_false():
    # allow_backup / cleartext_permitted / uses_cleartext_traffic are bool|None:
    # the report renders "unset" (None), "no" (False), and "yes" (True)
    # DIFFERENTLY. A bool() coercion on restore would collapse "unset" into "no",
    # so these three pass through untouched - False stays False, None stays None.
    from cli import _manifest_from_json

    false_m = _manifest_from_json({
        "debuggable": False, "network_security_config": None,
        "allow_backup": False, "cleartext_permitted": False,
        "uses_cleartext_traffic": False,
    })
    assert false_m.allow_backup is False
    assert false_m.cleartext_permitted is False
    assert false_m.uses_cleartext_traffic is False
    # absent -> None (unset), NOT coerced to False
    unset_m = _manifest_from_json({"debuggable": False, "network_security_config": None})
    assert unset_m.allow_backup is None
    assert unset_m.cleartext_permitted is None
    assert unset_m.uses_cleartext_traffic is None
    assert unset_m.permissions == []
    assert unset_m.pin_set_expirations == []


def test_classification_from_json_roundtrips_coverage_caveat_and_provenance():
    # Regression (ADR-0006, the consequential one): _classification_from_json
    # dropped unknown_uncovered (the "Coverage-limited (unknown, not absent)"
    # caveat the report renders at generator.py:103), the per-verdict
    # coverage_limited flag, evidence_capped_counts (the truncation disclosure),
    # and per-evidence evidence_type (forensic provenance). Dropping
    # unknown_uncovered on regenerate made a coverage-bound NEITHER re-render as a
    # CONFIDENT NEGATIVE - the exact mislabel the field exists to prevent. Build
    # the blob via asdict + Enum->value so it matches the real save_run store.
    from dataclasses import asdict
    from cli import _classification_from_json
    from common import Action, CategoryVerdict, ClassificationResult, Evidence

    ev = Evidence(
        signature_id="ROOT-1", file="a/b.smali", line_or_offset=12,
        matched_text="su", evidence_type="bytecode_string",
    )
    original = ClassificationResult(
        action=Action.NEITHER,
        root=CategoryVerdict(confidence=0.0, detected=False, evidence=[ev], coverage_limited=True),
        ssl=CategoryVerdict(confidence=0.0, detected=False, evidence=[], coverage_limited=True),
        unknown_uncovered=["root", "ssl"],
        evidence_capped_counts={"ROOT-1": 300},
    )
    blob = asdict(original)
    blob["action"] = original.action.value  # mirror _to_serializable's Enum->value
    rebuilt = _classification_from_json(blob)
    # the caveat-critical fields survive - a coverage-limited NEITHER stays one
    assert rebuilt.unknown_uncovered == ["root", "ssl"]
    assert rebuilt.root.coverage_limited is True
    assert rebuilt.ssl.coverage_limited is True
    assert rebuilt.evidence_capped_counts == {"ROOT-1": 300}
    assert rebuilt.root.evidence[0].evidence_type == "bytecode_string"
    # full-object equality proves nothing else drifted on the round-trip either
    assert rebuilt == original


def test_print_stage_renders_status_icon_and_error(capsys):
    # _print_stage: the status->icon mapping (success OK / failed FAILED /
    # skipped SKIPPED) plus the conditional red error line drove the run's
    # console progress. The error line must appear ONLY when result.error is set,
    # else a silent failure (principle 3) would render identically to a clean
    # stage. Had zero coverage.
    from common import StageResult
    from cli import _print_stage

    _print_stage(StageResult(stage="ingest", status="success", evidence={}, duration_ms=12))
    out = capsys.readouterr().out
    assert "OK" in out and "ingest" in out and "(12ms)" in out
    assert "FAILED" not in out and "error" not in out.lower()

    _print_stage(StageResult(stage="static", status="failed", evidence={},
                             error="no jadx binary", duration_ms=0))
    out = capsys.readouterr().out
    assert "FAILED" in out and "static" in out
    assert "no jadx binary" in out  # the error surfaces loudly, never swallowed

    _print_stage(StageResult(stage="dynamic", status="skipped", evidence={}, duration_ms=0))
    out = capsys.readouterr().out
    assert "SKIPPED" in out and "FAILED" not in out


# ── G20: _operator_identity — the audit log's "who ran it" attestation ──
# ADR-0005 / NFR-1 / principle 7: a dual-use tool must record a VERIFIABLE
# operator or halt; it must never silently log a spoofable blank. This function
# was untested despite being the sole gate on that guarantee.

def test_operator_identity_prefers_explicit_env(monkeypatch):
    # An explicit ANALYSIS_OPERATOR short-circuits before git is ever consulted.
    calls = []
    def fake_run(cmd, capture_output=None, text=None, check=None):
        calls.append(cmd)
        return subprocess.CompletedProcess(cmd, 0, stdout="SHOULD-NOT-BE-USED\n", stderr="")
    monkeypatch.setattr("cli.subprocess.run", fake_run)
    monkeypatch.setenv("ANALYSIS_OPERATOR", "alice@team")

    assert _operator_identity() == "alice@team"
    assert calls == []  # git was never consulted - env short-circuits


def test_operator_identity_falls_back_to_git_config(monkeypatch):
    monkeypatch.delenv("ANALYSIS_OPERATOR", raising=False)
    def fake_run(cmd, capture_output=None, text=None, check=None):
        assert cmd == ["git", "config", "user.name"]
        return subprocess.CompletedProcess(cmd, 0, stdout="Bob Builder\n", stderr="")
    monkeypatch.setattr("cli.subprocess.run", fake_run)

    assert _operator_identity() == "Bob Builder"


def test_operator_identity_empty_env_is_not_a_valid_attestation(monkeypatch):
    # An empty ANALYSIS_OPERATOR is falsy - it must NOT be accepted as identity;
    # the function falls through to git rather than logging a blank operator.
    monkeypatch.setenv("ANALYSIS_OPERATOR", "")
    def fake_run(cmd, capture_output=None, text=None, check=None):
        return subprocess.CompletedProcess(cmd, 0, stdout="Git Fallback\n", stderr="")
    monkeypatch.setattr("cli.subprocess.run", fake_run)

    assert _operator_identity() == "Git Fallback"


def test_operator_identity_halts_loudly_when_unresolvable(monkeypatch):
    # Neither env nor git resolves -> RuntimeError, NOT a silent "unknown".
    monkeypatch.delenv("ANALYSIS_OPERATOR", raising=False)
    def fake_run(cmd, capture_output=None, text=None, check=None):
        raise subprocess.CalledProcessError(1, cmd)
    monkeypatch.setattr("cli.subprocess.run", fake_run)

    with pytest.raises(RuntimeError) as exc:
        _operator_identity()
    assert "ANALYSIS_OPERATOR" in str(exc.value)


def test_operator_identity_halts_when_git_name_is_blank(monkeypatch):
    # git config succeeds but returns an empty name (a real unconfigured state):
    # a blank is not a verifiable operator, so it must halt, not return "".
    monkeypatch.delenv("ANALYSIS_OPERATOR", raising=False)
    def fake_run(cmd, capture_output=None, text=None, check=None):
        return subprocess.CompletedProcess(cmd, 0, stdout="\n", stderr="")
    monkeypatch.setattr("cli.subprocess.run", fake_run)

    with pytest.raises(RuntimeError):
        _operator_identity()


def test_halt_exits_nonzero_loudly():
    # The pipeline's loud-failure contract: _halt raises a non-zero typer.Exit
    # (never returns to let a failed run continue). Exercised indirectly by every
    # e2e failure path; asserted directly here.
    with pytest.raises(typer.Exit) as exc:
        _halt([])
    assert exc.value.exit_code == 1


def test_completeness_console_caveat_names_both_lower_bound_states():
    # Console<->report parity: the live console must mirror the report's
    # decompile-completeness caveat for BOTH lower-bound states, not just `partial`.
    # `unknown` is reachable live (cli.py's `.get("decompile_completeness","unknown")`
    # default; a reused decompile whose completeness sidecar could not be read,
    # DECCMT-UNKNOWN1) and was previously unnamed on the console while the report named
    # it. The lower-bound consequence was already surfaced (unknown -> java unscannable
    # -> the coverage-limited line), so this is a parity/disclosure fix, not a
    # correctness hole - hence: partial and unknown BOTH yield a lower-bound caveat,
    # complete yields NONE (never a false lower-bound claim over a full scan).
    partial = _completeness_console_caveat("partial", 1563, 1)
    assert partial is not None
    assert "PARTIAL decompile" in partial
    assert "1563 files" in partial and "jadx exit 1" in partial
    assert "lower bound, not a confident negative" in partial

    unknown = _completeness_console_caveat("unknown", None, None)
    assert unknown is not None
    assert "completeness could not be determined" in unknown
    assert "lower bound, not a confident negative" in unknown

    # A complete decompile gets no caveat (parity with the report, which prints a
    # positive line, not a CAUTION) - and never a false lower-bound claim.
    assert _completeness_console_caveat("complete", 9000, 0) is None


def test_correlation_skip_reason_for_failed_stage_names_failure_never_claims_skipped():
    # not-attempted != skipped: a FAILED dynamic stage (early setup/install/exception
    # paths) leaves correlation_skip_reason None, so the report's correlation fallback
    # would falsely print "dynamic stage skipped". The guard names the honest reason for
    # a failed stage, preserves any more-specific reason already set, and returns None
    # for a non-failed stage so the genuine-skip fallback stays reserved for real skips.
    failed = _correlation_skip_reason_for_failed_stage(
        None, "failed", "dynamic setup failed before the app could run"
    )
    assert failed is not None
    assert "dynamic stage failed" in failed
    assert "dynamic setup failed before the app could run" in failed
    assert "no verification to correlate" in failed
    # a more-specific reason already set by a success-branch path is preserved verbatim
    assert (
        _correlation_skip_reason_for_failed_stage(
            "logcat capture failed - no verification to correlate against", "failed", "x"
        )
        == "logcat capture failed - no verification to correlate against"
    )
    # a genuine skip (status "skipped") is NOT relabeled - stays None so the template
    # else ("dynamic stage skipped") remains reserved for actual skips
    assert _correlation_skip_reason_for_failed_stage(None, "skipped", "--skip-dynamic passed") is None
    # a successful stage with no reason set also stays None
    assert _correlation_skip_reason_for_failed_stage(None, "success", None) is None
    # failed stage with no reason string still names the failure (no crash on None)
    fallback = _correlation_skip_reason_for_failed_stage(None, "failed", None)
    assert fallback is not None and "see stage status" in fallback
