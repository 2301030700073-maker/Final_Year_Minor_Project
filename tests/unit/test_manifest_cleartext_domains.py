"""MAN1: per-domain cleartext permits from NSC <domain-config> overrides.

A secure base-config (cleartextTrafficPermitted="false") still exposes specific
domains to cleartext when a <domain-config cleartextTrafficPermitted="true">
overrides it. The base-config flag alone hides that; _nsc_cleartext_domains
surfaces the exposed domains additively - it never flips a policy negative, it
adds fact (ADR-0006). Pure, fixture-driven, no Android toolchain."""

from static.manifest import _nsc_cleartext_domains, _nsc_cleartext_permitted


def test_domain_config_override_surfaces_exposed_domains(tmp_path):
    nsc = tmp_path / "nsc.xml"
    nsc.write_text(
        '<?xml version="1.0" encoding="utf-8"?>\n'
        "<network-security-config>\n"
        '  <base-config cleartextTrafficPermitted="false"/>\n'
        '  <domain-config cleartextTrafficPermitted="true">\n'
        '    <domain includeSubdomains="true">insecure.example.com</domain>\n'
        "    <domain>tracking.example.net</domain>\n"
        "  </domain-config>\n"
        '  <domain-config cleartextTrafficPermitted="false">\n'
        "    <domain>secure.example.org</domain>\n"
        "  </domain-config>\n"
        "</network-security-config>\n"
    )
    # The base policy is a confident "no", yet two domains are explicitly exposed -
    # exactly the fact the base-config flag alone would have hidden.
    assert _nsc_cleartext_permitted(nsc) is False
    assert _nsc_cleartext_domains(nsc) == ["insecure.example.com", "tracking.example.net"]
    # A domain-config that itself forbids cleartext must NOT be collected.
    assert "secure.example.org" not in _nsc_cleartext_domains(nsc)


def test_no_domain_override_is_empty_never_fabricated(tmp_path):
    nsc = tmp_path / "nsc.xml"
    nsc.write_text(
        "<network-security-config>\n"
        '  <base-config cleartextTrafficPermitted="true"/>\n'
        "</network-security-config>\n"
    )
    # Base-only NSC: no per-domain fact to surface -> empty, never a fabricated row.
    assert _nsc_cleartext_domains(nsc) == []
    # No NSC at all -> empty, degrades honestly.
    assert _nsc_cleartext_domains(None) == []


def test_noncanonical_true_and_dedup(tmp_path):
    # "1" is a valid true (mirrors the base-config boolean tolerance), and a domain
    # repeated across sibling permit-configs is de-duplicated, order-preserving.
    nsc = tmp_path / "nsc.xml"
    nsc.write_text(
        "<network-security-config>\n"
        '  <domain-config cleartextTrafficPermitted="1">\n'
        "    <domain>a.example.com</domain>\n"
        "  </domain-config>\n"
        '  <domain-config cleartextTrafficPermitted="true">\n'
        "    <domain>a.example.com</domain>\n"
        "    <domain>b.example.com</domain>\n"
        "  </domain-config>\n"
        "</network-security-config>\n"
    )
    assert _nsc_cleartext_domains(nsc) == ["a.example.com", "b.example.com"]
