"""Markdown report generation (FR-6.1). Phase 4 adds the limitations section (FR-6.2)."""

from __future__ import annotations

from datetime import datetime, timezone
from pathlib import Path

from jinja2 import Template

from calibration.report import CalibrationReport
from common import ClassificationResult, CorrelationResult, StageResult, VerificationResult
from report import attribution as attribution_module
from static.manifest import ManifestInfo

TEMPLATE = Template("""\
# Analysis Report

**Run ID:** {{ run_id }}
**Generated:** {{ timestamp }}
**Analysis code:** {{ git_commit or "unknown" }}
**Package:** {{ metadata.package.package_name or "unknown" }}
**APK SHA-256:** {{ metadata.hashes.sha256 }}
**Version:** {{ metadata.package.version_name }} (code {{ metadata.package.version_code }})
**SDK:** min={{ metadata.package.min_sdk }}, target={{ metadata.package.target_sdk }}
**Signing:** v1={{ "yes" if metadata.signer.v1_verified else "no" }}, v2={{ "yes" if metadata.signer.v2_verified else "no" }}, v3={{ "yes" if metadata.signer.v3_verified else "no" }}, v4={{ "yes" if metadata.signer.v4_verified else "no" }}; cert SHA-256: {{ metadata.signer.certificate_sha256 or "unknown" }}
{% if metadata.signer and metadata.signer.signer_count is not none and metadata.signer.signer_count > 1 -%}
**All signers ({{ metadata.signer.signer_count }} total):**
{% for s in metadata.signer.signers -%}
- {{ s.dn or "?" }} — {{ s.sha256 or "?" }}
{% endfor %}
{% endif %}
{% if metadata.tool_versions -%}
**Toolchain:** {% for tool, ver in metadata.tool_versions.items() %}{{ tool }}={{ ver }}{% if not loop.last %}, {% endif %}{% endfor %}
{% endif %}
{% if manifest -%}
{% if manifest.application_present -%}
**Debuggable:** {{ "yes" if manifest.debuggable else "no" }}
**Network security config:** {{ manifest.network_security_config or "none" }}{% if manifest.nsc_file_present is false %} (**MISSING** - declared `{{ manifest.network_security_config }}` was not found in the decoded resources){% endif %}
{% else -%}
**Manifest has no &lt;application&gt; element** - debuggable and network-security-config below are defaults, not reads (RESID-5A/5D).
{% endif %}
{% endif %}

## Classification

**Decision:** {{ classification.action.value }} (root threshold {{ classification.root_threshold }}, ssl threshold {{ classification.ssl_threshold }}){% if decompile_completeness == "partial" %} - **CAUTION: based on a PARTIAL decompile ({{ jadx_file_count }} files, jadx exit {{ jadx_exit_code }}) - see Limitations**{% endif %}
**Files scanned:** {{ classification.scanned_file_count }} (RESID-4C: a low count means this verdict is based on a small corpus - a NEITHER is not proof of absence)

### Root-detection
- Confidence: {{ "%.2f"|format(classification.root.confidence) }} -> {{ "DETECTED" if classification.root.detected else "Inconclusive" }}
{% for e in classification.root.evidence -%}
- `{{ e.signature_id }}` at {{ e.file }}:{{ e.line_or_offset }} - `{{ e.matched_text }}`
{% endfor %}
{% if root_attribution and root_attribution.all_third_party -%}
> **Attribution:** all {{ root_attribution.third_party }} root-detection matches are in bundled third-party libraries ({{ root_attribution.vendors | join(', ') }}), none in the app's own package (`{{ root_attribution.app_package }}`) - consistent with SDK telemetry/fraud-detection root-checks, not necessarily the app's own anti-tampering logic.
{% elif root_attribution and root_attribution.mixed -%}
> **Attribution:** root-detection matches split across the app's own package ({{ root_attribution.app_owned }}) and bundled third-party libraries ({{ root_attribution.third_party }}: {{ root_attribution.vendors | join(', ') }}).
{% endif %}
### SSL-pinning
- Confidence: {{ "%.2f"|format(classification.ssl.confidence) }} -> {{ "DETECTED" if classification.ssl.detected else "Inconclusive" }}
{% for e in classification.ssl.evidence -%}
- `{{ e.signature_id }}` at {{ e.file }}:{{ e.line_or_offset }} - `{{ e.matched_text }}`
{% endfor %}
## Dynamic Verification

- Root bypassed: {% if verification %}{% if verification.root_bypassed is none %}inconclusive (see evidence below){% else %}{{ verification.root_bypassed }}{% endif %}{% else %}not run ({{ dynamic_skip_reason or "reason unknown" }}){% endif %}
- SSL bypassed: {% if verification %}{% if verification.ssl_bypassed is none %}inconclusive (see evidence below){% else %}{{ verification.ssl_bypassed }}{% endif %}{% else %}not run ({{ dynamic_skip_reason or "reason unknown" }}){% endif %}
{% if verification -%}
{% for key, value in verification.evidence_lines.items() -%}
- {{ key }}: `{{ value }}`
{% endfor %}
{% endif %}
## Static vs. Dynamic Correlation

{% if correlation -%}
- Matches: {{ correlation.matches }}
{% for m in correlation.mismatches -%}
- MISMATCH: {{ m }}
{% endfor %}
{% else -%}
- Not evaluated (dynamic stage skipped).
{% endif %}
## Stage Results

| Stage | Status | Duration (ms) | Error |
|---|---|---|---|
{% for s in stage_results -%}
| {{ s.stage }} | {{ s.status }} | {{ s.duration_ms }} | {{ s.error or "" }} |
{% endfor %}
## Limitations

This report is produced by a deterministic, signature-based pipeline (ADR-0001) - no AI/LLM component decides whether root-detection or SSL-pinning is present (ADR-0003).

**Static detection is signature-based.** Root-detection and SSL-pinning are identified by matching decompiled sources/resources against a hand-authored, versioned signature set (`config/signatures/`). A technique matching no known pattern goes undetected and is silently absent from the confidence score - not flagged as "unknown." This is structural, not specific to this run.

**Decompilation is not guaranteed to succeed.** jadx has failed outright on some real-world APKs tested against this pipeline - F-Droid, Root Checker, and the Nexus Launcher system app all failed to decompile - and larger/heavily-obfuscated production apps typically only partial-decompile rather than failing cleanly (e.g. PropertyGuru, 151MB React Native, exits with status 1 after producing ~27,720 source files). The partial-output-tolerance path keeps whatever jadx did produce instead of discarding it, but a partial run is a lower bound, not a definitive scan. See `docs/execution_changes/phase-1-changes-and-lessons.md`.

{% if decompile_completeness == "partial" -%}
**This run's decompilation was INCOMPLETE.** jadx exited with status {{ jadx_exit_code }} after producing {{ jadx_file_count }} real source files - the static scan above only examined those files, not the full APK. A NEITHER/Inconclusive verdict here reflects the subset actually decompiled, not a confirmed absence across the whole app. Treat this run's findings as a lower bound, not a definitive negative.
{% elif decompile_completeness == "unknown" -%}
**This run's decompile completeness could not be determined** (missing or unreadable completeness record from a cached run) - treat any NEITHER/Inconclusive verdict with the same caution as a partial run.
{% else -%}
This run's decompilation completed successfully ({{ jadx_file_count }} source files) - static findings reflect a full scan of the decompiled output.
{% endif %}

**Dynamic bypass does not generalize to unseen apps.** Every bypass technique here is a hand-written Frida script targeting one target's exact class/method names, confirmed empirically three separate times (UnCrackable1/2/3). Static detection generalizes (the same signatures matched all three targets unchanged, and correctly returned NEITHER on an unrelated real app); dynamic bypass does not - closing that gap is explicit Phase 5-7 work, an explicit non-goal here (see the PRD).

**"Zero false positives" is not a claim this system makes.** Confidence is measured and reported, never asserted as unconditional (ADR-0006).
""")


def generate_report(
    run_id: str,
    apk_hash: str,
    timestamp: str,
    metadata: dict,
    classification: ClassificationResult,
    verification: VerificationResult | None,
    correlation: CorrelationResult | None,
    stage_results: list[StageResult],
    output_dir: Path,
    dynamic_skip_reason: str | None = None,
    manifest: ManifestInfo | None = None,
    git_commit: str | None = None,
) -> Path:
    output_dir = Path(output_dir) / apk_hash
    output_dir.mkdir(parents=True, exist_ok=True)
    report_path = output_dir / f"{run_id}.md"

    content = TEMPLATE.render(
        run_id=run_id,
        timestamp=timestamp,
        git_commit=git_commit,
        metadata=_as_attrdict(metadata),
        classification=classification,
        verification=verification,
        dynamic_skip_reason=dynamic_skip_reason,
        correlation=correlation,
        stage_results=stage_results,
        root_attribution=_root_attribution(metadata, classification),
        **_decompile_summary(stage_results),
        manifest=manifest,
    )
    report_path.write_text(content, encoding="utf-8")
    return report_path


def _root_attribution(metadata: dict, classification: ClassificationResult) -> dict | None:
    """Classify root-detection evidence as app-owned vs bundled third-party, so
    the report can say plainly when a DETECTED root verdict is entirely from
    bundled SDKs (real PropertyGuru case) rather than the app's own logic.
    Returns None when there's no root evidence to attribute."""
    package_name = (metadata.get("package") or {}).get("package_name", "")
    return attribution_module.attribute_root_evidence(package_name, classification.root.evidence)


def _decompile_summary(stage_results: list[StageResult]) -> dict:
    """Pulled from the decompile stage's own real evidence (never guessed) -
    this is what lets the Limitations section say plainly when a report is
    based on incomplete decompilation, per FR-6.2."""
    decompile_stage = next((s for s in stage_results if s.stage == "decompile"), None)
    if decompile_stage is None:
        # Only reachable from a unit test passing stage_results=[] - a real
        # run always halts before generate_report() if decompile failed.
        return {"decompile_completeness": "unknown", "jadx_exit_code": None, "jadx_file_count": None}
    evidence = decompile_stage.evidence or {}
    completeness = evidence.get("decompile_completeness") or ("complete" if decompile_stage.status == "success" else "unknown")
    return {
        "decompile_completeness": completeness,
        "jadx_exit_code": evidence.get("jadx_exit_code"),
        "jadx_file_count": evidence.get("jadx_file_count"),
    }


CALIBRATION_TEMPLATE = Template("""\
# Calibration Report

**Generated:** {{ report.generated_at }}
**Ground-truth registry commit:** {{ report.ground_truth_commit }}

{% if report.skeleton_warning -%}
**{{ report.skeleton_warning }}**

{% endif -%}
## Tier 1 - Confirmation Rate (pipeline self-consistency, no ground truth needed)

Among runs where a category was predicted detected AND dynamic verification actually ran, what fraction got a genuine bypass confirmation? "Not confirmed" is never relabeled "false positive" - it's ambiguous between "wasn't really there" and "the bypass technique just failed" (see `src/calibration/outcomes.py`).

| Category | Confirmed | Not Confirmed | Unverified | N/A (not predicted) | Confirmation Rate |
|---|---|---|---|---|---|
{% for category, t1 in report.tier1.items() -%}
| {{ category }} | {{ t1.confirmed }} | {{ t1.not_confirmed }} | {{ t1.unverified }} | {{ t1.not_applicable }} | {{ "%.2f"|format(t1.confirmation_rate.rate) if t1.confirmation_rate.rate is not none else "N/A (no data)" }} |
{% endfor %}
## Tier 2 - Precision / Recall / F1 (against independently-sourced ground truth)

Built from the *static* detected verdict against `config/ground_truth.yaml` - never from the dynamic bypass outcome (that would structurally be unable to produce a false negative or a reliable true negative). Every rate reports "N/A" rather than 0 when its denominator is zero (ADR-0006).

| Category | TP | FP | FN | TN | Precision | Recall | F1 | n |
|---|---|---|---|---|---|---|---|---|
{% for category, t2 in report.tier2.items() -%}
| {{ category }} | {{ t2.true_positive }} | {{ t2.false_positive }} | {{ t2.false_negative }} | {{ t2.true_negative }} | {{ "%.2f"|format(t2.precision.rate) if t2.precision.rate is not none else "N/A" }} | {{ "%.2f"|format(t2.recall.rate) if t2.recall.rate is not none else "N/A" }} | {{ "%.2f"|format(t2.f1) if t2.f1 is not none else "N/A" }} | {{ t2.n }} |
{% endfor %}
Excluded from Tier 2 (no ground-truth entry for that APK): root={{ report.excluded_no_ground_truth.root }}, ssl={{ report.excluded_no_ground_truth.ssl }}
Excluded from Tier 2 (partial/unknown decompile - a negative isn't proof of absence): root={{ report.excluded_partial_decompile.root }}, ssl={{ report.excluded_partial_decompile.ssl }}

## Confidence-Calibration Curve

Bucket edges always include the real decision threshold explicitly - the one boundary that matters for future threshold re-scoring.

{% for category, buckets in report.calibration_curve.items() -%}
### {{ category }}

| Range | Count | Observed Positive Rate |
|---|---|---|
{% for b in buckets -%}
| [{{ "%.1f"|format(b.range_low) }}, {{ "%.1f"|format(b.range_high) }}) | {{ b.count }} | {{ "%.2f"|format(b.observed_positive_rate) if b.observed_positive_rate is not none else "no data" }} |
{% endfor %}
{% endfor %}
## Notes

{% if report.ssl_verification_not_implemented -%}
- No `success_checks/*.py` module implements SSL bypass verification yet (all three hardcode `ssl_bypassed=None` unconditionally) - an empty/zero SSL Tier 1 result above means "not built yet," not "0% success rate."
{% endif -%}
- "Zero false positives" is not a claim this system makes (ADR-0006) - these numbers are measured, improving, and only as reliable as the sample size shown above.
""")


def generate_calibration_report(report: CalibrationReport, output_dir: Path) -> Path:
    output_dir = Path(output_dir)
    output_dir.mkdir(parents=True, exist_ok=True)
    timestamp = datetime.now(timezone.utc).strftime("%Y%m%dT%H%M%SZ")
    report_path = output_dir / f"{timestamp}.md"
    report_path.write_text(CALIBRATION_TEMPLATE.render(report=report), encoding="utf-8")
    return report_path


class _AttrDict(dict):
    """Lets Jinja access dict keys via attribute syntax (metadata.package.package_name)."""

    def __getattr__(self, item):
        value = self.get(item)
        return _as_attrdict(value) if isinstance(value, dict) else value


def _as_attrdict(value):
    if isinstance(value, dict):
        return _AttrDict({k: _as_attrdict(v) for k, v in value.items()})
    return value
