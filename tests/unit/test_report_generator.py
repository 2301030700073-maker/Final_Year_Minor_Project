from common import (
    Action, CategoryVerdict, ClassificationResult, CorrelationResult, Evidence,
    StageResult, VerificationResult,
)
from report.generator import generate_report


def _classification():
    root = CategoryVerdict(
        confidence=0.8, detected=True,
        evidence=[Evidence(signature_id="root_su_binary_paths", file="Main.java", line_or_offset=42, matched_text="/system/bin/su")],
    )
    ssl = CategoryVerdict(confidence=0.2, detected=False, evidence=[])
    return ClassificationResult(action=Action.ROOT_ONLY, root=root, ssl=ssl)


def test_generate_report_names_unreadable_files_in_caution(tmp_path):
    # Finding J: the CAUTION must name the offending file(s), not just count
    # them - a reviewer must be able to tell which decompiled file failed to
    # read and reproduce the degradation. The count alone hid it.
    classification = _classification()
    classification.scanned_file_count = 2
    classification.unreadable_file_count = 1
    classification.unreadable_files = ["sources/com/example/Blocked.java"]

    report_path = generate_report(
        run_id="unreadable", apk_hash="unr001", timestamp="2026-08-12T12:00:00",
        metadata={"hashes": {"sha256": "unr001"}, "package": {"package_name": "com.example.app"}},
        classification=classification, verification=None, correlation=None,
        stage_results=[], output_dir=tmp_path,
    )

    content = report_path.read_text(encoding="utf-8")
    assert "could not be read (OSError)" in content
    assert "sources/com/example/Blocked.java" in content  # the file is named, not hidden


def test_generate_report_renders_below_threshold_as_inconclusive_retaining_evidence(tmp_path):
    # FR-3.2: a below-threshold verdict (detected=False) must render explicitly
    # as Inconclusive - never be silently dropped - and must retain its full
    # evidence trail in the report. This locks the renderer's else-branch, which
    # the dynamic success-check tests only cover indirectly.
    root = CategoryVerdict(
        confidence=0.4, detected=False,  # below the 0.7 default threshold
        evidence=[Evidence(signature_id="root_su_binary_paths", file="Main.java", line_or_offset=42, matched_text="/system/bin/su")],
    )
    ssl = CategoryVerdict(confidence=0.1, detected=False, evidence=[])
    classification = ClassificationResult(action=Action.NEITHER, root=root, ssl=ssl)

    report_path = generate_report(
        run_id="below-threshold",
        apk_hash="abc123",
        timestamp="2026-08-11T12:00:00",
        metadata={"hashes": {"sha256": "abc123"}, "package": {"package_name": "com.example.app"}},
        classification=classification,
        verification=None,
        dynamic_skip_reason="--skip-dynamic passed",
        correlation=None,
        stage_results=[],
        output_dir=tmp_path,
    )

    content = report_path.read_text(encoding="utf-8")
    # The below-threshold root verdict is rendered Inconclusive, not DETECTED.
    assert "Inconclusive" in content
    assert "0.40 -> Inconclusive" in content
    assert "DETECTED" not in content
    # ...and its evidence is retained, not dropped (FR-3.2: no silent loss).
    assert "root_su_binary_paths" in content
    assert "Main.java:42" in content
    assert "/system/bin/su" in content


def test_generate_report_states_evidence_truncation_honestly(tmp_path):
    # RESID-4F observability: when a signature matched more than the 50-row cap,
    # the report must say so ("matched 60x") instead of silently implying the 50
    # rows shown are the whole match set.
    root = CategoryVerdict(
        confidence=0.8, detected=True,
        evidence=[Evidence(signature_id="root_su_binary_paths", file="Main.java", line_or_offset=1, matched_text="/system/bin/su")],
    )
    ssl = CategoryVerdict(confidence=0.0, detected=False, evidence=[])
    classification = ClassificationResult(
        action=Action.ROOT_ONLY, root=root, ssl=ssl,
        evidence_capped_counts={"root_su_binary_paths": 60},
    )

    report_path = generate_report(
        run_id="capped", apk_hash="abc123", timestamp="2026-08-11T12:00:00",
        metadata={"hashes": {"sha256": "abc123"}, "package": {"package_name": "com.example.app"}},
        classification=classification, verification=None,
        dynamic_skip_reason="--skip-dynamic passed", correlation=None,
        stage_results=[], output_dir=tmp_path,
    )

    content = report_path.read_text(encoding="utf-8")
    assert "Evidence truncated" in content
    assert "50-row-per-signature display cap" in content
    assert "root_su_binary_paths` matched 60x" in content


def test_generate_report_writes_file_with_expected_content(tmp_path):
    metadata = {
        "hashes": {"sha256": "abc123"},
        "package": {"package_name": "owasp.mstg.uncrackable1", "version_name": "1.0", "version_code": "1", "min_sdk": "21", "target_sdk": "23"},
    }

    report_path = generate_report(
        run_id="run1",
        apk_hash="abc123",
        timestamp="2026-07-27T12:00:00",
        metadata=metadata,
        classification=_classification(),
        verification=None,
        dynamic_skip_reason="--skip-dynamic passed",
        correlation=None,
        stage_results=[],
        output_dir=tmp_path,
    )

    assert report_path.exists()
    assert report_path.name == "run1.md"
    assert report_path.parent.name == "abc123"  # nested by APK hash, mirrors outputs/analysis/{hash}/
    content = report_path.read_text(encoding="utf-8")
    assert "owasp.mstg.uncrackable1" in content
    assert "ROOT_ONLY" in content
    assert "DETECTED" in content
    assert "Inconclusive" in content  # ssl category, not detected
    assert "root_su_binary_paths" in content
    assert "not run (--skip-dynamic passed)" in content


def test_generate_report_renders_webview_bridge_block_when_present(tmp_path):
    # Gap A2: when the java scan surfaces WebView JS-bridge / remote-JS call
    # sites, the report must render them (the previously "unlabeled" gap). The
    # block only appears when webview_sites is non-empty.
    metadata = {
        "hashes": {"sha256": "wv123"},
        "package": {"package_name": "com.example.web", "version_name": "1.0", "version_code": "1"},
    }

    report_path = generate_report(
        run_id="run-wv",
        apk_hash="wv123",
        timestamp="2026-08-16T12:00:00",
        metadata=metadata,
        classification=_classification(),
        verification=None,
        correlation=None,
        stage_results=[],
        output_dir=tmp_path,
        webview_sites=[
            'MainActivity.java:42: web.addJavascriptInterface(bridge, "Android");',
            'MainActivity.java:51: web.loadUrl("https://cdn.example.com/check.js");',
        ],
    )

    content = report_path.read_text(encoding="utf-8")
    assert "WebView JS bridge (coverage-limited)" in content
    assert "addJavascriptInterface(bridge" in content
    assert "https://cdn.example.com/check.js" in content
    assert "confident negative" in content


def test_generate_report_omits_webview_bridge_block_when_absent(tmp_path):
    # No webview call sites -> no block (same absent-path discipline as the
    # dynamic-loading / js_evidence blocks).
    metadata = {
        "hashes": {"sha256": "wv000"},
        "package": {"package_name": "com.example.plain", "version_name": "1.0", "version_code": "1"},
    }

    report_path = generate_report(
        run_id="run-plain",
        apk_hash="wv000",
        timestamp="2026-08-16T12:00:00",
        metadata=metadata,
        classification=_classification(),
        verification=None,
        correlation=None,
        stage_results=[],
        output_dir=tmp_path,
    )

    content = report_path.read_text(encoding="utf-8")
    assert "WebView JS bridge" not in content


def test_generate_report_distinguishes_neither_auto_skip_from_operator_skip(tmp_path):
    # A negative-control run (NEITHER) auto-skips the dynamic stage for a
    # different reason than an operator passing --skip-dynamic - the report
    # must say so, not render the same generic string either way (this was
    # a real bug: both cases used to show "not run (--skip-dynamic)" even
    # when nobody passed that flag).
    root = CategoryVerdict(confidence=0.0, detected=False, evidence=[])
    ssl = CategoryVerdict(confidence=0.0, detected=False, evidence=[])
    classification = ClassificationResult(action=Action.NEITHER, root=root, ssl=ssl)

    report_path = generate_report(
        run_id="run2",
        apk_hash="def456",
        timestamp="2026-07-30T12:00:00",
        metadata={"hashes": {"sha256": "def456"}, "package": {"package_name": "com.android.contacts"}},
        classification=classification,
        verification=None,
        dynamic_skip_reason="NEITHER classification - no bypass technique to apply",
        correlation=None,
        stage_results=[],
        output_dir=tmp_path,
    )

    content = report_path.read_text(encoding="utf-8")
    assert "not run (NEITHER classification - no bypass technique to apply)" in content
    assert "not run (--skip-dynamic)" not in content


def test_generate_report_ran_but_unverified_when_no_skip_reason(tmp_path):
    # verification=None with no dynamic_skip_reason means the dynamic stage RAN
    # (synthesized bypass injected) but no success-check confirmed it - e.g. an
    # unknown target with no target-specific SuccessCheck. The report must say
    # "attempted, not verified", never "not run (reason unknown)" - the machinery
    # did run, and "not run" would be a false statement.
    report_path = generate_report(
        run_id="run3",
        apk_hash="ghi789",
        timestamp="2026-07-30T12:00:00",
        metadata={"hashes": {"sha256": "ghi789"}, "package": {"package_name": "unknown"}},
        classification=_classification(),
        verification=None,
        correlation=None,
        stage_results=[],
        output_dir=tmp_path,
    )

    content = report_path.read_text(encoding="utf-8")
    assert "attempted, bypass not verified (no target-specific success check)" in content
    assert "not run" not in content
    assert "reason unknown" not in content


def test_generate_report_correlation_not_attempted_does_not_claim_dynamic_skipped(tmp_path):
    # Regression: on an unknown target the dynamic stage RAN (technology
    # hooks-engaged tier, real root/ssl evidence) but correlation was not
    # attempted because there is no target-specific verification to compare
    # against. The report previously rendered the hardcoded "Not evaluated
    # (dynamic stage skipped)" - a false statement, the dynamic stage did not
    # skip. The explicit reason must render instead, and the false skip claim
    # must never appear.
    report_path = generate_report(
        run_id="run4",
        apk_hash="jkl012",
        timestamp="2026-07-30T12:00:00",
        metadata={"hashes": {"sha256": "jkl012"}, "package": {"package_name": "com.unknown"}},
        classification=_classification(),
        verification=None,
        correlation=None,
        correlation_skip_reason=(
            "dynamic used the technology-level hooks-engaged check (no "
            "target-specific success check for this app); correlation requires "
            "a target-specific verification"
        ),
        stage_results=[],
        output_dir=tmp_path,
    )
    content = report_path.read_text(encoding="utf-8")
    assert "dynamic used the technology-level hooks-engaged check" in content
    assert "Not evaluated (dynamic stage skipped)" not in content


def test_generate_report_correlation_not_evaluated_when_dynamic_stage_skipped(tmp_path):
    # The plain else branch of the correlation block: correlation is None AND no
    # explicit skip reason was passed, so the dynamic stage genuinely did not run.
    # It must render the honest "dynamic stage skipped" - previously only NEGATIVE
    # coverage existed (the skip-reason test asserted its absence), so a silent
    # break of this else branch would have passed the suite.
    report_path = generate_report(
        run_id="skipcorr", apk_hash="sc001", timestamp="2026-08-20T12:00:00",
        metadata={"hashes": {"sha256": "sc001"}, "package": {"package_name": "com.example.app"}},
        classification=_classification(), verification=None, correlation=None,
        correlation_skip_reason=None, stage_results=[], output_dir=tmp_path,
    )
    content = report_path.read_text(encoding="utf-8")
    assert "- Not evaluated (dynamic stage skipped)." in content


def test_generate_report_attributes_all_third_party_bundled_sdk(tmp_path):
    # Boundary-4/5 honesty: when every root-detection match lives in a bundled
    # third-party SDK (none in the app's own package), the report must say so -
    # "bundled SDK only" inline plus the Attribution block - so a reviewer does
    # not read SDK telemetry/fraud-detection root checks as the app's own
    # anti-tampering logic. This attribution branch had zero positive coverage.
    from dataclasses import replace

    cls = replace(
        _classification(),
        root_attribution={
            "app_package": "com.example.app",
            "app_owned": 0,
            "third_party": 2,
            "vendors": ["okhttp", "adjust"],
            "all_third_party": True,
            "mixed": False,
        },
    )
    report_path = generate_report(
        run_id="sdkattr", apk_hash="sda001", timestamp="2026-08-20T12:00:00",
        metadata={"hashes": {"sha256": "sda001"}, "package": {"package_name": "com.example.app"}},
        classification=cls, verification=None, correlation=None,
        stage_results=[], output_dir=tmp_path,
    )
    content = report_path.read_text(encoding="utf-8")
    # inline qualifier on the Confidence line
    assert "**bundled SDK only**" in content
    # the full Attribution block with the SDK-not-app-own nuance
    assert "all 2 root-detection matches are in bundled third-party libraries" in content
    assert "consistent with SDK telemetry/fraud-detection" in content
    assert "okhttp, adjust" in content


def test_generate_report_attributes_mixed_app_and_bundled_sdk(tmp_path):
    # Boundary-4/5 honesty, the `mixed` half: when root-detection matches split
    # across the app's own package AND bundled third-party libraries, the report
    # must say so explicitly (not fall through to the all-third-party or silent
    # states). This elif branch had zero positive coverage.
    from dataclasses import replace

    cls = replace(
        _classification(),
        root_attribution={
            "app_package": "com.example.app",
            "app_owned": 1,
            "third_party": 1,
            "vendors": ["okhttp"],
            "all_third_party": False,  # mixed and all-third-party are mutually exclusive
            "mixed": True,
        },
    )
    report_path = generate_report(
        run_id="mixattr", apk_hash="mxa001", timestamp="2026-08-20T12:00:00",
        metadata={"hashes": {"sha256": "mxa001"}, "package": {"package_name": "com.example.app"}},
        classification=cls, verification=None, correlation=None,
        stage_results=[], output_dir=tmp_path,
    )
    content = report_path.read_text(encoding="utf-8")
    assert "root-detection matches split across the app's own package (1) and bundled third-party libraries (1: okhttp)" in content
    # the all-third-party qualifier must NOT appear for a mixed split
    assert "**bundled SDK only**" not in content
    assert "consistent with SDK telemetry/fraud-detection" not in content


def test_generate_report_attributes_ssl_all_third_party_bundled_sdk(tmp_path):
    # Boundary-4/5 honesty, the SSL half: when every SSL-pinning match lives in a
    # bundled third-party library (none in the app's own package), the report
    # must say so - with the OkHttp-CertificatePinner nuance - so a reviewer does
    # not read bundled SDK pinning as the app's own cert-pinning logic. These SSL
    # attribution blocks (inline + full) had zero positive coverage.
    from dataclasses import replace

    ssl = CategoryVerdict(
        confidence=0.8, detected=True,
        evidence=[Evidence(signature_id="ssl_okhttp_certificate_pinner", file="OkHttp.java",
                           line_or_offset=7, matched_text="CertificatePinner")],
    )
    cls = replace(
        _classification(),
        action=Action.SSL_ONLY,
        ssl=ssl,
        ssl_attribution={
            "app_package": "com.example.app",
            "app_owned": 0,
            "third_party": 3,
            "vendors": ["okhttp"],
            "all_third_party": True,
            "mixed": False,
        },
    )
    report_path = generate_report(
        run_id="sslattr", apk_hash="ssa001", timestamp="2026-08-20T12:00:00",
        metadata={"hashes": {"sha256": "ssa001"}, "package": {"package_name": "com.example.app"}},
        classification=cls, verification=None, correlation=None,
        stage_results=[], output_dir=tmp_path,
    )
    content = report_path.read_text(encoding="utf-8")
    assert "**bundled SDK only**" in content
    assert "all 3 SSL-pinning matches are in bundled third-party libraries" in content
    assert "consistent with bundled SDK pinning (e.g. OkHttp's CertificatePinner)" in content


def test_generate_report_surfaces_evidence_cap_truncation(tmp_path):
    # RESID-4F honesty: when a signature matched more than the 50-row display cap,
    # the report must tell the reviewer the evidence is truncated and name each
    # overflowing signature with its total count - a silently-truncated evidence
    # list would read as "these are all the matches" when it is not. This
    # truncation block had zero positive coverage.
    from dataclasses import replace

    cls = replace(_classification(), evidence_capped_counts={"root_su_binary_paths": 55})
    report_path = generate_report(
        run_id="cap", apk_hash="cap001", timestamp="2026-08-20T12:00:00",
        metadata={"hashes": {"sha256": "cap001"}, "package": {"package_name": "com.example.app"}},
        classification=cls, verification=None, correlation=None,
        stage_results=[], output_dir=tmp_path,
    )
    content = report_path.read_text(encoding="utf-8")
    assert "Evidence truncated (RESID-4F cap)" in content
    assert "matched more than the 50-row-per-signature display cap" in content
    assert "`root_su_binary_paths` matched 55x" in content


def test_generate_report_annotates_obfuscation_level(tmp_path):
    # The obfuscation-level annotation on the per-surface bound: when present it
    # must render. This branch had zero positive coverage.
    report_path = generate_report(
        run_id="obf", apk_hash="obf001", timestamp="2026-08-20T12:00:00",
        metadata={"hashes": {"sha256": "obf001"}, "package": {"package_name": "com.example.app"}},
        classification=_classification(), verification=None, correlation=None,
        obfuscation_level="heavy", stage_results=[], output_dir=tmp_path,
    )
    content = report_path.read_text(encoding="utf-8")
    assert "Obfuscation: **heavy**" in content


def test_generate_report_lists_exported_components(tmp_path):
    # The exported-components listing: only components flagged exported render,
    # each with its type and name. This was the last zero-coverage branch in the
    # report template - non-exported components must be filtered out.
    from static.manifest import ManifestInfo

    manifest = ManifestInfo(
        debuggable=False,
        network_security_config=None,
        exported_components=[
            {"type": "activity", "name": "com.example.ExportedActivity", "exported": True},
            {"type": "service", "name": "com.example.PrivateService", "exported": False},
        ],
    )
    report_path = generate_report(
        run_id="exp", apk_hash="exp001", timestamp="2026-08-20T12:00:00",
        metadata={"hashes": {"sha256": "exp001"}, "package": {"package_name": "com.example.app"}},
        classification=_classification(), verification=None, correlation=None,
        manifest=manifest, stage_results=[], output_dir=tmp_path,
    )
    content = report_path.read_text(encoding="utf-8")
    assert "Exported components (1):" in content
    assert "`activity: com.example.ExportedActivity`" in content
    assert "PrivateService" not in content  # non-exported filtered out by selectattr


def test_generate_report_renders_bypass_verdict_false_and_inconclusive(tmp_path):
    # The dynamic bypass verdict line has four states per category. Of them,
    # False (a hard "dynamic ran the bypass and it did not work") and None
    # (inconclusive) had no positive rendering assertion - a False must render as
    # a real value, and an inconclusive must say "inconclusive (see evidence
    # below)" rather than render nothing or a bare True/False.
    report_path = generate_report(
        run_id="vfalse", apk_hash="vfa001", timestamp="2026-08-20T12:00:00",
        metadata={"hashes": {"sha256": "vfa001"}, "package": {"package_name": "com.example.app"}},
        classification=_classification(),
        verification=VerificationResult(root_bypassed=False, ssl_bypassed=None, evidence_lines={}),
        correlation=None, stage_results=[], output_dir=tmp_path,
    )
    content = report_path.read_text(encoding="utf-8")
    assert "- Root bypassed: False" in content
    assert "- SSL bypassed: inconclusive (see evidence below)" in content


def test_generate_report_js_partial_coverage_gets_its_own_callout(tmp_path):
    # Regression: the Scan Coverage section explains native=unscannable and heavy
    # obfuscation, but the js governing surface (Gap-7 Hermes/RN bundles) had no
    # callout - a reader saw `| js | partial |` with no consequence explained, on
    # the project's flagship RN target. A js partial must be called out just like
    # native so root/ssl coverage-limitation is self-explanatory.
    report_path = generate_report(
        run_id="js-partial", apk_hash="jsp001", timestamp="2026-08-20T12:00:00",
        metadata={"hashes": {"sha256": "jsp001"}, "package": {"package_name": "com.example.app"}},
        classification=_classification(), verification=None, correlation=None,
        coverage={"java": "fully_analyzed", "native": "fully_analyzed", "manifest": "fully_analyzed", "js": "partial"},
        stage_results=[], output_dir=tmp_path,
    )
    content = report_path.read_text(encoding="utf-8")
    assert "| js | partial |" in content
    assert "binary Hermes/bytecode bundle" in content


def test_generate_report_renders_dart_aot_snapshot_block_when_present(tmp_path):
    # A Flutter app's real detection logic lives in a Dart AOT snapshot (libapp.so)
    # that native tooling cannot analyze - the report must call it out and show the
    # snapshot lib(s), like the Hermes/WebView coverage-limited sections.
    report_path = generate_report(
        run_id="dart-aot", apk_hash="drt001", timestamp="2026-08-20T12:00:00",
        metadata={"hashes": {"sha256": "drt001"}, "package": {"package_name": "com.example.app"}},
        classification=_classification(), verification=None, correlation=None,
        coverage={"java": "fully_analyzed", "native": "partial", "manifest": "fully_analyzed", "js": "fully_analyzed"},
        stage_results=[], output_dir=tmp_path,
        dart_aot_libs=["libapp.so"],
    )
    content = report_path.read_text(encoding="utf-8")
    assert "Dart AOT snapshot (Flutter) (coverage-limited)" in content
    assert "| `libapp.so` |" in content
    assert "not ordinary native code" in content


def test_generate_report_omits_dart_aot_block_when_absent(tmp_path):
    report_path = generate_report(
        run_id="dart-none", apk_hash="drt002", timestamp="2026-08-20T12:00:00",
        metadata={"hashes": {"sha256": "drt002"}, "package": {"package_name": "com.example.app"}},
        classification=_classification(), verification=None, correlation=None,
        coverage={"java": "fully_analyzed", "native": "fully_analyzed", "manifest": "fully_analyzed", "js": "fully_analyzed"},
        stage_results=[], output_dir=tmp_path,
    )
    content = report_path.read_text(encoding="utf-8")
    assert "Dart AOT snapshot (Flutter)" not in content


def test_generate_report_js_fully_analyzed_no_callout(tmp_path):
    report_path = generate_report(
        run_id="js-full", apk_hash="jsf001", timestamp="2026-08-20T12:00:00",
        metadata={"hashes": {"sha256": "jsf001"}, "package": {"package_name": "com.example.app"}},
        classification=_classification(), verification=None, correlation=None,
        coverage={"java": "fully_analyzed", "native": "fully_analyzed", "manifest": "fully_analyzed", "js": "fully_analyzed"},
        stage_results=[], output_dir=tmp_path,
    )
    content = report_path.read_text(encoding="utf-8")
    assert "| js | fully_analyzed |" in content
    assert "binary Hermes/bytecode bundle" not in content


def test_generate_report_renders_unverified_not_mismatch(tmp_path):
    # RESID-6F completion: static predicted root-detection but the dynamic bypass
    # was inconclusive (never exercised the check). The report must render this
    # as the distinct UNVERIFIED third state - never as a MISMATCH implying
    # static and dynamic disagreed.
    verification = VerificationResult(root_bypassed=None, ssl_bypassed=None, evidence_lines={})
    correlation = CorrelationResult(
        matches=False,
        mismatches=[],
        unverified=[
            "static analysis predicted root-detection present, but dynamic "
            "verification could not test a bypass (not attempted or inconclusive)"
        ],
    )
    report_path = generate_report(
        run_id="unverified", apk_hash="uvw001", timestamp="2026-08-20T12:00:00",
        metadata={"hashes": {"sha256": "uvw001"}, "package": {"package_name": "com.example.app"}},
        classification=_classification(), verification=verification, correlation=correlation,
        stage_results=[], output_dir=tmp_path,
    )
    content = report_path.read_text(encoding="utf-8")
    assert "- UNVERIFIED: static analysis predicted root-detection" in content
    assert "- MISMATCH:" not in content
    # The verdict headline must name the state, never "- Matches: False" - that
    # would read as a static/dynamic disagreement that never happened.
    assert "- Verdict: UNVERIFIED (dynamic could not test" in content
    assert "- Matches:" not in content


def test_generate_report_renders_match_verdict(tmp_path):
    # The MATCH branch of the tri-state headline: static predicted and dynamic
    # confirmed - no mismatch, no unverified.
    correlation = CorrelationResult(matches=True, mismatches=[], unverified=[])
    report_path = generate_report(
        run_id="match", apk_hash="mtc001", timestamp="2026-08-20T12:00:00",
        metadata={"hashes": {"sha256": "mtc001"}, "package": {"package_name": "com.example.app"}},
        classification=_classification(), verification=None, correlation=correlation,
        stage_results=[], output_dir=tmp_path,
    )
    content = report_path.read_text(encoding="utf-8")
    assert "- Verdict: MATCH (static and dynamic agree)" in content


def test_generate_report_renders_mismatch_verdict(tmp_path):
    # The MISMATCH branch: static and dynamic genuinely disagreed - the headline
    # must say so, and must NOT fall through to the unverified/agree states.
    correlation = CorrelationResult(
        matches=False,
        mismatches=["static predicted root-detection, dynamic saw none"],
        unverified=[],
    )
    report_path = generate_report(
        run_id="mismatch", apk_hash="msm001", timestamp="2026-08-20T12:00:00",
        metadata={"hashes": {"sha256": "msm001"}, "package": {"package_name": "com.example.app"}},
        classification=_classification(), verification=None, correlation=correlation,
        stage_results=[], output_dir=tmp_path,
    )
    content = report_path.read_text(encoding="utf-8")
    assert "- Verdict: MISMATCH (static and dynamic disagreed)" in content
    assert "- Verdict: MATCH" not in content
    assert "- Verdict: UNVERIFIED" not in content
    # the per-item body loop renders each disagreement, not just the headline
    assert "- MISMATCH: static predicted root-detection, dynamic saw none" in content


def test_generate_report_mismatch_verdict_wins_over_unverified(tmp_path):
    # When a run carries BOTH a genuine disagreement and an inconclusive, the
    # headline must surface the MISMATCH - a static/dynamic disagreement is more
    # severe than an inconclusive and must not be hidden behind the UNVERIFIED
    # state. The template's `mismatches`-first ordering is load-bearing: reorder
    # it to check `unverified` first and a real disagreement reads as inconclusive.
    correlation = CorrelationResult(
        matches=False,
        mismatches=["static predicted root-detection, dynamic saw none"],
        unverified=["SSL-pinning could not be tested - inconclusive"],
    )
    report_path = generate_report(
        run_id="both", apk_hash="bth001", timestamp="2026-08-20T12:00:00",
        metadata={"hashes": {"sha256": "bth001"}, "package": {"package_name": "com.example.app"}},
        classification=_classification(), verification=None, correlation=correlation,
        stage_results=[], output_dir=tmp_path,
    )
    content = report_path.read_text(encoding="utf-8")
    assert "- Verdict: MISMATCH (static and dynamic disagreed)" in content
    assert "- Verdict: UNVERIFIED" not in content  # disagreement wins the headline
    # both per-item body loops render alongside the headline: the disagreement
    # line and the inconclusive line are both present, neither swallowed
    assert "- MISMATCH: static predicted root-detection, dynamic saw none" in content
    assert "- UNVERIFIED: SSL-pinning could not be tested - inconclusive" in content


def test_generate_report_limitations_section_present_and_specific(tmp_path):
    report_path = generate_report(
        run_id="run4", apk_hash="jkl012", timestamp="2026-07-30T12:00:00",
        metadata={"hashes": {"sha256": "jkl012"}, "package": {"package_name": "test.app"}},
        classification=_classification(), verification=None, correlation=None,
        stage_results=[], output_dir=tmp_path,
    )

    content = report_path.read_text(encoding="utf-8")
    assert "## Limitations" in content
    assert "signature-based" in content.lower()
    assert "PropertyGuru" in content
    # The deterministic synthesizer (L-M2) means dynamic bypass now attempts unseen
    # apps rather than skipping - the limitation prose must say engagement is not
    # confirmation, not that bypass doesn't generalize.
    assert "attempts unseen apps" in content
    assert "engagement is not confirmation" in content
    assert "hooks engaged" in content
    assert "does not generalize to unseen apps" not in content


def test_generate_report_limitations_not_stale_about_unknown_surfacing(tmp_path):
    # Regression: the Limitations paragraph used to claim un-matched techniques
    # are "silently absent from the confidence score - not flagged as unknown" -
    # stale, and directly contradicting the Decision line, which surfaces
    # coverage-limited indicators as "Coverage-limited (unknown, not absent)"
    # (Boundary-1). The prose must agree with what the report actually does.
    cls = _classification()
    cls = ClassificationResult(
        action=cls.action, root=cls.root, ssl=cls.ssl,
        unknown_uncovered=["root_detection_idiom"],
    )
    report_path = generate_report(
        run_id="run5", apk_hash="mno345", timestamp="2026-07-30T12:00:00",
        metadata={"hashes": {"sha256": "mno345"}, "package": {"package_name": "test.app"}},
        classification=cls, verification=None, correlation=None,
        stage_results=[], output_dir=tmp_path,
    )
    content = report_path.read_text(encoding="utf-8")
    # Decision line surfaces the coverage-limited indicator.
    assert "Coverage-limited (unknown, not absent)" in content
    assert "root_detection_idiom" in content
    # The reason clause must be honest for BOTH mechanisms that set it: a
    # coverage-limited marker can come from an unexamined surface OR from
    # detection-shaped code that matched no signature (Boundary-1, ADR-0006) -
    # never a bare "surface not fully analyzed", which would misdescribe the
    # fully-analyzed-but-suspicious-content case.
    assert "detection-shaped code matched no signature" in content
    # Limitations no longer claims it is silently dropped / not flagged.
    assert "silently absent from the confidence score" not in content
    assert "not flagged as" not in content
    # The honest structural residual is stated instead.
    assert "cannot be enumerated" in content


def test_generate_report_flags_partial_decompile_prominently(tmp_path):
    stage_results = [StageResult(
        stage="decompile", status="success",
        evidence={"decompile_completeness": "partial", "jadx_exit_code": 1, "jadx_file_count": 1563},
        duration_ms=500,
    )]

    report_path = generate_report(
        run_id="run5", apk_hash="mno345", timestamp="2026-07-30T12:00:00",
        metadata={"hashes": {"sha256": "mno345"}, "package": {"package_name": "com.propertyguru"}},
        classification=_classification(), verification=None, correlation=None,
        stage_results=stage_results, output_dir=tmp_path,
    )

    content = report_path.read_text(encoding="utf-8")
    assert "CAUTION" in content
    assert "PARTIAL" in content
    assert "1563" in content
    assert "lower bound" in content.lower()


def test_generate_report_surfaces_manifest_fields(tmp_path):
    from static.manifest import ManifestInfo
    manifest = ManifestInfo(debuggable=True, network_security_config="@xml/network_security_config")

    report_path = generate_report(
        run_id="manifest", apk_hash="mft001", timestamp="2026-07-30T12:00:00",
        metadata={
            "hashes": {"sha256": "mft001"},
            "package": {"package_name": "test.app"},
            "signer": {"v1_verified": True, "v2_verified": True, "v3_verified": False, "certificate_sha256": "aa"},
        },
        classification=_classification(), verification=None, correlation=None,
        stage_results=[], output_dir=tmp_path, manifest=manifest,
    )

    content = report_path.read_text(encoding="utf-8")
    assert "**Debuggable:** yes" in content
    assert "@xml/network_security_config" in content


def test_generate_report_lists_all_signers_and_toolchain(tmp_path):
    # LIM-3 + NEW-B: multiple signers must all be surfaced, and the toolchain
    # versions recorded at ingest must appear in the header.
    metadata = {
        "hashes": {"sha256": "multisig"},
        "package": {"package_name": "test.app"},
        "signer": {
            "v1_verified": True, "v2_verified": True, "v3_verified": False, "v4_verified": False,
            "certificate_dn": "CN=App", "certificate_sha256": "aa:bb",
            "signer_count": 2,
            "signers": [
                {"dn": "CN=App", "sha256": "aa:bb"},
                {"dn": "CN=Rotation Key", "sha256": "cc:dd"},
            ],
        },
        "tool_versions": {"aapt2": "2.0.1", "apksigner": "33.0.1", "jadx": "1.5.0", "apktool": "2.9.3"},
    }

    report_path = generate_report(
        run_id="multisig", apk_hash="multisig", timestamp="2026-08-09T12:00:00",
        metadata=metadata, classification=_classification(), verification=None, correlation=None,
        stage_results=[], output_dir=tmp_path,
    )

    content = report_path.read_text(encoding="utf-8")
    assert "2 total" in content
    assert "CN=Rotation Key" in content
    assert "cc:dd" in content
    assert "aapt2=2.0.1" in content
    assert "apktool=2.9.3" in content


def test_generate_report_single_signer_omits_multi_block(tmp_path):
    # A single signer must not render the "All signers" block.
    metadata = {
        "hashes": {"sha256": "single"},
        "package": {"package_name": "test.app"},
        "signer": {"v1_verified": True, "v2_verified": True, "v3_verified": False, "v4_verified": False,
                   "certificate_sha256": "aa", "signer_count": 1, "signers": [{"dn": "CN=App", "sha256": "aa"}]},
    }
    report_path = generate_report(
        run_id="single", apk_hash="single", timestamp="2026-08-09T12:00:00",
        metadata=metadata, classification=_classification(), verification=None, correlation=None,
        stage_results=[], output_dir=tmp_path,
    )
    content = report_path.read_text(encoding="utf-8")
    assert "All signers" not in content
    assert "cert SHA-256: aa" in content


def test_generate_report_complete_decompile_shows_no_caution_badge(tmp_path):
    stage_results = [StageResult(
        stage="decompile", status="success",
        evidence={"decompile_completeness": "complete", "jadx_exit_code": 0, "jadx_file_count": 42},
        duration_ms=500,
    )]

    report_path = generate_report(
        run_id="run6", apk_hash="pqr678", timestamp="2026-07-30T12:00:00",
        metadata={"hashes": {"sha256": "pqr678"}, "package": {"package_name": "test.app"}},
        classification=_classification(), verification=None, correlation=None,
        stage_results=stage_results, output_dir=tmp_path,
    )

    content = report_path.read_text(encoding="utf-8")
    assert "CAUTION" not in content
    assert "completed successfully (42 source files)" in content


def test_generate_report_labels_defaults_when_manifest_lacks_application(tmp_path):
    # RESID-5A/5D: for a manifest with no <application> element, debuggable/NSC
    # are defaults, not reads - the report must say so instead of rendering
    # "Debuggable: no" as if it were a read.
    from static.manifest import ManifestInfo

    report_path = generate_report(
        run_id="run7", apk_hash="def456", timestamp="2026-08-09T12:00:00",
        metadata={"hashes": {"sha256": "def456"}, "package": {"package_name": "test.app"}},
        classification=_classification(), verification=None, correlation=None,
        stage_results=[], output_dir=tmp_path,
        manifest=ManifestInfo(debuggable=False, network_security_config=None, application_present=False),
    )

    content = report_path.read_text(encoding="utf-8")
    assert "no &lt;application&gt; element" in content
    assert "defaults, not reads" in content


def test_generate_report_flags_missing_nsc_file(tmp_path):
    # RESID-5C: a declared NSC whose referenced file is absent from the decoded
    # resources must be flagged, not silently presented as a scanned config.
    from static.manifest import ManifestInfo

    report_path = generate_report(
        run_id="run8", apk_hash="abc789", timestamp="2026-08-09T12:00:00",
        metadata={"hashes": {"sha256": "abc789"}, "package": {"package_name": "test.app"}},
        classification=_classification(), verification=None, correlation=None,
        stage_results=[], output_dir=tmp_path,
        manifest=ManifestInfo(
            debuggable=False,
            network_security_config="@xml/network_security_config",
            application_present=True,
            nsc_file_present=False,
        ),
    )

    content = report_path.read_text(encoding="utf-8")
    assert "MISSING" in content
    assert "@xml/network_security_config" in content


def test_generate_report_renders_inconclusive_bypass_as_not_a_failure(tmp_path):
    # RESID-6F: a None bypass (hooks couldn't confirm) must render as
    # "inconclusive", not a bare Python "None" and not "False" - the report
    # must keep the honest three-way distinction (confirmed / failed /
    # inconclusive), never collapse inconclusive into a definitive failure.
    from common import VerificationResult

    report_path = generate_report(
        run_id="run9", apk_hash="ghi012", timestamp="2026-08-09T12:00:00",
        metadata={"hashes": {"sha256": "ghi012"}, "package": {"package_name": "test.app"}},
        classification=_classification(), verification=None, correlation=None,
        stage_results=[], output_dir=tmp_path,
    )
    # exercise both the inconclusive and the not-run renderings
    report_path = generate_report(
        run_id="run9", apk_hash="ghi012", timestamp="2026-08-09T12:00:00",
        metadata={"hashes": {"sha256": "ghi012"}, "package": {"package_name": "test.app"}},
        classification=_classification(),
        verification=VerificationResult(
            root_bypassed=None, ssl_bypassed=None,
            evidence_lines={"hooks_not_confirmed": "cannot confirm the bypass took effect"},
        ),
        correlation=None, stage_results=[], output_dir=tmp_path,
    )

    content = report_path.read_text(encoding="utf-8")
    assert "inconclusive (see evidence below)" in content
    assert "- Root bypassed: None" not in content


def test_generate_report_annotates_dynamic_success_with_unverified_bypass(tmp_path):
    # FR-4 (E): a dynamic stage that ran (status="success") but whose bypass is
    # not confirmed must not read as "bypass verified" in the Stage Results
    # table - annotate it truthfully, while a confirmed bypass stays plain
    # (reclassifying the stage to "skipped" would be false: the bypass WAS
    # attempted, just not confirmed).
    from common import VerificationResult
    metadata = {"hashes": {"sha256": "e1"}, "package": {"package_name": "test.app"}}
    dynamic = StageResult(
        stage="dynamic", status="success",
        evidence={"frida_messages": []}, duration_ms=500,
    )

    unverified = VerificationResult(root_bypassed=None, ssl_bypassed=None, evidence_lines={})
    report_path = generate_report(
        run_id="e-unverified", apk_hash="e1", timestamp="2026-08-12T12:00:00",
        metadata=metadata, classification=_classification(), verification=unverified,
        correlation=None, stage_results=[dynamic], output_dir=tmp_path,
    )
    content = report_path.read_text(encoding="utf-8")
    assert "success (machinery ran; bypass not confirmed)" in content

    confirmed = VerificationResult(root_bypassed=True, ssl_bypassed=None, evidence_lines={})
    report_path2 = generate_report(
        run_id="e-confirmed", apk_hash="e2", timestamp="2026-08-12T12:00:00",
        metadata={"hashes": {"sha256": "e2"}, "package": {"package_name": "test.app"}},
        classification=_classification(), verification=confirmed, correlation=None,
        stage_results=[dynamic], output_dir=tmp_path,
    )
    content2 = report_path2.read_text(encoding="utf-8")
    assert "success (machinery ran" not in content2


def test_generate_report_states_no_internet_as_capture_failure_cause(tmp_path):
    # Report-completeness gap: a failed capture is only ever explained by the
    # generic dual hypothesis, even when the cause is provable from the app's
    # own manifest. An app with no android.permission.INTERNET cannot open a
    # socket, so the empty capture is expected - the report must say so plainly
    # instead of implying the proxy may be at fault. When INTERNET IS declared,
    # keep the honest generic message (proxy state is then a live unknown).
    from static.manifest import ManifestInfo
    from common import StageResult

    no_internet = ManifestInfo(debuggable=False, network_security_config=None)  # permissions defaults to []
    failed = StageResult(
        stage="capture-traffic", status="failed",
        evidence={"reason": "no flows captured", "proxy": "127.0.0.1:8081"},
        duration_ms=0,
    )

    report_path = generate_report(
        run_id="cap-no-int", apk_hash="cap01", timestamp="2026-08-21T12:00:00",
        metadata={"hashes": {"sha256": "cap01"}, "package": {"package_name": "test.app"}},
        classification=_classification(), verification=None, correlation=None,
        stage_results=[failed], output_dir=tmp_path, manifest=no_internet,
    )
    content = report_path.read_text(encoding="utf-8")
    assert "declares **no `android.permission.INTERNET` permission**" in content
    assert "empty capture is expected regardless of proxy state" in content

    with_internet = ManifestInfo(
        debuggable=False, network_security_config=None,
        permissions=["android.permission.INTERNET"],
    )
    report_path2 = generate_report(
        run_id="cap-w-int", apk_hash="cap02", timestamp="2026-08-21T12:00:00",
        metadata={"hashes": {"sha256": "cap02"}, "package": {"package_name": "test.app"}},
        classification=_classification(), verification=None, correlation=None,
        stage_results=[failed], output_dir=tmp_path, manifest=with_internet,
    )
    content2 = report_path2.read_text(encoding="utf-8")
    assert "no `android.permission.INTERNET` permission" not in content2
    assert "no traffic was captured" in content2.lower() or "No traffic was captured" in content2


def test_generate_report_renders_git_commit(tmp_path):
    # RESID-7A: the report must show which version of the analysis code
    # produced it (reproducibility intent, ADR-0007) - like the toolchain
    # line, not just the audit log. Renders the commit when provided and
    # degrades to "unknown" when not (backward-compat with existing callers).
    metadata = {"hashes": {"sha256": "jkl345"}, "package": {"package_name": "test.app"}}
    report_path = generate_report(
        run_id="run10", apk_hash="jkl345", timestamp="2026-08-09T12:00:00",
        metadata=metadata, classification=_classification(), verification=None,
        correlation=None, stage_results=[], output_dir=tmp_path,
        git_commit="a1fcaf6b10209e1660155bb6f215eb3493eb52a2",
    )
    content = report_path.read_text(encoding="utf-8")
    assert "**Analysis code:** a1fcaf6b10209e1660155bb6f215eb3493eb52a2" in content

    report_path = generate_report(
        run_id="run10", apk_hash="jkl345", timestamp="2026-08-09T12:00:00",
        metadata=metadata, classification=_classification(), verification=None,
        correlation=None, stage_results=[], output_dir=tmp_path,
    )
    content = report_path.read_text(encoding="utf-8")
    assert "**Analysis code:** unknown" in content


def test_generate_report_states_authorization_and_operator(tmp_path):
    # FR-8/ADR-0005: authorization is a structural property of the analysis,
    # not just an audit-log entry - the human-facing report that gets shared
    # must state who ran the analysis and under what justification. The values
    # already exist in the caller (operator = _operator_identity(), justification),
    # they just never flowed to the report.
    from common import VerificationResult
    metadata = {"hashes": {"sha256": "auth1"}, "package": {"package_name": "test.app"}}
    report_path = generate_report(
        run_id="auth-run", apk_hash="auth1", timestamp="2026-08-12T12:00:00",
        metadata=metadata, classification=_classification(), verification=None,
        correlation=None, stage_results=[], output_dir=tmp_path,
        operator="operator@example.com", justification="OWN_APP",
    )
    content = report_path.read_text(encoding="utf-8")
    assert "**Authorized by:** operator@example.com (justification: OWN_APP)" in content

    # When absent (e.g. a stored-run regeneration that never persisted them),
    # the report omits the line rather than inventing one.
    report_path = generate_report(
        run_id="auth-run2", apk_hash="auth1", timestamp="2026-08-12T12:00:00",
        metadata=metadata, classification=_classification(), verification=None,
        correlation=None, stage_results=[], output_dir=tmp_path,
    )
    content = report_path.read_text(encoding="utf-8")
    assert "Authorized by:" not in content


def test_decompile_summary_all_branches():
    # _decompile_summary maps a decompile stage to the fields the Limitations
    # section reads. It had zero direct coverage - a regression in the
    # completeness fallback logic would silently mislabel a report's basis.
    from common import StageResult
    from report.generator import _decompile_summary

    # no decompile stage at all
    assert _decompile_summary([]) == {
        "decompile_completeness": "unknown", "jadx_exit_code": None, "jadx_file_count": None,
    }
    # completeness carried in the stage evidence
    s_ev = StageResult(stage="decompile", status="success",
                       evidence={"decompile_completeness": "partial", "jadx_exit_code": 0, "jadx_file_count": 3})
    assert _decompile_summary([s_ev])["decompile_completeness"] == "partial"
    assert _decompile_summary([s_ev])["jadx_exit_code"] == 0
    assert _decompile_summary([s_ev])["jadx_file_count"] == 3
    # no evidence completeness, but status success -> complete
    s_ok = StageResult(stage="decompile", status="success", evidence={"jadx_file_count": 1})
    assert _decompile_summary([s_ok])["decompile_completeness"] == "complete"
    # no evidence completeness and status not success -> unknown
    s_fail = StageResult(stage="decompile", status="failed", evidence={})
    out = _decompile_summary([s_fail])
    assert out["decompile_completeness"] == "unknown"
    assert out["jadx_exit_code"] is None
    assert out["jadx_file_count"] is None


def test_attrdict_attribute_access():
    # _AttrDict / _as_attrdict let Jinja read metadata as attributes
    # (metadata.package.package_name). Nested dicts become nested attrdicts,
    # non-dict values pass through, and a missing key is None - not an
    # AttributeError. Had zero direct coverage.
    from report.generator import _as_attrdict
    md = _as_attrdict({"package": {"package_name": "com.example.app"}, "ok": 1})
    assert md.package.package_name == "com.example.app"
    assert md.ok == 1
    assert md.missing is None
    assert _as_attrdict(5) == 5  # non-dict passthrough


def test_root_attribution_prefers_classification_field():
    # _category_attribution(side): the pipeline-attached field is the single source of
    # truth (so report and classification_json agree); the metadata-package
    # fallback exists only for direct generate_report() callers. The prefer
    # branch had no direct coverage - the attached value must win over any
    # recomputation.
    from dataclasses import replace
    from common import CategoryVerdict, ClassificationResult, Action
    from report.generator import _category_attribution
    cls = ClassificationResult(
        action=Action.ROOT_ONLY,
        root=CategoryVerdict(confidence=0.8, detected=True, evidence=[]),
        ssl=CategoryVerdict(confidence=0.0, detected=False, evidence=[]),
    )
    cls = replace(cls, root_attribution={"label": "app_owned", "counts": {"root_su_binary_paths": 1}})
    got = _category_attribution({"package": {"package_name": "com.example.app"}}, cls, "root")
    assert got == {"label": "app_owned", "counts": {"root_su_binary_paths": 1}}


def test_ssl_attribution_prefers_classification_field():
    # Mirror for SSL: the attached ssl_attribution field wins over recomputation.
    from dataclasses import replace
    from common import CategoryVerdict, ClassificationResult, Action
    from report.generator import _category_attribution
    cls = ClassificationResult(
        action=Action.SSL_ONLY,
        root=CategoryVerdict(confidence=0.0, detected=False, evidence=[]),
        ssl=CategoryVerdict(confidence=0.8, detected=True, evidence=[]),
    )
    cls = replace(cls, ssl_attribution={"label": "bundled_sdk"})
    assert _category_attribution({"package": {"package_name": "com.example.app"}}, cls, "ssl") == {"label": "bundled_sdk"}


def test_root_attribution_fallback_computes_when_field_unset():
    # _root_attribution fallback: when the classification carries no attached
    # root_attribution (a direct generate_report() caller), it computes from the
    # evidence + metadata package. Empty evidence -> None (nothing to attribute);
    # app-owned evidence -> the app_package-labeled dict. The fallback branch had
    # zero direct coverage (only the prefer branch was tested).
    from types import SimpleNamespace
    from common import CategoryVerdict, ClassificationResult, Action
    from report.generator import _category_attribution

    empty = ClassificationResult(
        action=Action.ROOT_ONLY,
        root=CategoryVerdict(confidence=0.8, detected=True, evidence=[]),
        ssl=CategoryVerdict(confidence=0.0, detected=False, evidence=[]),
    )
    assert _category_attribution({"package": {"package_name": "com.example.app"}}, empty, "root") is None

    owned = ClassificationResult(
        action=Action.ROOT_ONLY,
        root=CategoryVerdict(confidence=0.8, detected=True, evidence=[
            SimpleNamespace(file="sources/com/example/app/MainActivity.java"),
        ]),
        ssl=CategoryVerdict(confidence=0.0, detected=False, evidence=[]),
    )
    got = _category_attribution({"package": {"package_name": "com.example.app"}}, owned, "root")
    assert got is not None
    assert got["app_package"] == "com.example.app"


def test_generate_report_renders_unaccounted_and_dynamic_loads_sections(tmp_path):
    # Two coverage-limited branches: unaccounted native loads (an explicit
    # System.load/loadLibrary whose .so was NOT analyzed -> native partial) and
    # dynamic code loading (DexClassLoader/forName -> java partial). Both render
    # a section header AND a per-item body loop - a silent break of either `{% if %}`
    # gate or its `{% for %}` body would pass uncaught. Had zero direct coverage.
    classification = _classification()
    report_path = generate_report(
        run_id="loads", apk_hash="load001", timestamp="2026-08-12T12:00:00",
        metadata={"hashes": {"sha256": "load001"}, "package": {"package_name": "com.example.app"}},
        classification=classification, verification=None, correlation=None,
        stage_results=[], output_dir=tmp_path,
        unaccounted_loads=["/data/local/tmp/secret.so"],
        dynamic_loads=["sources/com/example/app/MainActivity.java"],
    )
    content = report_path.read_text(encoding="utf-8")
    # unaccounted native load section header + per-item body line + partial note
    assert "Unaccounted native loads (boundary #4)" in content
    assert "| `/data/local/tmp/secret.so` |" in content
    assert "native coverage is forced to `partial`" in content
    # dynamic code loading section header + per-item body line + partial note
    assert "Dynamic code loading (coverage-limited)" in content
    assert "| `sources/com/example/app/MainActivity.java` |" in content
    assert "Java coverage is forced to `partial`" in content


def test_generate_report_omits_load_sections_when_empty(tmp_path):
    # The negative gates: neither section renders when the lists are absent
    # (default None). A section that leaked unconditionally would break here.
    classification = _classification()
    report_path = generate_report(
        run_id="noloads", apk_hash="load002", timestamp="2026-08-12T12:00:00",
        metadata={"hashes": {"sha256": "load002"}, "package": {"package_name": "com.example.app"}},
        classification=classification, verification=None, correlation=None,
        stage_results=[], output_dir=tmp_path,
    )
    content = report_path.read_text(encoding="utf-8")
    assert "Unaccounted native loads" not in content
    assert "Dynamic code loading" not in content


def test_generate_report_renders_jni_binding_map_section(tmp_path):
    # The JNI native-method binding map (boundary #3, static half): a `{% if %}`
    # gate + per-item body row over (class, method, status). The unresolved note
    # in the section prose is what forces native partial for an unexamined
    # surface. Had zero positive render coverage.
    from types import SimpleNamespace
    classification = _classification()
    report_path = generate_report(
        run_id="jni", apk_hash="jni001", timestamp="2026-08-12T12:00:00",
        metadata={"hashes": {"sha256": "jni001"}, "package": {"package_name": "com.example.app"}},
        classification=classification, verification=None, correlation=None,
        stage_results=[], output_dir=tmp_path,
        jni_bindings=[
            SimpleNamespace(class_name="com.x.Crypto", method_name="encrypt", status="resolved"),
            SimpleNamespace(class_name="com.x.Native", method_name="unbound", status="unresolved"),
        ],
    )
    content = report_path.read_text(encoding="utf-8")
    assert "JNI native-method binding map" in content
    assert "| `com.x.Crypto` | `encrypt` | resolved |" in content
    assert "| `com.x.Native` | `unbound` | unresolved |" in content
    assert "unresolved, native coverage is forced to `partial`" in content


def test_generate_report_omits_jni_section_when_empty(tmp_path):
    classification = _classification()
    report_path = generate_report(
        run_id="nojni", apk_hash="jni002", timestamp="2026-08-12T12:00:00",
        metadata={"hashes": {"sha256": "jni002"}, "package": {"package_name": "com.example.app"}},
        classification=classification, verification=None, correlation=None,
        stage_results=[], output_dir=tmp_path,
    )
    content = report_path.read_text(encoding="utf-8")
    assert "JNI native-method binding map" not in content


def test_generate_report_renders_permissions_section(tmp_path):
    # TEMPLATE line 50: `{% if manifest.permissions %}` renders the app's
    # permissions (and their count). A silent break of this branch would drop
    # the whole Permissions line. The positive render must be asserted (it had
    # zero coverage - only the empty-manifest case could have passed unnoticed).
    from static.manifest import ManifestInfo
    manifest = ManifestInfo(
        debuggable=False, network_security_config=None,
        permissions=["android.permission.INTERNET", "android.permission.CAMERA"],
    )

    report_path = generate_report(
        run_id="perms", apk_hash="prm001", timestamp="2026-08-20T12:00:00",
        metadata={
            "hashes": {"sha256": "prm001"},
            "package": {"package_name": "test.app"},
            "signer": {"v1_verified": True, "v2_verified": True, "v3_verified": False},
        },
        classification=_classification(), verification=None, correlation=None,
        stage_results=[], output_dir=tmp_path, manifest=manifest,
    )

    content = report_path.read_text(encoding="utf-8")
    assert "**Permissions (2):**" in content
    assert "android.permission.INTERNET" in content
    assert "android.permission.CAMERA" in content


def test_generate_report_renders_permissions_none_when_empty(tmp_path):
    # A permission-less app must render an explicit "Permissions: none" - the
    # reader must be able to distinguish "extraction returned empty" from
    # "extraction skipped". It must NOT render a vacuous "Permissions (0):" count.
    from static.manifest import ManifestInfo
    manifest = ManifestInfo(debuggable=False, network_security_config=None)  # permissions defaults to []

    report_path = generate_report(
        run_id="noperms", apk_hash="prm002", timestamp="2026-08-20T12:00:00",
        metadata={
            "hashes": {"sha256": "prm002"},
            "package": {"package_name": "test.app"},
            "signer": {"v1_verified": True, "v2_verified": True, "v3_verified": False},
        },
        classification=_classification(), verification=None, correlation=None,
        stage_results=[], output_dir=tmp_path, manifest=manifest,
    )

    content = report_path.read_text(encoding="utf-8")
    assert "**Permissions:** none" in content
    assert "**Permissions (0):**" not in content
