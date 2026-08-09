from common import Action, CategoryVerdict, ClassificationResult, Evidence, StageResult
from report.generator import generate_report


def _classification():
    root = CategoryVerdict(
        confidence=0.8, detected=True,
        evidence=[Evidence(signature_id="root_su_binary_paths", file="Main.java", line_or_offset=42, matched_text="/system/bin/su")],
    )
    ssl = CategoryVerdict(confidence=0.2, detected=False, evidence=[])
    return ClassificationResult(action=Action.ROOT_ONLY, root=root, ssl=ssl)


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
