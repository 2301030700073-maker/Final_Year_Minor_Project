"""Markdown report generation (FR-6.1). Phase 4 adds the limitations section (FR-6.2)."""

from __future__ import annotations

from datetime import datetime, timezone
from pathlib import Path

from jinja2 import Template

from calibration.report import CalibrationReport
from common import ClassificationResult, CorrelationResult, StageResult, VerificationResult
from report import attribution as attribution_module
from static.coverage import confidence_bound
from static.manifest import ManifestInfo

TEMPLATE = Template("""\
# Analysis Report

**Run ID:** {{ run_id }}
**Generated:** {{ timestamp }}
**Analysis code:** {{ git_commit or "unknown" }}
{% if operator or justification -%}
**Authorized by:** {{ operator or "unknown" }} (justification: {{ justification or "not stated" }})
{% endif %}
**Package:** {{ metadata.package.package_name or "unknown" }}
**APK SHA-256:** {{ metadata.hashes.sha256 }}
**Version:** {{ metadata.package.version_name }} (code {{ metadata.package.version_code }})
**SDK:** min={{ metadata.package.min_sdk }}, target={{ metadata.package.target_sdk }}
{% if metadata.signer -%}
**Signing:** v1={{ "yes" if metadata.signer.v1_verified is true else ("n/a" if metadata.signer.v1_verified is none else "no") }}, v2={{ "yes" if metadata.signer.v2_verified is true else ("n/a" if metadata.signer.v2_verified is none else "no") }}, v3={{ "yes" if metadata.signer.v3_verified is true else ("n/a" if metadata.signer.v3_verified is none else "no") }}, v4={{ "yes" if metadata.signer.v4_verified is true else ("n/a" if metadata.signer.v4_verified is none else "no") }}; cert SHA-256: {{ metadata.signer.certificate_sha256 or "unknown" }}
{% else -%}
**Signing:** unknown (no signing information extracted)
{% endif %}
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
**Package:** {{ manifest.package_name or "unknown" }}
**Allow backup:** {{ "yes" if manifest.allow_backup else ("no" if manifest.allow_backup is false else "unset") }}
**Cleartext permitted (effective):** {{ "yes" if manifest.cleartext_permitted else ("no" if manifest.cleartext_permitted is false else "unset (platform default)") }}
**Permissions{% if manifest.permissions %} ({{ manifest.permissions | length }}){% endif %}:** {{ manifest.permissions | join(", ") if manifest.permissions else "none" }}
{% set _exported = manifest.exported_components | selectattr("exported") | list -%}
{% if _exported -%}
**Exported components ({{ _exported | length }}):** {% for c in _exported %}`{{ c.type }}: {{ c.name }}`{% if not loop.last %}, {% endif %}{% endfor %}
{% endif -%}
{% else -%}
**Manifest has no &lt;application&gt; element** - debuggable and network-security-config below are defaults, not reads (RESID-5A/5D).
{% endif %}
{% endif %}

{% macro category_section(cat, classification, attr, coverage, heading, noun, vendor_note) -%}
### {{ heading }}
- Confidence: {{ confidence_bound(cat, classification[cat], coverage) }} -> {{ "DETECTED" if classification[cat].detected else "Inconclusive" }}{% if attr and attr.all_third_party and classification[cat].detected %} (**bundled SDK only** - none of these {{ noun }} matches are in the app's own package){% endif %}
{% for e in classification[cat].evidence -%}
- `{{ e.signature_id }}` at {{ e.file }}:{{ e.line_or_offset }} - `{{ e.matched_text }}`
{% endfor %}
{% if attr and attr.all_third_party and classification[cat].detected -%}
> **Attribution:** all {{ attr.third_party }} {{ noun }} matches are in bundled third-party libraries ({{ attr.vendors | join(', ') }}), none in the app's own package (`{{ attr.app_package }}`) - {{ vendor_note }}
{% elif attr and attr.mixed -%}
> **Attribution:** {{ noun }} matches split across the app's own package ({{ attr.app_owned }}) and bundled third-party libraries ({{ attr.third_party }}: {{ attr.vendors | join(', ') }}).
{% endif %}
{% endmacro -%}
## Classification

**Decision:** {{ classification.action.value }} (root threshold {{ classification.root_threshold }}, ssl threshold {{ classification.ssl_threshold }}){% if decompile_completeness == "partial" %} - **CAUTION: based on a PARTIAL decompile ({{ jadx_file_count }} files, jadx exit {{ jadx_exit_code }}) - see Limitations**{% endif %}{% if classification.unknown_uncovered %} - **Coverage-limited (unknown, not absent): {{ classification.unknown_uncovered | join(', ') }} - a NEITHER here is a lower bound, not a confident negative (governing surface not fully analyzed, or detection-shaped code matched no signature)**{% endif %}
**Files scanned:** {{ classification.scanned_file_count }} (RESID-4C: a low count means this verdict is based on a small corpus - a NEITHER is not proof of absence){% if classification.unreadable_file_count %}{{ " " }}**CAUTION: {{ classification.unreadable_file_count }} candidate file(s) could not be read (OSError): {% for f in classification.unreadable_files %}`{{ f }}`{% if not loop.last %}, {% endif %}{% endfor %} - treat any NEITHER/Inconclusive verdict as degraded, not a full-scan clean.**{% endif %}
{{ category_section("root", classification, root_attribution, coverage, "Root-detection", "root-detection", "consistent with SDK telemetry/fraud-detection root-checks, not necessarily the app's own anti-tampering logic.") }}
{{ category_section("ssl", classification, ssl_attribution, coverage, "SSL-pinning", "SSL-pinning", "consistent with bundled SDK pinning (e.g. OkHttp's CertificatePinner), not the app's own certificate-pinning logic.") }}
{% if classification.evidence_capped_counts -%}
> **Evidence truncated (RESID-4F cap):** {{ classification.evidence_capped_counts|length }} signature(s) matched more than the 50-row-per-signature display cap - the evidence rows above show the first 50 for each:{% for sig_id, total in classification.evidence_capped_counts.items() %} `{{ sig_id }}` matched {{ total }}x{% if not loop.last %},{% endif %}{% endfor %}.
{% endif %}
## Scan Coverage (ADR-0008)

Per-surface bound of this scan - a `partial`/`unscannable` surface is a lower bound, never a confident negative. {% if obfuscation_level -%}Obfuscation: **{{ obfuscation_level }}**{% endif %}

{% if coverage -%}
| Surface | Coverage |
|---|---|
{% for surface, state in coverage.items() -%}
| {{ surface }} | {{ state }} |
{% endfor %}
{% if "native" in coverage and coverage["native"] == "unscannable" -%}
> **Native:** unscannable means the APK had no scannable `.so` (or none at all) - a native NEITHER is not proof a native root/SSL check is absent.
{% endif %}
{% if coverage.get("js") == "partial" -%}
> **JS:** partial means the app ships a binary Hermes/bytecode bundle whose control flow can't be read (React Native release bundle) - we recover only its string constants, so a js root/SSL NEITHER is not proof a root/SSL check in the bundle is absent. Mirrors the native callout above.
{% endif %}
{% if obfuscation_level == "heavy" -%}
> **Heavy obfuscation:** the Java surface is `partial` even on a complete decompile - encrypted/unreachable strings mean a clean Java NEITHER is not proof of absence (N1/G-C).
{% endif %}
{% else -%}
Not recorded for this run.
{% endif %}
{% if jni_bindings -%}
### JNI native-method binding map (boundary #3, static half)

Every `native` method the app's Java code declares, reconciled against the real
`.so` surface. This is the static half of the runtime-JNI-view boundary: which
methods *actually fire* on-device is dynamic (Frida, Phase 5+) and is not
claimed here. Status meaning:

- **resolved** — a `Java_*` export statically binds the method; its body is reachable.
- **dynamic_candidate** — no `Java_*` export, but a lib defines `JNI_OnLoad`, so the method *may* register at runtime (bodies statically invisible → surface partial).
- **unresolved** — no `Java_*` export and no `JNI_OnLoad` anywhere; a genuine unexamined surface. If any method is unresolved, native coverage is forced to `partial` and a native NEITHER is **not** a confident negative (ADR-0006).

| Class | Method | Binding |
|---|---|---|
{% for b in jni_bindings -%}
| `{{ b.class_name }}` | `{{ b.method_name }}` | {{ b.status }} |
{% endfor %}
{% endif %}
{% if unaccounted_loads -%}
### Unaccounted native loads (boundary #4)

The explicit `System.load`/`System.loadLibrary` targets whose `.so` was **not**
extracted and analyzed statically — loaded from an absolute path, or
`loadLibrary("foo")` with no `libfoo.so` bundled. Each is a loaded-but-unexamined
native surface: native coverage is forced to `partial` and a native NEITHER is
**not** a confident negative (ADR-0006). Only a runtime (Frida, Phase 5+) view
can confirm what these actually load.

| Load target |
|---|
{% for t in unaccounted_loads -%}
| `{{ t }}` |
{% endfor %}
{% endif %}
{% if dynamic_loads -%}
### Dynamic code loading (coverage-limited)

The app loads code at runtime via `DexClassLoader` / `PathClassLoader` /
`Class.forName` / `DexFile` / `loadDex`. The payload DEX is released and loaded
only at runtime, so it is **invisible to static analysis** - a genuine unexamined
java surface. Java coverage is forced to `partial` and a java NEITHER is **not** a
confident negative (ADR-0006). Only a runtime (Frida, Phase 5+) view can confirm
what this actually loads.

| Call site |
|---|
{% for d in dynamic_loads -%}
| `{{ d }}` |
{% endfor %}
{% endif %}
{% if webview_sites -%}
### WebView JS bridge (coverage-limited)

The app drives WebView/JS root-detection or SSL-pinning logic through a JS bridge
(`addJavascriptInterface`) / JS evaluation (`evaluateJavascript` /
`loadUrl("javascript:")`) / remote page load (`loadDataWithBaseURL`). Local
HTML/JS containers are now scanned by the text engine, so these call sites are
labelled for visibility; a **remote** http(s) JS source (an external URL handed to
`loadUrl`/`loadDataWithBaseURL`) is JS static analysis cannot read, which forces
the java surface to `partial` - a java NEITHER is **not** a confident negative
over that unexamined remote JS (ADR-0006). Only a runtime (Frida, Phase 5+) view
can confirm what the bridge actually checks.

| Call site |
|---|
{% for w in webview_sites -%}
| `{{ w }}` |
{% endfor %}
{% endif %}
{% if js_evidence -%}
### JavaScript / Hermes bundle (coverage-limited)

The app ships JavaScript compiled to a Hermes/bytecode bundle
(`assets/*.bundle`, `.hbc`). It is binary, so the text engine skips it and jadx
only reads DEX. We recover the bundle's string-constant table and match root/SSL
idioms against it - the literals below are real deterministic evidence, but they
are constants, not full JS control flow. The `js` surface is forced to `partial`
and a js/root/ssl NEITHER is **not** a confident negative (ADR-0006). Only a
runtime (Frida, Phase 5+) view can confirm the surrounding logic.

| Signature | Matched constant | File |
|---|---|---|
{% for sig_id, _cat, matched_text, bundle_file in js_evidence -%}
| `{{ sig_id }}` | `{{ matched_text }}` | `{{ bundle_file }}` |
{% endfor %}
{% endif %}
{% if dart_aot_libs -%}
### Dart AOT snapshot (Flutter) (coverage-limited)

This is a Flutter app: its application logic is compiled ahead-of-time from Dart
into a native snapshot (`{{ dart_aot_libs | join(", ") }}`). That snapshot is a
packed Dart blob, not ordinary native code - it carries no readable `Java_*`
exports or ELF symbols, so our native symbol/string/Ghidra tooling cannot analyze
it for root/SSL detection the way it analyzes a normal `.so`. A Flutter app's
*real* detection logic lives in this Dart snapshot, invisible to both the java
(DEX) and native (symbol/string) surfaces. The `native` surface is forced to
`partial` and a native/root/ssl NEITHER is **not** a confident negative
(ADR-0006). Only a runtime (Frida, Phase 5+) view can confirm what the Dart code
checks.

| Dart AOT snapshot |
|---|
{% for d in dart_aot_libs -%}
| `{{ d }}` |
{% endfor %}
{% endif %}
{% if regenerated_from_stored_data -%}
### Report regenerated from stored data (annotation loss)

This report was re-rendered from the persisted run record, not produced by a live
analysis. The per-surface coverage table above **is** persisted, so the bounds
themselves are exact - but the *cause* annotations that explain a bound are not
persisted columns. DEX attribution degradation, Dart AOT snapshot libs, JNI bindings
and unaccounted `dlopen` loads, dynamic code loading, JS/Hermes evidence and WebView
sites are all run-local values.

Their absence from this regenerated report is therefore **not** evidence they were
absent from the original run. Read a `partial` surface here as "bounded, cause not
reconstructible from storage", and consult the original run's report for the reason
(ADR-0006: an absence must never be read as a negative).
{% endif %}
{% if dex_attribution_degraded -%}
### DEX string attribution degraded (coverage-limited)

The DEX constant-pool scan could not attribute strings to app-owned classes, so it
matched the **whole** string pool instead - either no app-owned namespace was
derivable from the class list, or androguard's cross-reference walk failed.
Normally a DEX string becomes evidence only when at least one class referencing it
belongs to the app's own package; that rule is what keeps a bundled library's
benign constant (`test-keys` inside a vendor SDK) out of the findings. With it
unavailable, two consequences follow: any DEX-level match in this report may
belong to a third-party library rather than to the app, and app-owned strings may
equally have been missed. The `java` surface is therefore forced to `partial` and
a java/root/ssl NEITHER is **not** a confident negative (ADR-0006). The DEX
evidence is retained rather than discarded - each match is a real hit on a real
string in this APK; only its *ownership* is unverified.
{% endif %}
## Dynamic Verification

- Root bypassed: {% if verification %}{% if verification.root_bypassed is none %}inconclusive (see evidence below){% else %}{{ verification.root_bypassed }}{% endif %}{% else %}{% if dynamic_skip_reason %}not run ({{ dynamic_skip_reason }}){% else %}attempted, bypass not verified (no target-specific success check){% endif %}{% endif %}
- SSL bypassed: {% if verification %}{% if verification.ssl_bypassed is none %}inconclusive (see evidence below){% else %}{{ verification.ssl_bypassed }}{% endif %}{% else %}{% if dynamic_skip_reason %}not run ({{ dynamic_skip_reason }}){% else %}attempted, bypass not verified (no target-specific success check){% endif %}{% endif %}
{% if verification -%}
{% for key, value in verification.evidence_lines.items() -%}
- {{ key }}: `{{ value }}`
{% endfor %}
{% if handshake_capture_note -%}
- TLS handshakes (capture proxy): `{{ handshake_capture_note }}`
{% endif %}
{% endif %}
## Static vs. Dynamic Correlation

{% if correlation -%}
{# Verdict is tri-state, never the raw matches boolean. A static prediction
   dynamic could not test (UNVERIFIED) keeps matches=False by design (RESID-6F),
   but rendering "- Matches: False" would read as a static/dynamic DISAGREEMENT
   that never happened - exactly the false conflict the third state was created
   to avoid. So the headline names the actual state: conflict (MISMATCH),
   inconclusive (UNVERIFIED), or agreement (MATCH). -#}
{% if correlation.mismatches -%}
- Verdict: MISMATCH (static and dynamic disagreed)
{% elif correlation.unverified -%}
- Verdict: UNVERIFIED (dynamic could not test the static prediction - inconclusive, not a disagreement)
{% else -%}
- Verdict: MATCH (static and dynamic agree)
{% endif %}
{% for m in correlation.mismatches -%}
- MISMATCH: {{ m }}
{% endfor %}
{% for u in correlation.unverified -%}
- UNVERIFIED: {{ u }}
{% endfor %}
{% elif correlation_skip_reason -%}
- Not evaluated ({{ correlation_skip_reason }}).
{% else -%}
- Not evaluated (dynamic stage skipped).
{% endif %}
## Stage Results

| Stage | Status | Duration (ms) | Error |
|---|---|---|---|
{% for s in stage_results -%}
| {{ s.stage }} | {{ s.status }}{% if s.stage == "dynamic" and s.status == "success" and (verification is none or (verification.root_bypassed is none and verification.ssl_bypassed is none)) %} (machinery ran; bypass not confirmed){% endif %} | {{ s.duration_ms }} | {{ s.error or "" }} |
{% endfor %}
{% if capture_present -%}
## Captured Traffic

{% if capture_flows -%}
{% if verification and verification.ssl_bypassed is true -%}
Real decrypted HTTPS flows observed while the app ran through the mitmproxy capture proxy (`{{ capture_proxy }}`, CA installed at `{{ capture_system_ca }}`). This is the live proof that SSL-pinning was actually defeated - the app sent plaintext (proxy-decrypted) requests the device accepted:
{% else -%}
The app accepted proxy-decrypted HTTPS flows through the capture proxy (`{{ capture_proxy }}`, CA installed at `{{ capture_system_ca }}`) - SSL pinning was not enforced on the hosts below. This is partial evidence, not full confirmation: the app's own pin-check was not confirmed in this run ({{ 'inconclusive' if verification and verification.ssl_bypassed is none else 'not verified' }}), so a pinned endpoint that never spoke during the run is not ruled out.
{% endif %}

| Host | Method | Path | Status |
|---|---|---|---|
{% for f in capture_flows -%}
| {{ f.host }} | {{ f.method }} | {{ f.path }} | {{ f.status }} |
{% endfor %}

Raw flow file: `{{ capture_flows_path }}`
{% else -%}
{% if manifest and "android.permission.INTERNET" not in (manifest.permissions or []) -%}
No traffic was captured. The app declares **no `android.permission.INTERNET` permission**, so it cannot open a network socket — the empty capture is expected regardless of proxy state (capture stage reason: {{ capture_reason or "reason not recorded" }}). The capture stage is honest: a failed capture is reported here, never a fabricated flow list.
{% else -%}
No traffic was captured ({{ capture_reason or "reason not recorded" }}). The capture stage is honest: a failed capture is reported here, never a fabricated flow list.
{% endif -%}
{% endif %}
{% endif %}
## Limitations

This report is produced by a deterministic, signature-based pipeline (ADR-0001) - no AI/LLM component decides whether root-detection or SSL-pinning is present (ADR-0003).

**Static detection is signature-based.** Root-detection and SSL-pinning are identified by matching decompiled sources/resources against a hand-authored, versioned signature set (`config/signatures/`). A detection-shaped indicator that matches no known pattern is not silently dropped: it is surfaced in the Decision line as **Coverage-limited (unknown, not absent)** and a NEITHER in that case is a lower bound, not a confident negative. The genuinely structural residual is only that a technique leaving no detection-shaped evidence at all (nothing for a signature to match) cannot be enumerated - we cannot list what we never see. This is structural, not specific to this run.

**Decompilation is not guaranteed to succeed.** jadx has failed outright on some real-world APKs tested against this pipeline - F-Droid, Root Checker, and the Nexus Launcher system app all failed to decompile - and larger/heavily-obfuscated production apps typically only partial-decompile rather than failing cleanly (e.g. PropertyGuru, 151MB React Native, exits with status 1 after producing ~27,720 source files). The partial-output-tolerance path keeps whatever jadx did produce instead of discarding it, but a partial run is a lower bound, not a definitive scan. See `docs/execution_changes/phase-1-changes-and-lessons.md`.

{% if decompile_completeness == "partial" -%}
**This run's decompilation was INCOMPLETE.** jadx exited with status {{ jadx_exit_code }} after producing {{ jadx_file_count }} real source files - the static scan above only examined those files, not the full APK. A NEITHER/Inconclusive verdict here reflects the subset actually decompiled, not a confirmed absence across the whole app. Treat this run's findings as a lower bound, not a definitive negative.
{% elif decompile_completeness == "unknown" -%}
**This run's decompile completeness could not be determined** (missing or unreadable completeness record from a cached run) - treat any NEITHER/Inconclusive verdict with the same caution as a partial run.
{% else -%}
This run's decompilation completed successfully ({{ jadx_file_count }} source files) - static findings reflect a full scan of the decompiled output.
{% endif %}

**Dynamic bypass attempts unseen apps, but engagement is not confirmation.** The three UnCrackable targets use a hand-authored Frida script. For any unknown real app with no such script, the deterministic bypass synthesizer composes a findings-specific Frida bypass from the same signatures that drove static detection (L-M2), never supplemented by the vendored third-party universal while a synthesized bypass is loaded: live verification on a real target (AndroGoat via a trusted mitmproxy CA) proved the vendor's second script load suppresses the synthesized bypass's observers on both root and SSL regardless of whether their slot methods are disjoint (root/BOTH: root_bypassed=True synth-only vs 0 probeHits synth+vendor; SSL: ssl_bypassed=True synth-only vs 0 observer messages synth+vendor) - so the synthesized bypass, made comprehensive with native libc path-hiding + exec-su for root and a native BoringSSL hook + OkHttp pinner neutralizer + conscrypt trust-manager observer for SSL, is loaded alone - so a real app always gets a real attempt, never a silent "no script available" skip. That synthesized bypass is "hooks engaged" evidence, not a confirmed bypass: only a live target-specific success check (or interactive verification) can confirm the app's own root/SSL check was actually defeated. Engagement is reported as a distinct, lower tier and never blended into a dynamically-confirmed verdict (ADR-0006).

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
    correlation_skip_reason: str | None = None,
    manifest: ManifestInfo | None = None,
    git_commit: str | None = None,
    coverage: dict | None = None,
    obfuscation_level: str | None = None,
    operator: str | None = None,
    justification: str | None = None,
    jni_bindings: list | None = None,
    unaccounted_loads: list | None = None,
    dynamic_loads: list | None = None,
    js_evidence: list | None = None,
    webview_sites: list | None = None,
    dart_aot_libs: list | None = None,
    dex_attribution_degraded: bool = False,
    regenerated_from_stored_data: bool = False,
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
        correlation_skip_reason=correlation_skip_reason,
        correlation=correlation,
        stage_results=stage_results,
        root_attribution=_category_attribution(metadata, classification, "root"),
        ssl_attribution=_category_attribution(metadata, classification, "ssl"),
        **_decompile_summary(stage_results),
        **(_capture := _capture_summary(stage_results)),
        handshake_capture_note=_handshake_capture_note(verification, _capture),
        manifest=manifest,
        coverage=coverage,
        obfuscation_level=obfuscation_level,
        operator=operator,
        justification=justification,
        jni_bindings=jni_bindings,
        unaccounted_loads=unaccounted_loads,
        dynamic_loads=dynamic_loads,
        js_evidence=js_evidence,
        webview_sites=webview_sites,
        dart_aot_libs=dart_aot_libs,
        dex_attribution_degraded=dex_attribution_degraded,
        regenerated_from_stored_data=regenerated_from_stored_data,
        confidence_bound=confidence_bound,
    )
    report_path.write_text(content, encoding="utf-8")
    return report_path


def _category_attribution(
    metadata: dict,
    classification: ClassificationResult,
    side: str,
) -> dict | None:
    """Classify one category's detection evidence (root or ssl) as app-owned vs
    bundled third-party, so the report can say plainly when a DETECTED verdict is
    entirely from bundled SDKs (real PropertyGuru case) rather than the app's own
    logic - the same question for both (most real pinning is OkHttp's
    CertificatePinner inside a bundled SDK). Returns None when there's no
    evidence to attribute. Prefers the attribution the pipeline already attached
    to the classification object (so the report and the persisted
    classification_json agree - single source of truth); falls back to computing
    for direct generate_report() callers that did not attach it."""
    if side == "root":
        if classification.root_attribution is not None:
            return classification.root_attribution
        evidence = classification.root.evidence
    else:
        if classification.ssl_attribution is not None:
            return classification.ssl_attribution
        evidence = classification.ssl.evidence
    package_name = (metadata.get("package") or {}).get("package_name", "")
    return attribution_module.attribute_root_evidence(package_name, evidence)


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


def _capture_summary(stage_results: list[StageResult]) -> dict:
    """Pulled from the capture-traffic stage's own real evidence (never guessed) -
    this feeds the Captured Traffic section. A zero-flow capture is reported as
    `failed` downstream and surfaced here as a reason, never fabricated as flows."""
    capture_stage = next((s for s in stage_results if s.stage == "capture-traffic"), None)
    if capture_stage is None:
        return {
            "capture_present": False, "capture_reason": None,
            "capture_flows": [], "capture_hosts": [],
            "capture_flows_path": None, "capture_system_ca": None,
            "capture_proxy": None,
        }
    evidence = capture_stage.evidence or {}
    flows = evidence.get("flow_summary") or []
    return {
        "capture_present": True,
        "capture_reason": evidence.get("reason"),
        "capture_flows": flows,
        "capture_hosts": evidence.get("hosts") or [],
        "capture_flows_path": evidence.get("flows_path"),
        "capture_system_ca": evidence.get("system_ca"),
        "capture_proxy": evidence.get("proxy"),
    }


def _handshake_capture_note(verification, capture_summary: dict) -> str | None:
    """Reconcile the observer-only "TLS handshakes" line against the capture
    proxy. The success-check's line reports ONLY the Frida SSL observer's view,
    so an unknown real app whose handshake happens at a layer the observer does
    not wrap reads "no TLS handshake reached during the run" - which flatly
    contradicts the Captured Traffic section, because every decrypted flow
    REQUIRED a completed TLS handshake through the CA. Credit the proxy evidence
    without promoting SSL (a handshake alone is not a pin-check, ADR-0006)."""
    if verification is None:
        return None
    hs = verification.evidence_lines.get("TLS handshakes completed post-bypass", "")
    if "none observed (no TLS handshake reached during the run)" not in hs:
        return None
    flows = capture_summary.get("capture_flows") or []
    if not flows:
        return None
    # flow_summary rows are dicts (the capture stage's own shape); the report
    # template reads f.host via Jinja's dict fallback, so a Python getattr here
    # must be dict-aware too - getattr(dict, 'host') is always None and would
    # silently blank the host list.
    def _flow_host(f) -> str:
        return (f.get("host") if isinstance(f, dict) else getattr(f, "host", None)) or ""

    hosts = sorted({_flow_host(f) for f in flows if _flow_host(f)})
    if not hosts:
        hosts = capture_summary.get("capture_hosts") or []
    preview = ", ".join(hosts[:5]) + ("..." if len(hosts) > 5 else "")
    return (
        f"{len(flows)} flow(s) decrypted by the capture proxy, which requires "
        f"completed TLS handshakes through the CA (hosts: {preview}) - the Frida "
        f"SSL observer recorded none, so SSL is not promoted on this basis alone"
    )


CALIBRATION_TEMPLATE = Template("""\
# Calibration Report

**Generated:** {{ report.generated_at }}
**Analysis code:** {{ report.analysis_code_commit or "unknown" }}
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
{% for category, t2 in report.tier2.items() %}{% if t2.true_negative == 0 %}
- **{{ category }} has TN=0: the 1.00 precision/recall is a tautology, not a measurement.** Every ground-truthed {{ category }} case is a positive, so the FP/FN direction has never been tested - a false positive would be structurally invisible here. The 1.00 holds only because no negative control (e.g. a stock app) is included in this category's Tier-2 corpus. Do not read it as validated precision until a true negative is added and the loop re-measured (ADR-0006).
{% endif %}{% endfor %}
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

{% if report.ssl_verification_partial -%}
- SSL bypass verification is PARTIAL: `success_checks/androgoat.py` implements it for its target (okhttp `CertificatePinner.check` hook -> `ssl_bypassed=True` on fire) and, for UNKNOWN targets, the technology-level check confirms SSL when the app's own Java pin-check runs without rejecting AND a TLS handshake completes (its pin logic accepted a connection it would otherwise reject). ROOT bypass for UNKNOWN targets is auto-confirmed by the same technology-level check when the app's own root-check probes a root artifact and is answered-false (its root logic received the not-rooted result). The three UnCrackable checks hardcode `ssl_bypassed=None`, and a category stays inconclusive when its check was never exercised in the run (a flow-triggered check not reached). A thin/zero Tier 1 count for those targets means "not verified," not "0% success rate."
{% endif -%}
- Tier-2 "complete" is exit-code-derived (jadx and apktool both exit 0). A decompile that exits 0 on a truncated or heavily-obfuscated corpus is therefore counted as complete for Tier-2 even when it produced few files - the report's low-corpus caveat (RESID-4C) is not mirrored as a separate Tier-2 exclusion. This is a deliberate conservative-simple choice to avoid over-excluding real observations, not an oversight; a low-corpus-but-exit-0 run inflates n slightly rather than being silently dropped.
- Per-surface coverage (ADR-0008, F2/G-A): a category's NEITHER is excluded from Tier 2 when any of its governing surfaces (root->{java,native}, ssl->{java,native,manifest}) is partial/unscannable. A run with no coverage map (recorded before per-surface coverage existed) scanned only Java, so all other governing surfaces are unscannable and its negative is not certified as a confident TN - it is excluded from Tier 2 like any under-covered negative (types.py:46-48). This is deliberately stricter than the pre-ADR-0008 Java-only gate: a NEITHER from a surface that was never scanned must not read as a verified negative.
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
