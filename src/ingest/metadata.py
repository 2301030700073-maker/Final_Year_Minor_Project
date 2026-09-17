"""APK hashing, size, and metadata extraction (FR-1)."""

from __future__ import annotations

import functools
import hashlib
import re
import subprocess
import time
import zipfile
from dataclasses import dataclass, field
from pathlib import Path

from common import StageResult, elapsed_ms, require_tool


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
    # L-M10: the COMPLETE, version-agnostic set of "Verified using <scheme>"
    # lines the installed apksigner emitted, keyed by scheme label. A 2nd
    # apksigner version (build-tools 34.0.0) emits a v3.1 line the fixed v1..v4
    # fields below never see; this dict guarantees no scheme is ever dropped.
    schemes: dict[str, bool] = field(default_factory=dict)


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


_DIAGNOSTIC_LIMIT = 1200


def _tool_failure_detail(exc: subprocess.CalledProcessError) -> str:
    """Both of a tool's output streams, whole - not the first line of one.

    This kept ``stderr or stdout`` and then ``splitlines()[0]``, so a tool that
    explained itself over several lines had all but its opening line discarded -
    and the opening line is usually the verdict, not the reason. Measured on the
    Facebook and Netflix APKs: the pipeline reported ``apksigner exited 1: DOES
    NOT VERIFY`` and dropped the line immediately after it, which named the
    check that failed, along with two warnings about signature attributes the
    tool could not read. Diagnosing that took reading the raw tool output by
    hand; the stage had it and threw it away. Bounded at BOTH ends rather than
    cut at the head, so a long report loses its middle and never its conclusion.
    """
    parts = []
    for label, stream in (("stdout", exc.stdout), ("stderr", exc.stderr)):
        text = (stream or "").strip()
        if text:
            parts.append(f"{label}: {text}")
    detail = " | ".join(parts) or "(no output)"
    if len(detail) > _DIAGNOSTIC_LIMIT:
        head = _DIAGNOSTIC_LIMIT // 2
        tail = _DIAGNOSTIC_LIMIT - head
        elided = len(detail) - _DIAGNOSTIC_LIMIT
        detail = f"{detail[:head]} ... [{elided} chars elided] ... {detail[-tail:]}"
    return detail


def _run_tool(name: str, error_cls: type, args: list[str], timeout: int = 30) -> str:
    tool = require_tool(name)
    try:
        result = subprocess.run(
            [tool, *args], capture_output=True, text=True, check=True, timeout=timeout,
        )
        return result.stdout
    except subprocess.TimeoutExpired as exc:
        raise error_cls(f"{name} timed out after {timeout}s") from exc
    except subprocess.CalledProcessError as exc:
        raise error_cls(
            f"{name} exited {exc.returncode}: {_tool_failure_detail(exc)}"
        ) from exc


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
            tool = require_tool(name)
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
    def _schemes(raw: str) -> dict[str, bool]:
        # L-M10 (cross-version robustness): capture EVERY "Verified using
        # <scheme>: <bool>" line the installed apksigner emits, by scheme label,
        # instead of hardcoding v1..v4. A 2nd apksigner version (verified on
        # Android build-tools 34.0.0 vs Debian 31.0.2) emits a "v3.1 scheme
        # (APK Signature Scheme v3.1)" line that a v1..v4-only parser silently
        # dropped - a scheme ignored is a verification gap. The generic capture
        # records a future v5/v6 or vendor variant automatically, never drops it.
        pairs = re.findall(r"Verified using (.+?):\s*(true|false)", raw)
        return {label.strip(): (state == "true") for label, state in pairs}

    schemes = _schemes(raw)

    # Specific fields kept for backward compatibility (DB signer_v* columns and
    # downstream consumers), derived from the generic capture. None ("scheme not
    # reported") is the defensive fallback for a genuinely-absent line, distinct
    # from False ("reported and failed") - see Finding K's correction of the
    # Finding G premise. The full `schemes` dict carries the complete set, so no
    # scheme apksigner emits is lost to a hardcoded allowlist.
    v1 = schemes.get("v1 scheme (JAR signing)")
    v2 = schemes.get("v2 scheme (APK Signature Scheme v2)")
    v3 = schemes.get("v3 scheme (APK Signature Scheme v3)")
    v4 = schemes.get("v4 scheme (APK Signature Scheme v4)")

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
        schemes=schemes,
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
                duration_ms=elapsed_ms(start),
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
                # Only take the reuse shortcut if the stored record carries the
                # same usable package_name the fresh path guarantees below (the
                # None gate). A reuse record is only ever written from a prior
                # SUCCESSFUL ingest that already passed that gate - cli.py halts a
                # failed ingest before save_metadata - so today this always holds.
                # But the reuse path must self-guarantee that contract, not lean on
                # the cross-module invariant "the store only ever holds gated
                # metadata" (decider-owns-its-guard). If a stored record ever lacks
                # a usable package_name (an imported/older-format DB, a partial
                # record, a future caching layer), returning success here would hand
                # None to the dynamic stage's frida attach and to cli's target
                # resolution (evidence["package"]["package_name"]) - the exact
                # confusing downstream failure the fresh-path gate exists to
                # prevent. Fall through to a full tool-backed ingest instead: it
                # re-derives the package correctly, or fails loudly if the APK
                # genuinely has none. Strictly safe - a bad cache is recomputed,
                # never promoted to a confident success.
                reused_package = reuse_metadata.get("package")
                if isinstance(reused_package, dict) and reused_package.get("package_name") is not None:
                    evidence["package"] = reused_package
                    evidence["signer"] = reuse_metadata.get("signer")
                    evidence["tool_versions"] = reuse_metadata.get("tool_versions")
                    return StageResult(
                        stage="ingest", status="success", evidence=evidence,
                        duration_ms=elapsed_ms(start),
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
                duration_ms=elapsed_ms(start),
            )
        evidence["signer"] = parse_signer_info(run_apksigner_verify(apk_path)).__dict__
        evidence["tool_versions"] = tool_versions()  # NEW-B: reproducibility

        return StageResult(
            stage="ingest", status="success", evidence=evidence,
            duration_ms=elapsed_ms(start),
        )
    except ToolError as exc:
        # NEW-G: keep the named error type at the boundary (Aapt2Error /
        # ApksignerError), not just its str() - the StageResult.error field is
        # a string, but prefixing the type preserves the tool + timeout-vs-exit
        # distinction that NEW-D added instead of flattening it away.
        return StageResult(
            stage="ingest", status="failed", evidence=evidence,
            error=f"{type(exc).__name__}: {exc}",
            duration_ms=elapsed_ms(start),
        )
    except Exception as exc:
        return StageResult(
            stage="ingest", status="failed", evidence=evidence, error=str(exc),
            duration_ms=elapsed_ms(start),
        )
