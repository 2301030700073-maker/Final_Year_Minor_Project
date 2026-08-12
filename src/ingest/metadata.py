"""APK hashing, size, and metadata extraction (FR-1)."""

from __future__ import annotations

import functools
import hashlib
import re
import shutil
import subprocess
import time
import zipfile
from dataclasses import dataclass, field
from pathlib import Path

from common import StageResult


class ToolError(RuntimeError):
    """Base for a named tool failure (NEW-D): distinguishes which tool and
    whether it timed out vs exited nonzero, instead of a bare str(exc)."""


class Aapt2Error(ToolError):
    """aapt2 dump failed (timeout or nonzero exit)."""


class ApksignerError(ToolError):
    """apksigner verify failed (timeout or nonzero exit)."""


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
class SignerCert:
    """One signing certificate (LIM-3): key-rotation APKs carry several."""

    dn: str | None
    sha256: str | None


@dataclass
class SignerInfo:
    v1_verified: bool | None
    v2_verified: bool | None
    v3_verified: bool | None
    v4_verified: bool | None
    certificate_dn: str | None
    certificate_sha256: str | None
    signer_count: int
    signers: list[SignerCert] = field(default_factory=list)


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


def _assert_zip_magic(apk_path: Path) -> None:
    """Fail fast before hashing/tool runs (NEW-C): a real APK is a zip and
    begins with the PK\x03\x04 local-file-header magic. Anything else burns
    time hashing only to fail confusingly inside aapt2 later.

    Finding F: the start magic alone accepts a TRUNCATED zip - a file that
    opens with PK\x03\x04 but whose tail (where the APK Signature Block and the
    End-Of-Central-Directory record live) is cut off. apksigner reads that tail,
    so a truncated APK only fails deep inside apksigner, after aapt2 has already
    run and hashes/size are computed - late, confusing, and wasteful. Verify the
    zip is complete/openable up front (zipfile.is_zipfile checks for the EOCD
    record) so a corrupt/truncated APK is rejected at ingest, before any tool
    runs."""
    with open(apk_path, "rb") as f:
        magic = f.read(4)
    if magic != b"PK\x03\x04":
        raise ValueError(
            f"not a valid APK/zip - missing PK\\x03\\x04 magic header (got {magic!r}): {apk_path}"
        )
    if not zipfile.is_zipfile(apk_path):
        raise ValueError(
            f"not a complete/valid APK/zip - start magic present but no End-Of-"
            f"Central-Directory record (truncated or corrupt): {apk_path}"
        )


def _run_tool(name: str, error_cls: type, args: list[str], timeout: int = 30) -> str:
    tool = _require_tool(name)
    try:
        result = subprocess.run(
            [tool, *args], capture_output=True, text=True, check=True, timeout=timeout,
        )
        return result.stdout
    except subprocess.TimeoutExpired as exc:
        raise error_cls(f"{name} timed out after {timeout}s") from exc
    except subprocess.CalledProcessError as exc:
        detail = (exc.stderr or exc.stdout or "").strip().splitlines()
        first = detail[0] if detail else "no output"
        raise error_cls(f"{name} exited {exc.returncode}: {first[:200]}") from exc


def run_aapt2_dump(apk_path: Path) -> str:
    return _run_tool("aapt2", Aapt2Error, ["dump", "badging", str(apk_path)])


def run_apksigner_verify(apk_path: Path) -> str:
    return _run_tool("apksigner", ApksignerError, ["verify", "--verbose", "--print-certs", str(apk_path)])


@functools.lru_cache(maxsize=1)
def tool_versions() -> dict[str, str]:
    """Capture the exact toolchain that produced a run (NEW-B) - a real
    reproducibility gap for the deterministic core. Each tool is probed
    independently and degrades to "unknown" (never raises), so a missing
    optional tool cannot fail ingest. Cached (NEW-F): versions don't change
    mid-process, so this runs once instead of spawning 4 probes per ingest."""
    versions: dict[str, str] = {}
    for name, flag in (
        # aapt2 takes a subcommand ("aapt2 version"), unlike the other three
        # tools which accept "--version" - a bare "--version" is an unknown
        # option for aapt2 and would record a garbage string, not the version.
        ("aapt2", "version"),
        ("apksigner", "--version"),
        ("jadx", "--version"),
        ("apktool", "--version"),
    ):
        try:
            tool = _require_tool(name)
            result = subprocess.run([tool, flag], capture_output=True, text=True, timeout=30)
            line = (result.stdout or result.stderr).strip().splitlines()
            versions[name] = line[0] if line else "unknown"
        except Exception:
            versions[name] = "unknown"
    return versions


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

    # NEW-A: anchor to the line start so "sdkVersion" can't match the substring
    # inside "targetSdkVersion" - previously this only worked because aapt2
    # happens to print min before target; a reordered dump silently grabbed the
    # target value as min_sdk.
    min_sdk_match = re.search(r"^sdkVersion:'([^']*)'", raw, re.MULTILINE)
    min_sdk = min_sdk_match.group(1) if min_sdk_match else None
    target_sdk_match = re.search(r"targetSdkVersion:'([^']*)'", raw)
    target_sdk = target_sdk_match.group(1) if target_sdk_match else None

    # NEW-E: also capture the -sdk-<n> / -sdk-lite variants aapt2 emits for
    # permissions declared via <uses-permission-sdk-23> etc.; the plain form
    # alone silently dropped those from the inventory.
    permissions = re.findall(r"uses-permission(?:-sdk-\d+|-sdk-lite)?: name='([^']*)'", raw)
    # FR-1.2: dedupe preserving first-seen order - aapt2 can emit the same
    # permission name more than once (merged manifests, plain + -sdk-N variants
    # of the same declaration), and a consumer shouldn't see dupes in the inventory.
    permissions = list(dict.fromkeys(permissions))

    return PackageMetadata(
        package_name=package_name,
        version_code=version_code,
        version_name=version_name,
        min_sdk=min_sdk,
        target_sdk=target_sdk,
        permissions=permissions,
    )


def parse_signer_info(raw: str) -> SignerInfo:
    def _verified(scheme_label: str) -> bool | None:
        # Finding G: an ABSENT scheme line must not read as False. apksigner only
        # prints "Verified using <scheme>:" for schemes the APK is signed with -
        # a v1-only APK carries no v2/v3/v4 line at all. Returning False for an
        # absent line conflated "this scheme was checked and FAILED" with "this
        # scheme was never exercised", a false negative in the signer metadata.
        # None = scheme not present/not exercised; True/False = present and
        # verified/failed. (The DB signer_v* columns are already bool|None.)
        match = re.search(rf"Verified using {re.escape(scheme_label)}.*?:\s*(true|false)", raw)
        if match is None:
            return None
        return match.group(1) == "true"

    v1 = _verified("v1 scheme (JAR signing)")
    v2 = _verified("v2 scheme (APK Signature Scheme v2)")
    v3 = _verified("v3 scheme (APK Signature Scheme v3)")
    v4 = _verified("v4 scheme (APK Signature Scheme v4)")

    # LIM-3: capture every signer, not just #1. Both finds are prefixed with
    # the label so re.findall can't pick up stray hex runs (e.g. "SHA-256").
    dn_matches = re.findall(r"certificate DN:\s*(.+)", raw)
    sha_matches = re.findall(r"certificate SHA-256 digest:\s*([0-9a-fA-F:]+)", raw)
    signers = [SignerCert(dn=d.strip(), sha256=s.strip()) for d, s in zip(dn_matches, sha_matches)]

    return SignerInfo(
        v1_verified=v1,
        v2_verified=v2,
        v3_verified=v3,
        v4_verified=v4,
        certificate_dn=signers[0].dn if signers else None,
        certificate_sha256=signers[0].sha256 if signers else None,
        signer_count=len(signers),
        signers=signers,
    )


def ingest(
    apk_path: Path,
    reuse_metadata: dict | None = None,
    precomputed_hashes: HashSet | None = None,
) -> StageResult:
    start = time.monotonic()
    evidence: dict = {}
    try:
        apk_path = Path(apk_path)
        if not apk_path.is_file():
            return StageResult(
                stage="ingest", status="failed", evidence={},
                error=f"APK not found: {apk_path}",
                duration_ms=int((time.monotonic() - start) * 1000),
            )

        # NEW-C: reject non-APKs before spending time hashing or running tools.
        _assert_zip_magic(apk_path)

        # Accumulate evidence as it's computed (LIM-1), so a failure partway
        # through still yields a real hash for the audit log (ADR-0005) instead
        # of throwing away the hashes/size on a later aapt2/apksigner failure.
        # cli.py hashes the file once up front to resolve the FR-1.3 reuse record
        # and passes the HashSet in, so we don't stream the file a second time on
        # every run (a full SHA-256/SHA-1/MD5 read). Falls back to hashing here
        # when ingest is called standalone (tests, other callers).
        hashes = precomputed_hashes or compute_hashes(apk_path)
        evidence["hashes"] = hashes.__dict__
        evidence["size_bytes"] = file_size(apk_path)
        # FR-1.3: a re-run against an already-ingested APK references the existing
        # record instead of re-running the Android toolchain. The caller resolves
        # the record by this file's hash and passes it in; if its stored sha256
        # matches what we just computed (same file), reuse the existing
        # aapt2/apksigner/tool_versions metadata and skip the process spawns -
        # the expensive part of a re-ingest. A mismatch (file changed) falls
        # through to a full tool-backed ingest. Fresh hashes/size are kept - they
        # are confirmed identical on the reuse path, so evidence stays authoritative.
        if reuse_metadata:
            if (reuse_metadata.get("hashes") or {}).get("sha256") == evidence["hashes"]["sha256"]:
                evidence["package"] = reuse_metadata.get("package")
                evidence["signer"] = reuse_metadata.get("signer")
                evidence["tool_versions"] = reuse_metadata.get("tool_versions")
                return StageResult(
                    stage="ingest", status="success", evidence=evidence,
                    duration_ms=int((time.monotonic() - start) * 1000),
                )
        package_metadata = parse_aapt2_output(run_aapt2_dump(apk_path))
        evidence["package"] = package_metadata.__dict__
        # The downstream dynamic stage hands package_name to frida_runner.attach() ->
        # device.spawn([None]); a None here would only surface as a confusing runtime
        # error there, not at the cause. Fail loudly at ingest instead (NFR-1).
        if package_metadata.package_name is None:
            return StageResult(
                stage="ingest", status="failed", evidence=evidence,
                error="could not extract package name from aapt2 badging",
                duration_ms=int((time.monotonic() - start) * 1000),
            )
        evidence["signer"] = parse_signer_info(run_apksigner_verify(apk_path)).__dict__
        evidence["tool_versions"] = tool_versions()  # NEW-B: reproducibility

        return StageResult(
            stage="ingest", status="success", evidence=evidence,
            duration_ms=int((time.monotonic() - start) * 1000),
        )
    except ToolError as exc:
        # NEW-G: keep the named error type at the boundary (Aapt2Error /
        # ApksignerError), not just its str() - the StageResult.error field is
        # a string, but prefixing the type preserves the tool + timeout-vs-exit
        # distinction that NEW-D added instead of flattening it away.
        return StageResult(
            stage="ingest", status="failed", evidence=evidence,
            error=f"{type(exc).__name__}: {exc}",
            duration_ms=int((time.monotonic() - start) * 1000),
        )
    except Exception as exc:
        return StageResult(
            stage="ingest", status="failed", evidence=evidence, error=str(exc),
            duration_ms=int((time.monotonic() - start) * 1000),
        )
