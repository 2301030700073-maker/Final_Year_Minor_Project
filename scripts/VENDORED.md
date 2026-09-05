# Vendored third-party Frida script

`scripts/universal-robust-advanced-root--ssl-pinning-bypass.js`

- **Author**: ssecurityy (third-party), published on Frida CodeShare.
- **Project**: `universal-robust-advanced-root--ssl-pinning-bypass`.
- **Retrieved**: via `frida --codeshare ssecurityy/universal-robust-advanced-root--ssl-pinning-bypass`.
- **License**: not stated on the CodeShare page. Used as-is for this academic /
  defensive-training project. Treat as "all rights reserved by ssecurityy"; do not
  redistribute as your own.
- **Integrity note**: this is the file as provided locally. Its SHA-256
  (`8ad1f5db…`) does NOT equal the CodeShare page's displayed fingerprint
  (`621092c1…`) - that published value hashes the bundle metadata, not the raw JS,
  so byte-for-byte identity against the published artifact could not be
  independently confirmed. It is a third-party artifact, not this project's code,
  and is used as-is (unmodified).
- **Use**: NOT loaded during a run. It is preserved here as the audited record of
  the external supplement it once was (and is asserted to exist by
  `tests/unit/test_vendored_universal.py`). It was originally loaded by
  `src/dynamic/frida_runner.py` as a supplement to the findings-specific
  synthesized bypass for unknown targets (L-M2), but live verification on a real
  target (AndroGoat, via a trusted mitmproxy CA) showed that loading it ALONGSIDE
  the synthesized bypass SUPPRESSES that bypass on both root and SSL: Frida's
  `implementation =` replaces a single method slot, so the vendor's re-applied
  `java.io.File.exists` (root) and its trust-manager / socket-factory patches (SSL)
  shadow and revert the synth's observing patches - `root_bypassed=True` /
  `ssl_bypassed=True` synth-only vs `0` probeHits / `0` observer messages
  synth+vendor. The synthesized bypass was therefore made comprehensive in its own
  right (native libc path-hiding + exec-su for root; native BoringSSL/OpenSSL
  unpinning + OkHttp `CertificatePinner` neutralizer + conscrypt trust-manager
  observer for SSL - see `UNIVERSAL_ROOT`/`UNIVERSAL_SSL` in
  `src/dynamic/synthesizer.py`), which reproduces this vendored file's capability
  in code this project owns and can observe, and the vendor is no longer loaded.
  It never overrode or replaced the deterministic detection/verification guarantees
  of this project (ADR-0001, ADR-0006).
