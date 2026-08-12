from common import Action, CategoryVerdict, ClassificationResult, Evidence, StageResult
from report.generator import generate_report


def _classification():
    root = CategoryVerdict(
        confidence=0.8, detected=True,
        evidence=[Evidence(signature_id="root_su_binary_paths", file="Main.java", line_or_offset=42, matched_text="/system/bin/su")],
    )
    ssl = CategoryVerdict(confidence=0.2, detected=False, evidence=[])
    return ClassificationResult(action=Action.ROOT_ONLY, root=root, ssl=ssl)


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


def test_generate_report_falls_back_when_no_skip_reason_given(tmp_path):
    # dynamic_skip_reason defaults to None - shouldn't render "None" literally.
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
    assert "not run (reason unknown)" in content


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
    assert "does not generalize to unseen apps" in content


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
