"""Measured gap-hunt: which REAL root-detection / SSL-pinning idioms exist in the
decompiled corpus but match NO signature in the corpus?

The corpus is whatever the glob argument selects (default "*.java") - it is not the
APK. A ZERO line is scoped to that glob in its own text, so it is never read as an
absence claim over code this sweep does not open.

Not speculative - every candidate below is a technique that real apps actually
ship. The output is evidence for a decision, not a decision: a candidate with
hits only in bundled third-party code is not automatically a gap (that is what
the indicator layer is for), and nothing gets added to the YAML until the exact
form is verified in a real APK's DEX/ELF.
"""
from __future__ import annotations

import re
import sys
import time
from collections import defaultdict
from pathlib import Path

sys.path.insert(0, "src")

from common import is_third_party_decompiled_file  # noqa: E402
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


PROGRESS_EVERY = 20000


def _progress_line(done: int, start: float) -> str:
    """One liveness line for a sweep that otherwise prints nothing for minutes.

    Measured 2026-09-20: the default glob reads 1.8 GB / 411,428 files in about nine
    minutes, and stdout stays silent from the header until the walk finishes - which
    is indistinguishable from a hang when watched, and was misread as one. A line
    naming the count and the elapsed seconds is enough to tell the two apart without
    inspecting /proc."""
    return f"[gap-hunt] {done} files read, {time.monotonic() - start:.0f}s elapsed"


def _emit_progress(done: int, start: float, stream=None) -> None:
    """Emitted on the interval only, to stderr: stdout carries the report, and a
    progress line there would land in the middle of a piped result. The stream is
    resolved per call rather than bound as a default argument, which would pin it
    to the sys.stderr that existed at import and bypass a later redirect or capture
    (a test capturing stderr saw nothing until this changed)."""
    if done % PROGRESS_EVERY:
        return
    print(_progress_line(done, start),
          file=sys.stderr if stream is None else stream, flush=True)


def main() -> None:
    glob_pattern = sys.argv[1] if len(sys.argv) > 1 else "*.java"
    print(f"### sweeping {glob_pattern} under outputs/analysis")
    print("    (the glob is the whole corpus read here: a ZERO below is absent from\n"
          "     THOSE files, not from the APK - DEX/smali and native libs are not read)")
    print("    (uncovered = unmatched by the two loaded sets, root_detection.yaml and\n"
          "     ssl_pinning.yaml. native_detection.yaml and packers.yaml are NOT loaded,\n"
          "     so a hit can still be the java counterpart of a native signature - check\n"
          "     that before reading this column as 'the project has no rule for this')")
    hits: dict[str, dict] = {
        k: {"total": 0, "app_owned": 0, "uncovered": 0, "uncovered_app_owned": 0,
            "apps": set(), "examples": [], "covered_by": set()}
        for k in CANDIDATES
    }
    start = time.monotonic()
    files_read = 0
    analysis_root = Path("outputs/analysis")
    for analysis_dir in sorted(analysis_root.iterdir()):
        if not analysis_dir.is_dir():
            continue
        pkg = _app_package(analysis_dir)
        for path in analysis_dir.rglob(glob_pattern):
            files_read += 1
            _emit_progress(files_read, start)
            try:
                text = path.read_text(errors="ignore")
            except OSError:
                continue
            if not COMBINED.search(text):
                continue
            # The product's path-level helper, NOT derive_namespace directly: CFR writes
            # <analysis>/<sha>/cfr/<pkg>/... with no `sources` marker, so derive_namespace
            # returns 'outputs.analysis.<sha>.cfr.okhttp3.internal', matches no vendor
            # prefix, and reads every bundled-SDK file as APP-owned (CFR-NS1, already fixed
            # in the product at common.namespace_of_decompiled_path). This column is what
            # the report ranks by, so it has to be the shared definition or nothing - the
            # first run of this sweep labelled the same class APP under cfr and 3P under
            # jadx, and inflated app_owned for every candidate by the whole cfr half of the
            # corpus (201,604 of 411,428 files).
            third_party = is_third_party_decompiled_file(str(path), pkg)
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
            # Scoped to the glob actually swept: the default is *.java, so a bare
            # "anywhere in the corpus" asserted an absence over DEX/smali and native
            # libs this sweep never read - and this output is evidence for whether to
            # add a signature, where the difference is the whole question.
            print(f"[ZERO] {name}: no hit in any {glob_pattern} file under outputs/analysis")
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
