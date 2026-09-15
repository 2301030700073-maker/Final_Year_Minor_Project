"""F-8: the immutable run record must not drop stages that share a name.

Three stages in this pipeline are named `audit` (authorization, run-outcome,
post-decision attestation). The record's `stage_statuses` is keyed by stage name,
so two of the three outcomes were overwritten - an outcome lost from the artifact
ADR-0005 requires to make a run traceable end to end.
"""

import json

from audit.attestation import record_authorization, record_run_completion


def _record(tmp_path, **overrides):
    log_path = tmp_path / "audit_log.jsonl"
    record_authorization(log_path, "OWN_APP", "hash1", "op", "commit1", run_id="run-f8")
    kwargs = dict(
        audit_log_path=log_path, run_id="run-f8", apk_hash="hash1",
        justification="OWN_APP", operator="op", git_commit="commit1", action="NEITHER",
        stage_statuses={"ingest": "success", "audit": "success",
                        "decompile": "success", "dynamic": "success"},
        stage_statuses_list=[
            ("ingest", "success"), ("audit", "success"), ("decompile", "success"),
            ("audit", "failed"), ("dynamic", "success"), ("audit", "success"),
        ],
        verification="not run",
    )
    kwargs.update(overrides)
    record_run_completion(**kwargs)
    return json.loads(log_path.read_text(encoding="utf-8").splitlines()[1])


def test_ordered_list_keeps_every_stage_including_repeated_names(tmp_path):
    rec = _record(tmp_path)
    assert [e["stage"] for e in rec["stage_statuses_list"]] == [
        "ingest", "audit", "decompile", "audit", "dynamic", "audit"]
    # The middle `audit` FAILED. The name-keyed view cannot express that at all -
    # the last write wins - which is the whole defect.
    assert rec["stage_statuses_list"][3] == {"stage": "audit", "status": "failed"}
    assert rec["stage_statuses"]["audit"] == "success"  # lossy view, kept as-is


def test_collapsed_stage_names_are_named_not_counted(tmp_path):
    # A reader of the name-keyed view must be able to tell which stages it is not
    # showing in full; a silent collapse reads as "one audit stage ran".
    assert _record(tmp_path)["stage_statuses_collapsed"] == ["audit"]


def test_no_repeated_names_reports_no_collapse(tmp_path):
    rec = _record(tmp_path, stage_statuses={"ingest": "success", "dynamic": "success"},
                  stage_statuses_list=[("ingest", "success"), ("dynamic", "success")])
    assert rec["stage_statuses_collapsed"] == []
    assert len(rec["stage_statuses_list"]) == 2


def test_absent_ordered_list_reads_as_not_recorded(tmp_path):
    # An empty list means "this caller recorded no ordered list", never "no stage
    # ran" - the dict beside it is what says which stages ran.
    rec = _record(tmp_path, stage_statuses_list=None)
    assert rec["stage_statuses_list"] == []
    assert rec["stage_statuses_collapsed"] == []
    assert rec["stage_statuses"]["audit"] == "success"
