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
- **Use**: loaded by `src/dynamic/frida_runner.py` as a SUPPLEMENT to the
  findings-specific synthesized bypass for unknown targets (L-M2). It is a broad
  universal bypass; it does not override or replace the deterministic
  detection/verification guarantees of this project (ADR-0001, ADR-0006).
