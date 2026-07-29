"""Markdown report generation (FR-6.1). Phase 4 adds the limitations section (FR-6.2)."""

from __future__ import annotations

from pathlib import Path

from jinja2 import Template

from common import ClassificationResult, CorrelationResult, StageResult, VerificationResult

TEMPLATE = Template("""\
# Analysis Report

**Run ID:** {{ run_id }}
**Generated:** {{ timestamp }}
**Package:** {{ metadata.package.package_name or "unknown" }}
**APK SHA-256:** {{ metadata.hashes.sha256 }}
**Version:** {{ metadata.package.version_name }} (code {{ metadata.package.version_code }})
**SDK:** min={{ metadata.package.min_sdk }}, target={{ metadata.package.target_sdk }}

## Classification

**Decision:** {{ classification.action.value }} (threshold {{ classification.threshold }})

### Root-detection
- Confidence: {{ "%.2f"|format(classification.root.confidence) }} -> {{ "DETECTED" if classification.root.detected else "Inconclusive" }}
{% for e in classification.root.evidence -%}
- `{{ e.signature_id }}` at {{ e.file }}:{{ e.line_or_offset }} - `{{ e.matched_text }}`
{% endfor %}
### SSL-pinning
- Confidence: {{ "%.2f"|format(classification.ssl.confidence) }} -> {{ "DETECTED" if classification.ssl.detected else "Inconclusive" }}
{% for e in classification.ssl.evidence -%}
- `{{ e.signature_id }}` at {{ e.file }}:{{ e.line_or_offset }} - `{{ e.matched_text }}`
{% endfor %}
## Dynamic Verification

- Root bypassed: {{ verification.root_bypassed if verification else "not run (--skip-dynamic)" }}
- SSL bypassed: {{ verification.ssl_bypassed if verification else "not run (--skip-dynamic)" }}
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
) -> Path:
    output_dir = Path(output_dir) / apk_hash
    output_dir.mkdir(parents=True, exist_ok=True)
    report_path = output_dir / f"{run_id}.md"

    content = TEMPLATE.render(
        run_id=run_id,
        timestamp=timestamp,
        metadata=_as_attrdict(metadata),
        classification=classification,
        verification=verification,
        correlation=correlation,
        stage_results=stage_results,
    )
    report_path.write_text(content, encoding="utf-8")
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
