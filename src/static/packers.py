"""Packer / protector identification (ADR-0008 group A, Gap-2).

A packer (Tencent Legu, Bangcle/SecNeo, Qihoo 360, APKProtect, DexProtector, ...)
wraps the real DEX behind a loader, so the app's actual code is not statically
readable. Detecting one is high-value for two reasons (both deterministic):

  1. It forces the Java/DEX surface to `partial` in the coverage contract - a
     packed app's DEX is hidden, so a confident negative is impossible (ADR-0006,
     see `java_coverage(..., packed=True)` in static/coverage.py).
  2. It names the packer so a deobfuscation pass (Gap 3) knows which unpacker to
     invoke.

Signals are deterministic, in-stack artifacts - no external YARA corpus (APKiD):
  - native_lib: packer loader `.so` filenames shipped in lib/<abi>/ (e.g.
    libDexHelper.so for Legu, libprotectClass.so for Bangcle, libjiagu.so for
    Qihoo, libsecneo.so for SecNeo, libAPKProtect.so).
  - application: the stub `<application android:name>` a packer registers to load
    the real Application dynamically (e.g. com.secneo.apkwrapper.ApplicationWrapper).
  - asset: encrypted-DEX/config blobs under assets/ (e.g. secData0.jar).
Any signal matching an entry detects that packer (OR-within-entry).

This is the in-stack deterministic layer; it covers the common/known packer
families via a versioned, hand-authored signature file (config/signatures/
packers.yaml), NOT APKiD's exhaustive (~1000-rule) YARA corpus. Absence of a
packer match is NOT proof of absence of packing - a novel/unlisted packer is
still bounded conservatively: the coverage rule forces a target whose DEX is not
fully readable (partial decompile / heavy obfuscation / packed) to partial, so a
clean NEITHER can never certify a confident negative over hidden code.

Split for the execution-environment rule (CLAUDE.md): the pure matching
(match_packers) is fixture-testable anywhere with no toolchain; the APK-opening
path (detect_packers) requires androguard and fails loudly if the APK is
unreadable - it never silently no-ops (principle 3).
"""

from __future__ import annotations

from dataclasses import dataclass, field
from pathlib import Path

import yaml

VALID_PACKER_SIGNAL_FIELDS = {"native_lib", "application", "asset"}


@dataclass
class PackerSignature:
    id: str
    packer: str
    native_lib: list[str] = field(default_factory=list)
    application: list[str] = field(default_factory=list)
    asset: list[str] = field(default_factory=list)


@dataclass
class PackerFinding:
    packer_id: str
    packer: str
    signals: list[str] = field(default_factory=list)  # the matched artifacts


# --- pure matching (fixture-testable, no toolchain) ---------------------------

def match_packers(
    manifest_app: str | None,
    lib_names: list[str],
    asset_tokens: list[str],
    signatures: list[PackerSignature],
) -> list[PackerFinding]:
    """Match packer signatures against an extracted surface (manifest app class,
    native lib basenames, asset tokens). Pure - no I/O, no toolchain. Any one
    signal matching an entry detects that packer (OR-within-entry), and each
    matched artifact is recorded so the report can say WHY the packer was named.
    Absence of a match is NOT proof of absence of packing (documented above)."""
    app: set[str] = {manifest_app} if manifest_app else set()
    libs: set[str] = set(lib_names)
    assets: set[str] = set(asset_tokens)
    findings: list[PackerFinding] = []
    for sig in signatures:
        hits: list[str] = []
        for name in sig.native_lib:
            if name in libs:
                hits.append(f"native_lib:{name}")
        for cls in sig.application:
            if cls in app:
                hits.append(f"application:{cls}")
        for tok in sig.asset:
            if tok in assets:
                hits.append(f"asset:{tok}")
        if hits:
            findings.append(PackerFinding(packer_id=sig.id, packer=sig.packer, signals=hits))
    return findings


# --- toolchain-gated (reference environment only) -----------------------------

def detect_packers(apk_path: Path, signatures: list[PackerSignature]) -> list[PackerFinding]:
    """Open the APK, extract the manifest application class, native lib basenames,
    and asset tokens, and match packer signatures. Requires androguard; raises
    loudly on a genuinely unreadable APK (never a silent empty result)."""
    import logging

    logging.getLogger("androguard").setLevel(logging.CRITICAL)
    from androguard.core.apk import APK as AndroAPK

    a = AndroAPK(str(apk_path))
    manifest_app = a.get_attribute_value("application", "name")
    files = a.get_files()

    # Native loader libs: any file under lib/<abi>/*.so -> basename. Matching on
    # the basename keeps the signature readable (libDexHelper.so) while surviving
    # any ABI directory. get_libraries() proved unreliable (returns [] for libs
    # get_files() lists), so the file list is the source of truth.
    lib_names = [
        Path(f).name
        for f in files
        if f.count("/") >= 2 and f.split("/")[0] == "lib" and f.endswith(".so")
    ]
    # Asset tokens: the full assets/<name> path AND its basename, so a signature
    # may name either form (encrypted-DEX blobs have distinctive basenames).
    asset_tokens = [
        tok
        for f in files
        if f.startswith("assets/")
        for tok in (f, Path(f).name)
    ]
    return match_packers(manifest_app, lib_names, asset_tokens, signatures)


# --- YAML loading (mirrors native.py's loud-validation discipline) -----------

def _validate_packer_entry(entry: dict, path: Path) -> None:
    sig_id = entry.get("id", "<unnamed>")
    if not entry.get("packer"):
        raise ValueError(f"{path}: packer signature '{sig_id}' has no 'packer' name")
    if not any(entry.get(k) for k in VALID_PACKER_SIGNAL_FIELDS):
        raise ValueError(
            f"{path}: packer signature '{sig_id}' has no signals - "
            f"expected at least one of {sorted(VALID_PACKER_SIGNAL_FIELDS)}"
        )
    for field_name in VALID_PACKER_SIGNAL_FIELDS:
        val = entry.get(field_name)
        if val is None:
            entry[field_name] = []  # normalize absent -> empty list
            continue
        if not isinstance(val, list) or not all(isinstance(x, str) for x in val):
            raise ValueError(
                f"{path}: packer signature '{sig_id}' field '{field_name}' must be a list of strings"
            )
        if not all(x for x in val):
            raise ValueError(f"{path}: packer signature '{sig_id}' field '{field_name}' has an empty entry")


def load_packer_signatures(path: Path) -> list[PackerSignature]:
    with open(path, "r", encoding="utf-8") as f:
        raw = yaml.safe_load(f) or []
    sigs = []
    for entry in raw:
        _validate_packer_entry(entry, path)
        sigs.append(PackerSignature(**entry))
    return sigs
