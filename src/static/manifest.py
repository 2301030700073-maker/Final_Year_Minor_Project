"""AndroidManifest.xml parsing - the fields aapt2's badging dump doesn't surface (FR-2 manifest indicators)."""

from __future__ import annotations

import re
import xml.etree.ElementTree as ET
from dataclasses import dataclass, field
from pathlib import Path

ANDROID_NS = "{http://schemas.android.com/apk/res/android}"
# Component element tags we enumerate as attack surface.
_COMPONENT_TAGS = ("activity", "activity-alias", "service", "receiver", "provider")
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
    # Domains an explicit <domain-config cleartextTrafficPermitted="true"> override
    # permits cleartext to, even when the base policy forbids it. A per-domain
    # cleartext permit is a real attack-surface fact the base-config flag alone
    # hides; surfaced additively (never flips a policy negative), empty when none.
    cleartext_domains: list[str] = field(default_factory=list)
    # Expiration dates on NSC <pin-set expiration="YYYY-MM-DD"> elements. Android
    # STOPS enforcing a pin-set once this date passes (it falls back to normal CA
    # validation), so an expired pin-set is declared-but-inactive pinning the
    # report must flag. Raw strings here (clock-free, testable); the run timestamp
    # decides expiry in the report layer.
    pin_set_expirations: list[str] = field(default_factory=list)
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


def is_decoded_manifest(manifest_path: Path) -> bool:
    """True when `manifest_path` holds a DECODED (human-readable) XML manifest -
    i.e. it is safe to hand to `parse_manifest`. APKTOOL-XML1.

    A bare `path.exists()` is NOT this predicate, and using it as one is how a
    binary manifest reached `ET.parse` and failed the whole manifest stage. An
    apktool invocation that could not decode the resource table - notably the
    `apktool d --no-res` smali fallback (`decompile.py`), which logs
    "Copying raw manifest" - still WRITES a file at
    `<apktool_dir>/AndroidManifest.xml`; that file is the APK's original BINARY
    AXML, not XML. `ET.parse` then raises ParseError ("not well-formed (invalid
    token): line 1, column 0") and the stage fails even though the robust
    binary-manifest reader (`parse_manifest_apk`) would have succeeded from the
    same APK.

    Binary AXML is a chunked format whose first two bytes are the little-endian
    RES_XML_TYPE (0x0003) resChunk_type. We therefore sniff the leading bytes
    rather than trusting the extension: a decoded manifest begins with '<'
    (possibly after a BOM) or whitespace, and an EMPTY/missing file is treated as
    not-decoded so the caller falls back rather than parsing nothing."""
    try:
        with manifest_path.open("rb") as fh:
            # Enough bytes to clear any BOM plus a run of leading whitespace
            # before the XML declaration. A 4-byte read missed the '<' on a
            # newline-and-spaces prefix, so a perfectly good decoded manifest
            # was classed binary and re-read from the APK (caught by
            # test_is_decoded_manifest_accepts_utf8_bom_and_leading_space).
            head = fh.read(64)
    except OSError:
        return False
    if not head:
        return False
    # UTF-8 / UTF-16 BOMs, then optional leading whitespace, then the XML decl.
    if head.startswith(b"\xef\xbb\xbf"):
        return True
    if head[:2] in (b"\xff\xfe", b"\xfe\xff"):
        return True
    # Binary AXML: the RES_XML_TYPE chunk header. Checked explicitly so a file
    # that is neither XML nor AXML is still refused (returns False) rather than
    # being handed to ET.parse to fail with a less actionable error.
    if len(head) >= 2 and int.from_bytes(head[:2], "little") == 0x0003:
        return False
    return head.lstrip()[:1] == b"<"


def parse_manifest(manifest_path: Path, resource_root: Path | None = None) -> ManifestInfo:
    """Parse a DECODED (human-readable) AndroidManifest.xml - produced by apktool
    (or a fixture). Delegates to `_parse_manifest_root` so the binary-manifest
    path (`parse_manifest_apk`) and the decoded path share one parser.

    The caller MUST gate this on `is_decoded_manifest` (APKTOOL-XML1): handing
    it a binary AXML manifest raises ParseError, and the binary reader
    (`parse_manifest_apk`) handles that case from the APK directly."""
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
    # Resolve the networkSecurityConfig file ONCE and reuse it for every NSC-derived
    # fact below (cleartext base policy, per-domain overrides, pin-set expirations,
    # stored trust-anchors). Each consumer previously re-resolved the same path -
    # redundant work on a file we have already located. Each _nsc_* helper still
    # parses defensively from the path, so a helper called directly in a test is
    # unaffected.
    nsc_path = _resolve_nsc_path(network_security_config, resource_root)
    # Effective cleartext: the application flag wins when set; otherwise the NSC
    # base-config cleartextTrafficPermitted governs all non-overridden domains.
    nsc_cleartext = _nsc_cleartext_permitted(nsc_path)
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
        _count_stored_certs(nsc_path)
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
        cleartext_domains=_nsc_cleartext_domains(nsc_path),
        pin_set_expirations=_nsc_pin_set_expirations(nsc_path),
        permissions=permissions,
        exported_components=exported_components,
    )


def _iter_production_scope(root) -> "list":
    """Every element in the NSC tree EXCEPT those inside a `<debug-overrides>`
    subtree, root included. Android applies `<debug-overrides>` only when the app
    is `android:debuggable="true"` (a debug build); on a shipped production APK
    that whole subtree is inert. Trust-anchors, domain-configs and pin-sets
    declared under it are therefore NOT production attack surface, so counting
    them as stored certs / cleartext domains / active pin-sets would surface a
    debug-only config as a real production SSL weakness - a false signal of the
    same class the `nsc_debug_overrides` signature precision fix already guards
    against. ElementTree carries no parent pointers, so walk the tree ourselves
    and prune at any `debug-overrides` element instead of using `root.iter()`
    (which recurses into it). Order is preserved (pre-order), so first-seen
    dedup in the callers is unchanged."""
    out = []
    stack = [root]
    while stack:
        node = stack.pop()
        out.append(node)
        # Push children in reverse so pop() yields them in document order; skip
        # descending into a debug-overrides subtree entirely.
        kids = [c for c in list(node) if _localname(c.tag) != "debug-overrides"]
        stack.extend(reversed(kids))
    return out


def _localname(tag) -> str:
    """The local tag name without any `{ns}` prefix. NSC elements are normally
    un-namespaced, but tolerate a namespaced tag so the debug-overrides prune is
    never defeated by a decoder that qualifies element names."""
    t = str(tag)
    return t.rsplit("}", 1)[-1] if "}" in t else t


def _nsc_iter(nsc_path: Path | None, tag: str):
    """Parse the NSC and yield every `<tag>` element in PRODUCTION scope (outside
    any `<debug-overrides>`). Shared by the stored-cert, cleartext-domain and
    pin-set readers so the debug-overrides prune cannot drift between them.
    Returns [] on no file / unreadable / parse error - each caller keeps its own
    conservative empty-on-failure contract."""
    if nsc_path is None:
        return []
    try:
        tree = ET.parse(nsc_path)
    except (ET.ParseError, OSError):
        return []
    return [el for el in _iter_production_scope(tree.getroot()) if _localname(el.tag) == tag]


def _nsc_cleartext_permitted(nsc_path: Path | None) -> bool | None:
    """The <base-config cleartextTrafficPermitted="..."> value from the resolved
    networkSecurityConfig. Returns None when there is no NSC, it cannot be read,
    or no base-config cleartext policy is declared. This is the app's default
    cleartext policy for every domain the NSC does not override."""
    for config in _nsc_iter(nsc_path, "base-config"):
        # The cleartextTrafficPermitted attribute can be namespaced (canonical
        # android:cleartextTrafficPermitted) OR unprefixed, as apktool's decoded
        # output produced it for AndroGoat. Accept both - a security platform
        # must not miss the policy over an XML namespace quirk.
        val = config.get(f"{ANDROID_NS}cleartextTrafficPermitted") or config.get("cleartextTrafficPermitted")
        if val is not None:
            return val.strip().lower() in ("true", "1")
    return None


def _nsc_cleartext_domains(nsc_path: Path | None) -> list[str]:
    """Domains an explicit <domain-config cleartextTrafficPermitted="true"> permits
    cleartext to. A base-config cleartext=false is secure by default, yet a
    domain-config override still exposes specific domains to cleartext - a real
    attack-surface fact the base-config flag alone hides. Returns the ordered,
    de-duplicated <domain> values of every domain-config that ITSELF sets
    cleartextTrafficPermitted true (nested configs are visited individually with
    their own flag). Only EXPLICIT permits are surfaced, never an inherited or
    inferred one, so this adds fact and never flips a policy negative (ADR-0006).
    Empty when there is no NSC, it cannot be read, or nothing permits cleartext."""
    domains: list[str] = []
    seen: set[str] = set()
    for config in _nsc_iter(nsc_path, "domain-config"):
        # Same namespace tolerance as the base-config read: the attribute can be
        # android:-prefixed or bare depending on how the NSC was decoded.
        val = config.get(f"{ANDROID_NS}cleartextTrafficPermitted") or config.get("cleartextTrafficPermitted")
        if val is None or val.strip().lower() not in ("true", "1"):
            continue
        # Direct-child <domain>s belong to THIS config's flag (a nested config with
        # its own flag is visited on its own iteration), so attribution is exact.
        for dom in config.findall("domain"):
            name = (dom.text or "").strip()
            if name and name not in seen:
                seen.add(name)
                domains.append(name)
    return domains


def _nsc_pin_set_expirations(nsc_path: Path | None) -> list[str]:
    """The `expiration` attribute of every NSC <pin-set expiration="YYYY-MM-DD">.
    Android stops enforcing a pin-set once its expiration date has passed (it
    falls back to normal CA validation), so a matched <pin-set> whose date is in
    the past is declared-but-not-enforced pinning. Returns the raw date strings -
    pure and clock-free (no `today`), so it stays deterministic and fixture-
    testable; the report compares them against the run's own timestamp. A pin-set
    with no expiration never expires and is omitted. Empty when there is no NSC,
    it cannot be read, or no pin-set declares an expiration."""
    out: list[str] = []
    for pinset in _nsc_iter(nsc_path, "pin-set"):
        exp = pinset.get(f"{ANDROID_NS}expiration") or pinset.get("expiration")
        if exp and exp.strip():
            out.append(exp.strip())
    return out


def _collect_permissions(root: ET.Element) -> list[str]:
    """The ordered android:name values of every <uses-permission> element,
    including the <uses-permission-sdk-23> form (granted only on API 23+, but a
    real declared permission a security platform must not miss)."""
    perms = []
    for tag in ("uses-permission", "uses-permission-sdk-23"):
        for el in root.findall(tag):
            name = el.get(f"{ANDROID_NS}name")
            if name:
                perms.append(name)
    return perms


def _collect_exported_components(application: ET.Element) -> list[dict]:
    """Enumerate the app's declared components (activity/activity-alias/service/
    receiver/provider) with their type, name and EFFECTIVE exported flag - the
    reachable attack surface. An <activity-alias> is an independently-launchable
    entry point (its own name/exported/intent-filter aliasing a target activity),
    externally reachable exactly like an <activity>, so omitting it from the
    enumerated tags silently under-reported the attack surface.

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
                # activity/activity-alias/service/receiver is exported iff it
                # declares an intent-filter, but a <provider> is exported=TRUE
                # regardless of intent-filter - an unset provider is externally
                # reachable by other apps, so reporting it false under-reports a
                # real content-provider attack surface. An activity-alias follows
                # the activity rule (has_filter), never the provider one.
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
    H2: the caller gates this on `_resources_complete` (which flags the surface
    partial when the NSC is missing/unparseable), so in the real flow this only
    runs on a file already known to parse; a malformed file reaching it directly
    degrades to 0 (via `_nsc_iter`), never a raise that would abort a caller.
    Trust-anchors under `<debug-overrides>` are excluded: they apply only on a
    debuggable build and are inert in production, so counting them would surface
    a debug-only trust anchor as a real SSL weakness (see _iter_production_scope)."""
    if nsc_path is None:
        return 0
    count = 0
    for certs in _nsc_iter(nsc_path, "certificates"):
        # `src` may be namespaced (canonical android:src) OR unprefixed, as
        # apktool's decoded NSC emits (<certificates src="system"/>). Same
        # dual-form handling as the cleartextTrafficPermitted reader above.
        src = certs.get(f"{ANDROID_NS}src") or certs.get("src")
        if src and (src == "system" or src == "user" or src.startswith("@raw/")):
            count += 1
    return count


def _has_device_admin(root: ET.Element) -> bool:
    """True when a <receiver> is a device-admin receiver: it declares the
    BIND_DEVICE_ADMIN permission together with an intent-filter (the system binds
    a DeviceAdminReceiver protected with that permission), OR it declares an
    intent-filter for the DEVICE_ADMIN_ENABLED action (the canonical device-admin
    marker). Such an app can install/update system-level certificates. Firing on
    EITHER signal also catches a device admin that declared the action but omitted
    the recommended permission attribute, without adding a false positive - both
    are specific to device-admin receivers."""
    admin_action = "android.app.action.DEVICE_ADMIN_ENABLED"
    for receiver in root.iter("receiver"):
        if (receiver.get(f"{ANDROID_NS}permission") == "android.permission.BIND_DEVICE_ADMIN"
                and receiver.find("intent-filter") is not None):
            return True
        for action in receiver.iter("action"):
            if action.get(f"{ANDROID_NS}name") == admin_action:
                return True
    return False
