"""Gap-2's packer identification was produced, gated the java bound, and was never recorded.

`detect_packers` runs on every analysis. Its findings were printed to the console
(cli.py's per-finding `packer: <name> (<id>) -> <signals>` line), passed to
`java_coverage` where a detected packer is the SOLE gate that forces the java
surface to `partial` - and read by nothing else. `grep -rn packer src/report/` was
empty, so a packed APK got a report showing `| java | partial |` with no cause,
that never stated packing had been identified at all, and whose Gap-2 evidence
existed only in a terminal that had already scrolled away. PACK1's failed-scan
case was silent the same way, and that is the adversarial one: the bound is applied
there precisely because packing was never ruled out.

These are render-level on purpose: the defect was a produced-but-unconsumed signal,
so a unit test of the mapping alone would have passed throughout.
"""

from __future__ import annotations

import re
from inspect import signature
from pathlib import Path

from common import Action, CategoryVerdict, ClassificationResult, StageResult
from report.generator import generate_report
from static.packers import PackerFinding
from storage.results import _to_serializable

_REPO = Path(__file__).resolve().parents[2]

_IDENTIFIED = "### Packer / protector identified (Gap-2)"
_UNRULED_OUT = "### Packer scan did not complete - packing un-ruled-out (coverage-limited)"


def _classification():
    return ClassificationResult(
        action=Action.NEITHER,
        root=CategoryVerdict(confidence=0.2, detected=False, evidence=[]),
        ssl=CategoryVerdict(confidence=0.2, detected=False, evidence=[]),
    )


def _render(tmp_path, **kwargs):
    path = generate_report(
        run_id="pack1", apk_hash="pack001", timestamp="2026-09-19T12:00:00",
        metadata={"hashes": {"sha256": "pack001"},
                  "package": {"package_name": "com.example.app"}},
        classification=_classification(), verification=None, correlation=None,
        stage_results=[], output_dir=tmp_path,
        # The state a packed APK actually has: the packer gate forced java partial.
        coverage={"java": "partial", "native": "fully_analyzed"},
        **kwargs,
    )
    return path.read_text(encoding="utf-8")


def _findings():
    return [PackerFinding(packer="Qihoo 360 Jiagu", packer_id="qihoo_jiagu",
                          signals=["libjiagu.so", "com.qihoo.util.StubApp"])]


def test_an_identified_packer_is_named_with_its_signals(tmp_path):
    content = _render(tmp_path, packer_findings=_findings())
    assert _IDENTIFIED in content, content
    # The identification is deterministic and must be labeled as such, not left to
    # read as a hypothesis (Principle 2: tiers are never blended).
    assert "`deterministic_matched`" in content
    assert "**Qihoo 360 Jiagu**" in content and "`qihoo_jiagu`" in content
    # Each matched artifact is shown, so the reader can see WHY it was named.
    assert "`libjiagu.so`" in content and "`com.qihoo.util.StubApp`" in content
    # And the consequence on the bound it caused, in the same place.
    assert "**loader stub**" in content
    assert "a Java NEITHER here is **not** a confident negative" in content


def test_no_packer_section_without_a_finding_or_a_failed_scan(tmp_path):
    content = _render(tmp_path)
    assert _IDENTIFIED not in content
    assert _UNRULED_OUT not in content
    # An empty list is the scanned-and-found-nothing case, which is not a finding.
    assert _IDENTIFIED not in _render(tmp_path, packer_findings=[])


def test_a_failed_packer_scan_is_disclosed_as_un_ruled_out_not_a_detection(tmp_path):
    content = _render(tmp_path, packer_scan_incomplete=True)
    assert _UNRULED_OUT in content, content
    assert "PACK1" in content
    # The safe direction is forced coverage, NOT a fabricated detection: the report
    # must not name a packer here, nor wear the identification heading.
    assert _IDENTIFIED not in content
    assert "This is **not** a packing detection" in content
    assert "refusal to certify an absence that was never verified" in content


def test_the_packer_causes_survive_the_stored_json_round_trip(tmp_path):
    """A regenerated report must reproduce the section, not drop it.

    `_regenerate_report` reads these back from runs.coverage_causes, so the live
    values are dataclasses and the stored ones are plain JSON dicts. If the
    template depended on attribute access the reloaded form would render nothing -
    a silently absent section on a packed APK (the regen field-loss class).
    """
    stored = _to_serializable({
        "packer_findings": _findings(),
        "packer_scan_incomplete": False,
    })
    assert stored["packer_findings"] == [{
        "packer_id": "qihoo_jiagu", "packer": "Qihoo 360 Jiagu",
        "signals": ["libjiagu.so", "com.qihoo.util.StubApp"],
    }], stored
    regenerated = _render(tmp_path,
                          packer_findings=stored["packer_findings"],
                          packer_scan_incomplete=stored["packer_scan_incomplete"])
    assert _IDENTIFIED in regenerated
    assert "`libjiagu.so`" in regenerated and "**Qihoo 360 Jiagu**" in regenerated


def test_every_persisted_cause_key_is_a_generate_report_parameter():
    """cli.py's contract for that dict: keys ARE generate_report()'s parameter names.

    The dict is both spread into report_kwargs and stored in runs.coverage_causes,
    so a key with no matching parameter raises at render time on the live path and
    is silently ignored by `causes.get` on the regen path - the two disagreeing in
    opposite directions. This binds the two lists together.
    """
    src = (_REPO / "src" / "cli.py").read_text()
    start = src.index("coverage_causes = dict(")
    end = src.index("\n    )", start)
    keys = set()
    for line in src[start:end].splitlines():
        stripped = line.lstrip()
        if stripped.startswith("#"):
            continue
        m = re.match(r"([a-z_]+)=(?!=)", stripped)
        if m:
            keys.add(m.group(1))

    assert {"jni_bindings", "dart_aot_libs", "dex_attribution_degraded"} <= keys, keys
    assert {"packer_findings", "packer_scan_incomplete"} <= keys, keys
    params = set(signature(generate_report).parameters)
    assert keys <= params, f"not generate_report parameters: {sorted(keys - params)}"


def test_a_run_that_predates_the_packer_causes_does_not_invent_one(tmp_path):
    """A stored run written before this change carries no packer key at all.

    Its report must show the java bound without claiming a packer was ruled out or
    found - the reason the section is gated on evidence rather than on java being
    `partial` (a `partial` java surface has four causes; naming one that is not
    recorded is the false-specific-fact failure COV-HEAVY-JAVA1 records).
    """
    content = _render(tmp_path, packer_findings=None, packer_scan_incomplete=False)
    assert _IDENTIFIED not in content
    assert _UNRULED_OUT not in content
    assert "| java | partial |" in content


def test_the_packer_stage_failure_is_still_carried_by_the_stage_table(tmp_path):
    """PACK1's section points the reader at the stage's own error - so it must be there."""
    failed = StageResult(stage="packers", status="failed", evidence={},
                         error="androguard could not read the APK")
    path = generate_report(
        run_id="pack1", apk_hash="pack001", timestamp="2026-09-19T12:00:00",
        metadata={"hashes": {"sha256": "pack001"},
                  "package": {"package_name": "com.example.app"}},
        classification=_classification(), verification=None, correlation=None,
        stage_results=[failed], output_dir=tmp_path,
        coverage={"java": "partial", "native": "fully_analyzed"},
        packer_scan_incomplete=True,
    )
    content = path.read_text(encoding="utf-8")
    assert _UNRULED_OUT in content
    assert "androguard could not read the APK" in content
