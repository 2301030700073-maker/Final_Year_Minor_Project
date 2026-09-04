"""Measured gap-hunt: which REAL root-detection / SSL-pinning idioms exist in the
decompiled corpus but match NO signature in the corpus?

Not speculative - every candidate below is a technique that real apps actually
ship. The output is evidence for a decision, not a decision: a candidate with
hits only in bundled third-party code is not automatically a gap (that is what
the indicator layer is for), and nothing gets added to the YAML until the exact
form is verified in a real APK's DEX/ELF.
"""
from __future__ import annotations

import re
import sys
from collections import defaultdict
from pathlib import Path

sys.path.insert(0, "src")

from common import derive_namespace, is_third_party_file  # noqa: E402
from static.signatures import _line_matches, load_signatures  # noqa: E402

SIGS = (
    load_signatures(Path("config/signatures/root_detection.yaml"))
    + load_signatures(Path("config/signatures/ssl_pinning.yaml"))
)

# Candidate idioms. Precise on purpose: a noisy probe (bare "getprop",
# "MessageDigest") drowns the signal it is meant to find.
CANDIDATES: dict[str, str] = {
    # --- root / integrity ---
    "magisk_artifact_paths": r"/(?:sbin|dev|cache)/\.?magisk|/data/adb/magisk|\.disable_magisk|magiskhide|magiskd",
    "kernelsu": r"/data/adb/ksu|\bksud\b|KernelSU",
    "apatch": r"/data/adb/ap[dsx]?/|APatch",
    "zygisk": r"[Zz]ygisk",
    "selinux_enforce": r"/sys/fs/selinux/enforce|\bgetenforce\b|isSELinuxEnforced|ro\.build\.selinux",
    "proc_mounts_rw_system": r"/proc/mounts|/proc/self/mounts|/etc/mtab",
    "xposed_framework": r"XposedBridge|de\.robv\.android\.xposed|LSPosed|EdXposed|app_process_xposed",
    "ro_debuggable_secure": r"ro\.debuggable|ro\.secure|service\.adb\.root",
    "which_su_exec": r"which\s+su|\bwhich\b.{0,12}\"su\"",
    "root_mgmt_app_packages": r"eu\.chainfire\.supersu|com\.topjohnwu\.magisk|com\.koushikdutta\.superuser|me\.weishu\.kernelsu|com\.noshufou\.android\.su",
    # --- ssl / pinning ---
    "peer_certificate_inspection": r"getPeerCertificates|getPeerCertificateChain",
    "pubkey_digest_pin": r"getPublicKey\(\)\.getEncoded|sha256/[A-Za-z0-9+/=]{10}|sha1/[A-Za-z0-9+/=]{10}",
    "x509_trustmanager_extensions": r"X509TrustManagerExtensions",
    "okhttp_handshake_certificates": r"HandshakeCertificates",
    "trustkit": r"com\.datatheorem|[Tt]rustKit",
    "certificate_transparency": r"certificatetransparency|CertificateTransparency",
    "webview_ssl_error": r"onReceivedSslError",
    "flutter_dart_pinning": r"badCertificateCallback|setTrustedCertificates|SecurityContext\(",
    "cordova_pinning_plugin": r"cordova-plugin-advanced-http|CordovaHttpPlugin|nl\.xservices\.plugins",
    "trustmanagerfactory_custom_store": r"TrustManagerFactory\.getInstance",
    "bundled_cert_asset": r"\.bks\"|\.p12\"|\.pem\"|\.cer\"|\.crt\"",
    "grpc_pinned_creds": r"ChannelCredentials|TlsChannelCredentials",
}
COMBINED = re.compile("|".join(f"(?P<{k}>{v})" for k, v in CANDIDATES.items()))

APP_PACKAGE_BY_HASH: dict[str, str | None] = {}


def _app_package(analysis_dir: Path) -> str | None:
    key = analysis_dir.name
    if key in APP_PACKAGE_BY_HASH:
        return APP_PACKAGE_BY_HASH[key]
    pkg = None
    manifest = next(analysis_dir.glob("apktool/AndroidManifest.xml"), None)
    if manifest and manifest.exists():
        m = re.search(r'package="([^"]+)"', manifest.read_text(errors="ignore")[:4000])
        if m:
            pkg = m.group(1)
    APP_PACKAGE_BY_HASH[key] = pkg
    return pkg


def main() -> None:
    glob_pattern = sys.argv[1] if len(sys.argv) > 1 else "*.java"
    print(f"### sweeping {glob_pattern}")
    hits: dict[str, dict] = {
        k: {"total": 0, "app_owned": 0, "uncovered": 0, "uncovered_app_owned": 0,
            "apps": set(), "examples": [], "covered_by": set()}
        for k in CANDIDATES
    }
    analysis_root = Path("outputs/analysis")
    for analysis_dir in sorted(analysis_root.iterdir()):
        if not analysis_dir.is_dir():
            continue
        pkg = _app_package(analysis_dir)
        for path in analysis_dir.rglob(glob_pattern):
            try:
                text = path.read_text(errors="ignore")
            except OSError:
                continue
            if not COMBINED.search(text):
                continue
            ns = derive_namespace(str(path))
            third_party = is_third_party_file(ns, pkg)
            for lineno, line in enumerate(text.splitlines(), 1):
                m = COMBINED.search(line)
                if not m or not m.lastgroup:
                    continue
                rec = hits[m.lastgroup]
                rec["total"] += 1
                rec["apps"].add(analysis_dir.name[:8])
                if not third_party:
                    rec["app_owned"] += 1
                matched_sig = next(
                    (s.id for s in SIGS if _line_matches(line, s) is not None), None
                )
                if matched_sig:
                    rec["covered_by"].add(matched_sig)
                    continue
                rec["uncovered"] += 1
                if not third_party:
                    rec["uncovered_app_owned"] += 1
                if len(rec["examples"]) < 4 and (not third_party or not rec["examples"]):
                    rec["examples"].append(
                        (("APP" if not third_party else "3P"), f"{path}:{lineno}", line.strip()[:150])
                    )

    for name in sorted(hits, key=lambda n: -hits[n]["uncovered_app_owned"]):
        r = hits[name]
        if not r["total"]:
            print(f"[ZERO] {name}: not present anywhere in the corpus")
            continue
        print(
            f"\n[{name}] total={r['total']} app_owned={r['app_owned']} "
            f"uncovered={r['uncovered']} uncovered_app_owned={r['uncovered_app_owned']} "
            f"apps={sorted(r['apps'])}"
        )
        if r["covered_by"]:
            print(f"   already matched by: {sorted(r['covered_by'])}")
        for kind, loc, snippet in r["examples"]:
            print(f"   {kind} {loc}\n       {snippet}")


if __name__ == "__main__":
    main()
