from common import (
    Action, CategoryVerdict, ClassificationResult, CorrelationResult, Evidence,
    StageResult, VerificationResult,
)
from report.generator import _forced_dynamic, generate_report


def _classification():
    root = CategoryVerdict(
        confidence=0.8, detected=True,
        evidence=[Evidence(signature_id="root_su_binary_paths", file="Main.java", line_or_offset=42, matched_text="/system/bin/su")],
    )
    ssl = CategoryVerdict(confidence=0.2, detected=False, evidence=[])
    return ClassificationResult(action=Action.ROOT_ONLY, root=root, ssl=ssl)


def test_forced_dynamic_helper_detects_operator_forced_dynamic_stage():
    # _forced_dynamic reads the dynamic stage's OWN evidence (where cli.py stamps the
    # override), so the provenance survives the DB store -> regenerate seam without a
    # schema change. It must fire only for a dynamic stage actually carrying the stamp.
    forced = StageResult(stage="dynamic", status="success",
                         evidence={"forced_dynamic": True, "static_action": "NEITHER"})
    assert _forced_dynamic([forced]) is True
    # a normal dynamic run (no stamp) is not forced; a non-dynamic stage carrying a
    # stray key must never be read as a forced dynamic run; empty list is not forced.
    assert _forced_dynamic([StageResult(stage="dynamic", status="success", evidence={})]) is False
    assert _forced_dynamic([StageResult(stage="static", status="success", evidence={"forced_dynamic": True})]) is False
    assert _forced_dynamic([]) is False


def test_generate_report_operator_forced_banner_keeps_static_verdict_neither(tmp_path):
    # --force-dynamic end to end in the report: an operator forced the dynamic stage
    # over a coverage-limited NEITHER (PropertyGuru's Hermes-bundled root checks). The
    # report must (1) show the operator-forced banner, (2) keep naming the static
    # verdict NEITHER and say it is unchanged (never promoted by the forced run),
    # (3) use the coverage-limited wording because classification.unknown_uncovered is
    # set, and (4) still land the confirmed bypass in the COVERAGE-CONFIRMED tier - a
    # filled coverage gap, not a static promotion (ADR-0006 tier fidelity).
    classification = ClassificationResult(
        action=Action.NEITHER,
        root=CategoryVerdict(confidence=0.2, detected=False, evidence=[]),
        ssl=CategoryVerdict(confidence=0.1, detected=False, evidence=[]),
        unknown_uncovered=["root"],
    )
    forced_stage = StageResult(
        stage="dynamic", status="success",
        evidence={"forced_dynamic": True, "effective_dynamic_action": "BOTH", "static_action": "NEITHER"},
    )
    verification = VerificationResult(
        root_bypassed=True, ssl_bypassed=None,
        evidence_lines={"root": "root probe hit: File.exists(/system/bin/su) -> false"},
    )
    correlation = CorrelationResult(
        matches=False, mismatches=[], unverified=[],
        coverage_confirmed=["dynamic confirmed a root-detection bypass in a coverage-limited category"],
    )
    report_path = generate_report(
        run_id="forced1", apk_hash="pg0001", timestamp="2026-09-14T12:00:00",
        metadata={"hashes": {"sha256": "pg0001"}, "package": {"package_name": "com.allproperty.android.consumer.my"}},
        classification=classification, verification=verification, correlation=correlation,
        stage_results=[forced_stage], output_dir=tmp_path,
    )
    content = report_path.read_text(encoding="utf-8")
    assert "Operator-forced dynamic stage" in content
    assert "The static verdict is **NEITHER** and is **unchanged**" in content
    assert "**coverage-limited** — a lower bound over surfaces" in content
    assert "gated on **real observed behaviour**" in content
    assert "- Verdict: COVERAGE-CONFIRMED" in content


def test_the_forced_banner_states_the_verdict_the_run_recorded(tmp_path):
    # The banner's sentence is a fact about THIS RUN - the verdict the operator forced
    # the dynamic stage over - so it renders from the run's own record wherever one
    # exists, never from the classification object a regenerated report has just
    # reconstructed. A field lost in that reconstruction would otherwise restate a
    # verdict nobody measured, and restate it silently: Jinja renders a missing
    # attribute as a blank. No divergence between the two has been observed; this pins
    # the precedence the recorded value was written for, so a future regen gap degrades
    # to the older reading (the live object) instead of to a wrong one.
    classification = _classification()  # the live object says ROOT_ONLY
    forced_stage = StageResult(
        stage="dynamic", status="success",
        evidence={"forced_dynamic": True, "effective_dynamic_action": "BOTH",
                  "static_action": "NEITHER"},
    )
    report_path = generate_report(
        run_id="forced-rec", apk_hash="fr0001", timestamp="2026-09-19T12:00:00",
        metadata={"hashes": {"sha256": "fr0001"}, "package": {"package_name": "com.example.app"}},
        classification=classification, verification=None, correlation=None,
        stage_results=[forced_stage], output_dir=tmp_path,
    )
    content = report_path.read_text(encoding="utf-8")
    assert "The static verdict is **NEITHER** and is **unchanged**" in content
    assert "The static verdict is **ROOT_ONLY**" not in content


def test_a_forced_banner_from_a_run_recorded_before_the_field_keeps_its_verdict(tmp_path):
    # `static_action` was added to the forced record after the first forced runs were
    # already stored, and those rows are still read by the regeneration path. Without
    # the fallback the banner would print its verdict as a blank - the one outcome
    # worse than the older source it read before.
    classification = _classification()  # the live verdict, as before the field existed
    forced_stage = StageResult(
        stage="dynamic", status="success",
        evidence={"forced_dynamic": True, "effective_dynamic_action": "BOTH"},
    )
    report_path = generate_report(
        run_id="forced-old", apk_hash="fo0001", timestamp="2026-09-19T12:00:00",
        metadata={"hashes": {"sha256": "fo0001"}, "package": {"package_name": "com.example.app"}},
        classification=classification, verification=None, correlation=None,
        stage_results=[forced_stage], output_dir=tmp_path,
    )
    content = report_path.read_text(encoding="utf-8")
    assert "The static verdict is **ROOT_ONLY** and is **unchanged**" in content


def test_an_unrequested_device_uninstall_reaches_the_report(tmp_path):
    # cli.py attaches install_result to the dynamic stage's evidence precisely so a
    # device state change the operator did not ask for reaches a written report, and
    # until now nothing rendered it: the fact lived in the database and the
    # scrollback only, so the artifact a reviewer reads was silent about a
    # destructive change this run made to their device.
    report_path = generate_report(
        run_id="rec1", apk_hash="rec001", timestamp="2026-09-19T12:00:00",
        metadata={"hashes": {"sha256": "rec001"}, "package": {"package_name": "com.example.app"}},
        classification=_classification(), verification=None, correlation=None,
        stage_results=[StageResult(
            stage="dynamic", status="success",
            evidence={"install_recovery": {
                "recovered_from_signature_conflict": True,
                "uninstalled_package": "com.example.app",
                "first_refusal": "Failure [INSTALL_FAILED_UPDATE_INCOMPATIBLE]",
            }},
        )],
        output_dir=tmp_path,
    )
    content = report_path.read_text(encoding="utf-8")
    assert "Device state changed by this run" in content
    # The sentence names the package AND quotes adb's own refusal - the measurement
    # the claim rests on, not a bare assertion that something was removed.
    assert "com.example.app" in content
    assert "INSTALL_FAILED_UPDATE_INCOMPATIBLE" in content


def test_a_clean_install_renders_no_device_change_notice(tmp_path):
    # Negative control. device.py returns {"recovered_from_signature_conflict":
    # False} on the ordinary path, and a notice asserting an unrequested removal on
    # every clean run would be boilerplate that cries wolf.
    report_path = generate_report(
        run_id="rec2", apk_hash="rec002", timestamp="2026-09-19T12:00:00",
        metadata={"hashes": {"sha256": "rec002"}, "package": {"package_name": "com.example.app"}},
        classification=_classification(), verification=None, correlation=None,
        stage_results=[StageResult(
            stage="dynamic", status="success",
            evidence={"install_recovery": {"recovered_from_signature_conflict": False}},
        )],
        output_dir=tmp_path,
    )
    content = report_path.read_text(encoding="utf-8")
    assert "Device state changed by this run" not in content


def test_generate_report_no_forced_banner_on_normal_run(tmp_path):
    # Negative control: without the operator-forced stamp the banner must NOT appear -
    # it is provenance for an override, never boilerplate printed on every run.
    report_path = generate_report(
        run_id="normal1", apk_hash="nrm001", timestamp="2026-09-14T12:00:00",
        metadata={"hashes": {"sha256": "nrm001"}, "package": {"package_name": "com.example.app"}},
        classification=_classification(), verification=None, correlation=None,
        stage_results=[StageResult(stage="dynamic", status="success", evidence={})],
        output_dir=tmp_path,
    )
    content = report_path.read_text(encoding="utf-8")
    assert "Operator-forced dynamic stage" not in content


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


def test_generate_report_escapes_pipes_in_apk_derived_table_cells(tmp_path):
    # Markdown table-column-injection guard (report.generator._md), extended to
    # EVERY table whose cells carry adversarial APK-derived strings - not just the
    # js-evidence matched_text and captured-flows cells that test_report_md_escape
    # already pins. A crafted APK can put a `|` in a JNI class/method name, a
    # System.load target, a DexClassLoader call site, a WebView URL (a query
    # string is the most plausible carrier), or a Dart AOT .so name; rendered raw
    # into a `|`-delimited row it injects a phantom column and corrupts the table.
    # Each of these five cells must pass through `| md`, which escapes the pipe as
    # `\|` so the row structure survives. Regression: these five rendered their
    # cells raw while the sibling js/flows tables were escaped (generator.py rows
    # at lines 202/218/234/253/290). The `_md` function is unit-tested elsewhere;
    # this pins that the filter is actually WIRED into each of these cells.
    metadata = {
        "hashes": {"sha256": "pipe1"},
        "package": {"package_name": "com.example.pipe", "version_name": "1.0", "version_code": "1"},
    }

    report_path = generate_report(
        run_id="run-pipe",
        apk_hash="pipe1",
        timestamp="2026-08-16T12:00:00",
        metadata=metadata,
        classification=_classification(),
        verification=None,
        correlation=None,
        stage_results=[],
        output_dir=tmp_path,
        jni_bindings=[{"class_name": "com.x.A|B", "method_name": "chk|Root", "status": "unresolved"}],
        unaccounted_loads=['System.load("/data/local/tmp/a|b.so")'],
        dynamic_loads=['DexClassLoader("/sdcard/p|q.dex")'],
        webview_sites=['MainActivity.java:9: web.loadUrl("https://cdn.example.com/c.js?a=1|b=2");'],
        dart_aot_libs=["lib|app.so"],
    )

    content = report_path.read_text(encoding="utf-8")
    # Every APK-derived cell escapes its pipe (\|), so none injects a live column.
    assert "com.x.A\\|B" in content and "chk\\|Root" in content   # jni_bindings row
    assert "/data/local/tmp/a\\|b.so" in content                   # unaccounted_loads row
    assert "/sdcard/p\\|q.dex" in content                          # dynamic_loads row
    assert "c.js?a=1\\|b=2" in content                             # webview_sites row
    assert "lib\\|app.so" in content                               # dart_aot_libs row
    # And the raw, unescaped pipe form of the JNI class name never survives (it
    # has no prose duplicate, unlike dart_aot_libs which is also join()ed into a
    # sentence): if `| md` were dropped the bare `A|B` would be a live delimiter.
    assert "com.x.A|B" not in content
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
    # verification=None with no dynamic_skip_reason: the dynamic stage was NOT skipped
    # yet produced no verification to report. Reachable via a known target whose success
    # check was inconclusive/raised, a logcat-capture failure, or a FAILED dynamic stage
    # (setup/install/frida). The report must NOT say "not run" (the stage was not
    # skipped) and must NOT assert a specific cause it cannot verify: the old text
    # hardcoded "(no target-specific success check)", false on every reaching path - the
    # one case where that cause IS true (an unknown target with no SuccessCheck) sets
    # verification to the tech-check result (non-None) and never reaches this branch.
    # A cause-neutral pointer to the Stage Results table (real status/error) renders.
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
    assert "bypass not verified (see stage status and evidence below)" in content
    # the old hardcoded cause was false on every reaching path - it must be gone
    assert "no target-specific success check" not in content
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


def test_generate_report_suppresses_mixed_attribution_when_not_detected(tmp_path):
    # ADR-0010 parity for the `mixed` branch: attribution notes annotate a
    # DETECTED verdict. `gate_all_third_party` nulls all_third_party for a
    # non-detected category ("a non-detected run must never carry it or a
    # consumer would infer a detection that doesn't exist"), and the macro's
    # all_third_party branch is gated on detected - but the sibling `mixed`
    # branch was NOT, so a non-detected category whose below-threshold matches
    # split app/third-party rendered "root-detection matches split across the
    # app's own package ... and bundled third-party libraries" directly beneath
    # an "Inconclusive" verdict: an attribution claim under a verdict that
    # asserts no detection. classification.root_attribution is populated for a
    # non-detected category (cli sets it from root.evidence, which includes
    # below-threshold matches), so mixed=True is reachable here. Gate BOTH
    # directions: fires when detected (covered by the sibling test above),
    # suppressed when the category is not detected.
    root = CategoryVerdict(
        confidence=0.2, detected=False,
        evidence=[Evidence(signature_id="root_su_binary_paths", file="Main.java",
                           line_or_offset=42, matched_text="/system/bin/su")],
    )
    ssl = CategoryVerdict(confidence=0.1, detected=False, evidence=[])
    cls = ClassificationResult(
        action=Action.NEITHER, root=root, ssl=ssl,
        root_attribution={
            "app_package": "com.example.app", "app_owned": 1, "third_party": 1,
            "vendors": ["okhttp"], "all_third_party": False, "mixed": True,
        },
    )
    report_path = generate_report(
        run_id="mixnd", apk_hash="mnd001", timestamp="2026-08-20T12:00:00",
        metadata={"hashes": {"sha256": "mnd001"}, "package": {"package_name": "com.example.app"}},
        classification=cls, verification=None, correlation=None,
        stage_results=[], output_dir=tmp_path,
    )
    content = report_path.read_text(encoding="utf-8")
    # the verdict is non-detected...
    assert "-> Inconclusive" in content
    # ...so the mixed-attribution disclosure must NOT render under it
    assert "matches split across the app's own package" not in content


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


def test_heavy_obfuscation_caveat_gated_on_actual_java_state_not_just_obfuscation(tmp_path):
    # COV-HEAVY-JAVA1 (caveat-gate-matches-its-text): the "Heavy obfuscation: the
    # Java surface is `partial`" caveat asserts a fact about coverage["java"], but
    # was gated on `obfuscation_level == "heavy"` alone. Under heavy obfuscation
    # java_coverage() returns `partial` from a complete/partial decompile yet
    # `unscannable` from an unknown-completeness (cached/regenerated) run - so the
    # bare gate printed "the Java surface is `partial`" directly beneath a coverage
    # table row showing java=unscannable, a false specific fact. Pin BOTH directions:
    # fires when java IS partial (its assertion true), suppressed - and NOT
    # contradicting the table - when heavy but java is unscannable.
    common = dict(
        classification=_classification(), verification=None, correlation=None,
        obfuscation_level="heavy", stage_results=[], output_dir=tmp_path,
    )
    # (a) heavy AND java partial -> caveat fires (assertion is true)
    fires = generate_report(
        run_id="hvy-p", apk_hash="hvy001", timestamp="2026-08-20T12:00:00",
        metadata={"hashes": {"sha256": "hvy001"}, "package": {"package_name": "com.example.app"}},
        coverage={"java": "partial", "native": "fully_analyzed", "manifest": "fully_analyzed", "js": "fully_analyzed"},
        **common,
    ).read_text(encoding="utf-8")
    assert "**Heavy obfuscation:**" in fires
    assert "the Java surface is `partial`" in fires

    # (b) heavy BUT java unscannable -> caveat suppressed; the table states the real
    # bound and the caveat must not assert the contradictory "partial"
    suppressed = generate_report(
        run_id="hvy-u", apk_hash="hvy002", timestamp="2026-08-20T12:00:00",
        metadata={"hashes": {"sha256": "hvy002"}, "package": {"package_name": "com.example.app"}},
        coverage={"java": "unscannable", "native": "fully_analyzed", "manifest": "fully_analyzed", "js": "fully_analyzed"},
        **common,
    ).read_text(encoding="utf-8")
    assert "| java | unscannable |" in suppressed          # table states the real bound
    assert "**Heavy obfuscation:**" not in suppressed       # caveat does NOT assert "partial"
    assert "the Java surface is `partial`" not in suppressed


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


def test_generate_report_names_dex_attribution_degradation_as_the_cause(tmp_path):
    # The coverage table alone shows java=partial, which is indistinguishable from
    # heavy obfuscation or a packer. When the DEX scan fell back to whole-pool
    # matching, the report must name THAT as the cause - an analyst reading the .md
    # without the console output otherwise cannot tell that these matches have
    # unverified ownership (ADR-0006: a bound is only honest if its reason is legible).
    report_path = generate_report(
        run_id="dex-degraded", apk_hash="dex001", timestamp="2026-08-20T12:00:00",
        metadata={"hashes": {"sha256": "dex001"}, "package": {"package_name": "com.example.app"}},
        classification=_classification(), verification=None, correlation=None,
        coverage={"java": "partial", "native": "fully_analyzed", "manifest": "fully_analyzed", "js": "fully_analyzed"},
        stage_results=[], output_dir=tmp_path,
        dex_attribution_degraded=True,
    )
    content = report_path.read_text(encoding="utf-8")
    assert "DEX string attribution degraded (coverage-limited)" in content
    assert "app-owned" in content


def test_generate_report_omits_dex_attribution_block_when_attribution_held(tmp_path):
    # Default False: an ordinary attributed scan must not carry the degradation note,
    # or the note stops meaning anything.
    report_path = generate_report(
        run_id="dex-ok", apk_hash="dex002", timestamp="2026-08-20T12:00:00",
        metadata={"hashes": {"sha256": "dex002"}, "package": {"package_name": "com.example.app"}},
        classification=_classification(), verification=None, correlation=None,
        coverage={"java": "fully_analyzed", "native": "fully_analyzed", "manifest": "fully_analyzed", "js": "fully_analyzed"},
        stage_results=[], output_dir=tmp_path,
    )
    content = report_path.read_text(encoding="utf-8")
    assert "DEX string attribution degraded" not in content


def test_generate_report_declares_annotation_loss_when_regenerated(tmp_path):
    # A regenerated report renders from persisted columns only. The coverage map IS
    # persisted, but the run-local flags naming each bound's CAUSE are not, so a
    # missing cause-section must not read as "cause absent" (ADR-0006). Asserted with
    # dex_attribution_degraded left False on purpose: that is the state of the real
    # regeneration path, and it pins the note as a SIBLING of the DEX-degradation
    # block rather than nested inside it - nested, it could never render here.
    report_path = generate_report(
        run_id="regen", apk_hash="rgn001", timestamp="2026-08-20T12:00:00 (report regenerated from stored data)",
        metadata={"hashes": {"sha256": "rgn001"}, "package": {"package_name": "com.example.app"}},
        classification=_classification(), verification=None, correlation=None,
        coverage={"java": "partial", "native": "fully_analyzed", "manifest": "fully_analyzed", "js": "fully_analyzed"},
        stage_results=[], output_dir=tmp_path,
        regenerated_from_stored_data=True,
    )
    content = report_path.read_text(encoding="utf-8")
    assert "Report regenerated from stored data (annotation loss)" in content
    assert "not** evidence they were" in content
    # The sibling-not-nested property: the DEX block stays off, the note still shows.
    assert "DEX string attribution degraded" not in content


def test_generate_report_omits_annotation_loss_note_for_a_live_run(tmp_path):
    report_path = generate_report(
        run_id="live", apk_hash="rgn002", timestamp="2026-08-20T12:00:00",
        metadata={"hashes": {"sha256": "rgn002"}, "package": {"package_name": "com.example.app"}},
        classification=_classification(), verification=None, correlation=None,
        coverage={"java": "fully_analyzed", "native": "fully_analyzed", "manifest": "fully_analyzed", "js": "fully_analyzed"},
        stage_results=[], output_dir=tmp_path,
    )
    content = report_path.read_text(encoding="utf-8")
    assert "regenerated from stored data" not in content


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
    # would read as a static/dynamic disagreement that never happened. The headline
    # is flavor-neutral: it summarizes ANY inconclusive (RESID-6F here, or a
    # coverage-limited category dynamic could not confirm) without asserting a
    # positive "prediction" a coverage-limited verdict never made - the precise
    # flavor lives in the per-item UNVERIFIED line above.
    assert "- Verdict: UNVERIFIED (dynamic verification was inconclusive" in content
    assert "- Matches:" not in content


def test_generate_report_unverified_headline_covers_coverage_limited_flavor(tmp_path):
    # CORR-COVLIM1 (None mirror), render side: correlate() now routes a
    # coverage-limited category whose bypass was inconclusive into `unverified`
    # (not a false MATCH). The shared UNVERIFIED headline must render for THIS
    # flavor too - and must NOT claim a static "prediction" (there was none; static
    # was coverage-limited). The per-item line carries the precise reason.
    correlation = CorrelationResult(
        matches=False,
        mismatches=[],
        unverified=[
            "static analysis was coverage-limited on root-detection (unknown, not "
            "absent) and dynamic verification could not confirm a bypass either - "
            "neither engine could certify this category, so it is inconclusive, not "
            "an agreement"
        ],
    )
    report_path = generate_report(
        run_id="covlim-unv", apk_hash="cvu001", timestamp="2026-08-20T12:00:00",
        metadata={"hashes": {"sha256": "cvu001"}, "package": {"package_name": "com.example.app"}},
        classification=_classification(), verification=None, correlation=correlation,
        stage_results=[], output_dir=tmp_path,
    )
    content = report_path.read_text(encoding="utf-8")
    assert "- Verdict: UNVERIFIED (dynamic verification was inconclusive" in content
    assert "- UNVERIFIED: static analysis was coverage-limited on root-detection" in content
    # never a false agreement, and never resurrects the old prediction-specific prose
    assert "- Verdict: MATCH" not in content
    assert "- Verdict: UNVERIFIED (dynamic could not test the static prediction" not in content


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


def test_generate_report_renders_coverage_confirmed_verdict(tmp_path):
    # CORR-COVLIM1: dynamic confirmed a bypass in a category static was
    # coverage-limited on. The headline must name COVERAGE-CONFIRMED (a filled
    # gap), never MISMATCH (which would read as the static engine being wrong) and
    # never UNVERIFIED (dynamic DID test it). The per-item body line renders too.
    correlation = CorrelationResult(
        matches=False,
        mismatches=[],
        unverified=[],
        coverage_confirmed=[
            "dynamic confirmed a root-detection bypass in a coverage-limited category"
        ],
    )
    report_path = generate_report(
        run_id="covconf", apk_hash="cov001", timestamp="2026-08-20T12:00:00",
        metadata={"hashes": {"sha256": "cov001"}, "package": {"package_name": "com.example.app"}},
        classification=_classification(), verification=None, correlation=correlation,
        stage_results=[], output_dir=tmp_path,
    )
    content = report_path.read_text(encoding="utf-8")
    assert "- Verdict: COVERAGE-CONFIRMED" in content
    assert "- Verdict: MISMATCH" not in content
    assert "- Verdict: UNVERIFIED" not in content
    assert "- Verdict: MATCH" not in content
    assert "- COVERAGE-CONFIRMED: dynamic confirmed a root-detection bypass in a coverage-limited category" in content


def test_generate_report_mismatch_wins_over_coverage_confirmed(tmp_path):
    # Precedence guard: a real disagreement (MISMATCH) must win the headline over
    # a coverage-confirmed gap - a genuine static/dynamic conflict is more severe
    # than a filled coverage gap and must never be hidden behind it. The template's
    # mismatches-first ordering is load-bearing here too.
    correlation = CorrelationResult(
        matches=False,
        mismatches=["static predicted root-detection, dynamic saw none"],
        unverified=[],
        coverage_confirmed=["dynamic confirmed an SSL bypass in a coverage-limited category"],
    )
    report_path = generate_report(
        run_id="mixcov", apk_hash="mix001", timestamp="2026-08-20T12:00:00",
        metadata={"hashes": {"sha256": "mix001"}, "package": {"package_name": "com.example.app"}},
        classification=_classification(), verification=None, correlation=correlation,
        stage_results=[], output_dir=tmp_path,
    )
    content = report_path.read_text(encoding="utf-8")
    assert "- Verdict: MISMATCH (static and dynamic disagreed)" in content
    assert "- Verdict: COVERAGE-CONFIRMED" not in content  # disagreement wins the headline
    # both body loops still render: the disagreement and the filled-gap line
    assert "- MISMATCH: static predicted root-detection, dynamic saw none" in content
    assert "- COVERAGE-CONFIRMED: dynamic confirmed an SSL bypass in a coverage-limited category" in content


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


def test_generate_report_explains_environment_normalization_scrub(tmp_path):
    # The --force-dynamic universal envelope emits a shared checkpoint
    # (env:emulator-scrub) when it deploys the emulator/tamper build-prop scrub. The
    # report must EXPLAIN it as an anti-analysis ENVIRONMENT-gate neutralizer - NOT a
    # root/SSL bypass - so a reader never mistakes the cryptic token for a defeated
    # check, and it must never inflate the behavioral-engagement counts (no probeHit /
    # bypassEffect comes from the scrub).
    from common import VerificationResult, ENV_NORMALIZATION_CHECKPOINT
    with_scrub = StageResult(
        stage="dynamic", status="success",
        evidence={"frida_messages": [
            {"type": "send", "payload": {"hook": ENV_NORMALIZATION_CHECKPOINT}},
            {"type": "send", "payload": {"hook": "universal:root"}},
            {"type": "send", "payload": {"hook": "universal:ssl"}},
        ]},
        duration_ms=500,
    )
    unresolved = VerificationResult(root_bypassed=None, ssl_bypassed=None, evidence_lines={})
    report_path = generate_report(
        run_id="env-scrub", apk_hash="env1", timestamp="2026-09-15T12:00:00",
        metadata={"hashes": {"sha256": "env1"}, "package": {"package_name": "test.app"}},
        classification=_classification(), verification=unresolved, correlation=None,
        stage_results=[with_scrub], output_dir=tmp_path,
    )
    content = report_path.read_text(encoding="utf-8")
    assert "Environment normalization deployed" in content
    assert "`env:emulator-scrub`" in content
    assert "anti-analysis **environment gate**" in content
    assert "not** a root/SSL bypass" in content
    # Fired as a checkpoint, but promoted NO behavioral engagement.
    assert "0 root probeHit(s)" in content

    # A run WITHOUT the scrub must not render the explanation line at all.
    without = StageResult(
        stage="dynamic", status="success",
        evidence={"frida_messages": [{"type": "send", "payload": {"hook": "universal:ssl"}}]},
        duration_ms=500,
    )
    report_path2 = generate_report(
        run_id="no-scrub", apk_hash="env2", timestamp="2026-09-15T12:00:00",
        metadata={"hashes": {"sha256": "env2"}, "package": {"package_name": "test.app"}},
        classification=_classification(), verification=unresolved, correlation=None,
        stage_results=[without], output_dir=tmp_path,
    )
    assert "Environment normalization deployed" not in report_path2.read_text(encoding="utf-8")


def test_capture_summary_exposes_the_recorders_liveness_and_its_recorded_cause():
    from common import StageResult
    from report.generator import _capture_summary

    dead = StageResult(
        stage="capture-traffic", status="failed",
        evidence={"reason": "no flows captured", "proxy": "127.0.0.1:8081",
                  "client_connections": 0, "tls_failed_clients": [],
                  "capture_channel_alive": False,
                  "device_reached_proxy_preflight": True},
        error="the capture proxy's log carries no addon marker at all - never ran",
    )
    cs = _capture_summary([dead])
    assert cs["capture_channel_alive"] is False
    assert cs["capture_diagnosis"] == dead.error
    # A crashed stage keeps its own path: its cause is rendered by capture_error
    # (the capture_errored branch), so it must not also be relabelled as the
    # empty-capture diagnosis.
    crashed = StageResult(
        stage="capture-traffic", status="failed",
        evidence={"reason": "capture exception"}, error="capture stage raised: X")
    assert _capture_summary([crashed])["capture_diagnosis"] is None
    # No stage at all, and a run whose recorder never reported: both must expose
    # the keys rather than crash the template (RPT-TMPLCOV1).
    assert _capture_summary([])["capture_channel_alive"] is None
    assert _capture_summary([])["capture_diagnosis"] is None


def test_generate_report_dead_recorder_is_named_and_its_zeros_are_not_evidence(tmp_path):
    from common import StageResult
    from static.manifest import ManifestInfo

    dead = StageResult(
        stage="capture-traffic", status="failed",
        evidence={"reason": "no flows captured", "proxy": "127.0.0.1:8081",
                  "client_connections": 0, "tls_failed_clients": [],
                  "capture_channel_alive": False,
                  "device_reached_proxy_preflight": True,
                  "flows_path": "/x/flows"},
        error=("the capture proxy's log carries no addon marker at all - "
               "the recorder never ran: those facts are ABSENT, not empty"),
    )
    manifest = ManifestInfo(debuggable=False, network_security_config=None,
                            permissions=["android.permission.INTERNET"])
    report_path = generate_report(
        run_id="cap-dead-recorder", apk_hash="cap02", timestamp="2026-09-16T12:00:00",
        metadata={"hashes": {"sha256": "cap02"}, "package": {"package_name": "test.app"}},
        classification=_classification(), verification=None, correlation=None,
        stage_results=[dead], output_dir=tmp_path, manifest=manifest,
    )
    content = report_path.read_text(encoding="utf-8")
    # The stage's own recorded cause reaches the reader...
    assert "capture recorder itself never ran" in content
    assert "the recorder never ran" in content
    # ...and the zero the dead recorder produced is NOT reused as an observation
    # about the device: the reachability-probe prose would read that 0 as proof.
    assert "Device-side reachability probe" not in content
    assert "corroborates" not in content


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


def test_capture_summary_flags_a_crashed_capture_stage():
    # A capture stage that FAILED by raising records reason="capture exception"
    # + the exception text on .error (mitmproxy_capture.run_capture_stage). That
    # is categorically different from a clean zero-flow capture ("no flows
    # captured"), which ran to completion. _capture_summary must tell them apart
    # so the report can give a crashed stage its true reason instead of an
    # app-behaviour / coverage-limitation explanation.
    from common import StageResult
    from report.generator import _capture_summary

    crashed = StageResult(
        stage="capture-traffic", status="failed",
        evidence={"reason": "capture exception", "flows_path": "/x/flows"},
        error="capture stage raised: RuntimeError('frida attach failed')",
    )
    cs = _capture_summary([crashed])
    assert cs["capture_errored"] is True
    assert cs["capture_error"] == "capture stage raised: RuntimeError('frida attach failed')"

    clean_empty = StageResult(
        stage="capture-traffic", status="failed",
        evidence={"reason": "no flows captured", "proxy": "127.0.0.1:8081",
                  "client_connections": 3},
        error="no traffic captured through the proxy - ...",
    )
    cs_clean = _capture_summary([clean_empty])
    assert cs_clean["capture_errored"] is False  # completed, just empty

    no_stage = _capture_summary([])
    assert no_stage["capture_errored"] is False
    assert no_stage["capture_error"] is None
    # Uniform contract: both return paths expose the new keys (also locked by
    # test_report_template_coverage.test_capture_summary_return_paths_expose_identical_keys).
    assert set(no_stage) == set(cs)


def test_generate_report_crashed_capture_is_not_read_as_app_behaviour(tmp_path):
    # A capture stage that RAISED (reason="capture exception") did not complete a
    # capture window - its empty flow list reflects the stage crash, not the app.
    # Before the fix the report reached the INTERNET branch and explained the
    # empty capture as "a coverage limitation of this run (the app may not have
    # exercised the network...)" - a confidently-wrong app-behaviour cause for a
    # crashed tool (not-attempted != skipped; a hardcoded cause is false the
    # moment a different root cause reaches the branch). The report must instead
    # name the stage failure and surface the real error.
    from static.manifest import ManifestInfo
    from common import StageResult

    crashed = StageResult(
        stage="capture-traffic", status="failed",
        evidence={"reason": "capture exception", "flows_path": "/x/flows"},
        error="capture stage raised: RuntimeError('frida attach failed: device offline')",
    )
    # INTERNET declared - this is exactly the branch that produced the false prose.
    manifest = ManifestInfo(
        debuggable=False, network_security_config=None,
        permissions=["android.permission.INTERNET"],
    )
    report_path = generate_report(
        run_id="cap-crash", apk_hash="cap03", timestamp="2026-09-06T12:00:00",
        metadata={"hashes": {"sha256": "cap03"}, "package": {"package_name": "test.app"}},
        classification=_classification(), verification=None, correlation=None,
        stage_results=[crashed], output_dir=tmp_path, manifest=manifest,
    )
    content = report_path.read_text(encoding="utf-8")
    # Truthful: names the stage failure and surfaces the real error.
    assert "capture stage did not complete" in content
    assert "frida attach failed: device offline" in content
    # Never frames a crashed stage as app behaviour / a coverage limitation of a
    # run that completed.
    assert "the app may not have exercised the network" not in content
    assert "coverage limitation of this run" not in content


def test_reachability_probe_zero_corroborates_unexercised_not_a_wiring_failure(tmp_path):
    # RPT-REACH-COVLIM1: the empty-capture paragraph appends a device-side
    # reachability-probe clause to whichever in-process-observer branch fired.
    # When that observer recorded 0 SSL bypass-effects (Branch B: "the app's own
    # pinned request never executed ... NOT a proxy the device could not reach"),
    # a 0-connection probe is EXPECTED - no request was sent, so nothing reached
    # the proxy. The probe==0 clause used to flatly assert "the device never
    # reached mitmdump, so this is a real device->proxy reachability failure"
    # regardless of that observer evidence, so the SAME paragraph both denied and
    # asserted a reachability failure. The clause must corroborate the un-exercised
    # finding here, never contradict it (ADR-0006 tiers; the recurring render-layer
    # honesty bug where an appended clause disagrees with the one above it).
    from static.manifest import ManifestInfo
    from common import StageResult

    manifest = ManifestInfo(debuggable=False, network_security_config=None,
                            permissions=["android.permission.INTERNET"])
    # probe==0: the reachability probe counted no client connection to the proxy.
    capture0 = StageResult(
        stage="capture-traffic", status="failed",
        evidence={"reason": "no flows captured", "proxy": "127.0.0.1:8081",
                  "client_connections": 0},
        error="no traffic captured through the proxy", duration_ms=0)

    # Branch B: hooks audited, ZERO ssl bypass-effects observed.
    dynamic_b = StageResult(
        stage="dynamic", status="success",
        evidence={"frida_messages": [{"type": "send", "payload": {"hook": "root_su_binary_paths"}}]},
        duration_ms=1)
    p = generate_report(
        run_id="reach-b0", apk_hash="rb0", timestamp="2026-09-08T12:00:00",
        metadata={"hashes": {"sha256": "rb0"}, "package": {"package_name": "test.app"}},
        classification=_classification(), verification=None, correlation=None,
        stage_results=[dynamic_b, capture0], output_dir=tmp_path, manifest=manifest)
    content = p.read_text(encoding="utf-8")
    # Branch B's conclusion is present...
    assert "not a proxy the device could not reach" in content
    # ...and the probe clause corroborates it instead of contradicting.
    assert "0 connections corroborates that" in content
    assert "real device→proxy reachability failure" not in content

    # The fix must NOT over-reach: when the observer DID record an SSL bypass-effect
    # (Branch A: the app's pinned request executed) yet 0 connections reached the
    # proxy, that IS a genuine device->proxy reachability failure - the clause must
    # still say so, and must NOT emit the un-exercised corroboration.
    dynamic_a = StageResult(
        stage="dynamic", status="success",
        evidence={"frida_messages": [{"type": "send", "payload": {"bypassEffect": "ssl-pin-check"}}]},
        duration_ms=1)
    p2 = generate_report(
        run_id="reach-a0", apk_hash="ra0", timestamp="2026-09-08T12:00:00",
        metadata={"hashes": {"sha256": "ra0"}, "package": {"package_name": "test.app"}},
        classification=_classification(), verification=None, correlation=None,
        stage_results=[dynamic_a, capture0], output_dir=tmp_path, manifest=manifest)
    content2 = p2.read_text(encoding="utf-8")
    assert "real device→proxy reachability failure" in content2
    assert "0 connections corroborates that" not in content2


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
        "decompiler_used": "unknown",
        # F-1: exact equality is the point of this assertion - the cache-reuse
        # tri-state belongs in it so a future field cannot be added to the summary
        # without this list being revisited.
        "decompile_cached": None,
        "class_recovery_ratio": None, "class_recovery_pct": None,
        "smali_top_level_classes": None,
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
    # G2: which decompiler(s) ran is threaded through from the fallback evidence
    assert _decompile_summary([s_ok])["decompiler_used"] == "jadx"
    s_cfr = StageResult(stage="decompile", status="success",
                        evidence={"jadx_file_count": 9, "fallback_recovered": True,
                                  "fallback_file_count": 9})
    assert "CFR" in _decompile_summary([s_cfr])["decompiler_used"]
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


_ATTRIBUTION_REASON = {
    True: "uid 10168 held a socket to the capture proxy",
    False: ("uid 10168 (com.app) held no socket to the capture proxy in any of 3 "
            "readable sample(s) of the window; the proxy recorded no client->proxy "
            "connection this window"),
    None: ("the device's socket table could not be read, so whether the app reached "
           "the capture proxy was not measured"),
}


def _capture_stage(flows, bypass_applied=False, launch=None, frida_messages=None,
                   reached="unrecorded"):
    """A capture-traffic stage carrying real flow_summary evidence, so the
    Captured Traffic section is exercised rather than skipped. `bypass_applied`
    is the capture stage's own record of whether THAT window's launch ran under
    an injected pinning-bypass script; the report reads it to decide whether a
    decrypted flow list is evidence of a bypass taking effect or only of pinning
    not being enforced in that window. `frida_messages` is that window's own
    observer stream (the capture stage records it under the same key the dynamic
    stage uses), passed here as Frida envelopes and STORED the way the capture
    producer stores them - `m.get("payload", m)`, payload-unwrapped. A fixture that
    kept the envelopes gave the report a shape no capture run ever produces, which
    is how a capture window's record came to read as silence.

    `reached` is the stage's device-side attribution (ADR-0012/0017/0018): whose
    flows these are. It defaults to `"unrecorded"` - no attribution key at all -
    because that is a real state (a run from before the attribution existed, or one
    where it did not run) and a fixture should have to SAY that the app was on the
    proxy before the report may claim its flows are the bypass working."""
    evidence = {
        "flow_summary": flows,
        "system_ca": "/system/etc/security/cacerts/062b6baf.0",
        "proxy": "127.0.0.1:8081",
        "bypass_applied": bypass_applied,
    }
    if reached != "unrecorded":
        evidence["proxy_attribution"] = {
            "reached": reached, "reason": _ATTRIBUTION_REASON[reached],
        }
    if launch is not None:
        evidence["app_launch"] = launch
    if frida_messages is not None:
        # The capture producer's own transformation (mitmproxy_capture): the stored
        # list is the payload alone, so the fixture is built by the same rule rather
        # than hand-written in the dynamic stage's envelope shape.
        evidence["frida_messages"] = [m.get("payload", m) for m in frida_messages]
    return StageResult(
        stage="capture-traffic", status="success", duration_ms=0,
        evidence=evidence,
    )


def test_observer_signal_reads_both_stored_shapes_identically():
    # The two windows store the SAME observer script's messages in different shapes:
    # frida_runner keeps Frida's raw {type, payload} envelope, mitmproxy_capture stores
    # the payload alone (`m.get("payload", m)`). The extractor is documented as one set
    # of rules for both windows, so one shape must not read as silence - and it did,
    # which made a capture window's own record render as "recorded no SSL effect"
    # whatever it actually said. The fixture is built BY the producer's rule rather
    # than hand-written in the other stage's shape.
    from report.generator import _observer_signal
    envelopes = [
        {"type": "send", "payload": {"hook": "ssl_pin_check"}},
        {"type": "send", "payload": {"bypassEffect": "ssl-pin-check"}},
        {"type": "send", "payload": {"probeHit": "root"}},
        {"type": "send", "payload": {"probeHit": "emulator"}},
        {"type": "error", "description": "boom", "lineNumber": 3},
    ]
    stored = [m.get("payload", m) for m in envelopes]      # the capture stage's shape
    assert _observer_signal(stored) == _observer_signal(envelopes)
    assert _observer_signal(stored)["ssl_effects"] == {"ssl-pin-check": 1}
    assert _observer_signal(stored)["root_probe_hits"] == 1  # only the value "root"
    assert _observer_signal(stored)["probe_hits_any"] == 2   # but any value engages
    assert _observer_signal(stored)["checkpoints"] == {"ssl_pin_check"}
    # Tolerance is deliberate and one-directional: a message carrying a dict
    # `payload` is read one level down even without Frida's `type` marker (the
    # half-envelope the reachability fixtures use), because a rule that can DECLINE to
    # look at a message turns it into silence - the failure this extractor just had. A
    # spurious effect keeps a loud signal loud; a dropped one invents a silence.
    half = [{"payload": {"bypassEffect": "ssl-pin-check"}}]
    assert _observer_signal(half)["ssl_effects"] == {"ssl-pin-check": 1}


class _Flow:
    def __init__(self, host, method, path, status, scheme="https"):
        self.host, self.method, self.path, self.status = host, method, path, status
        # A flow captured (decrypted) through the MITM proxy is HTTPS; default to
        # that so the existing decrypted-HTTPS pinning-defeat assertions still hold.
        self.scheme = scheme


def test_captured_traffic_strong_claim_only_when_ssl_confirmed(tmp_path):
    # Report-correctness: the Captured Traffic section must not claim "live proof
    # that SSL-pinning was actually defeated" whenever flows exist. A captured
    # flow list is only full confirmation when the run actually confirmed the
    # app's pin-check (ssl_bypassed is True) AND the capture window's own launch
    # ran under the bypass - the flows come from that launch, not from the
    # dynamic stage's. When the run is inconclusive (no TLS handshake / app never
    # reached the pinned call), the section must say so plainly as partial
    # evidence - otherwise the report contradicts its own "SSL bypassed:
    # inconclusive" line.
    flows = [_Flow("api.example.com", "GET", "/v1/data", 200)]

    # Confirmed SSL -> strong claim is correct.
    confirmed = generate_report(
        run_id="cap-confirmed", apk_hash="cap001", timestamp="2026-08-21T12:00:00",
        metadata={"hashes": {"sha256": "cap001"}, "package": {"package_name": "app"}},
        classification=_classification(),
        verification=VerificationResult(root_bypassed=True, ssl_bypassed=True, evidence_lines={}),
        correlation=None,
        stage_results=[_capture_stage(flows, bypass_applied=True, reached=True)], output_dir=tmp_path,
    )
    confirmed_text = confirmed.read_text(encoding="utf-8")
    assert "live proof that SSL-pinning was actually defeated" in confirmed_text

    # Inconclusive SSL -> must NOT overclaim, must say partial + name the reason.
    inconclusive = generate_report(
        run_id="cap-inconcl", apk_hash="cap002", timestamp="2026-08-21T12:00:00",
        metadata={"hashes": {"sha256": "cap002"}, "package": {"package_name": "app"}},
        classification=_classification(),
        verification=VerificationResult(root_bypassed=True, ssl_bypassed=None, evidence_lines={}),
        correlation=None,
        stage_results=[_capture_stage(flows)], output_dir=tmp_path,
    )
    inconclusive_text = inconclusive.read_text(encoding="utf-8")
    assert "live proof that SSL-pinning was actually defeated" not in inconclusive_text
    assert "This is partial evidence, not full confirmation" in inconclusive_text
    assert "inconclusive" in inconclusive_text


def test_capture_window_without_bypass_never_claims_the_defeat(tmp_path):
    # SSL can be confirmed bypassed in the DYNAMIC stage's window while the
    # CAPTURE stage runs its own, separate launch with no bypass injected (the
    # CLI passes no capture bypass script, so this is the normal shape today).
    # A decrypted flow from that window proves pinning was not enforced on the
    # host in THAT window; it does not prove the bypass defeated anything. The
    # report must not present it as "the live proof that SSL-pinning was actually
    # defeated" - that attributes one window's confirmation to another window's
    # traffic, which is the reading that misled a real investigation.
    flows = [_Flow("api.example.com", "GET", "/v1/data", 200)]
    out = generate_report(
        run_id="cap-nowindow", apk_hash="capnowin", timestamp="2026-08-21T12:00:00",
        metadata={"hashes": {"sha256": "capnowin"}, "package": {"package_name": "app"}},
        classification=_classification(),
        verification=VerificationResult(root_bypassed=True, ssl_bypassed=True, evidence_lines={}),
        correlation=None,
        stage_results=[_capture_stage(
            flows, bypass_applied=False,
            launch={"component": "app/.Main", "launched_by": "resolved component",
                    "pid": 17829, "attempts": []},
        )],
        output_dir=tmp_path,
    )
    text = out.read_text(encoding="utf-8")
    assert "live proof that SSL-pinning was actually defeated" not in text
    assert "separate, later launch" in text
    assert "no pinning-bypass script injected" in text
    assert "launched by resolved component, pid 17829" in text
    assert "not **enforced**" in text


def test_capture_window_with_bypass_keeps_the_defeat_claim(tmp_path):
    # The mirror: when the capture window DID run under the injected bypass, its
    # decrypted flows are the defeat in action and the strong claim is correct.
    flows = [_Flow("api.example.com", "GET", "/v1/data", 200)]
    out = generate_report(
        run_id="cap-window-bypass", apk_hash="capwinbp", timestamp="2026-08-21T12:00:00",
        metadata={"hashes": {"sha256": "capwinbp"}, "package": {"package_name": "app"}},
        classification=_classification(),
        verification=VerificationResult(root_bypassed=True, ssl_bypassed=True, evidence_lines={}),
        correlation=None,
        stage_results=[_capture_stage(
            flows, bypass_applied=True, reached=True,
            launch={"component": None, "launched_by": "frida spawn", "pid": 4321,
                    "attempts": []},
        )],
        output_dir=tmp_path,
    )
    text = out.read_text(encoding="utf-8")
    assert "live proof that SSL-pinning was actually defeated" in text
    assert "under the injected pinning-bypass script" in text
    assert "separate, later launch" not in text


def test_the_capture_defeat_claim_requires_the_attribution_to_put_the_app_on_the_proxy(tmp_path):
    # ADR-0018: ADR-0015 corrected WHICH WINDOW the flows came from; this is WHOSE
    # they are. A device-wide proxy decrypted these, and the stage's own uid reading
    # says the app is not among its clients - so the paragraph may not call them
    # "the live proof that SSL-pinning was actually defeated", however true the
    # window fact is. Both sentences used to sit in the same paragraph.
    flows = [_Flow("api.example.com", "GET", "/v1/data", 200)]
    out = generate_report(
        run_id="cap-attr-false", apk_hash="capattrf", timestamp="2026-08-21T12:00:00",
        metadata={"hashes": {"sha256": "capattrf"}, "package": {"package_name": "app"}},
        classification=_classification(),
        verification=VerificationResult(root_bypassed=True, ssl_bypassed=True,
                                        evidence_lines={}),
        correlation=None,
        stage_results=[_capture_stage(flows, bypass_applied=True, reached=False)],
        output_dir=tmp_path,
    )
    text = out.read_text(encoding="utf-8")
    assert "live proof that SSL-pinning was actually defeated" not in text
    assert "not this app's" in text
    # The window fact survives; what is dropped is the attribution claim.
    assert "under the injected pinning-bypass script" in text
    assert _ATTRIBUTION_REASON[False] in text


def test_capture_flows_of_unestablished_origin_are_not_credited_to_the_app(tmp_path):
    # The other half of the same rule: reached is None - not measured - and that
    # cannot license the claim either. Treating not-measured as licence is the error
    # ADR-0017 stopped one layer down.
    flows = [_Flow("api.example.com", "GET", "/v1/data", 200)]
    out = generate_report(
        run_id="cap-attr-none", apk_hash="capattrn", timestamp="2026-08-21T12:00:00",
        metadata={"hashes": {"sha256": "capattrn"}, "package": {"package_name": "app"}},
        classification=_classification(),
        verification=VerificationResult(root_bypassed=True, ssl_bypassed=True,
                                        evidence_lines={}),
        correlation=None,
        stage_results=[_capture_stage(flows, bypass_applied=True, reached=None)],
        output_dir=tmp_path,
    )
    text = out.read_text(encoding="utf-8")
    assert "live proof that SSL-pinning was actually defeated" not in text
    assert "show the bypass was **applied** to the app" in text
    assert _ATTRIBUTION_REASON[None] in text


def test_the_partial_evidence_arm_does_not_claim_a_bypass_effect_on_an_absent_app(tmp_path):
    # The same over-claim in the arm that runs when SSL was NOT dynamically
    # confirmed: its "which window this is" note called the flows evidence the
    # bypass took effect, over flows this app did not send.
    flows = [_Flow("api.example.com", "GET", "/v1/data", 200)]
    out = generate_report(
        run_id="cap-partial-false", apk_hash="cappartf", timestamp="2026-08-21T12:00:00",
        metadata={"hashes": {"sha256": "cappartf"}, "package": {"package_name": "app"}},
        classification=_classification(),
        verification=VerificationResult(root_bypassed=True, ssl_bypassed=None,
                                        evidence_lines={}),
        correlation=None,
        stage_results=[_capture_stage(flows, bypass_applied=True, reached=False)],
        output_dir=tmp_path,
    )
    text = out.read_text(encoding="utf-8")
    assert "evidence the bypass took effect on those hosts" not in text
    assert "not** evidence the bypass took effect on anything this app reached" in text


def test_capture_window_reports_its_own_observer_effects(tmp_path):
    # The capture window runs the same observer script as the dynamic stage, in its
    # own launch. When its effects are recorded, the report must surface them as
    # belonging to the window the flow list came from - otherwise the only SSL
    # statement in the report is the OTHER window's silence, which is a fact about a
    # different launch.
    flows = [_Flow("api.example.com", "GET", "/v1/data", 200)]
    out = generate_report(
        run_id="cap-obs", apk_hash="capobs", timestamp="2026-08-21T12:00:00",
        metadata={"hashes": {"sha256": "capobs"}, "package": {"package_name": "app"}},
        classification=_classification(),
        verification=VerificationResult(root_bypassed=True, ssl_bypassed=None, evidence_lines={}),
        correlation=None,
        stage_results=[_capture_stage(
            flows,
            bypass_applied=True,
            frida_messages=[
                {"type": "send", "payload": {"bypassEffect": "ssl-pin-check"}},
                {"type": "send", "payload": {"bypassEffect": "ssl-handshake"}},
                {"type": "send", "payload": {"probeHit": "root"}},
            ],
        )],
        output_dir=tmp_path,
    )
    text = out.read_text(encoding="utf-8")
    assert "This window's own in-process observer" in text
    assert "`ssl-pin-check`=1" in text and "`ssl-handshake`=1" in text
    assert "1 root `probeHit`(s)" in text
    assert "during the window whose flows are listed above" in text


def test_capture_window_omits_the_observer_line_when_it_recorded_nothing(tmp_path):
    # An un-hooked capture window records no observer messages. The line must then be
    # absent rather than rendered with zeroes, which would read as "this window's
    # observer ran and saw nothing" - a statement about an observer that never ran.
    flows = [_Flow("api.example.com", "GET", "/v1/data", 200)]
    out = generate_report(
        run_id="cap-obsnone", apk_hash="capobsno", timestamp="2026-08-21T12:00:00",
        metadata={"hashes": {"sha256": "capobsno"}, "package": {"package_name": "app"}},
        classification=_classification(),
        verification=VerificationResult(root_bypassed=True, ssl_bypassed=None, evidence_lines={}),
        correlation=None,
        stage_results=[_capture_stage(flows)],
        output_dir=tmp_path,
    )
    text = out.read_text(encoding="utf-8")
    assert "This window's own in-process observer" not in text


def test_observer_signal_counts_effects_by_the_shared_rules():
    # One extractor serves both windows. Lock the three distinctions it makes, since
    # a second copy of this logic in the capture path is exactly the drift this
    # shares away: a {type:error} message is a crashed hook (described elsewhere) and
    # never an effect; a probeHit of a value other than "root" counts toward
    # engagement but never toward the "root probeHit(s)" line; checkpoints are the
    # hook readiness markers, not effects.
    from report.generator import _observer_signal

    signal = _observer_signal([
        {"type": "error", "description": "boom"},
        {"type": "send", "payload": {"hook": "root_su_binary_paths"}},
        {"type": "send", "payload": {"probeHit": "root"}},
        {"type": "send", "payload": {"probeHit": "emulator"}},
        {"type": "send", "payload": {"bypassEffect": "ssl-pin-check"}},
        {"type": "send", "payload": {"bypassEffect": "ssl-pin-check"}},
        "not-a-dict",
    ])
    assert signal["ssl_effects"] == {"ssl-pin-check": 2}
    assert signal["root_probe_hits"] == 1
    assert signal["probe_hits_any"] == 2
    assert signal["checkpoints"] == {"root_su_binary_paths"}


def test_observer_signal_counts_a_predefined_host_effect_not_just_the_synthesizers():
    # The predefined ssl_pinning_bypass_v1.js hooks (uc*/AndroGoat) send
    # {"hook": ..., "host": ..., "bypassed": true} from INSIDE the hooked
    # CertificatePinner.check / TrustManagerImpl.verifyChain, so a concrete host is
    # proof the app opened a pinned connection. Counting only `bypassEffect` - which
    # only the synthesizer emits - scored those 0, and the capture section then told
    # the reader "the app's own pinned request never executed" over a stream that
    # said it did, on a run the pipeline had kept FAILED for exactly that reason
    # (measured on AndroGoat: TrustManagerImpl.verifyChain @ owasp.org).
    from report.generator import _observer_signal

    signal = _observer_signal([
        {"type": "send", "payload": {"hook": "TrustManagerImpl.verifyChain",
                                     "host": "owasp.org", "bypassed": True}},
        # INSTALL-time: the hook was placed, no request was made - never an effect.
        {"type": "send", "payload": {"hook": "universal-ssl-pinning", "bypassed": True}},
    ])
    assert signal["ssl_effects"] == {"TrustManagerImpl.verifyChain": 1}


def test_the_two_layers_count_one_stream_identically():
    # The pipeline's reclassifier ladder and the report's audit read the SAME stream
    # to answer the same question - "did the app exercise its SSL path?" - and they
    # drifted in opposite directions: the report counted only the synthesizer's
    # effect and the ladder's envelope-only read could not see the capture window's
    # payload-alone messages. The result was one run rendering as app-silence in the
    # report body and a capture-path failure in the stage line above it. This is the
    # guard against that drift returning.
    from cli import _ssl_path_exercised
    from report.generator import _observer_signal

    streams = [
        [{"type": "send", "payload": {"bypassEffect": "ssl-pin-check"}}],
        [{"hook": "TrustManagerImpl.verifyChain", "host": "owasp.org", "bypassed": True}],
        [{"payload": {"hostname": "a.example.com"}}],
        [{"payload": {"host": "a.example.com"}}],
        [{"type": "send", "payload": {"hook": "certificate_pin_hash_literal"}}],
        [{"type": "send", "payload": {"bypassed": True}}],
        [{"type": "error", "description": "boom"}],
        [],
    ]
    for stream in streams:
        assert _ssl_path_exercised(stream) == sum(
            _observer_signal(stream)["ssl_effects"].values()
        ), stream


def test_handshake_line_reconciles_captured_flows(tmp_path):
    # The success-check's "TLS handshakes completed post-bypass" line is purely
    # Frida-observer based. When the observer saw none but the capture proxy
    # decrypted real flows (which require completed handshakes), the report must
    # not flatly claim "no TLS handshake reached during the run" - that
    # contradicts its own Captured Traffic section. It must reconcile: credit the
    # proxy evidence while keeping the conservative non-promotion (ADR-0006).
    flows = [_Flow("api.example.com", "GET", "/v1/data", 200)]
    inconclusive = generate_report(
        run_id="cap-hs", apk_hash="cap003", timestamp="2026-08-21T12:00:00",
        metadata={"hashes": {"sha256": "cap003"}, "package": {"package_name": "app"}},
        classification=_classification(),
        verification=VerificationResult(
            root_bypassed=True, ssl_bypassed=None,
            evidence_lines={"TLS handshakes completed post-bypass":
                            "none observed (no TLS handshake reached during the run)"},
        ),
        correlation=None,
        stage_results=[_capture_stage(flows)], output_dir=tmp_path,
    )
    text = inconclusive.read_text(encoding="utf-8")
    assert "TLS handshakes (capture proxy)" in text
    assert "1 flow(s) decrypted by the capture proxy" in text
    assert "requires completed TLS handshakes" in text
    assert "SSL is not promoted on this basis alone" in text

    # The real production shape is dict rows (the capture stage's flow_summary),
    # not _Flow objects. The host list must derive from those dicts - a Python
    # getattr(dict, 'host') is always None and would blank the "(hosts: ...)"
    # preview. Pin that regression here.
    dict_flows = [{"host": "api.propertyguru.com", "method": "GET", "path": "/v1/data", "status": 304, "scheme": "https"}]
    dict_note = generate_report(
        run_id="cap-hs-dict", apk_hash="cap004", timestamp="2026-08-21T12:00:00",
        metadata={"hashes": {"sha256": "cap004"}, "package": {"package_name": "app"}},
        classification=_classification(),
        verification=VerificationResult(
            root_bypassed=True, ssl_bypassed=None,
            evidence_lines={"TLS handshakes completed post-bypass":
                            "none observed (no TLS handshake reached during the run)"},
        ),
        correlation=None,
        stage_results=[_capture_stage(dict_flows)], output_dir=tmp_path,
    )
    dict_text = dict_note.read_text(encoding="utf-8")
    assert "hosts: api.propertyguru.com" in dict_text


# --- Capture transport (http vs https): never mislabel cleartext as a pinning
# --- defeat proof (Principle 3 / ADR-0006) -------------------------------------


def test_capture_all_https_flows_render_decrypted_transport_no_cleartext_callout(tmp_path):
    # All captured flows are proxy-decrypted HTTPS: the pinning-defeat header is
    # correct, every row's Transport reads "HTTPS (decrypted)", and no cleartext
    # callout appears (there was no cleartext HTTP to warn about).
    flows = [
        {"host": "api.example.com", "method": "GET", "path": "/v1/me", "status": 200, "scheme": "https"},
        {"host": "cdn.example.com", "method": "GET", "path": "/asset.js", "status": 200, "scheme": "https"},
    ]
    out = generate_report(
        run_id="cap-https", apk_hash="caphttps", timestamp="2026-08-21T12:00:00",
        metadata={"hashes": {"sha256": "caphttps"}, "package": {"package_name": "app"}},
        classification=_classification(),
        verification=VerificationResult(root_bypassed=True, ssl_bypassed=True, evidence_lines={}),
        correlation=None,
        stage_results=[_capture_stage(flows, bypass_applied=True, reached=True)], output_dir=tmp_path,
    )
    text = out.read_text(encoding="utf-8")
    assert "live proof that SSL-pinning was actually defeated" in text
    assert "HTTPS (decrypted)" in text
    assert "HTTP (cleartext)" not in text
    assert "Cleartext HTTP observed" not in text


def test_capture_mixed_http_https_distinguishes_transport_and_flags_cleartext(tmp_path):
    # A run that captured BOTH a decrypted HTTPS flow and a cleartext HTTP flow:
    # the table distinguishes the two transports; the decrypted HTTPS flow still
    # carries the pinning-defeat claim; and the cleartext HTTP flow gets a distinct
    # callout that (a) says it is NOT pinning-defeat proof and (b) surfaces the
    # sensitive URL query parameter sent in the clear - the finding this phase
    # exists to surface, never mislabeled as decrypted-HTTPS proof.
    flows = [
        {"host": "api.example.com", "method": "GET", "path": "/v1/me", "status": 200, "scheme": "https"},
        {"host": "analytics.example.com", "method": "POST", "path": "/track?uid=SECRET", "status": 200, "scheme": "http"},
    ]
    out = generate_report(
        run_id="cap-mixed", apk_hash="capmixed", timestamp="2026-08-21T12:00:00",
        metadata={"hashes": {"sha256": "capmixed"}, "package": {"package_name": "app"}},
        classification=_classification(),
        verification=VerificationResult(root_bypassed=True, ssl_bypassed=True, evidence_lines={}),
        correlation=None,
        stage_results=[_capture_stage(flows, bypass_applied=True, reached=True)], output_dir=tmp_path,
    )
    text = out.read_text(encoding="utf-8")
    # Both transports are rendered distinctly in the table.
    assert "HTTPS (decrypted)" in text
    assert "HTTP (cleartext)" in text
    # The decrypted HTTPS flow still carries the pinning-defeat claim.
    assert "live proof that SSL-pinning was actually defeated" in text
    # The cleartext HTTP flow gets its own callout: explicitly NOT pinning-defeat
    # proof, and it surfaces the query parameter exposed in the clear.
    assert "Cleartext HTTP observed" in text
    assert "were sent WITHOUT TLS" in text
    assert "including URL query parameters" in text
    assert "uid=SECRET" in text


def test_capture_all_cleartext_http_never_claims_pinning_defeat(tmp_path):
    # THE honesty defect this change fixes: a run whose ONLY captured flows are
    # cleartext HTTP must never render "SSL-pinning was actually defeated" - even
    # when the dynamic stage's own verdict confirmed SSL bypass by OTHER evidence
    # (ssl_bypassed=True). The capture section reports what the CAPTURE showed:
    # zero HTTPS decrypted this run, so the capture is not the pinning-defeat proof
    # (nothing was decrypted - no TLS), and the cleartext transmission is itself a
    # finding.
    flows = [
        {"host": "analytics.example.com", "method": "POST", "path": "/track?uid=SECRET", "status": 200, "scheme": "http"},
    ]
    out = generate_report(
        run_id="cap-clear", apk_hash="capclear", timestamp="2026-08-21T12:00:00",
        metadata={"hashes": {"sha256": "capclear"}, "package": {"package_name": "app"}},
        classification=_classification(),
        verification=VerificationResult(root_bypassed=True, ssl_bypassed=True, evidence_lines={}),
        correlation=None,
        stage_results=[_capture_stage(flows)], output_dir=tmp_path,
    )
    text = out.read_text(encoding="utf-8")
    # The exact strong-claim phrase is unique to the decrypted-HTTPS header (line
    # 384); the synthesizer note's "root/SSL check was actually defeated" does not
    # match it, so this assertion is precisely scoped.
    assert "SSL-pinning was actually defeated" not in text
    assert "No HTTPS flow was decrypted this run" in text
    assert "This is not proof of SSL-pinning defeat" in text
    assert "HTTP (cleartext)" in text
    assert "Cleartext HTTP observed" in text


# --- G2: report names which decompiler(s) actually produced the sources --------


def test_decompiler_used_reports_cfr_recovery_with_count():
    from report.generator import _decompiler_used
    label = _decompiler_used({"fallback_recovered": True, "fallback_file_count": 42})
    assert "jadx + CFR" in label and "42" in label


def test_decompiler_used_reports_cfr_unavailable_environment():
    from report.generator import _decompiler_used
    label = _decompiler_used({"fallback_unavailable": True})
    assert "jadx only" in label and "unavailable" in label


def test_decompiler_used_reports_cfr_ran_but_recovered_nothing():
    from report.generator import _decompiler_used
    label = _decompiler_used({"fallback_recovered": False})
    assert "CFR ran but recovered no additional" in label


def test_decompiler_used_defaults_to_jadx_when_no_fallback_evidence():
    from report.generator import _decompiler_used
    assert _decompiler_used({}) == "jadx"


def test_generate_report_names_decompiler_when_cfr_recovered_classes(tmp_path):
    # G2 end-to-end: when the CFR secondary recovered classes jadx missed, the
    # rendered report must say so - coverage that depends on a per-machine tool
    # must be reproducible, not silently environment-dependent (ADR-0007).
    stage_results = [StageResult(
        stage="decompile", status="success",
        evidence={"decompile_completeness": "complete", "jadx_exit_code": 0,
                  "jadx_file_count": 51, "fallback_recovered": True,
                  "fallback_file_count": 9},
        duration_ms=500,
    )]
    report_path = generate_report(
        run_id="g2", apk_hash="g2hash", timestamp="2026-08-22T12:00:00",
        metadata={"hashes": {"sha256": "g2hash"}, "package": {"package_name": "test.app"}},
        classification=_classification(), verification=None, correlation=None,
        stage_results=stage_results, output_dir=tmp_path,
    )
    content = report_path.read_text(encoding="utf-8")
    assert "Decompiler(s) used this run:" in content
    assert "jadx + CFR" in content and "9 source file(s)" in content


def test_generate_report_quantifies_partial_class_recovery(tmp_path):
    # G1 end-to-end: a partial decompile must say HOW partial (approximate
    # top-level class recovery), not merely "partial" - with the honest caveat
    # that it is an approximate class-count proxy, not a coverage percentage.
    stage_results = [StageResult(
        stage="decompile", status="success",
        evidence={"decompile_completeness": "partial", "jadx_exit_code": 1,
                  "jadx_file_count": 30, "class_recovery_ratio": 0.25,
                  "smali_top_level_classes": 120},
        duration_ms=500,
    )]
    report_path = generate_report(
        run_id="g1", apk_hash="g1hash", timestamp="2026-08-22T12:00:00",
        metadata={"hashes": {"sha256": "g1hash"}, "package": {"package_name": "test.app"}},
        classification=_classification(), verification=None, correlation=None,
        stage_results=stage_results, output_dir=tmp_path,
    )
    content = report_path.read_text(encoding="utf-8")
    assert "approximately 25.0% of the app's top-level classes" in content
    assert "30 jadx top-level" in content and "~120 apktool top-level" in content
    assert "approximate class-count proxy" in content


def test_hooks_engaged_absent_without_dynamic_stage():
    # G10: no dynamic stage -> no audit block (the full absent shape, so the
    # render spread never leaves a template var undefined).
    from report.generator import _hooks_engaged
    out = _hooks_engaged([])
    assert out == {
        "hooks_audit_present": False, "hooks_engaged_any": False,
        "hooks_checkpoints_fired": [], "hooks_driving_signatures": [],
        "hooks_handauthored_scripts": [], "hooks_handauthored_script_paths": [],
        "hooks_loaded_not_engaged": [],
        "hooks_root_probe_hits": 0, "hooks_ssl_effects": {},
        "hooks_script_errors": [], "hooks_env_normalization": False,
        # ADR-0020: no dynamic stage ran, so there is no instrument to name.
        "dynamic_instrument": None,
    }


def test_hooks_engaged_absent_when_dynamic_skipped():
    # A skipped dynamic stage carries a reason but no message stream - there is
    # nothing to audit, so no block (never an empty "engaged nothing" block).
    from report.generator import _hooks_engaged
    skipped = StageResult(stage="dynamic", status="skipped",
                          evidence={"reason": "no bypass script available"})
    assert _hooks_engaged([skipped])["hooks_audit_present"] is False


def test_dynamic_instrument_sentence_names_the_frida_that_produced_the_reading():
    # ADR-0020: a dynamically_confirmed verdict has to name the instrument it came
    # from, the way the report already names its static tools.
    from report.generator import _dynamic_instrument_sentence

    stage = StageResult(stage="dynamic", status="success", evidence={
        "frida_messages": [],
        "instrument": {
            "client": "16.7", "server": "16.7", "server_before": "16.6",
            "server_source": "pushed_from_tools", "replaced": True,
            "replace_reason": "the running frida-server reported 16.6, the client is 16.7",
            "unreadable": "never used here",
            "handshake": "enumerate_processes returned - the running server answered",
        },
    })
    sentence = _dynamic_instrument_sentence([stage])
    assert "frida 16.7 client" in sentence
    assert "frida-server 16.7 on the device (pushed from the repo's pinned copy)" in sentence
    assert "16.6" in sentence  # the version it replaced, not just the one it left
    assert "was replaced during this run" in sentence
    assert "the protocol handshake succeeded" in sentence


def test_dynamic_instrument_sentence_reports_a_failed_handshake_but_not_as_clean():
    # The handshake is the only effect that speaks to the *running* server; a run
    # whose handshake failed must not read like one that never needed to make one.
    from report.generator import _dynamic_instrument_sentence

    stage = StageResult(stage="dynamic", status="failed", evidence={
        "frida_messages": [],
        "instrument": {"client": "16.7", "server": "16.6",
                       "server_source": "already_running", "replaced": False,
                       "handshake": "failed: unable to communicate with remote frida-server"},
    })
    sentence = _dynamic_instrument_sentence([stage])
    assert "the protocol handshake FAILED" in sentence
    assert "unable to communicate with remote frida-server" in sentence
    assert "the protocol handshake succeeded" not in sentence


def test_dynamic_instrument_sentence_never_fabricates_an_unread_version():
    # ADR-0020: unmeasured is recorded as unmeasured. The pinned version is what
    # the repo ships, not what the device was running, and the two are not
    # interchangeable in a report that claims a bypass was confirmed.
    from report.generator import _dynamic_instrument_sentence

    stage = StageResult(stage="dynamic", status="success", evidence={
        "frida_messages": [],
        "instrument": {"client": "16.7", "server": None,
                       "server_source": "device_copy", "replaced": False,
                       "unreadable": "frida-server --version produced no readable version",
                       "handshake": None},
    })
    sentence = _dynamic_instrument_sentence([stage])
    assert "the device's frida-server version was not read" in sentence
    assert "frida-server --version produced no readable version" in sentence
    assert "frida-server 16.7" not in sentence  # the client's pin, never the device's
    assert "no protocol handshake was performed on this path" in sentence


def test_dynamic_instrument_sentence_keeps_no_instrument_and_not_established_apart():
    # "There was no instrument for this run" and "this run did not establish one"
    # are different statements about different things - only the second is about
    # the app - so they are never collapsed into one rendering.
    from report.generator import _dynamic_instrument_sentence

    assert _dynamic_instrument_sentence([]) is None
    skipped = StageResult(stage="dynamic", status="skipped",
                          evidence={"reason": "no bypass script available"})
    assert _dynamic_instrument_sentence([skipped]) is None
    ran_without_record = StageResult(stage="dynamic", status="success",
                                     evidence={"frida_messages": []})
    assert "not established" in _dynamic_instrument_sentence([ran_without_record])
    not_a_dict = StageResult(stage="dynamic", status="success",
                             evidence={"frida_messages": [], "instrument": None})
    assert "not established" in _dynamic_instrument_sentence([not_a_dict])


def test_hooks_engaged_correlates_signatures_checkpoints_and_effects():
    # G10 core: driving signature -> readiness checkpoint -> behavioral message,
    # each count from a real delivered message. A driving signature with no
    # checkpoint is surfaced as loaded-but-not-engaged (a lower bound, honest).
    from report.generator import _hooks_engaged
    dynamic = StageResult(
        stage="dynamic", status="success",
        evidence={
            "scripts_applied": [
                "synthesized", "root_su_binary_paths",
                "custom_trustmanager_checkservertrusted", "synthesized:libfoo.so",
            ],
            "frida_messages": [
                {"type": "send", "payload": {"hook": "root_su_binary_paths"}},
                {"type": "send", "payload": {"hook": "universal:ssl"}},
                {"type": "send", "payload": {"probeHit": "root", "path": "/system/bin/su"}},
                {"type": "send", "payload": {"bypassEffect": "ssl-pin-check"}},
                {"type": "send", "payload": {"bypassEffect": "ssl-pin-check"}},
                {"type": "send", "payload": {"bypassEffect": "ssl-handshake"}},
                {"type": "send", "payload": {}},   # non-signal message ignored
                "not-a-dict",                        # robustness: skipped
            ],
        },
    )
    out = _hooks_engaged([dynamic])
    assert out["hooks_audit_present"] is True
    assert out["hooks_engaged_any"] is True
    assert out["hooks_checkpoints_fired"] == ["root_su_binary_paths", "universal:ssl"]
    # "synthesized" and "synthesized:libfoo.so" are scaffolding, filtered out
    assert out["hooks_driving_signatures"] == [
        "custom_trustmanager_checkservertrusted", "root_su_binary_paths"]
    assert out["hooks_handauthored_scripts"] == []
    assert out["hooks_root_probe_hits"] == 1
    assert out["hooks_ssl_effects"] == {"ssl-handshake": 1, "ssl-pin-check": 2}
    # driving sig with a delivered checkpoint is engaged; the other is not
    assert out["hooks_loaded_not_engaged"] == ["custom_trustmanager_checkservertrusted"]


def test_hooks_engaged_root_probe_count_matches_its_label_not_any_probehit():
    # ENGAGE-PROBE-ROOT1 (decider-owns-its-guard + AG-SC1): the "N root probeHit(s)"
    # line counts ONLY probeHits whose VALUE is "root". A probeHit of some OTHER type
    # must not inflate the root count (that would print a false "root" fact), yet it IS
    # still a behavioral signal, so engaged_any must stay True - dropping a non-root hit
    # into "no engagement at all" would be a different false statement. The success-check
    # layer already matches the probeHit value precisely (androgoat.py:_ROOT_PROBE_RE);
    # this pins the same precision in the report audit. Both directions + the corner
    # where the ONLY signal is a non-root probeHit.
    from report.generator import _hooks_engaged
    mixed = StageResult(
        stage="dynamic", status="success",
        evidence={"scripts_applied": ["synthesized"],
                  "frida_messages": [
                      {"type": "send", "payload": {"probeHit": "root", "path": "/system/bin/su"}},
                      {"type": "send", "payload": {"probeHit": "emulator", "path": "goldfish"}},
                      {"type": "send", "payload": {"probeHit": "debugger"}}]},
    )
    out = _hooks_engaged([mixed])
    assert out["hooks_root_probe_hits"] == 1        # only the value=="root" hit
    assert out["hooks_engaged_any"] is True         # non-root hits still engage

    # Corner: the ONLY behavioral signal is a non-root probeHit (no checkpoint/effect).
    only_nonroot = StageResult(
        stage="dynamic", status="success",
        evidence={"scripts_applied": ["synthesized"],
                  "frida_messages": [{"type": "send", "payload": {"probeHit": "emulator"}}]},
    )
    out2 = _hooks_engaged([only_nonroot])
    assert out2["hooks_root_probe_hits"] == 0       # never a fabricated root count
    assert out2["hooks_engaged_any"] is True         # engaged (a signal came back)


def test_hooks_engaged_no_signal_is_unexercised_not_failure():
    # RS_CertPinning class: hooks loaded, message stream empty -> engaged_any
    # False, every driving sig loaded-but-not-engaged. Must be distinguishable
    # from a failed bypass (the whole point of the audit).
    from report.generator import _hooks_engaged
    dynamic = StageResult(
        stage="dynamic", status="success",
        evidence={"scripts_applied": ["synthesized", "root_su_binary_paths"],
                  "frida_messages": []},
    )
    out = _hooks_engaged([dynamic])
    assert out["hooks_audit_present"] is True
    assert out["hooks_engaged_any"] is False
    assert out["hooks_checkpoints_fired"] == []
    assert out["hooks_loaded_not_engaged"] == ["root_su_binary_paths"]


def test_hooks_engaged_surfaces_frida_script_errors():
    # Principle 3 / ADR-0006: a Frida `{'type':'error'}` message is an uncaught
    # exception raised BY an injected hook - the instrumentation did not run
    # cleanly. It carries no `payload`, so every other consumer skips it, and a
    # crashed run would otherwise render as a clean, un-exercised negative (the
    # misleading "engagement showed none" outcome this audit exists to prevent).
    # The audit must collect it, format it with its location, and NOT let it
    # inflate any engagement count.
    from report.generator import _hooks_engaged
    dynamic = StageResult(
        stage="dynamic", status="success",
        evidence={
            "scripts_applied": ["synthesized", "root_su_binary_paths"],
            "frida_messages": [
                {"type": "error", "description": "ReferenceError: Foo is not defined",
                 "fileName": "hook.js", "lineNumber": 12,
                 "stack": "ReferenceError: Foo is not defined\n    at <eval>"},
                {"type": "error", "description": "Error: no class com.x.Y"},  # no location
            ],
        },
    )
    out = _hooks_engaged([dynamic])
    assert out["hooks_audit_present"] is True
    # Errors are recorded, formatted with location when present, never counted as
    # engagement (no checkpoint/probe/effect came from a crash).
    assert out["hooks_script_errors"] == [
        "ReferenceError: Foo is not defined (hook.js:12)",
        "Error: no class com.x.Y",
    ]
    assert out["hooks_engaged_any"] is False   # a crash is NOT engagement
    assert out["hooks_checkpoints_fired"] == []
    assert out["hooks_root_probe_hits"] == 0
    assert out["hooks_ssl_effects"] == {}
    # A run with a real checkpoint AND an error surfaces BOTH - the error never
    # suppresses genuine engagement, and engagement never hides the error.
    mixed = StageResult(
        stage="dynamic", status="success",
        evidence={"scripts_applied": ["synthesized", "root_su_binary_paths"],
                  "frida_messages": [
                      {"type": "send", "payload": {"hook": "root_su_binary_paths"}},
                      {"type": "error", "description": "TypeError: x.y is null"}]},
    )
    mixed_out = _hooks_engaged([mixed])
    assert mixed_out["hooks_engaged_any"] is True
    assert mixed_out["hooks_checkpoints_fired"] == ["root_su_binary_paths"]
    assert mixed_out["hooks_script_errors"] == ["TypeError: x.y is null"]
    # Absent path (no dynamic stage) still exposes the key as [] - the uniform
    # contract the template-coverage guard relies on.
    assert _hooks_engaged([])["hooks_script_errors"] == []


def test_generate_report_frida_script_error_is_not_read_as_unexercised(tmp_path):
    # The honesty hole this closes: with only an error message, engaged_any is
    # False, so the report used to print "un-exercised ... NOT a failed bypass" -
    # actively false when a hook actually crashed. The report must instead name
    # the crash and attribute the empty engagement to the script fault.
    classification = _classification()
    dynamic = StageResult(
        stage="dynamic", status="success",
        evidence={"scripts_applied": ["synthesized", "root_su_binary_paths"],
                  "frida_messages": [
                      {"type": "error", "description": "ReferenceError: Foo is not defined",
                       "fileName": "hook.js", "lineNumber": 12}]},
    )
    report_path = generate_report(
        run_id="fridaerr", apk_hash="fe001", timestamp="2026-09-06T12:00:00",
        metadata={"hashes": {"sha256": "fe001"}, "package": {"package_name": "com.example.app"}},
        classification=classification, verification=None, correlation=None,
        stage_results=[dynamic], output_dir=tmp_path,
    )
    content = report_path.read_text(encoding="utf-8")
    # The crash is surfaced verbatim, with its location.
    assert "Frida hook script error(s) delivered this run" in content
    assert "ReferenceError: Foo is not defined (hook.js:12)" in content
    # The crashed-branch line replaces the misleading "un-exercised" claim.
    assert "the most likely cause is the **script fault**" in content
    assert "This is un-exercised (or a suppressed message stream), NOT a failed bypass" not in content


def test_hooks_engaged_labels_handauthored_scripts():
    # Hand-authored .js targets are named as scripts, not mistaken for signatures.
    from report.generator import _hooks_engaged
    dynamic = StageResult(
        stage="dynamic", status="success",
        evidence={"scripts_applied": ["uncrackable1.js"],
                  "frida_messages": [{"type": "send", "payload": {"hook": "OkHttp CertificatePinner"}}]},
    )
    out = _hooks_engaged([dynamic])
    assert out["hooks_handauthored_scripts"] == ["uncrackable1.js"]
    assert out["hooks_driving_signatures"] == []
    assert out["hooks_checkpoints_fired"] == ["OkHttp CertificatePinner"]
    # A script not present on disk falls back to its bare basename (never a
    # fabricated path) - uncrackable1.js is not a real script in this repo.
    assert out["hooks_handauthored_script_paths"] == ["uncrackable1.js"]


def test_hooks_engaged_real_script_resolves_to_full_path():
    # A real hand-authored bypass script is reported with the exact full path it was
    # loaded from (src/dynamic/scripts/...), answering "which script did the bypass".
    from report.generator import _hooks_engaged, _SCRIPT_DIR
    dynamic = StageResult(
        stage="dynamic", status="success",
        evidence={"scripts_applied": ["root_bypass_v1.js"],
                  "frida_messages": [{"type": "send", "payload": {"hook": "RootBeer"}}]},
    )
    out = _hooks_engaged([dynamic])
    assert out["hooks_handauthored_scripts"] == ["root_bypass_v1.js"]
    expected = str(_SCRIPT_DIR / "root_bypass_v1.js")
    assert out["hooks_handauthored_script_paths"] == [expected]
    # The resolved path must really point into the shipped script dir. Compare on
    # the normalised form so this holds regardless of the host separator (on
    # Windows str(Path(...)) is '\'-separated, and the true contract here is
    # "ends with src/dynamic/scripts/root_bypass_v1.js", not which slash the OS
    # happens to use).
    assert expected.replace("\\", "/").endswith("src/dynamic/scripts/root_bypass_v1.js")


def test_generate_report_renders_hooks_engaged_audit(tmp_path):
    # G10 end-to-end: the audit block appears in the rendered report, tracing
    # engagement to the driving signature and reporting real message counts.
    stage_results = [StageResult(
        stage="dynamic", status="success",
        evidence={
            "scripts_applied": ["synthesized", "root_bypass_v1.js",
                                "root_su_binary_paths",
                                "custom_trustmanager_checkservertrusted"],
            "frida_messages": [
                {"type": "send", "payload": {"hook": "root_su_binary_paths"}},
                {"type": "send", "payload": {"probeHit": "root", "path": "/system/bin/su"}},
                {"type": "send", "payload": {"bypassEffect": "ssl-pin-check"}},
                {"type": "send", "payload": {"bypassEffect": "ssl-pin-check"}},
            ],
        },
        duration_ms=500,
    )]
    report_path = generate_report(
        run_id="g10", apk_hash="g10hash", timestamp="2026-08-23T12:00:00",
        metadata={"hashes": {"sha256": "g10hash"}, "package": {"package_name": "test.app"}},
        classification=_classification(), verification=None, correlation=None,
        stage_results=stage_results, output_dir=tmp_path,
    )
    content = report_path.read_text(encoding="utf-8")
    assert "Bypass hooks engaged (auditable, this run)" in content
    # the bypass script that did the work is named with its full on-disk path
    assert "Bypass script(s) used (full path):" in content
    # The rendered path is the real on-disk path, so normalise the separator
    # before matching - on Windows it is 'src\dynamic\scripts\...'. The contract
    # is that the shipped script dir and filename appear, not the slash used.
    assert "src/dynamic/scripts/root_bypass_v1.js`" in content.replace("\\", "/")
    assert "`root_su_binary_paths`" in content            # driving signature named
    assert "1 root probeHit(s)" in content                # real behavioral count
    assert "`ssl-pin-check`=2" in content                 # real effect count
    # the driving sig with no checkpoint is surfaced as loaded-but-not-engaged
    assert "Loaded but readiness not observed this run" in content
    assert "`custom_trustmanager_checkservertrusted`" in content


def test_generate_report_shows_evidence_provenance(tmp_path):
    # G11: each evidence row names its provenance (evidence_type) so a reader
    # sees HOW a finding was detected - bytecode_string vs resource_xml vs source
    # vs native_symbol - not merely that it matched. Wires a previously dead field.
    root = CategoryVerdict(
        confidence=0.8, detected=True,
        evidence=[Evidence(signature_id="root_su_binary_paths", file="Main.java",
                           line_or_offset=42, matched_text="/system/bin/su",
                           evidence_type="bytecode_string")],
    )
    ssl = CategoryVerdict(confidence=0.0, detected=False, evidence=[])
    classification = ClassificationResult(action=Action.ROOT_ONLY, root=root, ssl=ssl)
    report_path = generate_report(
        run_id="g11", apk_hash="g11hash", timestamp="2026-08-23T12:00:00",
        metadata={"hashes": {"sha256": "g11hash"}, "package": {"package_name": "test.app"}},
        classification=classification, verification=None, correlation=None,
        stage_results=[], output_dir=tmp_path,
    )
    content = report_path.read_text(encoding="utf-8")
    assert "(bytecode_string)" in content
    assert "`root_su_binary_paths` (bytecode_string) at Main.java:42" in content


def _neither():
    root = CategoryVerdict(confidence=0.1, detected=False, evidence=[])
    ssl = CategoryVerdict(confidence=0.1, detected=False, evidence=[])
    return ClassificationResult(action=Action.NEITHER, root=root, ssl=ssl)


def test_self_termination_is_a_promoted_finding_not_a_flat_unverified(tmp_path):
    # FR-4.6: when the app self-terminated on the instrumentation, frida_runner
    # records a failed dynamic stage with app_self_terminated=True + a specific
    # reason, and verification stays None. Without promotion the Dynamic
    # Verification section renders the SAME generic "bypass not verified" line it
    # shows for any dynamic failure, and the distinct anti-tampering reason lived
    # ONLY in the Stage Results error cell - flattening a positive security finding
    # (the app has active anti-instrumentation that FIRED) into a mere absence.
    reason = ("target app self-terminated after resume - detected the "
              "instrumentation (Frida/root) and exited before dynamic "
              "verification could confirm a bypass")
    dynamic = StageResult(
        stage="dynamic", status="failed",
        evidence={"app_self_terminated": True, "reason": reason,
                  "scripts_applied": ["synthesized"], "frida_messages": []},
        error="app self-terminated due to detected instrumentation (FR-4.6)",
    )
    report_path = generate_report(
        run_id="st", apk_hash="st001", timestamp="2026-08-23T12:00:00",
        metadata={"hashes": {"sha256": "st001"}, "package": {"package_name": "com.example.app"}},
        classification=_neither(), verification=None, correlation=None,
        stage_results=[dynamic], output_dir=tmp_path,
    )
    content = report_path.read_text(encoding="utf-8")
    # promoted to its own line in Dynamic Verification, framed as a positive finding
    assert "App anti-instrumentation fired (FR-4.6)" in content
    assert "positive finding" in content
    assert reason in content
    # the note sits in the Dynamic Verification section, above Stage Results
    assert content.index("anti-instrumentation fired") < content.index("## Stage Results")


def test_no_self_termination_note_on_a_normal_dynamic_run(tmp_path):
    # Strict gate: the note fires ONLY on a real app_self_terminated signal. A
    # dynamic stage that ran normally (no such flag) must NOT print the finding -
    # it is read from the stage's own evidence, never inferred from a None verdict.
    dynamic = StageResult(
        stage="dynamic", status="success",
        evidence={"frida_messages": [], "scripts_applied": ["synthesized"]},
    )
    report_path = generate_report(
        run_id="st", apk_hash="st002", timestamp="2026-08-23T12:00:00",
        metadata={"hashes": {"sha256": "st002"}, "package": {"package_name": "com.example.app"}},
        classification=_neither(), verification=None, correlation=None,
        stage_results=[dynamic], output_dir=tmp_path,
    )
    content = report_path.read_text(encoding="utf-8")
    assert "anti-instrumentation fired" not in content
    # and a run with no dynamic stage at all is equally silent
    r2 = generate_report(
        run_id="st", apk_hash="st003", timestamp="2026-08-23T12:00:00",
        metadata={"hashes": {"sha256": "st003"}, "package": {"package_name": "com.example.app"}},
        classification=_neither(), verification=None, correlation=None,
        stage_results=[], output_dir=tmp_path,
    )
    assert "anti-instrumentation fired" not in r2.read_text(encoding="utf-8")


def test_self_termination_note_falls_back_when_reason_missing(tmp_path):
    # Robustness: an older/edge dynamic stage that set app_self_terminated=True but
    # carries no reason string still gets the finding, using the shared default
    # wording (single source of truth with frida_runner._self_terminated_result).
    dynamic = StageResult(
        stage="dynamic", status="failed",
        evidence={"app_self_terminated": True, "frida_messages": []},
        error="app self-terminated (FR-4.6)",
    )
    report_path = generate_report(
        run_id="st", apk_hash="st004", timestamp="2026-08-23T12:00:00",
        metadata={"hashes": {"sha256": "st004"}, "package": {"package_name": "com.example.app"}},
        classification=_neither(), verification=None, correlation=None,
        stage_results=[dynamic], output_dir=tmp_path,
    )
    content = report_path.read_text(encoding="utf-8")
    assert "App anti-instrumentation fired (FR-4.6)" in content
    assert "detected the instrumentation (Frida/root)" in content


def test_capture_summary_exposes_the_non_java_layers_and_the_preflight_verdict():
    from common import StageResult
    from report.generator import _capture_summary

    skipped = StageResult(
        stage="capture-traffic", status="skipped",
        evidence={"reason": "no flows captured",
                  "not_applicable_reason": "no in-process SSL signal was observed ...",
                  "non_java_tls_layers": ["WebView (Chromium's own TLS stack)"],
                  "device_reached_proxy_preflight": False},
    )
    cs = _capture_summary([skipped])
    assert cs["capture_non_java_tls_layers"] == ["WebView (Chromium's own TLS stack)"]
    assert cs["capture_device_reached_preflight"] is False
    # No capture stage at all: the template reads both keys unconditionally, so a run
    # with none must still provide them (RPT-TMPLCOV1).
    assert _capture_summary([])["capture_non_java_tls_layers"] is None
    assert _capture_summary([])["capture_device_reached_preflight"] is None


def test_generate_report_non_java_tls_app_is_not_told_it_did_not_try(tmp_path):
    # RS_CertPinning 2026-09-16, at report level: the capture came back empty on an
    # app whose pinned request is a WebView page load (Webview.java:22), which runs
    # Chromium's TLS stack and never reaches the Java-stack observers. Their silence
    # must not be rendered as the app not trying.
    from common import StageResult
    from static.manifest import ManifestInfo

    skipped = StageResult(
        stage="capture-traffic", status="skipped",
        evidence={
            "reason": "no flows captured", "proxy": "127.0.0.1:8081",
            "client_connections": 1, "tls_failed_clients": [],
            "capture_channel_alive": True, "device_reached_proxy_preflight": True,
            "non_java_tls_layers": ["WebView (Chromium's own TLS stack)"],
            "reclassified_from": "failed",
            "not_applicable_reason": (
                "no in-process SSL signal was observed, and this app has at least one "
                "network path outside the Java stack those observers hook (WebView "
                "(Chromium's own TLS stack)) - so their silence is uninformative this "
                "run, and this run cannot say the app did not exercise its network/SSL "
                "path"),
            "flows_path": "/x/flows"},
    )
    manifest = ManifestInfo(debuggable=False, network_security_config=None,
                            permissions=["android.permission.INTERNET"])
    path = generate_report(
        run_id="cap-nonjava", apk_hash="cap03", timestamp="2026-09-16T13:00:00",
        metadata={"hashes": {"sha256": "cap03"}, "package": {"package_name": "test.app"}},
        classification=_classification(), verification=None, correlation=None,
        stage_results=[skipped], output_dir=tmp_path, manifest=manifest,
    )
    content = path.read_text(encoding="utf-8")
    # The unobservable layer is named and the observers are disclaimed...
    assert "cannot speak for this app" in content
    assert "WebView (Chromium's own TLS stack)" in content
    assert "uninformative" in content
    # ...and the lead-in no longer claims the empty capture was PROVEN expected.
    assert "proved this run's empty capture was expected" not in content
    assert "showed the empty capture is not a proxy/wiring fault" in content


def test_generate_report_preflight_down_does_not_claim_the_app_never_executed(tmp_path):
    # cli.py's own Signal-P comment: these observers fire INSIDE a live connection's
    # TLS stage, so a device that cannot open the socket produces their silence
    # whether or not the app made a request. The report must not read that 0 as proof
    # the app's pinned request never executed.
    from common import StageResult
    from static.manifest import ManifestInfo

    down = StageResult(
        stage="capture-traffic", status="failed",
        evidence={"reason": "no flows captured", "proxy": "127.0.0.1:8081",
                  "client_connections": 0, "tls_failed_clients": [],
                  "capture_channel_alive": True,
                  "device_reached_proxy_preflight": False, "flows_path": "/x/flows"},
        error="no traffic captured through the proxy",
    )
    dynamic = StageResult(
        stage="dynamic", status="success",
        evidence={"frida_messages": [], "scripts_applied": ["synthetic_ssl_pinning_bypass"]},
    )
    manifest = ManifestInfo(debuggable=False, network_security_config=None,
                            permissions=["android.permission.INTERNET"])
    path = generate_report(
        run_id="cap-preflight-down", apk_hash="cap04", timestamp="2026-09-16T13:05:00",
        metadata={"hashes": {"sha256": "cap04"}, "package": {"package_name": "test.app"}},
        classification=_classification(), verification=None, correlation=None,
        stage_results=[dynamic, down], output_dir=tmp_path, manifest=manifest,
    )
    content = path.read_text(encoding="utf-8")
    assert "the app's own pinned request never executed" not in content
    assert "pre-flight probe found the device could **not** reach the proxy" in content
    assert "it leaves a device→proxy reachability failure to fix" in content


def test_generate_report_zero_app_connections_on_a_proven_up_route_is_not_a_wiring_failure(tmp_path):
    # The corrected count is app-attributable, so 0 no longer means "the device never
    # reached the proxy" when the pre-flight probe proved the route UP. Reading the
    # corrected 0 through the old prose would assert a wiring failure the probe
    # disproves.
    from common import StageResult
    from static.manifest import ManifestInfo

    quiet = StageResult(
        stage="capture-traffic", status="failed",
        evidence={"reason": "no flows captured", "proxy": "127.0.0.1:8081",
                  "client_connections": 0, "client_connections_raw": 1,
                  "preflight_probe_connections": 1,
                  "tls_failed_clients": [], "capture_channel_alive": True,
                  "device_reached_proxy_preflight": True, "flows_path": "/x/flows"},
        error="no traffic captured through the proxy",
    )
    # No dynamic stage: with one, the observer-corroborates arm of the same ladder
    # legitimately wins (its audit IS present). This is the --skip-dynamic capture.
    manifest = ManifestInfo(debuggable=False, network_security_config=None,
                            permissions=["android.permission.INTERNET"])
    path = generate_report(
        run_id="cap-up-but-quiet", apk_hash="cap05", timestamp="2026-09-16T13:10:00",
        metadata={"hashes": {"sha256": "cap05"}, "package": {"package_name": "test.app"}},
        classification=_classification(), verification=None, correlation=None,
        stage_results=[quiet], output_dir=tmp_path, manifest=manifest,
    )
    content = path.read_text(encoding="utf-8")
    assert "its own pre-flight probe excluded" in content
    assert "the pre-flight probe found the route **UP** and no other connection arrived" in content
    assert "real device→proxy reachability failure" not in content


def _liveness_stage(pid_launch, pid_capture):
    from common import StageResult
    return StageResult(
        stage="capture-traffic", status="failed",
        evidence={"reason": "no flows captured", "proxy": "127.0.0.1:8081",
                  "client_connections": 0, "tls_failed_clients": [],
                  "capture_channel_alive": True,
                  "device_reached_proxy_preflight": True, "flows_path": "/x/flows",
                  "app_pid_after_launch": pid_launch,
                  "app_pid_after_capture": pid_capture},
        error="no traffic captured through the proxy",
    )


def _render_liveness(tmp_path, stage, tag):
    from static.manifest import ManifestInfo
    manifest = ManifestInfo(debuggable=False, network_security_config=None,
                            permissions=["android.permission.INTERNET"])
    return generate_report(
        run_id=f"cap-liveness-{tag}", apk_hash=f"caplive{tag}",
        timestamp="2026-09-16T14:00:00",
        metadata={"hashes": {"sha256": f"caplive{tag}"},
                  "package": {"package_name": "test.app"}},
        classification=_classification(), verification=None, correlation=None,
        stage_results=[stage], output_dir=tmp_path, manifest=manifest,
    ).read_text(encoding="utf-8")


def test_capture_summary_exposes_the_app_liveness_samples():
    from report.generator import _capture_summary
    summary = _capture_summary([_liveness_stage(4711, 0)])
    assert summary["capture_app_pid_after_launch"] == 4711
    assert summary["capture_app_pid_after_capture"] == 0
    # No capture stage ran -> None, never 0, which would assert a verdict we did not
    # measure (uniform key set: RPT-TMPLCOV1).
    assert _capture_summary([])["capture_app_pid_after_launch"] is None


def test_generate_report_app_that_never_ran_is_not_told_it_stayed_off_the_network(tmp_path):
    # Every other arm of the empty-capture ladder attributes the empty capture to the
    # app's network behaviour. A pidof of 0 immediately after the launch says the app
    # was not alive to have any - and am start returns 0 for a crash, so nothing else
    # in the capture distinguishes it.
    content = _render_liveness(tmp_path, _liveness_stage(0, 0), "never")
    assert "found the app was NOT running" in content
    assert "the app staying off the network path this run" not in content
    assert "consequence of the launch failure" in content


def test_generate_report_app_that_died_mid_window_qualifies_its_silence(tmp_path):
    content = _render_liveness(tmp_path, _liveness_stage(4711, 0), "died")
    assert "died mid-window" in content
    assert "found the app was NOT running" not in content
    # The launch itself was sound, so the app-silence reading stands - qualified.
    assert "the app staying off the network path this run" in content


def test_generate_report_app_alive_throughout_keeps_the_app_silence_reading(tmp_path):
    content = _render_liveness(tmp_path, _liveness_stage(4711, 4712), "alive")
    assert "the app staying off the network path this run" in content
    assert "found the app was NOT running" not in content
    assert "died mid-window" not in content


def test_generate_report_unmeasured_liveness_claims_nothing_about_the_app(tmp_path):
    content = _render_liveness(tmp_path, _liveness_stage(None, None), "unmeasured")
    assert "found the app was NOT running" not in content
    assert "died mid-window" not in content


# --- ADR-0011: the deterministic UI drive's record reaches the report ---------


def _drive_record(tapped, reason=None, label="START", attempted=None):
    """Mirrors the three records _drive_ui actually returns: a landed tap, a tap
    that was issued and failed, and a refusal that was never issued at all."""
    if attempted is None:
        attempted = tapped
    if tapped:
        return {"attempted": True, "tapped": True, "selected_by": "intent label `start`",
                "target": {"label": label, "bounds": "[600,2200][840,2418]",
                           "center": (720, 2309)}, "reason": None}
    if attempted:
        return {"attempted": True, "tapped": False, "selected_by": "intent label `start`",
                "target": {"label": label, "bounds": "[600,2200][840,2418]",
                           "center": (720, 2309)}, "reason": reason}
    return {"attempted": False, "tapped": False, "target": None, "selected_by": None,
            "targets_seen": 3, "reason": reason}


def _flows_stage(ui_drive):
    from common import StageResult
    return StageResult(
        stage="capture-traffic", status="success",
        evidence={"reason": None, "proxy": "127.0.0.1:8081",
                  "system_ca": "/system/etc/security/cacerts/x.0",
                  "flow_summary": [{"host": "api.test.app", "scheme": "https",
                                    "method": "GET", "path": "/v1/x", "status": 200}],
                  "client_connections": 1, "tls_failed_clients": [],
                  "ui_drive": ui_drive},
        error=None,
    )


def test_an_unread_hierarchy_is_not_rendered_as_a_gated_control(tmp_path):
    """The refusal branch closes by telling the reader a control gated the path.
    That is a claim about the SCREEN, and it holds only where a screen was read:
    when the dump came back with no nodes at all the run never saw what it was
    refusing to tap, and the report must not turn that into a gate the app has.
    Both censuses render from the same record, so the difference is the gate."""
    from common import StageResult

    def empty_capture(ui_drive):
        return StageResult(
            stage="capture-traffic", status="failed",
            evidence={"reason": "no flows captured", "proxy": "127.0.0.1:8081",
                      "client_connections": 0, "tls_failed_clients": [],
                      "device_reached_proxy_preflight": True, "ui_drive": ui_drive},
            error="no traffic captured through the proxy",
        )

    unread = {"attempted": False, "tapped": False, "target": None, "selected_by": None,
              "targets_seen": 0, "hierarchy": {"nodes": 0, "clickable": 0, "focusable": 0},
              "reason": "the dumped hierarchy contained no nodes at all - the screen was "
                        "never read, so nothing here says what it offered to tap"}
    body = _render_liveness(tmp_path, empty_capture(unread), "unread")
    assert "never read" in body
    assert "silent on the app's UI" in body
    assert "gated behind a control therefore stays un-exercised" not in body

    # Twelve nodes and not one of them tappable - the screen WAS read, so the
    # policy's own refusal stands and the gate sentence is available.
    read = {"attempted": False, "tapped": False, "target": None, "selected_by": None,
            "targets_seen": 0, "hierarchy": {"nodes": 12, "clickable": 0, "focusable": 0},
            "reason": "no tappable widget in the hierarchy"}
    body2 = _render_liveness(tmp_path, empty_capture(read), "read")
    assert "gated behind a control therefore stays un-exercised" in body2
    assert "silent on the app's UI" not in body2

    # And the arm where nothing was read at all: no census, and the stage's own
    # flag recording that. The gate sentence is unavailable here too - it is the
    # arm where the reason rendered immediately before it in the same paragraph
    # says nothing was learned about the screen, so asserting a gate would
    # contradict the sentence it is appended to.
    never_read = {"attempted": False, "tapped": False, "target": None,
                  "selected_by": None, "unread_hierarchy": True, "hierarchy": None,
                  "reason": "uiautomator reported a dump but the hierarchy could not be "
                            "read back (0 bytes retrieved), so nothing here says what "
                            "was on screen"}
    body3 = _render_liveness(tmp_path, empty_capture(never_read), "never_read")
    assert "silent on the app's UI" in body3
    assert "gated behind a control therefore stays un-exercised" not in body3


def test_capture_summary_exposes_the_ui_drive_record():
    """The drive is recorded on the stage; a consumer must be able to read it, or
    the record is a fact nothing acts on."""
    from report.generator import _capture_summary
    stage = _flows_stage(_drive_record(True))
    assert _capture_summary([stage])["capture_ui_drive"]["tapped"] is True
    # No capture stage ran, so no drive happened: None, never a tapped record.
    assert _capture_summary([])["capture_ui_drive"] is None


def test_a_tap_is_named_as_the_cause_of_part_of_the_captured_traffic(tmp_path):
    """A driven run's flows are partly flows the tool itself caused. The report
    says so rather than implying the app produced them all on its own."""
    body = _render_liveness(tmp_path, _flows_stage(_drive_record(True)), "tapped")
    assert "drove the app with **one tap**" in body
    assert "**the tool's own tap caused**" in body
    assert "`START`" in body


def test_an_empty_capture_after_a_tap_says_the_gated_screen_was_reached(tmp_path):
    """The same empty list means something stronger once the control gating the
    path has actually been tapped."""
    stage = _liveness_stage(4711, 4711)
    stage.evidence["ui_drive"] = _drive_record(True)
    body = _render_liveness(tmp_path, stage, "emptytap")
    assert "after** the gated screen was reached" in body
    assert "did **not** drive the UI" not in body


def test_a_refused_drive_names_why_the_path_stayed_unexercised(tmp_path):
    """A refusal is an outcome, not an absence: the report must not let an empty
    capture read as though the app had been driven to the gated path."""
    stage = _liveness_stage(4711, 4711)
    stage.evidence["ui_drive"] = _drive_record(
        False, "3 tappable widgets and none named by the intent vocabulary - refusing to guess")
    body = _render_liveness(tmp_path, stage, "refused")
    assert "did **not** drive the UI" in body
    assert "refusing to guess" in body
    assert "stays un-exercised this run" in body


def test_a_tap_that_did_not_land_is_not_reported_as_a_drive(tmp_path):
    """`attempted` without `tapped` is a failed tap: it must not be narrated as
    having reached the screen."""
    stage = _liveness_stage(4711, 4711)
    stage.evidence["ui_drive"] = _drive_record(False, "input tap failed: device offline",
                                                attempted=True)
    body = _render_liveness(tmp_path, stage, "noland")
    assert "did **not** land" in body
    assert "after** the gated screen was reached" not in body


def test_a_captured_flow_is_not_claimed_as_the_app_s_own(tmp_path):
    """The capture proxy is device-wide and no per-flow attribution to the target
    exists, so a decrypted flow must not be presented as proof the app produced
    it - the pinning reading is scoped to the hosts observed."""
    body = _render_liveness(tmp_path, _flows_stage(_drive_record(True)), "scope")
    assert "decrypted the HTTPS flows below" in body
    assert "**not by itself proof that this app produced it**" in body
    assert "The app accepted proxy-decrypted HTTPS flows" not in body


def _render_with_attribution(tmp_path, attribution, tag):
    stage = _flows_stage(_drive_record(True))
    stage.evidence["proxy_attribution"] = attribution
    return _render_liveness(tmp_path, stage, tag)


def test_a_confirmed_target_socket_says_the_pinning_reading_bears_on_the_app(tmp_path):
    body = _render_with_attribution(
        tmp_path, {"reached": True, "uid": 10131, "shared_uid": [],
                   "reason": "uid 10131 held a socket to the capture proxy"}, "attr-yes")
    assert "puts this app on it" in body
    assert "at uid granularity" in body
    assert "not by itself proof that this app produced it" not in body


def test_a_measured_absence_says_the_flows_are_not_this_app_s(tmp_path):
    """The strongest form the live run made possible: the device says the app
    never opened a socket to the proxy, so the pinning reading cannot be about
    it - rather than leaving the reader to infer it from a caveat."""
    body = _render_with_attribution(
        tmp_path, {"reached": False, "uid": 10131, "shared_uid": [],
                   "reason": "uid 10131 (com.example.app) held no socket to the capture "
                             "proxy in any of 7 readable sample(s) of the window"}, "attr-no")
    assert "did NOT reach the proxy" in body
    assert "are therefore not this app's traffic" in body
    assert "says nothing about this app" in body


def test_an_unmeasured_attribution_keeps_the_weaker_scoped_wording(tmp_path):
    """None is not False: with no attribution the report may only scope the
    claim, never assert the app stayed away."""
    body = _render_with_attribution(tmp_path, {"reached": None, "uid": None,
                                               "shared_uid": [], "reason": "not measured"},
                                    "attr-none")
    assert "not by itself proof that this app produced it" in body
    assert "did NOT reach the proxy" not in body
    assert "puts this app on it" not in body


def test_a_capture_with_no_attribution_key_renders_the_weaker_wording(tmp_path):
    body = _render_liveness(tmp_path, _flows_stage(_drive_record(True)), "attr-absent")
    assert "not by itself proof that this app produced it" in body
    assert "did NOT reach the proxy" not in body
