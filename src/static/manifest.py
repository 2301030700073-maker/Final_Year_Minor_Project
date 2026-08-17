"""AndroidManifest.xml parsing - the fields aapt2's badging dump doesn't surface (FR-2 manifest indicators)."""

from __future__ import annotations

import re
import xml.etree.ElementTree as ET
from dataclasses import dataclass, field
from pathlib import Path

ANDROID_NS = "{http://schemas.android.com/apk/res/android}"
# Component element tags we enumerate as attack surface.
_COMPONENT_TAGS = ("activity", "service", "receiver", "provider")
# A binary-manifest networkSecurityConfig reference is a raw RESOURCE ID
# (@7F0E0000 / @0x7f0e0000), not the decoded @xml/<name> form apktool produces.
# Must be recognized as a real NSC declaration so it is never treated as "no
# NSC" (which would certify a clean SSL surface that was never read) - see
# `_resources_complete` and the `parse_manifest_apk` resolver.
_RESOURCE_ID_NSC = re.compile(r"^@(?:0[xX])?[0-9a-fA-F]+$")


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
    # G9/H2: whether every resource the manifest references resolved cleanly. A
    # declared-but-missing or unparseable networkSecurityConfig makes this False,
    # driving the manifest surface to `partial` so it can't certify a confident
    # SSL negative. True when nothing is referenced (or it all resolved).
    resources_complete: bool = True
    # GAP-2: attack-surface details that were previously left un-extracted. A
    # security platform needs these (exported components are the reachable attack
    # surface; permissions bound what the app can do; package/cleartext are core
    # identity facts).
    package_name: str | None = None
    uses_cleartext_traffic: bool | None = None
    # allowBackup on <application>: when false, adb backup/data exfiltration is
    # disabled - a real security control a platform should report. None when unset.
    allow_backup: bool | None = None
    # Effective cleartext policy: the <application> usesCleartextTraffic flag when
    # set, otherwise the networkSecurityConfig <base-config cleartextTrafficPermitted>
    # (which governs all domains not overridden). None when neither is set. This
    # captures AndroGoat's base-config cleartextTrafficPermitted="true", which the
    # application-level attribute alone missed.
    cleartext_permitted: bool | None = None
    permissions: list[str] = field(default_factory=list)
    exported_components: list[dict] = field(default_factory=list)


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
    """Parse a DECODED (human-readable) AndroidManifest.xml - produced by apktool
    (or a fixture). Delegates to `_parse_manifest_root` so the binary-manifest
    path (`parse_manifest_apk`) and the decoded path share one parser."""
    return _parse_manifest_root(ET.parse(manifest_path).getroot(), resource_root)


def parse_manifest_apk(apk_path: Path, resource_root: Path | None = None) -> ManifestInfo:
    """Parse the BINARY AndroidManifest.xml directly from the APK zip via
    pyaxmlparser - no apktool decode required (limitation 9). The manifest stage
    previously depended on apktool having decoded the manifest; this reads it
    straight out of the APK, so the manifest is readable even when apktool failed
    or was skipped. Pure-Python (NFR: unit-testable-anywhere with a real APK or
    fixture). `resource_root` (apktool's res/ tree) is still honored when present
    for NSC resolution; when absent, a declared NSC cannot be resolved and
    `resources_complete` degrades to False, driving the manifest surface to
    `partial` (ADR-0006) rather than certifying a confident SSL negative."""
    import zipfile

    from pyaxmlparser.axmlprinter import AXMLPrinter

    with zipfile.ZipFile(apk_path) as zf:
        data = zf.read("AndroidManifest.xml")
    # get_xml_obj() returns the root lxml element (ElementTree-compatible: find,
    # findall, get, iter, tag all present), so `_parse_manifest_root` - written
    # against that API - works unchanged on the binary manifest.
    root = AXMLPrinter(data).get_xml_obj()
    holder: dict = {}

    def nsc_resolver(raw_nsc: str | None) -> str | None:
        """Map a binary-manifest NSC reference to the readable @xml/<name> form
        so the apktool-decoded res/xml/<name>.xml (when present) is actually
        found. The binary AXML stores the reference as a raw RESOURCE ID
        (@7F0E0000) rather than @xml/<name>; resolve it via the APK's resource
        table. Returns the reference unchanged when it is not a resource ID,
        the resolved @xml/<name>, or None when a resource-ID NSC cannot be
        resolved (an opaque declaration the caller must treat as unreadable)."""
        if raw_nsc is None or not _RESOURCE_ID_NSC.match(raw_nsc):
            return raw_nsc
        try:
            if "table" not in holder:
                from pyaxmlparser import APK
                holder["table"] = APK(apk_path).get_android_resources()
            name = holder["table"].get_resource_xml_name(_resource_id_int(raw_nsc))
        except Exception:
            return None
        # get_resource_xml_name -> "@<pkg>:xml/network_security_config" (the
        # package-qualified resource form); reduce it to the @xml/<name> form
        # every resolver here understands. The separator is ":xml/", not "/xml/".
        if name and ":xml/" in name:
            return "@xml/" + name.rsplit(":xml/", 1)[1]
        return None

    return _parse_manifest_root(root, resource_root, nsc_resolver=nsc_resolver)


def _resource_id_int(raw_nsc: str) -> int:
    """The integer value of an @<id> / @0x<hex> resource reference, as the
    resource table keys resources by."""
    hexval = raw_nsc[1:]
    if hexval.lower().startswith("0x"):
        hexval = hexval[2:]
    return int(hexval, 16)


def _parse_manifest_root(
    root, resource_root: Path | None = None, nsc_resolver=None
) -> ManifestInfo:
    """Shared parser over an Element-compatible root (stdlib ElementTree or the
    lxml element pyaxmlparser returns). Consumed by both the decoded and binary
    manifest paths so the two cannot drift apart. `nsc_resolver` (binary path
    only) maps a raw resource-ID NSC reference to its readable @xml/<name> form;
    None means the reference is passed through as read."""
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
    raw_nsc = application.get(f"{ANDROID_NS}networkSecurityConfig")
    # Resolve a binary-manifest resource-ID NSC (@7F0E0000) to @xml/<name> so it
    # is actually read (and a real NSC is never treated as absent). An opaque ID
    # the resolver cannot map stays as-is; `_resources_complete` flags it.
    network_security_config = raw_nsc
    if nsc_resolver is not None and raw_nsc is not None:
        resolved = nsc_resolver(raw_nsc)
        if resolved is not None:
            network_security_config = resolved

    # GAP-2: package identity, cleartext policy, permissions and exported
    # components - the attack-surface facts a security platform must carry.
    package_name = root.get("package")
    uses_cleartext_attr = application.get(f"{ANDROID_NS}usesCleartextTraffic")
    uses_cleartext_traffic = (
        None if uses_cleartext_attr is None
        else uses_cleartext_attr.strip().lower() in ("true", "1")
    )
    allow_backup_attr = application.get(f"{ANDROID_NS}allowBackup")
    allow_backup = (
        None if allow_backup_attr is None
        else allow_backup_attr.strip().lower() in ("true", "1")
    )
    # Effective cleartext: the application flag wins when set; otherwise the NSC
    # base-config cleartextTrafficPermitted governs all non-overridden domains.
    nsc_cleartext = _nsc_cleartext_permitted(_resolve_nsc_path(network_security_config, resource_root))
    cleartext_permitted = uses_cleartext_traffic if uses_cleartext_traffic is not None else nsc_cleartext
    permissions = _collect_permissions(root)
    exported_components = _collect_exported_components(application)

    # ADR-0008 item 7: deeper manifest indicators. device_admin is read from the
    # manifest's own <receiver> declarations; stored_certs comes from the
    # resolved networkSecurityConfig XML (where trust-anchors actually live),
    # so it is a real read of the config file, not a placeholder field. Both are
    # deterministic and fixture-testable.
    device_admin = _has_device_admin(root)
    # H2/H3: a missing or unparseable NSC must degrade coverage, never silently
    # read as stored_certs=0 with a fully_analyzed surface. resources_complete is
    # computed first; stored_certs is only read when the file is known-good, so
    # _count_stored_certs cannot hit the swallowed-ParseError path.
    resources_complete = _resources_complete(network_security_config, resource_root)
    stored_certs = (
        _count_stored_certs(_resolve_nsc_path(network_security_config, resource_root))
        if resources_complete else 0
    )

    return ManifestInfo(
        debuggable=debuggable,
        network_security_config=network_security_config,
        nsc_file_present=_resolve_nsc_file(network_security_config, resource_root),
        stored_certs=stored_certs,
        device_admin=device_admin,
        resources_complete=resources_complete,
        package_name=package_name,
        uses_cleartext_traffic=uses_cleartext_traffic,
        allow_backup=allow_backup,
        cleartext_permitted=cleartext_permitted,
        permissions=permissions,
        exported_components=exported_components,
    )


def _nsc_cleartext_permitted(nsc_path: Path | None) -> bool | None:
    """The <base-config cleartextTrafficPermitted="..."> value from the resolved
    networkSecurityConfig. Returns None when there is no NSC, it cannot be read,
    or no base-config cleartext policy is declared. This is the app's default
    cleartext policy for every domain the NSC does not override."""
    if nsc_path is None:
        return None
    try:
        tree = ET.parse(nsc_path)
    except (ET.ParseError, OSError):
        return None
    for config in tree.getroot().iter("base-config"):
        # The cleartextTrafficPermitted attribute can be namespaced (canonical
        # android:cleartextTrafficPermitted) OR unprefixed, as apktool's decoded
        # output produced it for AndroGoat. Accept both - a security platform
        # must not miss the policy over an XML namespace quirk.
        val = config.get(f"{ANDROID_NS}cleartextTrafficPermitted") or config.get("cleartextTrafficPermitted")
        if val is not None:
            return val.strip().lower() in ("true", "1")
    return None


def _collect_permissions(root: ET.Element) -> list[str]:
    """The ordered android:name values of every <uses-permission> element."""
    perms = []
    for el in root.findall("uses-permission"):
        name = el.get(f"{ANDROID_NS}name")
        if name:
            perms.append(name)
    return perms


def _collect_exported_components(application: ET.Element) -> list[dict]:
    """Enumerate the app's declared components (activity/service/receiver/provider)
    with their type, name and EFFECTIVE exported flag - the reachable attack surface.

    Android's default: a component with no `android:exported` is effectively
    exported when it declares an intent-filter, otherwise not. Reporting the raw
    attribute as None hid that a launcher/receiver Activity with an intent-filter
    is in fact externally reachable, so we resolve the effective value the same
    way the platform does."""
    components = []
    for tag in _COMPONENT_TAGS:
        for el in application.iter(tag):
            name = el.get(f"{ANDROID_NS}name")
            if not name:
                continue
            exported_attr = el.get(f"{ANDROID_NS}exported")
            has_filter = el.find("intent-filter") is not None
            if exported_attr is not None:
                exported = exported_attr.strip().lower() in ("true", "1")
            else:
                # Android platform default differs by component type: an
                # activity/service/receiver is exported iff it declares an
                # intent-filter, but a <provider> is exported=TRUE regardless of
                # intent-filter - an unset provider is externally reachable by
                # other apps, so reporting it false under-reports a real
                # content-provider attack surface.
                exported = True if tag == "provider" else has_filter
            components.append({"type": tag, "name": name, "exported": exported})
    return components


def _resources_complete(network_security_config: str | None, resource_root: Path | None) -> bool:
    """G9/H2: True when every referenced resource resolved cleanly. A declared
    @xml/ networkSecurityConfig that is missing, or present-but-unparseable, is
    a partial resource resolution - the manifest surface must degrade to
    `partial`, not certify a confident SSL negative. True when nothing is
    referenced. Critically: an NSC declared with NO resource tree to resolve it
    against (resource_root is None - reachable via the binary-manifest path
    `parse_manifest_apk` when apktool output is absent) is NOT complete - it
    would otherwise certify a clean SSL surface whose NSC we never actually
    read. That case degrades to False (ADR-0006)."""
    if network_security_config is None:
        return True  # nothing referenced - nothing to be incomplete about
    if resource_root is None:
        # NSC declared but no decoded resource tree to resolve it against:
        # we cannot certify the referenced file exists or parses.
        return False
    if _RESOURCE_ID_NSC.match(network_security_config):
        # A raw resource-ID NSC (@7F0E0000) that was not resolved to a readable
        # @xml/<name> - we cannot certify what it points to. Degrade to partial
        # rather than certify a clean SSL surface whose config was never read.
        return False
    if not network_security_config.startswith("@xml/"):
        return True
    name = network_security_config[len("@xml/"):]
    p = resource_root / "res" / "xml" / f"{name}.xml"
    if not p.exists():
        return False
    try:
        ET.parse(p)
    except ET.ParseError:
        return False
    return True


def _count_stored_certs(nsc_path: Path | None) -> int:
    """Count stored-certificate trust anchors declared in the networkSecurityConfig
    XML (`<trust-anchors><certificates src="system|user|@raw/..."/></trust-anchors>`).
    0 when no NSC file, or none declared. These weaken SSL pinning, so their
    presence is an SSL evidence contributor.
    H2: a malformed NSC is NOT swallowed here - it propagates as ET.ParseError.
    The caller gates this on `_resources_complete` (which flags the surface
    partial), so this function is only called on a file already known to parse."""
    if nsc_path is None:
        return 0
    tree = ET.parse(nsc_path)
    count = 0
    for certs in tree.getroot().iter("certificates"):
        # `src` may be namespaced (canonical android:src) OR unprefixed, as
        # apktool's decoded NSC emits (<certificates src="system"/>). Same
        # dual-form handling as the cleartextTrafficPermitted reader above.
        src = certs.get(f"{ANDROID_NS}src") or certs.get("src")
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
