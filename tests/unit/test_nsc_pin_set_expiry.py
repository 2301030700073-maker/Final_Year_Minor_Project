"""NSC <pin-set expiration> - declared-but-inactive pinning must be flagged.

Android stops enforcing an NSC pin-set once its expiration date passes (it falls
back to normal CA validation), so a matched <pin-set> whose date is in the past is
declared-but-not-enforced pinning. manifest._nsc_pin_set_expirations extracts the
raw dates (clock-free, fixture-testable); generator._expired_pin_sets decides
expiry against the RUN's own timestamp (deterministic, no live clock). An expired
pin-set is surfaced as inactive - never suppressed (it is still declared pinning)
and never a confident negative (ADR-0006). Pure, no Android toolchain."""

from static.manifest import ManifestInfo, _nsc_pin_set_expirations
from report.generator import _expired_pin_sets, _is_iso_date


def _write_nsc(tmp_path, body: str):
    p = tmp_path / "nsc.xml"
    p.write_text("<network-security-config>\n" + body + "</network-security-config>\n")
    return p


def test_pin_set_expiration_extracted(tmp_path):
    nsc = _write_nsc(
        tmp_path,
        "  <domain-config>\n"
        "    <domain>api.example.com</domain>\n"
        '    <pin-set expiration="2018-01-01">\n'
        '      <pin digest="SHA-256">AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</pin>\n'
        "    </pin-set>\n"
        "  </domain-config>\n",
    )
    assert _nsc_pin_set_expirations(nsc) == ["2018-01-01"]


def test_pin_set_without_expiration_is_omitted(tmp_path):
    nsc = _write_nsc(
        tmp_path,
        "  <domain-config>\n"
        "    <pin-set>\n"
        '      <pin digest="SHA-256">AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</pin>\n'
        "    </pin-set>\n"
        "  </domain-config>\n",
    )
    # No expiration attribute -> the pin-set never expires -> not extracted.
    assert _nsc_pin_set_expirations(nsc) == []
    # No NSC at all -> empty, degrades honestly, never crashes.
    assert _nsc_pin_set_expirations(None) == []


def test_expired_pin_set_flagged_against_run_timestamp():
    m = ManifestInfo(
        debuggable=False, network_security_config="@xml/nsc",
        pin_set_expirations=["2018-01-01", "2999-12-31"],
    )
    # Run date 2026-08-23: the 2018 pin-set is expired; the 2999 one is not.
    assert _expired_pin_sets(m, "2026-08-23T12:00:00") == ["2018-01-01"]


def test_future_only_pin_set_is_not_flagged():
    m = ManifestInfo(
        debuggable=False, network_security_config="@xml/nsc",
        pin_set_expirations=["2999-12-31"],
    )
    assert _expired_pin_sets(m, "2026-08-23T12:00:00") == []


def test_pin_set_expiring_on_run_date_is_inactive():
    # Boundary: an expiration EQUAL to the run's date. Android parses
    # expiration="YYYY-MM-DD" to midnight at the START of that day and bypasses
    # pinning when now > expirationTime; the run happens later that same day, so
    # Android has already stopped enforcing. Flagging it inactive is both faithful
    # to Android and the safe direction (never overstate the app's defenses).
    m = ManifestInfo(
        debuggable=False, network_security_config="@xml/nsc",
        pin_set_expirations=["2026-08-23"],
    )
    assert _expired_pin_sets(m, "2026-08-23T12:00:00") == ["2026-08-23"]
    # A pin-set expiring the day AFTER the run is still active.
    m2 = ManifestInfo(
        debuggable=False, network_security_config="@xml/nsc",
        pin_set_expirations=["2026-08-24"],
    )
    assert _expired_pin_sets(m2, "2026-08-23T12:00:00") == []


def test_malformed_and_missing_inputs_are_safe():
    m = ManifestInfo(
        debuggable=False, network_security_config="@xml/nsc",
        pin_set_expirations=["not-a-date", "", "2018-13-40"],
    )
    # Malformed dates are skipped, never flagged (we never invent an expiry).
    assert _expired_pin_sets(m, "2026-08-23T12:00:00") == []
    # No manifest / non-ISO run timestamp -> empty, never a crash.
    assert _expired_pin_sets(None, "2026-08-23T12:00:00") == []
    assert _expired_pin_sets(m, "") == []


def test_is_iso_date_boundaries():
    assert _is_iso_date("2026-08-23")
    assert not _is_iso_date("2026-8-3")   # not zero-padded
    assert not _is_iso_date("2026/08/23")
    assert not _is_iso_date("")
