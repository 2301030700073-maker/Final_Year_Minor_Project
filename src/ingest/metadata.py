"""APK hashing, size, and metadata extraction (FR-1)."""

from __future__ import annotations

import hashlib
import re
import shutil
import subprocess
import time
from dataclasses import dataclass, field
from pathlib import Path

from common import StageResult


@dataclass
class HashSet:
    sha256: str
    sha1: str
    md5: str


@dataclass
class PackageMetadata:
    package_name: str | None
    version_code: str | None
    version_name: str | None
    min_sdk: str | None
    target_sdk: str | None
    permissions: list[str] = field(default_factory=list)


@dataclass
class SignerInfo:
    v1_verified: bool
    v2_verified: bool
    v3_verified: bool
    certificate_dn: str | None
    certificate_sha256: str | None


def compute_hashes(apk_path: Path) -> HashSet:
    sha256, sha1, md5 = hashlib.sha256(), hashlib.sha1(), hashlib.md5()
    with open(apk_path, "rb") as f:
        for chunk in iter(lambda: f.read(1024 * 1024), b""):
            sha256.update(chunk)
            sha1.update(chunk)
            md5.update(chunk)
    return HashSet(sha256=sha256.hexdigest(), sha1=sha1.hexdigest(), md5=md5.hexdigest())


def file_size(apk_path: Path) -> int:
    return Path(apk_path).stat().st_size


def _require_tool(name: str) -> str:
    path = shutil.which(name)
    if path is None:
        raise RuntimeError(
            f"required tool '{name}' not found on PATH - this stage only runs on "
            "the reference WSL2 environment with the Android toolchain installed"
        )
    return path


def run_aapt2_dump(apk_path: Path) -> str:
    aapt2 = _require_tool("aapt2")
    result = subprocess.run(
        [aapt2, "dump", "badging", str(apk_path)],
        capture_output=True, text=True, check=True,
    )
    return result.stdout


def run_apksigner_verify(apk_path: Path) -> str:
    apksigner = _require_tool("apksigner")
    result = subprocess.run(
        [apksigner, "verify", "--verbose", "--print-certs", str(apk_path)],
        capture_output=True, text=True, check=True,
    )
    return result.stdout


def parse_aapt2_output(raw: str) -> PackageMetadata:
    package_name = version_code = version_name = None
    package_match = re.search(r"package: name='([^']*)'", raw)
    if package_match:
        package_name = package_match.group(1)
    version_code_match = re.search(r"versionCode='([^']*)'", raw)
    if version_code_match:
        version_code = version_code_match.group(1)
    version_name_match = re.search(r"versionName='([^']*)'", raw)
    if version_name_match:
        version_name = version_name_match.group(1)

    min_sdk_match = re.search(r"sdkVersion:'([^']*)'", raw)
    min_sdk = min_sdk_match.group(1) if min_sdk_match else None
    target_sdk_match = re.search(r"targetSdkVersion:'([^']*)'", raw)
    target_sdk = target_sdk_match.group(1) if target_sdk_match else None

    permissions = re.findall(r"uses-permission: name='([^']*)'", raw)

    return PackageMetadata(
        package_name=package_name,
        version_code=version_code,
        version_name=version_name,
        min_sdk=min_sdk,
        target_sdk=target_sdk,
        permissions=permissions,
    )


def parse_signer_info(raw: str) -> SignerInfo:
    def _verified(scheme_label: str) -> bool:
        match = re.search(rf"Verified using {re.escape(scheme_label)}.*?:\s*(true|false)", raw)
        return bool(match and match.group(1) == "true")

    v1 = _verified("v1 scheme (JAR signing)")
    v2 = _verified("v2 scheme (APK Signature Scheme v2)")
    v3 = _verified("v3 scheme (APK Signature Scheme v3)")

    dn_match = re.search(r"certificate DN:\s*(.+)", raw)
    sha256_match = re.search(r"certificate SHA-256 digest:\s*([0-9a-fA-F:]+)", raw)

    return SignerInfo(
        v1_verified=v1,
        v2_verified=v2,
        v3_verified=v3,
        certificate_dn=dn_match.group(1).strip() if dn_match else None,
        certificate_sha256=sha256_match.group(1).strip() if sha256_match else None,
    )


def ingest(apk_path: Path) -> StageResult:
    start = time.monotonic()
    try:
        apk_path = Path(apk_path)
        if not apk_path.is_file():
            return StageResult(
                stage="ingest", status="failed", evidence={},
                error=f"APK not found: {apk_path}",
                duration_ms=int((time.monotonic() - start) * 1000),
            )

        hashes = compute_hashes(apk_path)
        size = file_size(apk_path)
        package_metadata = parse_aapt2_output(run_aapt2_dump(apk_path))
        signer_info = parse_signer_info(run_apksigner_verify(apk_path))

        evidence = {
            "hashes": hashes.__dict__,
            "size_bytes": size,
            "package": package_metadata.__dict__,
            "signer": signer_info.__dict__,
        }
        return StageResult(
            stage="ingest", status="success", evidence=evidence,
            duration_ms=int((time.monotonic() - start) * 1000),
        )
    except Exception as exc:
        return StageResult(
            stage="ingest", status="failed", evidence={}, error=str(exc),
            duration_ms=int((time.monotonic() - start) * 1000),
        )
