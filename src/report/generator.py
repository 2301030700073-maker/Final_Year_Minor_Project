"""Markdown report generation (FR-6.1). Phase 4 adds the limitations section (FR-6.2)."""

from __future__ import annotations

from datetime import datetime, timezone
from pathlib import Path

from jinja2 import Environment

from calibration.report import CalibrationReport
from common import ClassificationResult, CorrelationResult, StageResult, VerificationResult
from report import attribution as attribution_module
from static.coverage import confidence_bound
from static.manifest import ManifestInfo


def _md(value) -> str:
    """Escape a value for safe inline Markdown so an adversarial APK-derived
    string (matched_text, host, path, ...) cannot break the report's structure:
    a newline injects a new table row / list item, a `|` a new table column, and
    a backtick closes the code span the value is rendered inside. Newlines become
    spaces and pipes are backslash-escaped (exact text preserved); a literal
    backtick - essentially never present in a real matched token - is shown as an
    apostrophe so the surrounding code span stays intact. A documented display
    substitution, never a silent drop (ADR-0006)."""
    s = "" if value is None else str(value)
    s = s.replace("\r", " ").replace("\n", " ")
    s = s.replace("|", "\\|")
    s = s.replace("`", "'")
    return s


# Markdown output, not HTML: autoescape stays off (the template hand-escapes the
# few literal angle-bracket strings it needs). We instead neutralize the specific
# structure-breaking characters in untrusted values via the `md` filter above.
_env = Environment()
_env.filters["md"] = _md

TEMPLATE = _env.from_string("""\
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
{% for s in metadata.signer.signers or [] -%}
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
{% if manifest.cleartext_domains -%}
**Cleartext-permitted domains ({{ manifest.cleartext_domains | length }}):** {% for d in manifest.cleartext_domains %}`{{ d }}`{% if not loop.last %}, {% endif %}{% endfor %}
{% endif -%}
{% if expired_pin_sets -%}
**NSC pin-set EXPIRED:** the network-security-config declares certificate pinning whose expiration ({{ expired_pin_sets | join(", ") }}) precedes this run - Android stops enforcing an expired pin-set and falls back to normal CA validation, so this NSC-declared pinning is **not active at runtime** (any other pinning mechanism is unaffected; confirm dynamically). Declared pinning is still reported above - this only flags that the framework will not enforce it.
{% endif -%}
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
- `{{ e.signature_id }}` ({{ e.evidence_type }}) at {{ e.file }}:{{ e.line_or_offset }} - `{{ e.matched_text | md }}`
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
{# COV-HEAVY-JAVA1: gate on the ACTUAL java state, not `obfuscation_level` alone. Under heavy obfuscation java_coverage() returns `partial` from a complete/partial decompile but `unscannable` from an unknown-completeness (cached/regenerated) run (coverage.py). Firing on `heavy` alone printed "the Java surface is `partial`" beneath a coverage table showing java=`unscannable` - a false specific fact. The heavy+unknown case is already carried by the decompile-completeness=="unknown" Limitations branch; here the caveat fires only where its own assertion is true. #}{% if obfuscation_level == "heavy" and coverage.get("java") == "partial" -%}
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
| `{{ sig_id }}` | `{{ matched_text | md }}` | `{{ bundle_file | md }}` |
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

- Root bypassed: {% if verification %}{% if verification.root_bypassed is none %}inconclusive (see evidence below){% else %}{{ verification.root_bypassed }}{% endif %}{% else %}{% if dynamic_skip_reason %}not run ({{ dynamic_skip_reason }}){% else %}bypass not verified (see stage status and evidence below){% endif %}{% endif %}
- SSL bypassed: {% if verification %}{% if verification.ssl_bypassed is none %}inconclusive (see evidence below){% else %}{{ verification.ssl_bypassed }}{% endif %}{% else %}{% if dynamic_skip_reason %}not run ({{ dynamic_skip_reason }}){% else %}bypass not verified (see stage status and evidence below){% endif %}{% endif %}
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
| {{ f.host | md }} | {{ f.method | md }} | {{ f.path | md }} | {{ f.status | md }} |
{% endfor %}

Raw flow file: `{{ capture_flows_path }}`
{% else -%}
{% if manifest and "android.permission.INTERNET" not in (manifest.permissions or []) -%}
No traffic was captured. The app declares **no `android.permission.INTERNET` permission**, so it cannot open a network socket — the empty capture is expected regardless of proxy state (capture stage reason: {{ capture_reason or "reason not recorded" }}). The capture stage is honest: a failed capture is reported here, never a fabricated flow list.
{% elif manifest and "android.permission.INTERNET" in manifest.permissions -%}
No traffic was captured ({{ capture_reason or "reason not recorded" }}). The app **declares `android.permission.INTERNET`**, so it can open network sockets — the absence of captured flows is a **coverage limitation of this run** (the app may not have exercised the network, or a pinned endpoint refused the proxy CA), not evidence that the app makes no network calls. The capture stage is honest: a failed capture is reported here, never a fabricated flow list.
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
**This run's decompilation was INCOMPLETE.** jadx exited with status {{ jadx_exit_code }} after producing {{ jadx_file_count }} real source files - the static scan above only examined those files, not the full APK. A NEITHER/Inconclusive verdict here reflects the subset actually decompiled, not a confirmed absence across the whole app. Treat this run's findings as a lower bound, not a definitive negative.{% if class_recovery_pct is not none %} Quantified: jadx recovered Java source for approximately {{ class_recovery_pct }}% of the app's top-level classes ({{ jadx_file_count }} jadx top-level `.java` classes vs ~{{ smali_top_level_classes }} apktool top-level `.smali` classes). This is an approximate class-count proxy, not a precise bytecode-coverage figure: jadx and apktool enumerate synthetic/resource classes differently, and if apktool itself only partially decoded, this denominator is a lower bound too.{% endif %}
{% elif decompile_completeness == "unknown" -%}
**This run's decompile completeness could not be determined** (missing or unreadable completeness record from a cached run) - treat any NEITHER/Inconclusive verdict with the same caution as a partial run.
{% else -%}
This run's decompilation completed successfully ({{ jadx_file_count }} source files) - static findings reflect a full scan of the decompiled output.
{% endif %}

**Decompiler(s) used this run:** {{ decompiler_used }}. Recorded from the decompile stage's own evidence so this run's Java-side coverage is reproducible - the secondary CFR pass is discovered per-machine (ADR-0007), and naming whether it ran is what explains a coverage difference between two environments rather than leaving it silent.

**Dynamic bypass attempts unseen apps, but engagement is not confirmation.** The three UnCrackable targets use a hand-authored Frida script. For any unknown real app with no such script, the deterministic bypass synthesizer composes a findings-specific Frida bypass from the same signatures that drove static detection (L-M2), never supplemented by the vendored third-party universal while a synthesized bypass is loaded: live verification on a real target (AndroGoat via a trusted mitmproxy CA) proved the vendor's second script load suppresses the synthesized bypass's observers on both root and SSL regardless of whether their slot methods are disjoint (root/BOTH: root_bypassed=True synth-only vs 0 probeHits synth+vendor; SSL: ssl_bypassed=True synth-only vs 0 observer messages synth+vendor) - so the synthesized bypass, made comprehensive with native libc path-hiding + exec-su for root and a native BoringSSL hook + OkHttp pinner neutralizer + conscrypt trust-manager observer for SSL, is loaded alone - so a real app always gets a real attempt, never a silent "no script available" skip. That synthesized bypass is "hooks engaged" evidence, not a confirmed bypass: only a live target-specific success check (or interactive verification) can confirm the app's own root/SSL check was actually defeated. Engagement is reported as a distinct, lower tier and never blended into a dynamically-confirmed verdict (ADR-0006).

{% if hooks_audit_present -%}
**Bypass hooks engaged (auditable, this run).** Reconstructed from the dynamic stage's own Frida message stream so engagement traces back to the signatures that drove it (G10), not an opaque yes/no. Every count below is a real delivered message:
{% if hooks_driving_signatures -%}
- Driven by static signatures: {% for s in hooks_driving_signatures %}`{{ s }}`{% if not loop.last %}, {% endif %}{% endfor %}.
{% endif -%}
{% if hooks_handauthored_scripts -%}
- Hand-authored script(s): {% for s in hooks_handauthored_scripts %}`{{ s }}`{% if not loop.last %}, {% endif %}{% endfor %}.
{% endif -%}
- Readiness checkpoints delivered: {% if hooks_checkpoints_fired %}{% for c in hooks_checkpoints_fired %}`{{ c }}`{% if not loop.last %}, {% endif %}{% endfor %}{% else %}none observed{% endif %}.
- Behavioral engagement (the app's own check hitting a hook): {{ hooks_root_probe_hits }} root probeHit(s){% if hooks_ssl_effects %}; SSL effects {% for k, v in hooks_ssl_effects.items() %}`{{ k }}`={{ v }}{% if not loop.last %}, {% endif %}{% endfor %}{% else %}; 0 SSL effects{% endif %}. A probeHit is not attributed to a single signature - the union hooks serve many signatures at once, so a 1:1 claim would be fabricated.
{% if hooks_loaded_not_engaged -%}
- Loaded but readiness not observed this run: {% for s in hooks_loaded_not_engaged %}`{{ s }}`{% if not loop.last %}, {% endif %}{% endfor %} (the hook was attached; the app's own check may simply not have exercised it - engagement is a lower bound, not a confirmed absence).
{% endif -%}
{% if not hooks_engaged_any -%}
- No engagement signal was delivered at all this run: hooks were loaded but neither a readiness checkpoint nor a behavioral signal came back. This is un-exercised (or a suppressed message stream), NOT a failed bypass - the distinction the earlier "engagement showed none" result could not make.
{% endif -%}

{% endif -%}
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
        **_hooks_engaged(stage_results),
        **(_capture := _capture_summary(stage_results)),
        handshake_capture_note=_handshake_capture_note(verification, _capture),
        manifest=manifest,
        expired_pin_sets=_expired_pin_sets(manifest, timestamp),
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


def _decompiler_used(evidence: dict) -> str:
    """Human-readable record of which decompiler(s) actually produced this run's
    sources, derived from the decompile stage's own fallback evidence (G2).

    The CFR secondary decompiler is discovered per-machine (present on the
    reference WSL2 env, potentially absent elsewhere - ADR-0007), so two machines
    can recover different class sets from the same APK. A report that never says
    whether CFR ran cannot explain that difference. Naming the decompiler(s) - or
    stating plainly that the secondary was unavailable - is what makes this run's
    coverage reproducible instead of silently environment-dependent."""
    recovered = evidence.get("fallback_recovered")
    count = evidence.get("fallback_file_count") or 0
    if recovered:
        return f"jadx + CFR (CFR recovered {count} source file(s) jadx alone missed)"
    if evidence.get("fallback_unavailable"):
        return ("jadx only - the CFR secondary decompiler was unavailable in this "
                "environment; coverage is jadx's alone and a machine with CFR "
                "installed may recover additional classes")
    if recovered is False:
        return "jadx + CFR (CFR ran but recovered no additional files over jadx)"
    return "jadx"


def _decompile_summary(stage_results: list[StageResult]) -> dict:
    """Pulled from the decompile stage's own real evidence (never guessed) -
    this is what lets the Limitations section say plainly when a report is
    based on incomplete decompilation, per FR-6.2."""
    decompile_stage = next((s for s in stage_results if s.stage == "decompile"), None)
    if decompile_stage is None:
        # Only reachable from a unit test passing stage_results=[] - a real
        # run always halts before generate_report() if decompile failed.
        return {"decompile_completeness": "unknown", "jadx_exit_code": None,
                "jadx_file_count": None, "decompiler_used": "unknown",
                "class_recovery_ratio": None, "class_recovery_pct": None,
                "smali_top_level_classes": None}
    evidence = decompile_stage.evidence or {}
    completeness = evidence.get("decompile_completeness") or ("complete" if decompile_stage.status == "success" else "unknown")
    return {
        "decompile_completeness": completeness,
        "jadx_exit_code": evidence.get("jadx_exit_code"),
        "jadx_file_count": evidence.get("jadx_file_count"),
        # G2: name the decompiler(s) that produced these sources so coverage is
        # reproducible across machines, not silently CFR-availability-dependent.
        "decompiler_used": _decompiler_used(evidence),
        # G1: quantify HOW partial a partial decompile is (approximate top-level
        # class recovery). pct is derived here so the template stays declarative;
        # 0.0 is a real value (jadx got nothing, apktool has classes) - guard on
        # `is not None`, never truthiness.
        "class_recovery_ratio": evidence.get("class_recovery_ratio"),
        "class_recovery_pct": (round(evidence["class_recovery_ratio"] * 100, 1)
                               if evidence.get("class_recovery_ratio") is not None else None),
        "smali_top_level_classes": evidence.get("smali_top_level_classes"),
    }


def _hooks_engaged(stage_results: list[StageResult]) -> dict:
    """Auditable "bypass hooks engaged" summary derived from the dynamic stage's
    OWN Frida message stream, so engagement is attributable to the signatures
    that drove it instead of reported as an opaque yes/no (G10).

    Threads driving signature -> injected probe -> emitted message -> report:
    the static signatures that composed the synthesized bypass are carried in
    `scripts_applied`; every hook emits a `send({hook: <technique_id>})` readiness
    checkpoint; the app's own check, when it actually hits a hook, emits the
    behavioral `probeHit` (root) / `bypassEffect` (SSL). Every count here comes
    from a real delivered message - nothing is inferred. A probeHit is NOT
    back-attributed to a single signature: the union hooks deliberately hide the
    full artifact set for many signatures at once, so a 1:1 claim would be
    fabricated (ADR-0006). This is the structural fix for the "engagement showed
    none" result on a real target whose message stream was simply never audited."""
    dynamic_stage = next((s for s in stage_results if s.stage == "dynamic"), None)
    absent = {
        "hooks_audit_present": False, "hooks_engaged_any": False,
        "hooks_checkpoints_fired": [], "hooks_driving_signatures": [],
        "hooks_handauthored_scripts": [], "hooks_loaded_not_engaged": [],
        "hooks_root_probe_hits": 0, "hooks_ssl_effects": {},
    }
    if dynamic_stage is None:
        return absent
    evidence = dynamic_stage.evidence or {}
    if "frida_messages" not in evidence:
        # A skipped dynamic stage carries only a reason (surfaced elsewhere) and
        # no message stream - there is nothing to audit, so render no block
        # rather than an empty one that would read as "ran, engaged nothing".
        return absent

    checkpoints: set[str] = set()
    # ENGAGE-PROBE-ROOT1 (decider-owns-its-guard + AG-SC1): root_probe_hits counts
    # ONLY probeHits whose VALUE is "root", so the report's "N root probeHit(s)" line
    # is accurate to its label no matter what the emitter sends. The success-check
    # layer already matches the probeHit value precisely (androgoat.py:_ROOT_PROBE_RE)
    # exactly because "a probeHit of some OTHER type" must not read as root; this layer
    # is the one place that still counted any probeHit as root and relied on the
    # emitter only ever sending `root`. probe_hits_any counts a behavioral probeHit of
    # ANY value so `engaged_any` still reflects its exact claim ("a behavioral signal
    # came back") rather than dropping a non-root hit into "no engagement at all".
    # Today every synthesized probeHit is `root` (synthesizer.py), so on every real run
    # probe_hits_any == root_probe_hits and this changes no current output - it closes
    # the latent label gap in the safe (EXTEND) direction, reversing nothing.
    root_probe_hits = 0
    probe_hits_any = 0
    ssl_effects: dict[str, int] = {}
    for m in evidence.get("frida_messages") or []:
        payload = m.get("payload") if isinstance(m, dict) else None
        if not isinstance(payload, dict):
            continue
        if isinstance(payload.get("hook"), str):
            checkpoints.add(payload["hook"])
        if "probeHit" in payload:
            probe_hits_any += 1
            if payload.get("probeHit") == "root":
                root_probe_hits += 1
        effect = payload.get("bypassEffect")
        if isinstance(effect, str):
            ssl_effects[effect] = ssl_effects.get(effect, 0) + 1

    # scripts_applied mixes the scaffolding label ("synthesized"), per-lib native
    # envelope labels ("synthesized:<lib>"), hand-authored .js filenames, and the
    # real driving technique ids. Separate them so the audit names the actual
    # signatures without the internal scaffolding leaking into the report.
    driving: list[str] = []
    handauthored: list[str] = []
    for label in evidence.get("scripts_applied") or []:
        if not isinstance(label, str):
            continue
        if label == "synthesized" or label.startswith("synthesized:"):
            continue
        if label.endswith(".js"):
            handauthored.append(label)
        else:
            driving.append(label)

    # A driving signature is "engaged" when its own readiness checkpoint was
    # delivered. No checkpoint = the hook was loaded but its readiness was not
    # observed this run (honest: attached is not exercised - a lower bound).
    loaded_not_engaged = sorted(s for s in set(driving) if s not in checkpoints)
    engaged_any = bool(checkpoints) or probe_hits_any > 0 or bool(ssl_effects)
    return {
        "hooks_audit_present": True,
        "hooks_engaged_any": engaged_any,
        "hooks_checkpoints_fired": sorted(checkpoints),
        "hooks_driving_signatures": sorted(set(driving)),
        "hooks_handauthored_scripts": sorted(set(handauthored)),
        "hooks_loaded_not_engaged": loaded_not_engaged,
        "hooks_root_probe_hits": root_probe_hits,
        "hooks_ssl_effects": dict(sorted(ssl_effects.items())),
    }


def _is_iso_date(s: str) -> bool:
    """True for a plausible zero-padded ISO calendar date YYYY-MM-DD (the NSC
    pin-set expiration format): correct shape AND month 01-12, day 01-31. Such
    dates compare lexicographically, so expiry needs no datetime parsing or clock -
    only a run date to compare against. Range-checking month/day stops a malformed
    value like "2018-13-40" from being mistaken for a real (expired) date - we
    never flag an expiry we cannot actually validate."""
    if not (
        len(s) == 10 and s[4] == "-" and s[7] == "-"
        and s[:4].isdigit() and s[5:7].isdigit() and s[8:10].isdigit()
    ):
        return False
    return 1 <= int(s[5:7]) <= 12 and 1 <= int(s[8:10]) <= 31


def _expired_pin_sets(manifest, timestamp: str) -> list[str]:
    """NSC <pin-set> expiration dates that precede the run date - certificate
    pinning Android no longer enforces (it falls back to normal CA validation).
    Compared against the RUN's own timestamp (deterministic, not a live clock);
    ISO dates compare lexicographically so no datetime import is needed. Malformed
    dates and a run timestamp that is not a clean ISO date are skipped, never
    flagged (conservative - we never invent an expiry we cannot compute)."""
    if manifest is None:
        return []
    run_date = (timestamp or "")[:10]
    if not _is_iso_date(run_date):
        return []
    return [
        exp for exp in (getattr(manifest, "pin_set_expirations", None) or [])
        if _is_iso_date(exp) and exp < run_date
    ]


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


CALIBRATION_TEMPLATE = _env.from_string("""\
# Calibration Report

**Generated:** {{ report.generated_at }}
**Analysis code:** {{ report.analysis_code_commit or "unknown" }}
**Ground-truth registry commit:** {{ report.ground_truth_commit }}

{% if report.skeleton_warning -%}
**{{ report.skeleton_warning }}**

{% endif -%}
## Tier 1 - Confirmation Rate (pipeline self-consistency, no ground truth needed)

Among runs where a category was predicted detected AND dynamic verification actually ran, what fraction got a genuine bypass confirmation? "Not confirmed" is never relabeled "false positive" - it's ambiguous between "wasn't really there" and "the bypass technique just failed" (see `src/calibration/outcomes.py`). Because a "not confirmed" lumps a genuinely-detected technique whose bypass merely failed together with a possible false positive, **this confirmation rate is a lower bound on precision, not precision itself** - the Tier 2 table below, built from independent ground truth rather than the bypass outcome, is the actual precision measurement (G18).

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
Excluded from Tier 2 (partial/unknown decompile OR under-covered governing surface - native/manifest/js - so a negative isn't proof of absence): root={{ report.excluded_partial_decompile.root }}, ssl={{ report.excluded_partial_decompile.ssl }}
{% for category, t2 in report.tier2.items() %}{# CALIB-TN0-LABEL: fire ONLY when precision genuinely reads 1.00 on a positive-only Tier-2 corpus (TP>0, FP=0, TN=0), so every clause below is true. A bare `TN==0` also fired when n=0 (precision renders N/A, not 1.00 - e.g. a category fully coverage-excluded, as ssl is in the paired test) and when FP>0 (a mis-detected negative control DOES exist and precision is <1.00), rendering a self-contradictory caveat under an N/A-or-<1.00 cell plus a false "no negative control" claim. #}{% if t2.true_negative == 0 and t2.false_positive == 0 and t2.true_positive > 0 %}
- **{{ category }} has TN=0: the 1.00 precision is a tautology, not a measurement.** Every ground-truthed {{ category }} case in Tier 2 is a positive, so the false-positive direction has never been tested - a false positive would be structurally invisible here. The 1.00 holds only because no negative control (e.g. a stock app) is included in this category's Tier-2 corpus. Do not read it as validated precision until a true negative is added and the loop re-measured (ADR-0006).
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
- Per-surface coverage (ADR-0008, F2/G-A): a category's NEITHER is excluded from Tier 2 when any of its governing surfaces (root->{java,native,js}, ssl->{java,native,manifest,js}) is partial/unscannable. A run with no coverage map (recorded before per-surface coverage existed) scanned only Java, so all other governing surfaces are unscannable and its negative is not certified as a confident TN - it is excluded from Tier 2 like any under-covered negative (types.py:46-48). This is deliberately stricter than the pre-ADR-0008 Java-only gate: a NEITHER from a surface that was never scanned must not read as a verified negative.
- "Zero false positives" is not a claim this system makes (ADR-0006) - these numbers are measured, improving, and only as reliable as the sample size shown above.
""")


def generate_calibration_report(report: CalibrationReport, output_dir: Path) -> Path:
    output_dir = Path(output_dir)
    output_dir.mkdir(parents=True, exist_ok=True)
    timestamp = datetime.now(timezone.utc).strftime("%Y%m%dT%H%M%SZ")
    report_path = output_dir / f"{timestamp}.md"
    # Second-granularity timestamps collide when two calibration reports are
    # generated within the same second (a fast test loop, or a re-run) - the
    # later render would silently overwrite the earlier file. Refuse to
    # overwrite: fall back to a suffixed name so both are preserved. The common
    # case (no collision) keeps the exact YYYYMMDDTHHMMSSZ.md name.
    counter = 1
    while report_path.exists():
        report_path = output_dir / f"{timestamp}-{counter}.md"
        counter += 1
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
