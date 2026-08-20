"""L-M2: deterministic bypass synthesizer.

The dynamic stage used to require a hand-authored Frida script per exact target
(UnCrackable1/2/3, AndroGoat); anything else degraded to "skipped, no bypass
script available" and real apps were never dynamically verified. This module
closes that gap WITHOUT AI: it composes a targeted Frida script from the
techniques the deterministic signature engine already detected in the static
evidence (ADR-0001 - the synthesizer never decides what is present; it only
turns a detected technique into the matching bypass hook). When a technique has
no dedicated hook, or nothing specific is detected, a deterministic universal
base for the category is used so a real attempt still happens - never a silent
skip.

Pure and fixture-testable anywhere: synthesize() takes the classification
evidence + action and returns a Frida JS source string. No Frida/toolchain
required (NFR-6/NFR-17). The generated script is well-formed (each hook is a
self-contained `Java.perform(...)` block) and deterministic.
"""

from __future__ import annotations

import json
from dataclasses import dataclass, field

from common import Action, ClassificationResult

# --- deterministic recipe catalog --------------------------------------------
# Each entry maps a detected technique (the signature_id the static engine can
# emit) to a targeted, hand-authored Frida hook. This is the "auto-detect ->
# generate a targeted script" pattern (APKShield-PT), kept deterministic: the
# static engine's detection is the sole source of truth, the hook catalog is
# versioned hand-authored code, and composition is pure.


# Root-artifact paths shared across ALL root file/native hooks. This is the FULL
# union of every root-artifact path any root signature names, so a single
# File.exists / libc patch hides them all. Sharing one superset matters because
# Frida's `implementation =` REPLACES the single method slot: when several root
# recipes each install a File.exists patch, only the LAST one's path list is
# active. If each patch only hid its own subset, a path an earlier patch covered
# would go unhidden (e.g. UC1's /system/bin/su check with su_management_apps
# installed last), so the app's check would detect root and no probeHit would
# fire. Every File.exists patch hides this same superset, so the last-wins
# composition never loses a path and any hidden root probe is observed.
_ROOT_ARTIFACT_PATHS = [
    "/system/bin/su", "/system/xbin/su", "/sbin/su", "/sbin/.magisk", "/sbin/busybox",
    "/system/app/Superuser.apk", "/system/app/SuperSU.apk", "/system/app/Magisk.apk",
    "/system/app/LuckyPatcher.apk", "/system/priv-app/LuckyPatcher.apk",
    "/data/app/lucky.patcher",
    "/data/adb/magisk", "/data/adb/ksu", "/data/adb/kernelsu", "/data/adb/ap",
    "/data/adb/apd", "/data/apatch", "/data/adb/denylist", "/data/adb/post-fs-data.d",
    "/data/adb/modules/zygisk", "/data/adb/zygisk",
    "/system/xbin/busybox", "/system/bin/busybox", "/system/xbin/daemonsu",
    "/system/etc/init.d/99SuperSUDaemon", "/system/bin/.ext/.su",
    "/system/etc/.has_su_daemon", "/system/etc/.installed_su_daemon",
    "/dev/com.koushikdutta.superuser.daemon",
    "/data/adb/lspd", "/data/adb/modules/lsposed", "/data/adb/lsposed",
]


def _file_exists_patch(paths: list[str] | None = None) -> str:
    """Patch java.io.File existence/access probes to report false for ANY
    root-artifact path and emit a probeHit so the app's own root-check being
    defeated is observed.

    A real root check is not limited to File.exists: it is just as likely to
    probe a root artifact through canRead (is /system/bin/su accessible), canWrite
    (is /system writable - a rooted mount), or isDirectory (is /data/adb present).
    All four are hidden by the same superset membership and emit the same probeHit,
    so a Java root check that uses any of these common File probes is defeated AND
    observed - not just the exists() form (symmetric to the native statx/faccessat
    coverage). For a non-root path each method calls through to its real impl, the
    same proven pattern as the original exists-only hook.

    The `paths` argument is retained for recipe-source readability but the hook
    hides the shared `_ROOT_ARTIFACT_PATHS` superset - see that constant for why:
    with several root recipes each installing a File probe patch, Frida replaces
    the slot, so hiding the same superset in every patch means the last one
    installed still hides every root artifact (no lost paths, no root check that
    slips through, and every hidden probe is observed)."""
    lit = json.dumps(_ROOT_ARTIFACT_PATHS)
    # RESID-6G: apply the patch with Java.performNow (synchronous, on the frida
    # injection thread) instead of Java.perform (queued async onto the app's main
    # thread). A root check like UC1's runs in onCreate immediately after resume,
    # and a Java.perform callback - whether from the synth or the vendored
    # universal - applies post-resume and can be interleaved AFTER the app's own
    # onCreate probe, so the check reads a real su binary and the probe is never
    # observed. Java.performNow applies the File.exists replacement while the
    # spawned process is still paused (before resume), so the patch is active
    # before onCreate's root check runs and every root-artifact probe is both
    # hidden-by-union and observed (probeHit). Falls back to Java.perform when
    # performNow throws (thread not attached to the VM on a normal attach).
    return (
        "(function () {\n"
        "  var patch = function () {\n"
        "    var File = Java.use('java.io.File');\n"
        f"    var paths = {lit};\n"
        "    var applyPatch = function (m) {\n"
        "      File[m].implementation = function () {\n"
        "        var p = this.getAbsolutePath();\n"
        "        for (var i = 0; i < paths.length; i++) {\n"
        "          if (p === paths[i] || p.indexOf(paths[i] + '/') === 0) {\n"
        "            send({probeHit: 'root', path: p});\n"
        "            return false;\n"
        "          }\n"
        "        }\n"
        "        return this[m]();\n"
        "      };\n"
        "    };\n"
        "    applyPatch('exists');\n"
        "    applyPatch('canRead');\n"
        "    applyPatch('canWrite');\n"
        "    applyPatch('isDirectory');\n"
        "  };\n"
        "  try { Java.performNow(patch); } catch (e) { Java.perform(patch); }\n"
        "})();"
    )


def _native_root_path_hiding(paths: list[str]) -> str:
    """Hide root artifacts from a native root check that probes them through
    libc (access/stat/lstat/statx/open/openat/fopen/faccessat) - the JNI
    equivalent of the Java File.exists patch (L-M2, no native root recipe
    existed). When the path argument matches a root artifact, the call returns
    failure (ENOENT, or NULL for fopen) so the native probe believes the
    artifact is absent. The modern/alternate libc primitives a real-world native
    root check is as likely to use as the plain forms are covered too: statx
    (modern stat, path arg 1), openat (path arg 1), and faccessat (the *at
    variant of access, path arg 1) - each is a distinct export a probe could
    call. Deterministic; try/catch per symbol so a missing libc export (e.g.
    statx on an older device) degrades silently. Routed via
    native_su_binary_embedded, which already fires only when root paths are
    embedded in native code (low false-positive, ADR-0006)."""
    lit = json.dumps(paths)
    return (
        "var ROOT_PATHS = " + lit + ";\n"
        "function isRootPath(p) {\n"
        "  if (!p) return false;\n"
        "  try {\n"
        "    var s = p.readUtf8String();\n"
        "    for (var i = 0; i < ROOT_PATHS.length; i++) {\n"
        "      if (s === ROOT_PATHS[i] || s.indexOf(ROOT_PATHS[i] + '/') === 0) return true;\n"
        "    }\n"
        "  } catch (e) {}\n"
        "  return false;\n"
        "}\n"
        "function hidePathProbe(fn, pathArg, failRet) {\n"
        "  try {\n"
        "    var a = Module.findExportByName('libc.so', fn);\n"
        "    if (!a) return;\n"
        "    Interceptor.attach(a, {\n"
        "      onEnter: function (args) {\n"
        "        var p = args[pathArg];\n"
        "        this.hide = isRootPath(p);\n"
        "        this.hp = p;\n"
        "      },\n"
        "      onLeave: function (ret) {\n"
        "        if (this.hide) {\n"
        "          try { send({probeHit: 'root', path: this.hp.readUtf8String()}); } catch (e) {}\n"
        "          ret.replace(ptr(failRet));\n"
        "        }\n"
        "      }\n"
        "    });\n"
        "  } catch (e) { console.log('[synth] no ' + fn + ' in libc.so'); }\n"
        "}\n"
        "hidePathProbe('access', 0, -1);\n"
        "hidePathProbe('stat', 0, -1);\n"
        "hidePathProbe('lstat', 0, -1);\n"
        "hidePathProbe('statx', 1, -1);\n"
        "hidePathProbe('open', 0, -1);\n"
        "hidePathProbe('openat', 1, -1);\n"
        "hidePathProbe('faccessat', 1, -1);\n"
        "hidePathProbe('fopen', 0, 0);\n"
    )


def _native_root_exec_blocking() -> str:
    """Block a JNI root check that EXECUTES a root binary rather than probing a
    path - the native counterpart to the Java root_runtime_exec_su recipe. A
    native root check does fork+execve("/system/bin/su", ...) or system("which su")
    directly (never touching Java Runtime.exec/ProcessBuilder), so hiding libc
    stat/access alone misses it. execve(path,...) is blocked when the basename is a
    root binary (su/magisk/ksu/apatch); system(cmd) is blocked when the shell
    string references one or uses the which/command -v idiom. A blocked execve makes
    the child exit non-zero (execve -1 -> _exit(127)), and a blocked system returns
    -1 - so the parent's waitpid/return sees "not rooted". Conservative: only a root
    binary basename/reference triggers, never a benign exec. Each blocked probe emits
    the probeHit that confirms root. Deterministic; try/catch per symbol so a missing
    export degrades silently (ADR-0006)."""
    return (
        "function nbasename(p) { var i = p.lastIndexOf('/'); return i === -1 ? p : p.substr(i + 1); }\n"
        "function isRootBin(b) { return b === 'su' || b === 'magisk' || b === 'ksu' || b === 'apatch'; }\n"
        "function isRootExecStr(s) {\n"
        "  if (!s) return false;\n"
        "  var t = ' ' + s.replace(/[\"']/g, ' ') + ' ';\n"
        "  return t.indexOf(' su ') !== -1 || t.indexOf('/su ') !== -1\n"
        "      || t.indexOf(' magisk ') !== -1 || t.indexOf(' ksu ') !== -1\n"
        "      || t.indexOf('which su') !== -1 || t.indexOf('which magisk') !== -1\n"
        "      || t.indexOf('command -v su') !== -1 || t.indexOf('type su') !== -1;\n"
        "}\n"
        "try {\n"
        "  var ev = Module.findExportByName('libc.so', 'execve');\n"
        "  if (ev) Interceptor.attach(ev, {\n"
        "    onEnter: function (args) {\n"
        "      this.block = false;\n"
        "      try { var p = args[0].readUtf8String(); if (p && isRootBin(nbasename(p))) { this.block = true; this.p = p; } } catch (e) {}\n"
        "    },\n"
        "    onLeave: function (ret) {\n"
        "      if (this.block) { try { send({probeHit: 'root', path: this.p}); } catch (e) {} ret.replace(ptr(-1)); }\n"
        "    }\n"
        "  });\n"
        "} catch (e) { console.log('[synth] execve hook unavailable'); }\n"
        "try {\n"
        "  var sy = Module.findExportByName('libc.so', 'system');\n"
        "  if (sy) Interceptor.attach(sy, {\n"
        "    onEnter: function (args) {\n"
        "      this.block = false;\n"
        "      try { var c = args[0].readUtf8String(); if (c && isRootExecStr(c)) { this.block = true; this.c = c; } } catch (e) {}\n"
        "    },\n"
        "    onLeave: function (ret) {\n"
        "      if (this.block) { try { send({probeHit: 'root', path: this.c}); } catch (e) {} ret.replace(ptr(-1)); }\n"
        "    }\n"
        "  });\n"
        "} catch (e) { console.log('[synth] system hook unavailable'); }\n"
    )


def _native_build_props_hiding() -> str:
    """Hide the Android emulator/test-keys build fingerprint from a NATIVE root
    check - the JNI counterpart to the Java Build.TAGS patch
    (root_build_tags_test_keys). A JNI root check reads ro.build.tags /
    ro.build.type / ro.build.fingerprint through libc's __system_property_get; on
    an emulator or userdebug/eng build those read 'test-keys'/'userdebug', which
    the check treats as rooted. This hook answers the ROOT-INDICATING reads with
    the production value instead ('release-keys'/'user', and any 'test-keys' in
    the fingerprint scrubbed to 'release-keys' - mirroring the Java recipe, which
    also patches Build.FINGERPRINT). It only ever rewrites the return for exactly
    these root-indicating prop reads - no other property read is touched, so app
    behavior is unchanged except for the signals a native build-tag root check
    keys on (ADR-0001). Deterministic; try/catch so a missing __system_property_get
    export degrades silently. Routed via native_build_props_probe, which fires
    only when the build-props strings are embedded in native code (low-FP,
    ADR-0006)."""
    return (
        "// __system_property_get(name, value) returns the value length, or 0 if\n"
        "// absent. Spoof only the two props a native test-keys root check keys on.\n"
        "function spoofProp(name, value, len) {\n"
        "  try {\n"
        "    var p = Module.findExportByName('libc.so', '__system_property_get');\n"
        "    if (!p) return;\n"
        "    Interceptor.attach(p, {\n"
        "      onEnter: function (args) {\n"
        "        this.spoof = false;\n"
        "        try {\n"
        "          if (args[0].readUtf8String() === name) {\n"
        "            args[1].writeUtf8String(value);\n"
        "            this.spoof = true;\n"
        "          }\n"
        "        } catch (e) {}\n"
        "      },\n"
        "      onLeave: function (ret) {\n"
        "        if (this.spoof) ret.replace(ptr(len));\n"
        "      }\n"
        "    });\n"
        "  } catch (e) { console.log('[synth] ' + name + ' prop hook unavailable'); }\n"
        "}\n"
        "spoofProp('ro.build.tags', 'release-keys', 12);\n"
        "spoofProp('ro.build.type', 'user', 4);\n"
        "// ro.build.fingerprint also embeds 'test-keys' on an emulator/userdebug\n"
        "// build, but its value is device-specific - so scrub the token in place\n"
        "// (read the real value, replace test-keys -> release-keys) rather than\n"
        "// overriding it. Mirrors the Java recipe's Build.FINGERPRINT patch.\n"
        "function scrubFingerprint() {\n"
        "  try {\n"
        "    var p = Module.findExportByName('libc.so', '__system_property_get');\n"
        "    if (!p) return;\n"
        "    Interceptor.attach(p, {\n"
        "      onEnter: function (args) { try { this.isFp = args[0].readUtf8String() === 'ro.build.fingerprint'; } catch (e) { this.isFp = false; } this.buf = args[1]; },\n"
        "      onLeave: function (ret) {\n"
        "        if (this.isFp && ret.toInt32() > 0) {\n"
        "          try {\n"
        "            var s = this.buf.readUtf8String();\n"
        "            if (s.indexOf('test-keys') !== -1) this.buf.writeUtf8String(s.replace(/test-keys/g, 'release-keys'));\n"
        "          } catch (e) {}\n"
        "        }\n"
        "      }\n"
        "    });\n"
        "  } catch (e) { console.log('[synth] fingerprint prop scrub unavailable'); }\n"
        "}\n"
        "scrubFingerprint();\n"
    )


def _evasion_base() -> str:
    """Hide the Frida agent from a self-protecting app's anti-instrumentation
    probes (Dex2C-2026 anti-Frida evasion, L-M2). At the libc level, blank any
    line read (getline/fgets) that carries a Frida artifact token, and hide the
    default agent port from /proc/net/tcp reads. Native scanners that raw-READ
    (open+read, not getline/fgets) /proc/self/maps (injected-agent scan) or
    /proc/net/tcp (port scan) are covered too: the fds/FILE*s opened on those
    proc files are tracked and the same Frida-only tokens (including the port
    tokens ':27042'/':69A2') are byte-scrubbed from read/fread on them. The
    tokens are Frida-specific - no benign content contains them - so blanking by
    token is safe without knowing the file semantics. Every hook is
    try/catch-guarded so a missing symbol degrades silently; it only ever hides
    Frida evidence, never changes the app's own behavior (ADR-0001)."""
    return (
        "var TOKENS = ['frida', 'gum-js-loop', 'linjector', 're.frida.server', "
        "'frida-server', 'frida-gadget'];\n"
        "function blankIfTainted(line) {\n"
        "  for (var i = 0; i < TOKENS.length; i++) {\n"
        "    if (line.indexOf(TOKENS[i]) !== -1 || line.indexOf(':27042') !== -1 || "
        "line.indexOf(':69A2') !== -1) {\n"
        "      return '\\n';\n"
        "    }\n"
        "  }\n"
        "  return line;\n"
        "}\n"
        "function hookLineReader(fn) {\n"
        "  var p = Module.findExportByName('libc.so', fn);\n"
        "  if (!p) return;\n"
        "  var isGetline = (fn === 'getline');\n"
        "  Interceptor.attach(p, {\n"
        "    onEnter: function (args) { this.arg0 = args[0]; },\n"
        "    onLeave: function (ret) {\n"
        "      if (ret.isNull()) return;\n"
        "      try {\n"
        "        var buf = isGetline ? this.arg0.readPointer() : this.arg0;\n"
        "        var s = buf.readUtf8String();\n"
        "        if (s) buf.writeUtf8String(blankIfTainted(s));\n"
        "      } catch (e) {}\n"
        "    }\n"
        "  });\n"
        "}\n"
        "try { hookLineReader('getline'); } catch (e) { console.log('[evasion] getline hook unavailable'); }\n"
        "try { hookLineReader('fgets'); } catch (e) { console.log('[evasion] fgets hook unavailable'); }\n"
        "// The most common native anti-Frida check raw-READs /proc/self/maps (open +\n"
        "// read, not getline/fgets) and scans for the injected agent (frida-agent,\n"
        "// gum-js-loop, linjector, frida-server). Those raw reads bypass the line\n"
        "// readers above, so a Dex2C scanner would see the agent and kill the bypass.\n"
        "// Track which fds/FILE*s were opened on /proc/self/maps and scrub the same\n"
        "// Frida-only tokens from their reads - byte-level, so any token fully within\n"
        "// a read (the common whole-file or big-buffer scan) is blanked to '.'.\n"
        "// Scrubbing is safe: the tokens never appear in benign maps content (ADR-0001).\n"
        "var MAPS_FDS = {};\n"
        "var MAPS_STREAMS = {};\n"
        "function isTrackedProcPath(p) {\n"
        "  if (!p) return false;\n"
        "  if (p.indexOf('/proc') === -1) return false;\n"
        "  // /proc/self/maps (injected-agent scan) and /proc/net/tcp (default-port\n"
        "  // scan) - the two proc files a native anti-Frida check raw-reads.\n"
        "  return p.indexOf('/maps') !== -1 || p.indexOf('/net/tcp') !== -1;\n"
        "}\n"
        "function blankTokens(buf, len) {\n"
        "  try {\n"
        "    var arr = new Uint8Array(buf.readByteArray(len));\n"
        "    for (var k = 0; k < TOKENS.length; k++) {\n"
        "      var t = TOKENS[k], tl = t.length;\n"
        "      for (var i = 0; i + tl <= len; i++) {\n"
        "        var m = true;\n"
        "        for (var j = 0; j < tl; j++) if (arr[i + j] !== t.charCodeAt(j)) { m = false; break; }\n"
        "        if (m) for (var j = 0; j < tl; j++) arr[i + j] = 46; // '.'\n"
        "      }\n"
        "    }\n"
        "    buf.writeByteArray(arr.buffer);\n"
        "  } catch (e) {}\n"
        "}\n"
        "function trackOpen(path, fd, streams) {\n"
        "  try { if (isTrackedProcPath(path)) streams[fd] = true; } catch (e) {}\n"
        "}\n"
        "try {\n"
        "  var _o = Module.findExportByName('libc.so', 'open');\n"
        "  if (_o) Interceptor.attach(_o, {\n"
        "    onEnter: function (args) { this.path = args[0].readUtf8String(); },\n"
        "    onLeave: function (ret) { var fd = ret.toInt32(); if (fd >= 0) trackOpen(this.path, fd, MAPS_FDS); }\n"
        "  });\n"
        "} catch (e) { console.log('[evasion] open hook unavailable'); }\n"
        "try {\n"
        "  var _oa = Module.findExportByName('libc.so', 'openat');\n"
        "  if (_oa) Interceptor.attach(_oa, {\n"
        "    onEnter: function (args) { this.path = args[1].readUtf8String(); },\n"
        "    onLeave: function (ret) { var fd = ret.toInt32(); if (fd >= 0) trackOpen(this.path, fd, MAPS_FDS); }\n"
        "  });\n"
        "} catch (e) { console.log('[evasion] openat hook unavailable'); }\n"
        "try {\n"
        "  var _f = Module.findExportByName('libc.so', 'fopen');\n"
        "  if (_f) Interceptor.attach(_f, {\n"
        "    onEnter: function (args) { this.path = args[0].readUtf8String(); },\n"
        "    onLeave: function (ret) { if (!ret.isNull()) trackOpen(this.path, ret.toString(), MAPS_STREAMS); }\n"
        "  });\n"
        "} catch (e) { console.log('[evasion] fopen hook unavailable'); }\n"
        "try {\n"
        "  var _r = Module.findExportByName('libc.so', 'read');\n"
        "  if (_r) Interceptor.attach(_r, {\n"
        "    onEnter: function (args) { this.isMaps = !!MAPS_FDS[args[0].toString()]; this.buf = args[1]; this.len = args[2].toInt32(); },\n"
        "    onLeave: function (ret) { if (this.isMaps && ret.toInt32() > 0) { try { blankTokens(this.buf, ret.toInt32()); } catch (e) {} } }\n"
        "  });\n"
        "} catch (e) { console.log('[evasion] read hook unavailable'); }\n"
        "try {\n"
        "  var _fr = Module.findExportByName('libc.so', 'fread');\n"
        "  if (_fr) Interceptor.attach(_fr, {\n"
        "    onEnter: function (args) { this.isMaps = !!MAPS_STREAMS[args[3].toString()]; this.buf = args[0]; this.size = args[1].toInt32(); },\n"
        "    onLeave: function (ret) { var n = ret.toInt32(); if (this.isMaps && n > 0) { try { blankTokens(this.buf, n * this.size); } catch (e) {} } }\n"
        "  });\n"
        "} catch (e) { console.log('[evasion] fread hook unavailable'); }\n"
    )


def _native_ssl_pin_bypass() -> str:
    """Native SSL unpinning across the BoringSSL/OpenSSL family - not just
    libssl.so. Real apps ship BoringSSL inside libcronet.so (gRPC/HTTP3),
    libconscrypt_jni.so (Conscrypt, Android's default provider), and - for
    Flutter/Unity apps - inside libflutter.so / libunity.so (no Java SSL stack at
    all), so a libssl-only hook misses them. Rather than a fixed module-name list
    that a renamed or unexpected host would skip, scan every loaded .so and patch
    whichever export the verify entrypoints (SSL_CTX_set_verify -> 0 / accept;
    SSL_CTX_set_cert_verify_callback -> accept-all) in any module of the family.
    Also neutralizes the modern BoringSSL custom-verify API (SSL_CTX_set_custom_
    verify / SSL_set_custom_verify) used by Conscrypt/Cronet/Flutter to pin - each
    returns 1 (accept) so the custom verifier is never installed and the pin check
    is skipped. Deterministic; try/catch so an absent module/symbol degrades
    silently."""
    return (
        "// Hook BoringSSL/OpenSSL verify-control wherever it lives - not a fixed\n"
        "// module-name list, so any loaded .so that exports these symbols (libssl,\n"
        "// libcronet, libconscrypt_jni, libboringssl, libflutter, libunity, or a\n"
        "// renamed/vendored BoringSSL) is covered no matter which module hosts the\n"
        "// app's TLS stack (app-agnostic).\n"
        "var SYMS = [\n"
        "  ['SSL_CTX_set_verify', function (ctx, mode) { return 0; }, ['pointer', 'int']],\n"
        "  ['SSL_CTX_set_cert_verify_callback', function (ctx, cb, a) { return 1; }, ['pointer', 'pointer', 'pointer']],\n"
        "  ['SSL_CTX_set_custom_verify', function (ctx, mode, cb) { return 1; }, ['pointer', 'int', 'pointer']],\n"
        "  ['SSL_set_custom_verify', function (ssl, mode, cb) { return 1; }, ['pointer', 'int', 'pointer']]\n"
        "];\n"
        "var mods = Process.enumerateModules();\n"
        "for (var i = 0; i < mods.length; i++) {\n"
        "  var mn = mods[i].name;\n"
        "  if (mn.indexOf('.so') === -1) continue;\n"
        "  for (var k = 0; k < SYMS.length; k++) {\n"
        "    try {\n"
        "      var p = Module.findExportByName(mn, SYMS[k][0]);\n"
        "      if (p) Interceptor.replace(p, new NativeCallback(SYMS[k][1], 'int', SYMS[k][2]));\n"
        "    } catch (e) { console.log('[synth] no ' + SYMS[k][0] + ' in ' + mn); }\n"
        "  }\n"
        "}\n"
    )


def _ssl_effect_observer() -> str:
    """Observe real TLS behavior through the neutralized stack - behavioral-effect
    evidence for an unknown target (stronger than 'hooks attached').

    Two signals, combined by the TechnologyHooksEngagedCheck:
    * `ssl-pin-check` - the app's OWN Java pin-check (okhttp CertificatePinner.check
      or conscrypt TrustManagerImpl.checkServerTrusted) was invoked and returned
      WITHOUT throwing. Because the SSL recipes neutralize those entry points, a
      check that returns normally means the app's pin logic accepted the cert - the
      pin was defeated for that path. (If no neutralizer is installed, the real
      check would throw on mismatch and no pin-check fires - the honest gate.)
    * `ssl-handshake` - a TLS handshake completed through the stack.

    When BOTH are observed the app's pin logic demonstrably ran and accepted a
    connection it would otherwise reject - that is the deterministic confirmation
    that the SSL bypass worked for that connection (the app's own observable
    behavior, not a fabricated pass). Either signal alone stays effect evidence.
    Guarded try/catch over every class hook so a missing class degrades silently.
    This is the strongest honest unknown-target SSL signal short of a target
    SuccessCheck (ADR-0006): it is only ever promoted to confirmed when the app's
    own pin-check path demonstrably accepted."""
    return (
        # Observe the app's own Java pin-check running without rejecting. These
        # hooks run AFTER the SSL recipes (the observer is appended last), so
        # `this.check`/`this.checkServerTrusted` is the recipe's neutralized impl
        # and returns normally -> pin-check fires; a real check would throw.
        "try {\n"
        "  Java.perform(function () {\n"
        "    var CP = Java.use('okhttp3.CertificatePinner');\n"
        "    var _wrap_check = function () {\n"
        "      var r = this.check.apply(this, arguments);\n"
        "      send({bypassEffect: 'ssl-pin-check'});\n"
        "      return r;\n"
        "    };\n"
        "    CP.check.overload('java.lang.String', 'java.util.List').implementation = _wrap_check;\n"
        "  });\n"
        "} catch (e) {}\n"
        "try {\n"
        "  Java.perform(function () {\n"
        "    var CP = Java.use('okhttp3.CertificatePinner');\n"
        "    var _wrap_check = function () {\n"
        "      var r = this.check.apply(this, arguments);\n"
        "      send({bypassEffect: 'ssl-pin-check'});\n"
        "      return r;\n"
        "    };\n"
        "    CP.check.overload('java.lang.String', '[Ljava.security.cert.Certificate;').implementation = _wrap_check;\n"
        "  });\n"
        "} catch (e) {}\n"
        "try {\n"
        "  Java.perform(function () {\n"
        "    var TMI = Java.use('com.android.org.conscrypt.TrustManagerImpl');\n"
        "    var _wrap_cst = function () {\n"
        "      var r = this.checkServerTrusted.apply(this, arguments);\n"
        "      send({bypassEffect: 'ssl-pin-check'});\n"
        "      return r;\n"
        "    };\n"
        "    TMI.checkServerTrusted.overload('[Ljava.security.cert.X509Certificate;', 'java.lang.String').implementation = _wrap_cst;\n"
        "  });\n"
        "} catch (e) {}\n"
        "try {\n"
        "  Java.perform(function () {\n"
        "    var TMI = Java.use('com.android.org.conscrypt.TrustManagerImpl');\n"
        "    var _wrap_cst = function () {\n"
        "      var r = this.checkServerTrusted.apply(this, arguments);\n"
        "      send({bypassEffect: 'ssl-pin-check'});\n"
        "      return r;\n"
        "    };\n"
        "    TMI.checkServerTrusted.overload('[Ljava.security.cert.X509Certificate;', 'java.lang.String', 'java.lang.String').implementation = _wrap_cst;\n"
        "  });\n"
        "} catch (e) {}\n"
        "// Custom (non-platform) TrustManager: a real app often ships its OWN\n"
        "// X509TrustManager implementation with the pin check inside checkServerTrusted\n"
        "// (common in banking/fintech), so neither okhttp3.CertificatePinner nor the\n"
        "// platform com.android.org.conscrypt.TrustManagerImpl hooks above fire. The\n"
        "// generic SSL recipes neutralize javax.net.ssl.X509TrustManager.checkServerTrusted\n"
        "// via the interface - observe the same interface here so the neutralized impl\n"
        "// returning normally lights ssl-pin-check for a custom TrustManager too. A\n"
        "// conscrypt-backed app that calls through the interface double-fires with the\n"
        "// explicit TrustManagerImpl hook above - harmless (effects are deduped) and the\n"
        "// same honest signal: a pin-check that returned without rejecting.\n"
        "try {\n"
        "  Java.perform(function () {\n"
        "    var XT = Java.use('javax.net.ssl.X509TrustManager');\n"
        "    var _wrap_xt = function () {\n"
        "      var r = this.checkServerTrusted.apply(this, arguments);\n"
        "      send({bypassEffect: 'ssl-pin-check'});\n"
        "      return r;\n"
        "    };\n"
        "    XT.checkServerTrusted.implementation = _wrap_xt;\n"
        "  });\n"
        "} catch (e) {}\n"
        "try {\n"
        "  Java.perform(function () {\n"
        "    var CE = Java.use('com.android.org.conscrypt.ConscryptEngineSocket');\n"
        "    CE.startHandshake.implementation = function () {\n"
        "      this.startHandshake();\n"
        "      send({bypassEffect: 'ssl-handshake'});\n"
        "    };\n"
        "  });\n"
        "} catch (e) {}\n"
        "try {\n"
        "  Java.perform(function () {\n"
        "    var SS = Java.use('javax.net.ssl.SSLSocket');\n"
        "    SS.startHandshake.implementation = function () {\n"
        "      this.startHandshake();\n"
        "      send({bypassEffect: 'ssl-handshake'});\n"
        "    };\n"
        "  });\n"
        "} catch (e) {}\n"
        "// Native TLS handshake observation - pure-native hosts (Flutter dart:io,\n"
        "// Unity, or a renamed/vendored BoringSSL) have NO Java SSL stack, so the\n"
        "// Java ConscryptEngineSocket/SSLSocket hooks above never fire and a real\n"
        "// completed handshake would otherwise report as 'none observed' - a false\n"
        "// negative. Observation only: SSL_do_handshake returning 1 means a handshake\n"
        "// completed through the neutralized stack. This never confirms on its own\n"
        "// (SSL confirmation still requires the app's own pin-check signal, which a\n"
        "// native host can honestly provide only through an app-specific path - so\n"
        "// it stays effect evidence, ADR-0006) - it just stops a genuine completed\n"
        "// handshake from being invisible. Deterministic; try/catch per module so a\n"
        "// missing symbol degrades silently.\n"
        "var mods2 = Process.enumerateModules();\n"
        "for (var i = 0; i < mods2.length; i++) {\n"
        "  var mn2 = mods2[i].name;\n"
        "  if (mn2.indexOf('.so') === -1) continue;\n"
        "  try {\n"
        "    var hs = Module.findExportByName(mn2, 'SSL_do_handshake');\n"
        "    if (!hs) continue;\n"
        "    Interceptor.attach(hs, {\n"
        "      onLeave: function (ret) {\n"
        "        if (ret.toInt32() === 1) send({bypassEffect: 'ssl-handshake'});\n"
        "      }\n"
        "    });\n"
        "  } catch (e) { console.log('[synth] no SSL_do_handshake in ' + mn2); }\n"
        "}\n"
    )


ROOT_RECIPES: dict[str, str] = {
    "root_su_binary_paths": _file_exists_patch(
        ["/system/bin/su", "/system/xbin/su", "/sbin/su", "/system/app/Superuser.apk"]
    ),
    "root_su_via_path_env_check": _file_exists_patch(
        ["/system/bin/su", "/system/xbin/su", "/sbin/su"]
    ),
    "root_known_indicator_files": _file_exists_patch(
        ["/system/app/Superuser.apk", "/sbin/su", "/system/bin/su", "/system/xbin/su"]
    ),
    "su_management_apps": _file_exists_patch(
        ["/system/app/Superuser.apk", "/system/app/SuperSU.apk", "/system/app/Magisk.apk"]
    ),
    "magisk_su_binary_paths": _file_exists_patch(
        ["/data/adb/magisk", "/data/adb/ksu", "/sbin/.magisk"]
    ),
    "kernelsu_binary_paths": _file_exists_patch(["/data/adb/ksu", "/data/adb/kernelsu"]),
    "magisk_denylist_artifacts": _file_exists_patch(
        ["/data/adb/magisk", "/data/adb/denylist", "/data/adb/post-fs-data.d"]
    ),
    "zygisk_artifact_paths": _file_exists_patch(["/data/adb/modules/zygisk", "/data/adb/zygisk"]),
    # selinux context strings are checked via getprop/file contexts - the
    # file-exists patch is the pragmatic deterministic hook for the artifacts
    # this signature names.
    "magisk_selinux_context": _file_exists_patch(["/data/adb/magisk"]),
    "root_runtime_exec_su": (
        "Java.perform(function () {\n"
        "  // Conservative root-exec detector: only fires on a genuine root-binary\n"
        "  // reference (su / a su path / magisk / ksu) or the which/command -v/type\n"
        "  // idiom targeting one - never on a benign command (ADR-0006). Shell quotes\n"
        "  // are blanked so 'sh -c \"su\"' is caught like 'su -c id'.\n"
        "  function isRootExec(s) {\n"
        "    if (!s) return false;\n"
        "    var t = ' ' + s.replace(/[\"']/g, ' ') + ' ';\n"
        "    return t.indexOf(' su ') !== -1 || t.indexOf('/su ') !== -1\n"
        "        || t.indexOf(' magisk ') !== -1 || t.indexOf(' ksu ') !== -1\n"
        "        || t.indexOf('which su') !== -1 || t.indexOf('which magisk') !== -1\n"
        "        || t.indexOf('command -v su') !== -1 || t.indexOf('type su') !== -1;\n"
        "  }\n"
        "  var Runtime = Java.use('java.lang.Runtime');\n"
        "  Runtime.exec.overload('java.lang.String').implementation = function (cmd) {\n"
        "    if (isRootExec(cmd)) { send({probeHit: 'root', path: cmd}); return null; }\n"
        "    return this.exec(cmd);\n"
        "  };\n"
        "  Runtime.exec.overload('[Ljava.lang.String;').implementation = function (arr) {\n"
        "    var joined = '';\n"
        "    try {\n"
        "      var j = Java.array('java.lang.String', arr);\n"
        "      for (var i = 0; i < j.length; i++) joined += (i ? ' ' : '') + j[i];\n"
        "    } catch (e) {}\n"
        "    if (isRootExec(joined)) { send({probeHit: 'root', path: joined}); return null; }\n"
        "    return this.exec(arr);\n"
        "  };\n"
        "  var PB = Java.use('java.lang.ProcessBuilder');\n"
        "  PB.start.implementation = function () {\n"
        "    var joined = '';\n"
        "    try {\n"
        "      var c = this.command();\n"
        "      for (var i = 0; i < c.size(); i++) joined += (i ? ' ' : '') + c.get(i);\n"
        "    } catch (e) {}\n"
        "    if (isRootExec(joined)) { send({probeHit: 'root', path: joined}); return null; }\n"
        "    return this.start();\n"
        "  };\n"
        "});"
    ),
    "root_build_tags_test_keys": (
        "Java.perform(function () {\n"
        "  var Build = Java.use('android.os.Build');\n"
        "  Build.TAGS.value = 'release-keys';\n"
        "  Build.FINGERPRINT.value = Build.FINGERPRINT.value.replace(/test-keys/g, 'release-keys');\n"
        "});"
    ),
    "rootbeer_framework": (
        "Java.perform(function () {\n"
        "  try {\n"
        "    var RootBeer = Java.use('com.scottyab.rootbeer.RootBeer');\n"
        "    RootBeer.isRooted.implementation = function () { return false; };\n"
        "    RootBeer.isRootedWithBusyBoxCheck.implementation = function () { return false; };\n"
        "  } catch (e) { console.log('[synth] RootBeer class absent'); }\n"
        "});"
    ),
    # Real-world root tooling beyond the classic Magisk/KingUser set: APatch
    # (kernel-patching root), KernelSU manager, BusyBox install, LSPosed, and
    # LuckyPatcher each leave distinct artifact paths the app probes. Each gets
    # its own file-exists patch so the check is neutralized by path, not skipped.
    "apatch_binary_paths": _file_exists_patch(["/data/adb/ap", "/data/adb/apd", "/data/apatch"]),
    "apatch_manager_package": _file_exists_patch(["/data/adb/ap", "/data/adb/apd", "/data/apatch"]),
    "kernelsu_manager_package": _file_exists_patch(["/data/adb/ksu", "/data/adb/kernelsu"]),
    "busybox_binary_paths": _file_exists_patch(["/system/xbin/busybox", "/system/bin/busybox", "/sbin/busybox"]),
    "lsposed_manager": _file_exists_patch(["/data/adb/lspd", "/data/adb/modules/lsposed", "/data/adb/lsposed"]),
    "lucky_patcher_root_tool": _file_exists_patch(
        ["/system/app/LuckyPatcher.apk", "/system/priv-app/LuckyPatcher.apk", "/data/app/lucky.patcher"]
    ),
    # Native root path-hiding (was the one native root gap - zero native root
    # recipes before this): when the app embeds root-artifact paths in native
    # code (native_su_binary_embedded fires, low-FP), hide them from libc
    # access/stat/open/fopen probes so a JNI root check believes the artifact is
    # absent - the native counterpart to the Java File.exists patch above.
    "native_su_binary_embedded": (
        _native_root_path_hiding(_ROOT_ARTIFACT_PATHS) + "\n\n" + _native_root_exec_blocking()
    ),
    # native_jni_root_check fires when the app EXPORTS a JNI root check
    # (checkRoot/isRooted) but its .so need not embed the su-path strings - so it
    # was unmapped and fell to the Java-only universal root, leaving the native
    # probing code unhidden. Any detected native JNI root check probes root
    # artifacts somehow; give it the same native envelope (libc path-hiding +
    # exec-blocking). Conservative: the hooks only fire on an actual root-artifact
    # probe/exec, never on app behavior (ADR-0006). Build-props remains routed by
    # its own signature when those strings are embedded.
    "native_jni_root_check": (
        _native_root_path_hiding(_ROOT_ARTIFACT_PATHS) + "\n\n" + _native_root_exec_blocking()
    ),
    # Native build-props root check (was a native blind spot - the Java
    # Build.TAGS patch has no native counterpart). When the app embeds
    # ro.build.tags / ro.build.type in native code (native_build_props_probe
    # fires, low-FP), answer the root-indicating read with the production value.
    "native_build_props_probe": _native_build_props_hiding(),
}

SSL_RECIPES: dict[str, str] = {
    "custom_trustmanager_checkservertrusted": (
        "Java.perform(function () {\n"
        "  var TM = Java.use('javax.net.ssl.X509TrustManager');\n"
        "  TM.checkServerTrusted.implementation = function () {};\n"
        "  TM.checkClientTrusted.implementation = function () {};\n"
        "});"
    ),
    "trust_all_x509_checkservertrusted": (
        "Java.perform(function () {\n"
        "  var TM = Java.use('javax.net.ssl.X509TrustManager');\n"
        "  TM.checkServerTrusted.implementation = function () {};\n"
        "  TM.checkClientTrusted.implementation = function () {};\n"
        "});"
    ),
    # NSC <pin-set> / <pin digest> enforce through the framework TrustManager
    # path - neutralizing checkServerTrusted is the deterministic handle for
    # it, since the pin-set itself is not directly Frida-patchable.
    "network_security_config_pinset": (
        "Java.perform(function () {\n"
        "  var TM = Java.use('javax.net.ssl.X509TrustManager');\n"
        "  TM.checkServerTrusted.implementation = function () {};\n"
        "});"
    ),
    "network_security_config_pin_digest": (
        "Java.perform(function () {\n"
        "  var TM = Java.use('javax.net.ssl.X509TrustManager');\n"
        "  TM.checkServerTrusted.implementation = function () {};\n"
        "});"
    ),
    "hostname_verifier_always_true": (
        "Java.perform(function () {\n"
        "  var HV = Java.use('javax.net.ssl.HostnameVerifier');\n"
        "  HV.verify.implementation = function () { return true; };\n"
        "});"
    ),
    "okhttp_certificate_pinner": (
        "Java.perform(function () {\n"
        "  try {\n"
        "    var CP = Java.use('okhttp3.CertificatePinner');\n"
        "    CP.check.overload('java.lang.String', 'java.security.cert.Certificate').implementation = function () {};\n"
        "    CP.check.overload('java.lang.String', 'java.util.List').implementation = function () {};\n"
        "  } catch (e) { console.log('[synth] okhttp3.CertificatePinner absent'); }\n"
        "});"
    ),
    "certificate_pin_hash_literal": (
        "Java.perform(function () {\n"
        "  try {\n"
        "    var CP = Java.use('okhttp3.CertificatePinner');\n"
        "    CP.check.overload('java.lang.String', 'java.security.cert.Certificate').implementation = function () {};\n"
        "    CP.check.overload('java.lang.String', 'java.util.List').implementation = function () {};\n"
        "  } catch (e) { console.log('[synth] okhttp3.CertificatePinner absent'); }\n"
        "});"
    ),
    # Conscrypt (Android's default TLS provider) installs its own
    # com.android.org.conscrypt.TrustManagerImpl rather than the raw
    # javax.net.ssl.X509TrustManager the generic recipes hook. Neutralize its
    # chain-verification entrypoints directly so a Conscrypt-backed app is
    # unpinned without relying on the interface dispatch.
    "pin_conscrypt_trustmanagerimpl": (
        "Java.perform(function () {\n"
        "  try {\n"
        "    var TMI = Java.use('com.android.org.conscrypt.TrustManagerImpl');\n"
        "    TMI.checkServerTrusted.implementation = function () {};\n"
        "    TMI.verifyChain.implementation = function () {};\n"
        "  } catch (e) { console.log('[synth] Conscrypt TrustManagerImpl absent'); }\n"
        "});"
    ),
    # OkHttp4 is Kotlin; its CertificatePinner exposes the same check() entrypoints
    # but under Kotlin-compiled overloads. try/catch over both the string+List and
    # string+Certificate forms so whichever the app actually uses is neutralized.
    "okhttp4_kotlin_certificate_pinner": (
        "Java.perform(function () {\n"
        "  try {\n"
        "    var CP = Java.use('okhttp3.CertificatePinner');\n"
        "    CP.check.overload('java.lang.String', 'java.security.cert.Certificate').implementation = function () {};\n"
        "    CP.check.overload('java.lang.String', 'java.util.List').implementation = function () {};\n"
        "  } catch (e) { console.log('[synth] okhttp3.CertificatePinner absent'); }\n"
        "});"
    ),
    # A WebView that shows the SSL error dialog via onReceivedSslError still
    # blocks the connection unless the handler is told to proceed. Call
    # handler.proceed() so the cert error is tolerated.
    "webview_ssl_error_handler_proceed": (
        "Java.perform(function () {\n"
        "  try {\n"
        "    var WVC = Java.use('android.webkit.WebViewClient');\n"
        "    WVC.onReceivedSslError.implementation = function (view, handler, error) {\n"
        "      handler.proceed();\n"
        "    };\n"
        "  } catch (e) { console.log('[synth] WebViewClient absent'); }\n"
        "});"
    ),
    # TrustKit (com.datatheorem.android.trustkit) is the standard pinning lib in
    # banking/fintech apps. It installs its own PinningTrustManager (a
    # TrustManager) plus an OkHttp CertificatePinner. Neutralize the
    # PinningTrustManager chain check and the okhttp pin check so a TrustKit
    # pinned app is unpinned deterministically.
    "trustkit_pinning": (
        "Java.perform(function () {\n"
        "  try {\n"
        "    var PTM = Java.use('com.datatheorem.android.trustkit.PinningTrustManager');\n"
        "    PTM.checkServerTrusted.implementation = function () {};\n"
        "    PTM.verifyChain.implementation = function () {};\n"
        "  } catch (e) { console.log('[synth] TrustKit PinningTrustManager absent'); }\n"
        "  try {\n"
        "    var CP = Java.use('okhttp3.CertificatePinner');\n"
        "    CP.check.overload('java.lang.String', 'java.security.cert.Certificate').implementation = function () {};\n"
        "    CP.check.overload('java.lang.String', 'java.util.List').implementation = function () {};\n"
        "  } catch (e) { console.log('[synth] okhttp3.CertificatePinner absent'); }\n"
        "});"
    ),
    # Native pinning (BoringSSL/OpenSSL family). _native_ssl_pin_bypass enumerates
    # the loaded modules (libssl / libcronet / libconscrypt_jni / libboringssl)
    # and neutralizes the verify entrypoints in each - covering gRPC-over-Cronet
    # and Conscrypt native pinning, not just libssl.so.
    "native_ssl_pinning_verify": _native_ssl_pin_bypass(),
    "native_pinning_embedded": _native_ssl_pin_bypass(),
    # A native cert-verify callback (SSL_CTX_set_cert_verify_callback) is exactly
    # what _native_ssl_pin_bypass neutralizes (accept-all) - route it there.
    "native_ssl_custom_verify_callback": _native_ssl_pin_bypass(),
}

# Signatures that are alternate spellings of the same SSL-control technique
# route through the existing neutralizers rather than duplicating a hook:
# SSLContext.init-with-TrustManager and a custom SSLSocketFactory both funnel into
# X509TrustManager.checkServerTrusted (trust-all); set_default_hostname_verifier
# and a HostnameVerifier set are the same verify-returns-true neutralization.
SSL_RECIPES["sslcontext_init_with_trustmanager"] = SSL_RECIPES["custom_trustmanager_checkservertrusted"]
SSL_RECIPES["custom_sslsocketfactory"] = SSL_RECIPES["custom_trustmanager_checkservertrusted"]
SSL_RECIPES["set_default_hostname_verifier"] = SSL_RECIPES["hostname_verifier_always_true"]

# --- Alternate spellings routed to existing proven neutralizers (root) ---------
# Many root signatures are the same artifact/exec checks under different names or
# path variants. Routing them through the matching hook yields a targeted bypass
# instead of the category universal - equivalent coverage, no duplicated body to
# drift. selinux-permissiveness probes and root-cloaking detectors are root checks
# carried out via Runtime.exec, so the exec-su neutralizer is their handle.
ROOT_RECIPES["su_alternate_binary_paths"] = ROOT_RECIPES["root_su_binary_paths"]
ROOT_RECIPES["magisk_alternate_managers"] = ROOT_RECIPES["magisk_su_binary_paths"]
ROOT_RECIPES["magisk_module_dirs"] = ROOT_RECIPES["magisk_denylist_artifacts"]
ROOT_RECIPES["root_tools_library"] = ROOT_RECIPES["root_known_indicator_files"]
ROOT_RECIPES["setenforce_permissive"] = ROOT_RECIPES["root_runtime_exec_su"]
ROOT_RECIPES["selinux_access_probe"] = ROOT_RECIPES["root_runtime_exec_su"]
ROOT_RECIPES["root_cloaking_detection"] = ROOT_RECIPES["root_runtime_exec_su"]
# A build.prop probe (ro.build.tags / ro.build.type) is the same test-keys check
# the build-tags hook already neutralizes - route it there.
ROOT_RECIPES["build_props_probe"] = ROOT_RECIPES["root_build_tags_test_keys"]

# --- Alternate spellings routed to existing proven neutralizers (SSL) ---------
# Custom X509 key/trust managers and wrapper checkers (Netty FingerprintTMF,
# Flutter SSL plugin, CWAC-NetSecurity, PhoneGap/Worklight, Appcelerator) funnel
# into X509TrustManager.checkServerTrusted - trust-all neutralizes them.
for _sid in (
    "custom_x509keymanager",
    "custom_x509extended_trustmanager",
    "certificate_factory_x509",
    "pin_netty_fingerprint_tmf",
    "pin_flutter_http_cert",
    "pin_flutter_sslpinning_plugin",
    "pin_cwac_netsecurity",
    "pin_phonegap_ssl_checker",
    "pin_ibm_worklight",
    "pin_appcelerator_https",
):
    SSL_RECIPES[_sid] = SSL_RECIPES["custom_trustmanager_checkservertrusted"]
# HostnameVerifier-family (Apache/Boyle abstract verifiers, Worklight, okhttp set):
# verify-returns-true neutralizes the host check.
for _sid in (
    "okhttp_hostname_verifier_set",
    "pin_apache_abstractverifier",
    "pin_boye_abstractverifier",
    "pin_worklight_hostname_verifier",
):
    SSL_RECIPES[_sid] = SSL_RECIPES["hostname_verifier_always_true"]
# SSLSocketFactory-family: a custom socket factory (HurlStack, setSSLSocketFactory)
# still installs the trust-all TrustManager underneath.
for _sid in ("hurlstack_sslsocketfactory", "set_sslsocketfactory"):
    SSL_RECIPES[_sid] = SSL_RECIPES["custom_trustmanager_checkservertrusted"]
# React-Native ssl-pinning lib ships a CertificatePinner under okhttp - route it.
SSL_RECIPES["rn_ssl_pinning_library"] = SSL_RECIPES["okhttp_certificate_pinner"]
# Cronet is Chromium/BoringSSL in libcronet.so - the native module-family verify
# bypass (SSL_CTX_set_verify / cert_verify_callback) is its deterministic handle.
SSL_RECIPES["cronet_cert_verifier"] = SSL_RECIPES["native_ssl_pinning_verify"]
SSL_RECIPES["pin_cronet_add_public_key_pins"] = SSL_RECIPES["native_ssl_pinning_verify"]
# Pin-literal signatures (SHA-1 / SPKI-SHA-256 pin strings, addHost pin lists,
# certificate pin expectations) are all okhttp CertificatePinner techniques -
# neutralize check() for each.
for _sid in ("sha1_pin_hash_literal", "spki_sha256_pin", "expect_certificate_pin",
             "certificate_pinner_add_host"):
    SSL_RECIPES[_sid] = SSL_RECIPES["okhttp_certificate_pinner"]

# --- Signatures intentionally left unmapped (honest boundary, not a gap) -------
# These fall to the category universal base when detected - the deterministic
# handle is defeating the underlying signal, never fabricating a result:
#  * server-verified remote device attestation signatures - the only honest
#    bypass is defeating the root evidence the attestation inspects (the universal
#    root base). A locally-faked token would fail server validation and silently
#    lie (principle 3 / ADR-0006). These signatures legitimately DETECT that the
#    app uses attestation (in scope); nothing here defeats its verification (an
#    explicit, documented non-goal).
#  * certificate_transparency_verifier - CT is not pinning; no single hook.
#  * keystore_set_certificate_entry / nsc_user_cert_trust - CA-store trust, not a
#    per-connection pin the app enforces.

# Techniques that get no dedicated hook still earn the category's universal
# base when detected, so the app is never silently skipped (principle 3).
ALL_ROOT_TECHNIQUES = set(ROOT_RECIPES)
ALL_SSL_TECHNIQUES = set(SSL_RECIPES)

# Fix-5 (predefined script is a supplement, not capability-matched): the vendored
# third-party universal (ssecurityy's universal-robust-advanced-root--ssl-pinning-
# bypass, loaded by frida_runner for unknown targets) covers these detection
# categories broadly with native hooks. A finding whose category is in this set is
# deterministically matched to that predefined script - it IS the no-AI bypass for
# the technique, independent of any hand-authored recipe. The synthesized recipes
# are the exact-match layer on top; this table documents the predefined-script
# match so the report can state it explicitly rather than treating the vendored
# script as an unexplained supplement. String match on category, no registry.
PREDEFINED_SCRIPT_NAME = "universal-robust-advanced-root--ssl-pinning-bypass"
PREDEFINED_SCRIPT_COVERS = {"root", "ssl"}

UNIVERSAL_ROOT = _file_exists_patch(
    ["/system/bin/su", "/system/xbin/su", "/sbin/su",
     "/system/app/Superuser.apk", "/data/adb/magisk", "/data/adb/ksu"]
)
UNIVERSAL_SSL = (
    "Java.perform(function () {\n"
    "  var TM = Java.use('javax.net.ssl.X509TrustManager');\n"
    "  TM.checkServerTrusted.implementation = function () {};\n"
    "  var HV = Java.use('javax.net.ssl.HostnameVerifier');\n"
    "  HV.verify.implementation = function () { return true; };\n"
    "  try {\n"
    "    var CP = Java.use('okhttp3.CertificatePinner');\n"
    "    CP.check.overload('java.lang.String', 'java.security.cert.Certificate').implementation = function () {};\n"
    "    CP.check.overload('java.lang.String', 'java.util.List').implementation = function () {};\n"
    "  } catch (e) {}\n"
    "});\n"
    "\n"
    # Fix-4 (BoringSSL/Xamarin not statically auto-triggered): the Java-side
    # universal is now ALWAYS supplemented by the native BoringSSL/OpenSSL-family
    # unpinning bypass and the SSL effect observer. Production apps strip/rename
    # the custom-verify symbols, so no native *signature* can fire on them - but
    # the bypass itself is idempotent (try/catch per module/symbol, a no-op when
    # the export is absent), so appending it to the SSL universal gives ANY app
    # with an SSL action a native unpinning attempt without needing a firing
    # signature. Deterministic and honest (an attempt, not a claim); the observer
    # reports a handshake that actually completes post-bypass.
) + _native_ssl_pin_bypass() + "\n\n" + _ssl_effect_observer()


@dataclass
class SynthesisResult:
    """A deterministic synthesized bypass. source is a complete Frida JS string."""

    source: str
    strategy: str                       # "targeted" | "universal"
    applied_hooks: list[str] = field(default_factory=list)  # technique ids that got a dedicated hook
    root_hook_count: int = 0
    ssl_hook_count: int = 0
    universal_categories: list[str] = field(default_factory=list)
    # Fix-5: the predefined third-party scripts this bypass is deterministically
    # matched to, by detected category (e.g. ["universal-robust-advanced-root--ssl-pinning-bypass"]
    # for an SSL action, because PREDEFINED_SCRIPT_COVERS contains "ssl"). This is
    # the no-AI predefined-script match for a finding whose technique the hand-
    # authored recipe catalog does not cover exactly.
    predefined_matched: list[str] = field(default_factory=list)


def _matched_ids(evidence) -> list[str]:
    return [e.signature_id for e in evidence]


def _join_script(hooks: list[str], checkpoint_ids: list[str]) -> str:
    checkpoint = "\n".join(f'send({{hook: {json.dumps(h)}}});' for h in checkpoint_ids)
    parts = list(hooks)
    if checkpoint:
        parts.append("setTimeout(function () {\n" + checkpoint + "\n}, 200);")
    return "\n\n".join(parts)


def synthesize(classification: ClassificationResult, action: Action) -> SynthesisResult:
    """Compose a deterministic bypass script from the detected techniques.

    Targeted when the static evidence names techniques with dedicated hooks;
    otherwise (or when only category-level detection exists) falls back to the
    deterministic universal base for each relevant category so a real attempt
    always happens. Pure - no I/O, no Frida."""
    if action == Action.NEITHER:
        return SynthesisResult(source="", strategy="universal", universal_categories=["none"])

    root_ids = set(_matched_ids(classification.root.evidence))
    ssl_ids = set(_matched_ids(classification.ssl.evidence))

    root_hooks: list[str] = []
    ssl_hooks: list[str] = []
    applied: list[str] = []
    universal: list[str] = []

    # Anti-instrumentation evasion: when the app is detected as self-protecting
    # (it probes for Frida/Substrate), the injected agent is itself the target -
    # prepend the evasion base so the bypass survives, then the targeted hooks.
    # Findings-driven and conditional: a benign app never gets it. Deterministic.
    anti_instrumentation = {"frida_detection", "cydia_substrate_detection", "native_frida_detection"}
    evasion_hooks: list[str] = []
    if root_ids & anti_instrumentation:
        evasion_hooks.append(_evasion_base())
        applied.append("evasion")

    wants_root = action in (Action.ROOT_ONLY, Action.BOTH)
    wants_ssl = action in (Action.SSL_ONLY, Action.BOTH)

    # Root: apply dedicated hooks for detected root techniques.
    if wants_root and root_ids:
        for tid in sorted(root_ids):
            if tid in ROOT_RECIPES:
                root_hooks.append(ROOT_RECIPES[tid])
                applied.append(tid)
        # Any detected root technique without a dedicated hook (server-verified
        # device attestation, Xposed, Riru - no clean single hook) still gets
        # the universal root base as a SUPPLEMENT to any targeted hooks. Defeating
        # the underlying root evidence is the only honest handle for those; the
        # universal base complements, never replaces, the targeted hooks. This
        # closes the gap where a mixed mapped+unmapped detection previously ran
        # only the mapped hook and silently skipped the rest.
        if not root_hooks or any(tid not in ROOT_RECIPES for tid in root_ids):
            root_hooks.append(UNIVERSAL_ROOT)
            universal.append("root")

    # SSL: apply dedicated hooks for detected ssl techniques.
    if wants_ssl and ssl_ids:
        for tid in sorted(ssl_ids):
            if tid in SSL_RECIPES:
                ssl_hooks.append(SSL_RECIPES[tid])
                applied.append(tid)
        # Same supplement rule: any detected ssl technique without a dedicated
        # hook (CT verifier, CA-store trust) earns the universal SSL base too, so
        # a mixed detection is fully covered, never partially skipped.
        if not ssl_hooks or any(tid not in SSL_RECIPES for tid in ssl_ids):
            ssl_hooks.append(UNIVERSAL_SSL)
            universal.append("ssl")

    # Nothing specific detected but the action still demands a bypass - use the
    # category universal so a real attempt happens (the core L-M2 generalization).
    if not root_hooks and not ssl_hooks:
        if wants_root:
            root_hooks.append(UNIVERSAL_ROOT)
            universal.append("root")
        if wants_ssl:
            ssl_hooks.append(UNIVERSAL_SSL)
            universal.append("ssl")

    all_hooks = evasion_hooks + root_hooks + ssl_hooks
    # Checkpoints for the technology-level "hooks engaged" signal cover BOTH the
    # dedicated recipe hooks AND the category universal base (labelled
    # universal:<cat>). Without this, a bypass that only used the universal base
    # would emit no checkpoint and the signal would silently read "none" even
    # though the bypass ran (RS_CertPinning exposed this).
    checkpoint_ids = list(applied) + [f"universal:{c}" for c in universal]
    source = _join_script(all_hooks, checkpoint_ids)
    # The effect observer (pin-check + handshake behavioral evidence) is embedded
    # in UNIVERSAL_SSL, so a fully-covered targeted SSL bypass needs it appended
    # explicitly - without it, a targeted-only SSL run would emit no SSL effect
    # signal and the confirmation logic (ssl-pin-check + ssl-handshake) would
    # never fire. Only when UNIVERSAL_SSL is absent (avoid a double append).
    if ssl_hooks and UNIVERSAL_SSL not in ssl_hooks:
        source = source + "\n\n" + _ssl_effect_observer()

    # Fix-5: the predefined script matched to this bypass, by detected category.
    # A technique the hand-authored catalog does not cover exactly is still
    # bypassed without AI by the predefined universal for its category.
    predefined_matched = sorted({
        PREDEFINED_SCRIPT_NAME
        for cat in (("root",) if wants_root else ()) + (("ssl",) if wants_ssl else ())
        if cat in PREDEFINED_SCRIPT_COVERS
    })

    return SynthesisResult(
        source=source,
        strategy="targeted" if applied else "universal",
        applied_hooks=applied,
        root_hook_count=len(root_hooks),
        ssl_hook_count=len(ssl_hooks),
        universal_categories=universal,
        predefined_matched=predefined_matched,
    )
