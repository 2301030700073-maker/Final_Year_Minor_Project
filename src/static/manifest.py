"""AndroidManifest.xml parsing - the fields aapt2's badging dump doesn't surface (FR-2 manifest indicators)."""

from __future__ import annotations

import xml.etree.ElementTree as ET
from dataclasses import dataclass
from pathlib import Path

ANDROID_NS = "{http://schemas.android.com/apk/res/android}"


@dataclass
class ManifestInfo:
    debuggable: bool
    network_security_config: str | None
    # True when a real <application> element was read; False when the manifest
    # has none and the two fields above are defaults, not reads (5-2).
    application_present: bool = True
    # RESID-5C: whether the referenced NSC file (@xml/<name>) actually exists in
    # the decoded resources (resource_root/res/xml/<name>.xml). None when no NSC
    # is declared or no resource_root was provided to resolve against.
    nsc_file_present: bool | None = None
    # ADR-0008 (roadmap item 7): deeper manifest indicators. stored_certs is the
    # count of <trust-anchors>/stored-certificate references; device_admin true
    # when a DevicePolicyManager receiver is declared (a device-admin app can
    # install/update certificates at the system level). Each is an evidence
    # contributor when present, but never asserted (they are preconditions for
    # certain pinning/bypass behavior, not proof of it).
    stored_certs: int = 0
    device_admin: bool = False


def _resolve_nsc_file(network_security_config: str | None, resource_root: Path | None) -> bool | None:
    """RESID-5C: resolve @xml/<name> against res/xml/<name>.xml in the decoded
    resources, so the report can say whether the referenced file exists instead
    of surfacing an opaque attribute reference a reader can't check. Returns
    None when there is nothing to resolve (no NSC, or no resource root given)."""
    if network_security_config is None or resource_root is None:
        return None
    if not network_security_config.startswith("@xml/"):
        return None
    name = network_security_config[len("@xml/"):]
    return (resource_root / "res" / "xml" / f"{name}.xml").exists()


def _resolve_nsc_path(network_security_config: str | None, resource_root: Path | None) -> Path | None:
    """The decoded path to the referenced NSC XML (or None if not resolvable) -
    used to read trust-anchors from the config file itself, which is where
    stored-certificate trust anchors actually live (not in the manifest)."""
    if network_security_config is None or resource_root is None:
        return None
    if not network_security_config.startswith("@xml/"):
        return None
    name = network_security_config[len("@xml/"):]
    p = resource_root / "res" / "xml" / f"{name}.xml"
    return p if p.exists() else None


def parse_manifest(manifest_path: Path, resource_root: Path | None = None) -> ManifestInfo:
    tree = ET.parse(manifest_path)
    root = tree.getroot()
    # 5-4: validate the root tag - a non-manifest XML (wrong file, truncation)
    # used to silently yield defaults, indistinguishable from a real read.
    if root.tag != "manifest":
        raise ValueError(f"expected <manifest> root tag, got <{root.tag}>")

    application = root.find("application")
    if application is None:
        # 5-2: explicit flag so the consumer knows debuggable/NSC are defaults,
        # not reads, when there is no <application> element.
        return ManifestInfo(debuggable=False, network_security_config=None, application_present=False)

    debuggable_attr = application.get(f"{ANDROID_NS}debuggable")
    # RESID-5B: True/TRUE and "1" are legal non-canonical boolean encodings in
    # Android XML but were silently read as False by strict == "true". Normalize
    # before comparing.
    debuggable = debuggable_attr is not None and debuggable_attr.strip().lower() in ("true", "1")
    network_security_config = application.get(f"{ANDROID_NS}networkSecurityConfig")

    # ADR-0008 item 7: deeper manifest indicators. device_admin is read from the
    # manifest's own <receiver> declarations; stored_certs comes from the
    # resolved networkSecurityConfig XML (where trust-anchors actually live),
    # so it is a real read of the config file, not a placeholder field. Both are
    # deterministic and fixture-testable.
    device_admin = _has_device_admin(root)
    stored_certs = _count_stored_certs(_resolve_nsc_path(network_security_config, resource_root))

    return ManifestInfo(
        debuggable=debuggable,
        network_security_config=network_security_config,
        nsc_file_present=_resolve_nsc_file(network_security_config, resource_root),
        stored_certs=stored_certs,
        device_admin=device_admin,
    )


def _count_stored_certs(nsc_path: Path | None) -> int:
    """Count stored-certificate trust anchors declared in the networkSecurityConfig
    XML (`<trust-anchors><certificates src="system|user|@raw/..."/></trust-anchors>`).
    0 when no NSC file, or none declared. These weaken SSL pinning, so their
    presence is an SSL evidence contributor."""
    if nsc_path is None:
        return 0
    try:
        tree = ET.parse(nsc_path)
    except ET.ParseError:
        return 0  # parse_failure is driven to the coverage contract elsewhere (G9)
    count = 0
    for certs in tree.getroot().iter("certificates"):
        src = certs.get(f"{ANDROID_NS}src")
        if src and (src == "system" or src == "user" or src.startswith("@raw/")):
            count += 1
    return count


def _has_device_admin(root: ET.Element) -> bool:
    """True when a <receiver> declares the BIND_DEVICE_ADMIN permission - the
    signature of a device-admin app that can install/update system certificates.
    The permission is the receiver's `android:permission` attribute (a device-admin
    receiver uses that attribute, plus the DEVICE_ADMIN_ENABLED intent-filter)."""
    for receiver in root.iter("receiver"):
        if receiver.find("intent-filter") is None:
            continue
        if receiver.get(f"{ANDROID_NS}permission") == "android.permission.BIND_DEVICE_ADMIN":
            return True
    return False
