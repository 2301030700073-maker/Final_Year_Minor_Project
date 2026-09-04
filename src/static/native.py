"""Native `.so` analysis (ADR-0008 groups A/B, roadmap items 4-6, 9-11).

Parses each native library's export symbols and embedded strings and matches
them against hand-authored native signature rules (`config/signatures/
native_detection.yaml`). Emits the same `{signature_id, file, line_or_offset,
matched_text}` Evidence shape as the Java matcher, so native root-detection or
SSL-pinning logic is scored identically to Java-side logic by the decision
engine (ADR-0001) - native is another evidence source, not a separate decision
tier.

Split for the project's execution-environment rule (CLAUDE.md): the *pure*
parsing/matching logic here (parse_readelf_symbols, parse_strings, match_native,
compute_degradation) is fixture-testable anywhere with no Android toolchain.
The *shell-out* path (`analyze_so`, `extract_native_libs`) requires readelf/nm/
strings/unzip on PATH and fails loudly if any are missing - it never silently
no-ops (principle 3).
"""

from __future__ import annotations

import concurrent.futures
import hashlib
import os
import re
import subprocess
from dataclasses import asdict, dataclass, field, replace
from pathlib import Path

import yaml

from common import CATEGORIES, KNOWN_NATIVE_LIBS, Evidence, atomic_json_write, load_json_cache, load_yaml_entries, sha256_file, require_tool, read_text_ignore
from static.coverage import _min_coverage
from static.indicators import find_native_indicator_categories
from static.signatures import (
    _validate_bool_flag,
    _validate_category,
    _validate_pattern_type,
    _validate_patterns_present,
    _validate_weight,
)
from static.upx import is_upx_packed, unpack_upx

VALID_NATIVE_PATTERN_TYPES = {"export_symbol", "embedded_string"}

# ABI dirs apktool/zip put native libs under; anything else is not a known ABI.
KNOWN_ABIS = ("armeabi-v7a", "arm64-v8a", "x86", "x86_64")

# Per-file tool timeouts, mirroring decompile.py's JADX_TIMEOUT/APKTOOL_TIMEOUT
# discipline (H1): a corrupt/hung .so must fail loudly, never hang the pipeline
# with an infinite subprocess wait (NFR-1).
READELF_TIMEOUT = 60
NM_TIMEOUT = 60
STRINGS_TIMEOUT = 60
UNZIP_TIMEOUT = 120
# L-M6: Ghidra headless decompilation of native function bodies. The path is
# discovered under tools/ghidra/ghidra_*/support/, not hardcoded; a missing
# install degrades gracefully (ghidra_decompile returns ok=False with a loud
# error) so the lib stays partial rather than crashing the scan or being falsely
# certified scanned (ADR-0006). Per-lib timeout is generous - the first JVM/
# headless run is slow - and a hang still surfaces as a loud per-lib failure.
GHIDRA_TIMEOUT = 300
# Bound on how many function bodies Ghidra decompiles per lib (item #3 / time).
# A giant RN rendering lib (librnskia) can hold tens of thousands of functions;
# dumping every body is O(unbounded) and monopolizes the pipeline on multi-ABI
# apps. Real detection logic lives in a small handful of functions, so a generous
# cap bounds the pathological case while leaving normal libs fully decompiled.
# Kept in sync with MAX_FUNCTIONS in scripts/ghidra/DumpFunctions.java (passed as
# the script's second arg here). When the cap is hit, the script emits a sentinel
# line; ghidra_decompile detects it and the lib reads `partial` (coverage-limited,
# ADR-0006), never a false fully_analyzed over an unexamined tail.
GHIDRA_MAX_FUNCTIONS = 1500
_GHIDRA_TRUNCATED_SENTINEL = "__GHIDRA_TRUNCATED__"
# Parallel Ghidra decompilation (perf): the native scan's dominant cost is the
# per-lib Ghidra headless body-decomp, and each pass is a blocking subprocess
# running its own ~2 GB JVM. The libs are independent, so running the passes
# concurrently across the reference box's cores is a pure deterministic speedup -
# no AI, no GPU (Ghidra is a CPU/Java tool; the GPU is the AI phase's asset).
# Bound is memory-first: the box has 11 GB and each JVM is -Xmx2G, so 2 workers
# (~4 GB of JVM + the analysis process) is safe while 3+ risks OOM if the process
# is also holding the static corpus. Tunable via analyze_so_many(max_workers=...).
MAX_GHIDRA_WORKERS = 2


class NativeToolError(RuntimeError):
    """A native tool failed on *this* library (timeout or non-zero exit) - the
    library is marked unscannable and the error surfaced, never silently
    misread as a clean empty parse (H4, principle 3). Distinct from a missing
    tool, which require_tool raises as a whole-stage failure."""


@dataclass
class NativeSignature:
    id: str
    category: str
    weight: float
    pattern_type: str
    patterns: list[str]
    evidence_type: str = "native_symbol"
    # Opt-in AND semantics: when true, EVERY pattern must be present in the
    # corpus for the signature to fire. Default (False) keeps the historical
    # OR-within-signature behavior. Needed for techniques defined by a *combo*
    # of symbols - e.g. the ptrace fork-child anti-debug technique requires both
    # `ptrace` AND `fork`; matching on `ptrace` alone would false-positive on
    # any app that imports libc's ptrace for a benign reason (ADR-0006).
    require_all: bool = False


@dataclass
class NativeLibrary:
    """One extracted/parsed native library - per-ABI view of a single .so."""

    abi: str
    name: str
    exports: list[str] = field(default_factory=list)      # dynamic export symbols
    jni_exports: list[str] = field(default_factory=list)   # Java_* symbols
    strings: list[str] = field(default_factory=list)        # embedded strings
    stripped: bool = False
    obfuscated: bool = False
    # Gap-5: the lib defines JNI_OnLoad/JNI_OnUnload - the dynamic-registration
    # entry point. Even with no Java_* export, such a lib can register native
    # methods Java calls, so it has a JNI security surface worth body-decompiling.
    jni_onload: bool = False
    # Gap-4: this lib is executable-packed (UPX). The real code is hidden behind
    # a compressed stub, so it reads partial (like obfuscated) unless we were
    # able to unpack it - a packed lib is never read as a clean lib (ADR-0006).
    packed: bool = False
    packer: str | None = None
    # L-M6: Ghidra headless decompilation of this lib's function bodies.
    # ghidra_decompiled is True ONLY when Ghidra genuinely produced functions -
    # that is the honest "native = scanned" signal that upgrades a stripped/
    # partial lib to fully_analyzed in compute_degradation. A failed/missing
    # Ghidra run leaves ghidra_error set and ghidra_decompiled False, so the
    # surface stays partial/unscannable - never falsely certified scanned.
    ghidra_functions: list[str] = field(default_factory=list)
    ghidra_decompiled: bool = False
    ghidra_error: str | None = None
    # Item #3 / time: True when the per-lib Ghidra body-dump hit its cap
    # (GHIDRA_MAX_FUNCTIONS). The lib's bodies were examined only up to the cap,
    # so it MUST read `partial` (coverage-limited, ADR-0006) - never
    # fully_analyzed - because a technique in the unexamined tail would be
    # silently missed. compute_degradation honors this.
    ghidra_truncated: bool = False
    # Fix-2: symbol names of every call/branch target recovered by disassembling
    # the lib's executable sections with capstone (pure Python - machine-
    # independent, so it runs where Ghidra is absent). Consulted by match_native's
    # body search alongside ghidra_functions, so a technique symbol hidden inside
    # a function body (an internal branch, or an external call) is recovered and
    # matched even when no decompiler produced a C body. Empty when capstone is
    # unavailable, the arch is unsupported, or no resolvable call target was
    # found - read as "body calls not recovered", never as proof of absence.
    body_calls: list[str] = field(default_factory=list)
    # Fix-2: True only when capstone genuinely disassembled this lib's executable
    # sections (a complete instruction-level scan - see _recover_body_calls). This
    # is the honest signal that a stripped lib's code was examined: because root/
    # SSL detection is call+string based, a fully-disassembled, non-obfuscated,
    # non-packed stripped lib's entire detection surface has been read, so
    # compute_degradation upgrades it to fully_analyzed. Obfuscated/packed libs
    # stay partial regardless (inline/encrypted logic is a genuine limit). False
    # when capstone is unavailable, the arch is unsupported, or the file couldn't
    # be disassembled - read as "code not scanned", never as proof of absence.
    body_scanned: bool = False
    # H1/H4: a tool timeout or non-zero exit on this file sets unscannable (not
    # a silent 'stripped' - that would certify a confident negative we couldn't
    # actually rule out). scan_error carries the loud message for the report.
    unscannable: bool = False
    scan_error: str | None = None
    # Fix 3 / time: SHA-256 of the .so bytes this NativeLibrary was built from.
    # When two extracted paths (e.g. lib/arm64-v8a/libfoo.so and a byte-identical
    # lib/<abi>/libbar.so) hash the same, the expensive readelf/nm/Ghidra pass
    # runs once on the representative and each path gets a clone sharing the
    # digest - the ABI/name differ but the analyzed binary is the same, so the
    # per-ABI coverage and evidence shape are preserved without re-running.
    sha256: str | None = None


@dataclass
class NativeScanResult:
    """Result of scanning a set of native libraries - evidence plus per-surface
    coverage state (G10, G-B, G6). Carries its own coverage so it can feed the
    per-surface coverage contract (ADR-0008, G1) without guessing."""

    libraries: list[NativeLibrary]
    root_confidence: float = 0.0
    ssl_confidence: float = 0.0
    root_evidence: list[Evidence] = field(default_factory=list)
    ssl_evidence: list[Evidence] = field(default_factory=list)
    # per-ABI coverage: abi -> "fully_analyzed" | "partial" | "unscannable"
    abi_coverage: dict[str, str] = field(default_factory=dict)
    # H1/H4: loud messages for libraries a tool failed on (timeout/non-zero exit),
    # so a degraded native surface is visible in stage evidence, not silent.
    errors: list[str] = field(default_factory=list)
    # Boundary-3 static half: the Java-declared native method reconciliation
    # (jnibridge.JNIBinding list). Populated by the caller (cli.py) after this
    # scan, from the decompiled .java declarations against these libraries. Empty
    # when the caller did not run reconciliation (or the APK has no native libs).
    jni_bindings: list = field(default_factory=list)
    # Boundary-2: which detection categories have native runtime-state idioms
    # present in the app-owned native corpus (su paths, /proc self-inspection,
    # uid==0 bodies, OpenSSL verify control) but matched NO native signature.
    # Mirrors StaticEvidence.unattributed_indicators on the native surface: such
    # a category must not certify a confident native negative (ADR-0006). Merged
    # into StaticEvidence by _merge_native_evidence so the existing coverage
    # layer handles it identically to Java indicators. Empty when no app-owned
    # lib carries an unrecognized native detection idiom.
    unattributed_indicators: dict[str, bool] = field(default_factory=dict)
    # Boundary-4: System.load/loadLibrary targets whose .so we did NOT analyze -
    # native code the app loads from outside the covered lib/<abi>/ set (assets/,
    # an absolute path, or a name no extracted lib provides). A loaded-but-
    # unexamined lib is an unexamined native surface: the caller degrades native
    # coverage to partial so a native NEITHER never certifies a confident
    # negative over a lib that actually ran but was never read (ADR-0006).
    unaccounted_loads: list[str] = field(default_factory=list)
    # CALIB-NATIVE-VACUOUS: True only when the APK was successfully enumerated
    # and genuinely contains zero `.so` entries. Distinguishes that provable
    # absence from the other reason `abi_coverage` can be empty (the scan did not
    # run, or produced nothing), which must stay `unscannable`. With no native
    # surface in the APK there is nowhere for a native root/pinning check to
    # hide, so coverage.native_coverage treats it as vacuously fully_analyzed.
    # Defaults False so any path that does not set it keeps the conservative
    # unscannable answer.
    native_libs_absent: bool = False


# --- pure parsing (fixture-testable, no toolchain) ---------------------------

# readelf -Ws dynamic symbol table lines look like:
#     9: 0000000000000000    18 FUNC    GLOBAL DEFAULT   11 check_root
# Extract the symbol name as the last whitespace-delimited token.
# Ndx column is `UND` for imported (undefined) symbols, so it must be \S+, not
# \d+ - otherwise the very libc imports that matter for anti-debug detection
# (ptrace@LIBC, fork@LIBC) are never captured (verified against UnCrackable-L2
# libfoo.so). The trailing `(2)` is the version-reference index: `fork@LIBC (2)`.
_READELF_SYM_RE = re.compile(r"^\s*\d+:\s+[0-9a-fA-F]+\s+\d+\s+\w+\s+\w+\s+\w+\s+\S+\s+(\S+)")


def parse_readelf_symbols(text: str) -> list[str]:
    """Extract symbol names from `readelf -Ws` output. Returns the raw names
    (only those that parse); a library that fails to parse yields [] which the
    caller must interpret via coverage, not as proof of absence.

    A symbol-version suffix (`fork@LIBC`, `__stack_chk_fail@GLIBC_2.17`) is
    stripped: a version is not part of the symbol's identity for detection, and
    keeping it makes the exact-membership matcher silently miss every imported
    libc symbol. Verified against real UnCrackable-Level2 libfoo.so, whose
    ptrace/fork anti-debug combo is exported as `ptrace@LIBC`/`fork@LIBC`."""
    names: list[str] = []
    for line in text.splitlines():
        m = _READELF_SYM_RE.match(line)
        if m:
            name = m.group(1)
            name = name.split("@", 1)[0]
            names.append(name)
    return names


def parse_strings(text: str) -> list[str]:
    """Embedded strings from `strings` output - one printable string per line."""
    return [ln for ln in text.splitlines() if ln]


def _is_jni_export(name: str) -> bool:
    """Java_* JNI-export convention - the entry points native logic calls into
    Java-land (and the most common place native root/SSL checks live)."""
    return name.startswith("Java_")


# The JVM calls these by name, so they stay in the dynamic symbol table even on a
# stripped lib. `JNI_OnLoad` is the registration entry point: a lib that defines
# it can register native methods via RegisterNatives (reached through the JNIEnv
# vtable, so statically invisible as a symbol) - meaning its bodies CAN be the
# target of a Java -> native root/SSL check even with ZERO Java_* exports. This
# is the Gap-5 refinement: the JNI surface is wider than the Java_* convention.
_JNI_LOAD_SYMBOLS = {"JNI_OnLoad", "JNI_OnUnload"}


def _has_jni_surface(exports: list[str]) -> bool:
    """True when a lib has ANY JNI surface reachable from Java: a Java_* export
    OR a JNI_OnLoad/JNI_OnUnload entry point (the dynamic-registration hooks).
    A JNI_OnLoad-only lib registers methods that Java can call even with no
    Java_-named export, so its bodies are decompile-worthy (Gap-5)."""
    if any(_is_jni_export(e) for e in exports):
        return True
    return bool(_JNI_LOAD_SYMBOLS & set(exports))


def _classify_obfuscated(exports: list[str], strings: list[str]) -> bool:
    """G-B: a native lib obfuscated-but-not-stripped (Obfuscator-LLVM-style)
    shows abnormally high symbol entropy / low printable-string yield. Deterministic
    heuristic: an obfuscated lib has many exports but almost no plaintext
    embedded strings, or exports that are all short hex/mangled tokens. This is
    a documented signal, not asserted certainty - it drives native coverage to
    partial (G-B), it never certifies a confident native negative."""
    if not exports:
        return False
    printable = sum(1 for s in strings if len(s) >= 4)
    string_ratio = printable / max(len(strings), 1)
    # Low ratio of readable strings to exports => names mangled, strings encrypted.
    if string_ratio < 0.1 and len(exports) >= 10:
        return True
    mangle = sum(1 for e in exports if re.fullmatch(r"[a-f0-9]+", e.lower()))
    return mangle > len(exports) * 0.5


def _jni_export_matches(symbol: str, pattern: str) -> bool:
    """True when `symbol` is a JNI-mangled export whose Java *method* component is
    exactly `pattern`.

    Why this exists: export_symbol matching is exact membership (see
    _corpus_contains), and a real JNI export is never the bare method name - the
    JNI spec mangles it to `Java_<pkg>_<Class>_<method>`. So a signature pattern
    of `isRooted` could only ever fire on a library exporting a plain C function
    with that literal name, while `Java_com_foo_A_isRooted` - the form an actual
    Android app ships - matched nothing. native_detection.yaml's header has always
    claimed export_symbol "matches symbol names, incl. Java_* JNI exports"; before
    this helper that claim was false, and the gap was a silent false negative for
    exactly the JNI root check that native_jni_root_check is named after.

    Deliberately NOT a plain substring test: substring would make
    `my_verify_certificate_helper` match `verify_certificate`, which is the false
    positive the exact-membership design exists to prevent (ADR-0006). Anchoring
    on the `Java_` prefix AND the trailing method component keeps that guarantee -
    a JNI method genuinely named `isRooted` in any package IS a root check.

    Handles the overload form too: an overloaded native method mangles to
    `Java_<pkg>_<Class>_<method>__<argsig>`, so the method component is followed
    by `__` rather than ending the symbol.

    Handles the `_1` escape as well, which matters for every pattern containing an
    underscore. The JNI spec escapes `_` in a Java identifier to `_1`, so a native
    method declared `verify_certificate` does NOT export as
    `..._verify_certificate` - it exports as `..._verify_1certificate`, and a
    pattern-vs-symbol comparison that skips the transform misses it. This is not
    hypothetical: measured 2026-09-04 over the 952 .so files in the analysed
    corpus, 382 of 6269 Java_* symbols (6.1%) carry a `_1` escape - e.g. Telegram's
    `Java_org_telegram_messenger_voip_ConferenceCall_call_1get_1verification_1state`
    (method `call_get_verification_state`). Two of this project's export patterns
    contain underscores (`verify_certificate`, `SSL_CTX_set_cert_verify_callback`),
    i.e. exactly the native SSL surface where a miss is most costly.
    The other JNI escapes need no handling and implementing them would be dead
    code: `_2`/`_3` encode `;`/`[`, which cannot occur in a method name (only in
    the post-`__` argument signature), and `_0xxxx` encodes non-ASCII identifiers,
    which no pattern here contains.

    Both the escaped and the raw spelling are accepted. The escaped form is what
    the spec mandates; the raw form costs nothing in precision (the `Java_` anchor
    and the component boundary still hold) and covers hand-written `Java_*` exports
    for natives wired up through RegisterNatives, which are not obliged to follow
    the mangling rules at all.
    """
    if not pattern or not symbol.startswith("Java_"):
        return False
    candidates = {pattern, pattern.replace("_", "_1")}
    return any(
        symbol.endswith("_" + p) or ("_" + p + "__") in symbol for p in candidates
    )


def _matched_symbol(corpus: list[str], pattern: str, jni_aware: bool) -> str | None:
    """The actual corpus entry a pattern matched, so Evidence.matched_text can
    report the real exported symbol (`Java_com_foo_A_isRooted`) rather than the
    signature's technique-level pattern (`isRooted`)."""
    if pattern in corpus:
        return pattern
    if jni_aware:
        return next((s for s in corpus if _jni_export_matches(s, pattern)), None)
    return None


def _corpus_contains(
    corpus: list[str],
    ghidra_functions: list[str],
    pattern: str,
    jni_aware: bool = False,
) -> bool:
    """Exact membership on the symbol/string corpus, plus substring search over
    Ghidra-decompiled function bodies. Decompiled bodies are multi-line C, so a
    technique-level call (`ptrace(...)`, `fork()`), a JNI root-check dispatch, or
    an opaque symbol readelf only sees inside a function is matched against the
    decompiled text. Body search is applied only to export_symbol signatures
    (behavioral); string-literal signatures keep exact membership so a substring
    of a benign symbol never false-positives (ADR-0006).

    `jni_aware` additionally accepts a JNI-mangled export whose method component
    is the pattern (see _jni_export_matches). It is passed only for symbol
    corpora - embedded_string signatures keep pure exact membership, since their
    patterns are path/string literals for which the JNI form is meaningless."""
    if pattern in corpus:
        return True
    if jni_aware and any(_jni_export_matches(s, pattern) for s in corpus):
        return True
    return bool(ghidra_functions) and any(pattern in body for body in ghidra_functions)



def _is_stripped(exports: list[str], text_symbols: str) -> bool:
    """G10: a stripped .so has no .symtab (only the dynamic symbol table from
    readelf -Ws remains). Detected from the presence of a `.symtab` section in
    `readelf -S` output - absent => stripped. Falls back to a low-export-signal
    heuristic when no section text is available."""
    if text_symbols:
        return ".symtab" not in text_symbols
    return len(exports) == 0  # no dynamic exports is consistent with stripped


def match_native(
    libraries: list[NativeLibrary],
    signatures: list[NativeSignature],
) -> NativeScanResult:
    """Match native signatures against parsed libraries. Pure - no I/O, no
    toolchain. Mirrors the Java matcher's per-signature weight-once discipline
    and Evidence shape (FR-2.x, ADR-0001), with line_or_offset carrying the
    offset-in-symbol-table (a byte offset into the string/export table where
    available, else the symbol index)."""
    result = NativeScanResult(libraries=libraries)
    matched: set[tuple[str, str]] = set()  # (sig_id, lib_path) - weight once per (sig, lib)
    matched_confidence: set[str] = set()   # weight once per sig across the whole scan
    for lib in libraries:
        path = f"{lib.abi}/{lib.name}"
        for sig in signatures:
            # embedded_string matches against the string corpus (exact only - no
            # function-body search, to keep substring false positives out);
            # export_symbol (including JNI exports) against the export corpus,
            # plus Ghidra-decompiled function bodies when present.
            this_corpus = lib.strings if sig.pattern_type == "embedded_string" else lib.exports + lib.jni_exports
            # Fix-2: body search covers BOTH Ghidra-decompiled function bodies and
            # the capstone-recovered call surface, so an export_symbol technique
            # hidden inside a function body is matched even where no decompiler
            # ran (machine-independent capstone recovery, see _recover_body_calls).
            body_fns = (lib.ghidra_functions + lib.body_calls) if sig.pattern_type != "embedded_string" else []
            jni_aware = sig.pattern_type != "embedded_string"
            if sig.require_all:
                # AND semantics (native anti-debug combo): every pattern must be
                # present. Otherwise `ptrace` alone would fire on any app that
                # imports libc's ptrace for a benign reason (ADR-0006).
                if not all(_corpus_contains(this_corpus, body_fns, p, jni_aware) for p in sig.patterns):
                    continue
                hit_pattern = sig.patterns[0]
            else:
                hit_pattern = next(
                    (p for p in sig.patterns if _corpus_contains(this_corpus, body_fns, p, jni_aware)),
                    None,
                )
                if hit_pattern is None:
                    continue
            key = (sig.id, path)
            if key in matched:
                continue  # already credited this (sig, lib)
            matched.add(key)
            matched_confidence.add(sig.id)
            # Report the REAL symbol that matched, not the technique-level pattern:
            # for a JNI export the pattern is `isRooted` while the shipped symbol is
            # `Java_com_foo_A_isRooted`, and the evidence row has to be the thing an
            # analyst can look up in readelf output.
            real_symbol = _matched_symbol(this_corpus, hit_pattern, jni_aware)
            idx = this_corpus.index(real_symbol) if real_symbol is not None else -1
            item = Evidence(
                signature_id=sig.id,
                file=path,
                line_or_offset=f"symbol[{idx}]" if idx >= 0 else "decompiled-body",
                matched_text=real_symbol if real_symbol is not None else hit_pattern,
                evidence_type=sig.evidence_type,  # G11: carry provenance (native_symbol/...)
            )
            if sig.category == "root":
                result.root_evidence.append(item)
            elif sig.category == "ssl":
                result.ssl_evidence.append(item)
            # one Evidence row per (sig, lib) - same as Java's cap
    for sig in signatures:
        if sig.id in matched_confidence:
            if sig.category == "root":
                result.root_confidence = min(1.0, result.root_confidence + sig.weight)
            elif sig.category == "ssl":
                result.ssl_confidence = min(1.0, result.ssl_confidence + sig.weight)

    # Boundary-2: unattributed NATIVE detection indicators. A category whose
    # runtime-state idioms appear in the app-owned native corpus but matched no
    # native signature is UNKNOWN, not absent - record it so the coverage layer
    # marks it coverage-limited (mirrors the Java boundary-1 scan in signatures.py).
    # Bundled SDK native libs (libsentry.so, libflutter.so) do their own root/SSL
    # checks; their indicators must never surface as the app's own unknown
    # detection (matching the Java _third_party_file exclusion).
    matched_categories = {sig.category for sig in signatures if sig.id in matched_confidence}
    indicator_categories: set[str] = set()
    for lib in libraries:
        if lib.name.lower() in KNOWN_NATIVE_LIBS:
            continue
        corpus_text = (
            "\n".join(lib.exports) + "\n"
            + "\n".join(lib.strings) + "\n"
            + "\n".join(lib.ghidra_functions)
        )
        indicator_categories |= find_native_indicator_categories(corpus_text)
    result.unattributed_indicators = {
        cat: True for cat in indicator_categories if cat not in matched_categories
    }
    return result


def _lib_coverage(lib: NativeLibrary) -> str:
    """Coverage state for ONE library (G10 + G-B + G6), decided in precedence
    order so a genuinely-examined body wins over a bare symbol-layer verdict:

      1. Ghidra decompiled real bodies (and NOT truncated) -> `fully_analyzed`
         even for a stripped/obfuscated lib: the code WAS read at the body level.
      2. Ghidra hit its per-lib function cap (ghidra_truncated) -> `partial`: only
         a bounded prefix of the bodies was examined, so the tail stays unread.
      3. capstone fully disassembled the executable sections (body_scanned) AND
         the lib is neither obfuscated nor packed -> `fully_analyzed`: a stripped
         lib whose whole call+string detection surface was read (Fix-2).
         Obfuscated/packed libs are EXCLUDED here and fall through to `partial`.
      4. a tool failed on the lib (H1/H4, unscannable) -> `unscannable`: we could
         not read it at all, so it can't certify a negative.
      5. stripped/obfuscated/packed with NO body upgrade above -> `partial`
         (never a silent clean; matches Gap-2's packed -> java=partial).
      6. parsed but empty (no exports, no strings) -> `unscannable` (had nothing;
         not proof of absence).
      7. otherwise a healthy lib -> `fully_analyzed`.

    NATDOC-COV1: this contract MUST track the branch order below. The
    fully_analyzed cases (1, 3, 7) are the confident-negative-critical paths - a
    stripped lib CAN reach `fully_analyzed` via 1 or 3 - so they are enumerated
    here rather than hidden behind a flat "stripped/obfuscated/packed -> partial"
    summary that a maintainer would read as "a stripped lib can never certify a
    negative" (it can, and exactly here is where an over-eager upgrade would
    create a false negative, ADR-0006)."""
    if lib.ghidra_decompiled and not lib.ghidra_truncated:
        # L-M6: Ghidra decompiled real function bodies, so whatever
        # readelf/strings missed (stripped, obfuscated, even a tool failure),
        # the code was scanned at the function-body level - the surface is
        # genuinely scanned. This is NOT a silent upgrade: ghidra_decompiled
        # is only True on actual decompilation; a failed run keeps
        # ghidra_error set and ghidra_decompiled False, so coverage stays
        # partial/unscannable rather than falsely certified scanned.
        return "fully_analyzed"
    elif lib.ghidra_truncated:
        # Item #3 / time: the per-lib body-dump hit its cap, so only a
        # bounded subset of this lib's functions was examined. The unexamined
        # tail could hold a technique, so the lib reads `partial`
        # (coverage-limited, ADR-0006) - a native NEITHER over it is never a
        # confident negative. Honest cap: bounds the pathological giant-lib
        # case without falsely certifying an unexamined tail as scanned.
        return "partial"
    elif lib.body_scanned and not lib.obfuscated and not lib.packed:
        # Fix-2: capstone genuinely disassembled this lib's executable code
        # (a complete instruction-level scan - body_scanned is only True on
        # actual disassembly). Root/SSL detection is call+string based: an
        # artifact check is a libc call (access/fopen/openat) + a path string,
        # pinning is a verify call + cert bytes. So a fully-disassembled,
        # non-obfuscated, non-packed stripped lib's entire detection surface
        # has been examined (symbols + embedded strings + every call/branch
        # target), which is the same honest "scanned" claim Ghidra makes - a
        # stripped lib whose code was read reads fully_analyzed. Obfuscated or
        # packed libs are excluded below and stay partial: inline/encrypted
        # logic is a genuine limit a call-surface scan cannot see through
        # (ADR-0006), so a confident negative over one is never certified.
        return "fully_analyzed"
    elif lib.unscannable:
        return "unscannable"
    elif lib.stripped or lib.obfuscated or lib.packed:
        # Gap-4: a packed (UPX) lib's real code is behind a stub - unless we
        # unpacked it (in which case ghidra/symbols read the real code and
        # the fully_analyzed branch above fired), it reads partial, matching
        # Gap-2's packed->java=partial. Never a silent clean.
        return "partial"
    elif not lib.exports and not lib.strings:
        return "unscannable"
    else:
        return "fully_analyzed"


def compute_degradation(libs: list[NativeLibrary]) -> dict[str, str]:
    """Per-ABI coverage state (G10 + G-B + G6), worst-wins within each ABI.

    Multiple libs normally share one ABI, so an ABI's state is the WORST
    (severity-min via coverage._min_coverage) among that ABI's libs - never
    last-write-wins. Otherwise a stripped/unscannable lib would be masked by a
    healthy lib analyzed later in the SAME ABI, falsely certifying the ABI
    `fully_analyzed`; a single-ABI app (now common - arm64-only) has no other ABI
    for native_coverage()'s cross-ABI _min_coverage to drag the surface down with,
    so that masking would be a live confident negative over an unexamined lib
    (ADR-0006). Per-ABI so a device-only scan can't silently under-cover (G6)."""
    by_abi: dict[str, list[str]] = {}
    for lib in libs:
        by_abi.setdefault(lib.abi, []).append(_lib_coverage(lib))
    return {abi: _min_coverage(states) for abi, states in by_abi.items()}


# --- toolchain-gated (reference environment only) ----------------------------


def _run_tool(cmd: list[str], timeout: float, tool_name: str) -> str:
    """Run a tool, returning its stdout. Raises NativeToolError on timeout or
    non-zero exit - a corrupt/hung .so must surface as unscannable, never as a
    silent empty parse (H1/H4, principle 3)."""
    try:
        proc = subprocess.run(cmd, capture_output=True, text=True, timeout=timeout)
    except subprocess.TimeoutExpired:
        raise NativeToolError(f"{tool_name} timed out after {timeout:.0f}s on {cmd[-1]}") from None
    if proc.returncode != 0:
        raise NativeToolError(f"{tool_name} exited {proc.returncode} on {cmd[-1]}")
    return proc.stdout


_GHIDRA_FUNC_RE = re.compile(r"^FUNC (\S+)$", re.MULTILINE)


SHF_EXECINSTR = 0x4

# Direct branch/call mnemonics across the disassembled arches: ARM/ARM64 bl/blx/b,
# x86 call/jmp, MIPS jal/bal/j. Register-indirect forms (bx lr, br x8, jalr $t9,
# `call rax`) are not listed as exclusions because _branch_target already rejects
# any operand that is not a bare absolute immediate.
_BRANCH_MNEMONICS = frozenset({"call", "bl", "blx", "b", "br", "jal", "bal", "j", "jmp"})

_ABS_IMM_RE = re.compile(r"^#?(0x[0-9a-fA-F]+|\d+)$")

# Minimum fraction of a lib's executable bytes a linear sweep must actually decode
# before `scanned` may be reported True. Set from measurement, not taste (all
# figures 2026-09-04, real corpus, resyncing sweep in the winning mode):
# libdivajni.so mips 1.0000 / mips64 1.0000, libhermes.so arm64 1.0000,
# libhermes.so armeabi-v7a 0.9960, libsentry.so armeabi-v7a 0.9944,
# libc++_shared.so armeabi-v7a 0.9959, libtmessages.49.so armeabi-v7a 0.9656
# (14.8 MB, the corpus's largest - literal pools and jump tables in .text are why
# a real lib never reaches exactly 1.0). 0.90 clears every one of those with
# margin while rejecting the pre-fix behaviour, which reported scanned=True on
# ratios of 0.000-0.025.
_MIN_DECODE_RATIO = 0.90

# Bytes of the largest executable section used to pick between candidate encodings
# (ARM vs Thumb). 256 KiB is far more than needed to separate them - the measured
# margin is ~0.25 absolute - and keeps the probe cost negligible next to the full
# sweep it selects the mode for.
_MODE_PROBE_BYTES = 256 * 1024

# Bytes handed to capstone per resync. See the measurement in _linear_sweep - this
# is a 44x wall-clock difference on a large lib with the same decoded bytes.
_SWEEP_WINDOW_BYTES = 64 * 1024


def _branch_target(op_str: str) -> int | None:
    """Absolute target address of a DIRECT branch, or None when the operand is not
    a bare address. capstone renders a resolved direct branch as `#0x1234`
    (ARM/ARM64) or `0x1234` (x86/MIPS); anything else - `bx lr`, `br x8`,
    `call rax`, `call qword ptr [rip + 0x8]`, `jalr $t9` - is indirect, and its
    target is not knowable without dataflow, so it is skipped rather than guessed."""
    match = _ABS_IMM_RE.match(op_str.strip())
    if match is None:
        return None
    token = match.group(1)
    return int(token, 16) if token.startswith("0x") else int(token)


def _linear_sweep(md, data: bytes, base: int, align: int) -> tuple[int, set[int]]:
    """Resyncing linear sweep of one executable section. Decode until capstone
    stops, step `align` bytes past the byte it choked on, and continue to the end
    of the section. Returns (bytes decoded, direct-branch target addresses).

    The resync is the point. capstone's generator stops at the FIRST undecodable
    byte, so a plain `for ins in md.disasm(data, base)` examines only the prefix
    before the first literal pool, jump table or alignment pad - while the old
    code still reported scanned=True for the whole lib. Measured 2026-09-04 across
    120 sampled corpus libs: 43 of them claimed a complete instruction-level scan
    after decoding under 2.5% of their executable bytes, several after decoding
    0.0%. That is a coverage over-claim in the false-negative direction, because
    _lib_coverage branch 3 promotes a stripped-but-body_scanned lib to
    fully_analyzed, which is what licenses a confident negative for the APK."""
    decoded = 0
    targets: set[int] = set()
    offset = 0
    total = len(data)
    # memoryview, not `data[offset:]`: capstone accepts any buffer, and slicing a
    # memoryview is O(1) while slicing bytes copies the remainder.
    #
    # The window matters far more than the copy. cs_disasm keeps decoding until it
    # hits an invalid instruction, so handing it the whole remaining buffer on every
    # resync makes each restart proportional to the bytes LEFT, not the bytes it
    # actually decodes. Measured on the corpus's largest lib (libtmessages.49.so,
    # 14.8 MB .text, 385,227 resyncs): 158 s handing over the full remainder vs
    # 3.6 s with a 64 KiB window, for a byte-identical decode ratio (0.9479) and the
    # same restart count. 64 KiB also keeps window boundaries rare (~226 across that
    # section), so the handful of instructions a boundary can split is noise rather
    # than a systematic loss.
    view = memoryview(data)
    while offset < total:
        reached = offset
        end = min(total, offset + _SWEEP_WINDOW_BYTES)
        for addr, size, mnemonic, op_str in md.disasm_lite(view[offset:end], base + offset):
            decoded += size
            reached = addr - base + size
            if mnemonic in _BRANCH_MNEMONICS:
                target = _branch_target(op_str)
                if target is not None:
                    targets.add(target)
        # capstone stopped for one of two reasons, and they need opposite handling.
        # If it reached the end of the window (or the section) it stopped because it
        # ran out of bytes, so the next pass must resume exactly there - adding
        # `align` in that case silently skips one whole instruction per window, and
        # with it any branch target that instruction carried. If it stopped short of
        # the window end it choked on the byte at `reached`, so step one instruction
        # slot past that byte. `align` is never 0, so this always terminates.
        if reached >= end:
            offset = reached
        else:
            offset = max(reached, offset) + align
    return decoded, targets


def _pick_mode(
    candidates: list[tuple[int, int, int]], data: bytes, base: int
) -> tuple[int, int, int]:
    """Choose the candidate encoding whose resyncing sweep decodes the most of
    `data`, probing at most _MODE_PROBE_BYTES of it.

    Only a machine with an ambiguous encoding pays for this; a single candidate is
    returned untouched. EM_ARM is the case that matters - the NDK builds
    armeabi-v7a as Thumb-2, and disassembling Thumb-2 in ARM mode decoded 0.0-2.5%
    of .text on 43 of 120 sampled corpus libs while the old code still reported a
    complete scan. Measured margin on real libs: Thumb 0.996 vs ARM 0.750 for
    libhermes.so armeabi-v7a.

    Honest bound on the probe: the ratio separates encodings on real compiled code,
    where wrong-mode decoding hits invalid words often enough to show, but a 16-bit
    or variable-length ISA will decode almost any byte pattern - measured, an
    AArch64 nop buffer decodes 1.000 under ARM, Thumb AND MIPS32. Ties therefore
    keep candidate order, which is why _cs_candidates lists Thumb first for
    EM_ARM."""
    if len(candidates) <= 1 or not data:
        return candidates[0]
    from capstone import Cs

    probe = bytes(data[:_MODE_PROBE_BYTES])
    best = candidates[0]
    best_ratio = -1.0
    for arch, mode, align in candidates:
        decoded, _ = _linear_sweep(Cs(arch, mode), probe, base, align)
        ratio = decoded / max(1, len(probe))
        if ratio > best_ratio:
            best_ratio, best = ratio, (arch, mode, align)
    return best


def _cs_candidates(machine: str, elfclass: int, little_endian: bool) -> list[tuple[int, int, int]]:
    """(capstone arch, capstone mode, instruction alignment) candidates for an ELF
    machine, most likely first. Empty list = this arch is not disassembled here, so
    the caller must report "body calls not recovered", never absence.

    More than one candidate means the machine does not imply the encoding and the
    caller has to pick by measurement. EM_ARM is that case: the NDK builds
    armeabi-v7a as Thumb-2, so Thumb leads, but ARM-mode armeabi libs exist and a
    probe separates them (measured 2026-09-04 on real libs: Thumb 0.996 vs ARM 0.750
    decoded on libhermes.so armeabi-v7a).

    EM_MIPS covers both mips and mips64 - they share one e_machine, so the width
    comes from the ELF class and the endianness from the header (Android shipped
    mipsel, but derive it rather than assume). MIPS was wired up 2026-09-04: capstone
    has always supported it (cs_support(CS_ARCH_MIPS) is True on the pinned 5.0.7),
    this function's predecessor simply never listed it, so every mips .so returned
    scanned=False and dragged its lib to `partial` via _lib_coverage branch 5. Since
    native_coverage takes the MIN over ABIs, two unscannable mips copies of an
    otherwise fully-scanned lib held an entire APK's native surface at partial and
    blocked its confident negative. DIVA's mips and mips64 libdivajni.so both
    disassemble at a 1.0000 ratio, so that was a wiring gap in this code, not a
    tooling bound - and it is fixed by disassembling the arch, NOT by relaxing the
    min-over-ABI coverage guard."""
    try:
        from capstone import (
            CS_ARCH_ARM, CS_MODE_ARM, CS_MODE_THUMB, CS_ARCH_ARM64,
            CS_ARCH_X86, CS_MODE_32, CS_MODE_64,
            CS_ARCH_MIPS, CS_MODE_MIPS32, CS_MODE_MIPS64, CS_MODE_BIG_ENDIAN,
        )
    except ImportError:
        return []
    if machine == "EM_ARM":
        return [(CS_ARCH_ARM, CS_MODE_THUMB, 2), (CS_ARCH_ARM, CS_MODE_ARM, 4)]
    if machine == "EM_AARCH64":
        return [(CS_ARCH_ARM64, CS_MODE_ARM, 4)]
    if machine == "EM_386":
        return [(CS_ARCH_X86, CS_MODE_32, 1)]
    if machine == "EM_X86_64":
        return [(CS_ARCH_X86, CS_MODE_64, 1)]
    if machine == "EM_MIPS":
        mode = CS_MODE_MIPS64 if elfclass == 64 else CS_MODE_MIPS32
        if not little_endian:
            mode |= CS_MODE_BIG_ENDIAN
        return [(CS_ARCH_MIPS, mode, 4)]
    return []


def _recover_body_calls(so_path: Path) -> tuple[bool, list[str]]:
    """Disassemble the .so's executable sections with capstone and recover the
    symbol name of every call/branch target - internal (a defined symbol) and
    external (a PLT/GOT-relocated import) - resolving the target address through
    .dynsym/.symtab. Pure Python (capstone + pyelftools), so it runs on any
    machine where Ghidra is absent (Fix-2: closes the "Ghidra-gate native
    signatures can't fire here" gap machine-independently). The recovered names
    join ghidra_functions in match_native's body search.

    Returns (scanned, calls). `scanned` is True only when the resyncing sweep
    actually decoded at least _MIN_DECODE_RATIO of the lib's executable bytes - it
    is the honest signal that a stripped lib's call surface was examined, letting
    compute_degradation upgrade a stripped-but-not-obfuscated lib to
    fully_analyzed. Until 2026-09-04 it was returned unconditionally, so an ARM
    lib whose Thumb-2 code capstone refused to decode in ARM mode reported a
    complete scan after decoding none of it. `calls` is the recovered call/branch
    target symbol names (empty when none resolved). (False, []) when capstone/
    pyelftools is unavailable, the arch is unsupported, or the file is unreadable
    - read as "body calls not recovered", never as proof of absence."""
    try:
        from elftools.elf.elffile import ELFFile
        from capstone import Cs
    except ImportError:
        return False, []
    try:
        so_path = Path(so_path)
        with so_path.open("rb") as f:
            elf = ELFFile(f)
            machine = elf.header.e_machine
            candidates = _cs_candidates(machine, elf.elfclass, elf.little_endian)
            if not candidates:
                return False, []
            # Defined-symbol address -> name map for internal call-target
            # resolution. On ARM the Thumb bit is bit 0 of a function symbol's
            # st_value, while the branch immediate capstone reports is the even
            # address, so each ARM symbol is indexed under BOTH spellings - without
            # that, internal call resolution on armeabi-v7a resolves nothing at all
            # even once the encoding is right.
            name_by_addr: dict[int, str] = {}
            for secname in (".dynsym", ".symtab"):
                sec = elf.get_section_by_name(secname)
                if sec is None:
                    continue
                for sym in sec.iter_symbols():
                    if sym["st_value"] and sym.name:
                        name_by_addr.setdefault(sym["st_value"], sym.name)
                        if machine == "EM_ARM":
                            name_by_addr.setdefault(sym["st_value"] & ~1, sym.name)
            exec_sections = [
                (sec.data(), sec["sh_addr"])
                for sec in elf.iter_sections()
                if int(sec["sh_flags"]) & SHF_EXECINSTR
            ]
            exec_bytes = sum(len(data) for data, _ in exec_sections)
            # Pick the encoding by measurement when the machine allows more than one
            # (see _pick_mode), probing the largest executable section.
            arch, mode, align = candidates[0]
            if exec_sections:
                probe_data, probe_base = max(exec_sections, key=lambda s: len(s[0]))
                arch, mode, align = _pick_mode(candidates, probe_data, probe_base)
            md = Cs(arch, mode)
            calls: set[str] = set()
            decoded_bytes = 0
            for data, base in exec_sections:
                decoded, targets = _linear_sweep(md, data, base, align)
                decoded_bytes += decoded
                for target in targets:
                    name = name_by_addr.get(target)
                    if name:
                        calls.add(name)
            # External calls: every .rel.plt/.rela.plt relocation references an
            # imported function the code actually calls (e.g. libc's ptrace/fork).
            # Resolving a PLT stub back to its symbol is arch-specific, but the
            # relocation table already names the called import - add those names
            # directly so a stripped lib's imported technique calls (the classic
            # ptrace/fork anti-debug combo) are recovered on any machine.
            dynsym = elf.get_section_by_name(".dynsym")
            for rsec in (".rela.plt", ".rel.plt"):
                rsec_obj = elf.get_section_by_name(rsec)
                if rsec_obj is None:
                    continue
                for reloc in rsec_obj.iter_relocations():
                    # pyelftools yields the symbol INDEX here, not a Symbol
                    # object - resolve it through .dynsym to get the imported
                    # function name the code actually calls.
                    idx = reloc["r_info_sym"]
                    if isinstance(idx, int) and dynsym is not None:
                        sym = dynsym.get_symbol(idx)
                        if sym is not None and sym.name:
                            calls.add(sym.name)
            # `scanned` now means what it says: the sweep decoded essentially all of
            # this lib's executable bytes. A lib with no executable section at all
            # has no body to hide a check in, so it counts as scanned (the same
            # reasoning native_coverage already applies to an APK with no .so),
            # but a lib whose code we could not actually decode reports False and
            # stays `partial` rather than being promoted to a confident negative.
            if exec_bytes == 0:
                return True, sorted(calls)
            return (decoded_bytes / exec_bytes) >= _MIN_DECODE_RATIO, sorted(calls)
    except Exception:
        return False, []


def _parse_ghidra_functions(text: str) -> list[str]:
    """Split DumpFunctions output into one "<name>\\n<body>" string per function.
    Empty when nothing parsed - the caller must treat that as "Ghidra decompiled
    nothing", not as proof of absence."""
    parts = _GHIDRA_FUNC_RE.split(text)
    bodies: list[str] = []
    # parts = ["", name1, body1, name2, body2, ...]
    for i in range(1, len(parts) - 1, 2):
        body = parts[i + 1].strip()
        if body:
            bodies.append(f"{parts[i]}\n{body}")
    return bodies


def _strip_truncation_sentinel(raw: str) -> tuple[str, bool]:
    """Pure: detect and strip the DumpFunctions truncation sentinel.

    Returns (text_without_sentinel, truncated). `truncated` is True when the
    per-lib Ghidra cap (GHIDRA_MAX_FUNCTIONS) was hit - the script wrote the
    sentinel as its final line(s). The sentinel is stripped from the text so it
    never pollutes a function body or the matching corpus; truncation is carried
    by the boolean so the caller can mark the lib `partial` (ADR-0006), never a
    false fully_analyzed over an unexamined tail."""
    if _GHIDRA_TRUNCATED_SENTINEL not in raw:
        return raw, False
    cleaned = "\n".join(
        line for line in raw.splitlines() if _GHIDRA_TRUNCATED_SENTINEL not in line
    )
    return cleaned, True


def _find_ghidra_headless() -> str | None:
    """Locate the Ghidra headless binary under tools/ghidra/ghidra_*/support/.
    Returns None (not raising) so a missing install degrades native coverage to
    partial instead of failing the whole scan - Ghidra is an optional deepening
    of the symbol/string layer, not a required tool."""
    root = Path(__file__).resolve().parents[2]
    candidates = sorted((root / "tools" / "ghidra").glob("ghidra_*/support/analyzeHeadless"))
    return str(candidates[-1]) if candidates else None


def _ghidra_project_dir(out_path: Path) -> Path:
    """Per-.so Ghidra project dir: `out_path.parent / _ghidra_proj_<stem>`.

    NOT a shared `_ghidra_proj` for the whole ABI dir. Concurrent analyze_so
    passes (analyze_so_many) would otherwise both write the same project dir and
    corrupt each other, so each lib gets its own. Serial runs are unchanged (each
    .so still gets its own); `-deleteProject` removes it after each pass, so
    nothing accumulates."""
    return out_path.parent / f"_ghidra_proj_{out_path.stem}"


def ghidra_decompile(so_path: Path, out_path: Path) -> tuple[bool, list[str], bool, str | None]:
    """Decompile a .so's function bodies with Ghidra headless.

    Returns (ok, function_bodies, truncated, error). ok=True ONLY when Ghidra
    genuinely produced decompiled functions (bodies non-empty). Any failure -
    missing Ghidra/script, timeout, non-zero exit, no functions produced -
    returns ok=False with a loud error and an empty list, so the lib stays
    partial/unscannable rather than being falsely certified scanned
    (H1/H4, principle 3, ADR-0006).

    `truncated` is True when the DumpFunctions cap (GHIDRA_MAX_FUNCTIONS) was
    hit - the lib's bodies were examined only up to the cap. A truncated lib must
    read `partial` (coverage-limited, ADR-0006), never `fully_analyzed`, because
    a detection technique in the unexamined tail would be silently missed. The
    cap bounds the pathological giant-lib case (item #3 / time) without losing
    honesty."""
    headless = _find_ghidra_headless()
    if headless is None:
        return False, [], False, "ghidra headless not found (tools/ghidra/ghidra_*/support/analyzeHeadless)"
    script = Path(__file__).resolve().parents[2] / "scripts" / "ghidra" / "DumpFunctions.java"
    if not script.exists():
        return False, [], False, f"ghidra script missing: {script}"
    project_dir = _ghidra_project_dir(out_path)
    project_dir.mkdir(parents=True, exist_ok=True)
    if out_path.exists():
        out_path.unlink()
    cmd = [
        headless, str(project_dir), "GhidraProject",
        "-import", str(so_path),
        "-scriptPath", str(script.parent),
        "-postScript", "DumpFunctions", str(out_path), str(GHIDRA_MAX_FUNCTIONS),
        "-deleteProject", "-overwrite",
    ]
    try:
        subprocess.run(cmd, capture_output=True, text=True, timeout=GHIDRA_TIMEOUT)
    except subprocess.TimeoutExpired:
        return False, [], False, f"ghidra timed out after {GHIDRA_TIMEOUT:.0f}s on {so_path.name}"
    except OSError as exc:
        return False, [], False, f"ghidra failed to launch: {exc}"
    if not out_path.exists():
        return False, [], False, "ghidra produced no output file"
    raw, truncated = _strip_truncation_sentinel(out_path.read_text(errors="replace"))
    bodies = _parse_ghidra_functions(raw)
    if not bodies:
        return False, [], truncated, "ghidra decompiled no functions"
    return True, bodies, truncated, None


# Boundary-4: a Java `System.load("...")` / `System.loadLibrary("name")` call -
# the explicit native-library loading a decompiled app performs. Covers the
# standard `System.loadLibrary("foo")` (loads libfoo.so from lib/<abi>/) AND
# the non-standard `System.load("assets/x.so")` / absolute-path form (sub-point-1
# blind spot: native code loaded from outside lib/<abi>/ was not extracted).
_LOAD_CALL = re.compile(r"(?<![\w$.])System\.load(Library)?\s*\(\s*[\"']([^\"']+)[\"']\s*\)")


def find_external_native_loads(java_files: list) -> list[str]:
    """The targets of every `System.load`/`System.loadLibrary` call in the
    decompiled Java. Pure: returns the raw target strings (a name like "foo" for
    loadLibrary, a path like "assets/x.so" / "/data/local/tmp/x.so" for load).
    Empty when no explicit native loading is present. This is the boundary-4
    static signal that an app loads native code the lib/<abi>/ extraction alone
    may not cover."""
    targets: list[str] = []
    for p in java_files:
        text = read_text_ignore(p)
        if text is None:
            continue
        for m in _LOAD_CALL.finditer(text):
            targets.append(m.group(2))
    return targets


def unaccounted_native_loads(load_targets: list[str], analyzed_names: set[str]) -> list[str]:
    """The load targets whose library we did NOT analyze. `analyzed_names` is the
    set of analyzed .so basenames (e.g. "libfoo.so"). A loadLibrary("foo") maps
    to libfoo.so; a load path maps to its basename. Any target not covered is a
    loaded-but-unexamined native surface - the caller must degrade native
    coverage to partial rather than certify a confident negative (ADR-0006)."""
    analyzed = set(analyzed_names)
    unaccounted: list[str] = []
    for t in load_targets:
        base = os.path.basename(t)
        if not base.endswith(".so"):
            # loadLibrary("foo") -> libfoo.so (Android's loadLibrary naming rule).
            base = base if base.startswith("lib") else "lib" + base
            base += ".so"
        if base not in analyzed:
            unaccounted.append(t)
    return unaccounted


def extract_native_libs(apk_path: Path, dest_root: Path) -> list[Path]:
    """Extract lib/<abi>/*.so (and, boundary-4, assets/*.so) from the APK into
    dest_root. Returns the .so paths. Uses `unzip` (present in the reference
    toolchain); fails loudly if absent. Two structured, dir-PRESERVING passes
    only (H5) - a previous `-j` flatten pass dumped ABI-less copies into the same
    dir, which rglob picked up with abi="unknown", dragging a clean native surface
    down via _min_coverage. assets/*.so keeps its assets/ dir (abi reads
    "unknown"), so a loaded-from-assets lib is examined rather than silently
    missed; callers gate which assets libs to analyze on actual System.load
    targets (find_external_native_loads) to avoid analyzing never-loaded assets."""
    unzip = require_tool("unzip")
    dest_root = Path(dest_root)
    dest_root.mkdir(parents=True, exist_ok=True)
    try:
        subprocess.run(
            [unzip, "-o", str(apk_path), "lib/*/*.so", "-d", str(dest_root)],
            check=False, capture_output=True, text=True, timeout=UNZIP_TIMEOUT,
        )
        # Boundary-4: also pull native libs bundled under assets/ (a real
        # non-standard packaging - loaded via System.load("assets/x.so")).
        subprocess.run(
            [unzip, "-o", str(apk_path), "assets/*.so", "-d", str(dest_root)],
            check=False, capture_output=True, text=True, timeout=UNZIP_TIMEOUT,
        )
    except subprocess.TimeoutExpired:
        raise NativeToolError(f"unzip timed out after {UNZIP_TIMEOUT:.0f}s extracting {apk_path}") from None
    # Note: unzip's return code is deliberately NOT checked here - it exits
    # non-zero when nothing matches 'lib/*/*.so' (an APK with no native libs),
    # which is a legitimate 'nothing to scan', not a failure.
    # Files only, never directories: a stale .so-named directory (e.g. a leftover
    # Ghidra work_dir from an older keying) would otherwise match the glob and be
    # fed to readelf/strings as a "lib", erroring and dragging native coverage to
    # unscannable. is_file() guarantees only real ELF libs are analyzed.
    so_files = sorted(f for f in dest_root.rglob("*.so") if f.is_file())
    return so_files


def _try_read_dynsym_pyelftools(so_path: Path) -> list[str] | None:
    """Arch-agnostic dynamic-symbol read via pyelftools (pure Python - no host
    binutils, so it is not limited by the host's BFD targets and is
    unit-testable-anywhere with a real .so). Reads the `.dynsym` table, the same
    dynamic table `nm -D` surfaces and the source of truth for stripped libs.
    Returns the symbol names (version suffixes like `@LIBC` already stripped by
    elftools), or None when pyelftools is unavailable or the file is not a
    parseable ELF - the caller then falls back to readelf/nm, preserving
    fail-loud for a genuinely unreadable file (H1/H4)."""
    try:
        from elftools.elf.elffile import ELFFile
    except ImportError:
        return None
    try:
        with so_path.open("rb") as f:
            elf = ELFFile(f)
            dynsym = elf.get_section_by_name(".dynsym")
            if dynsym is None:
                return None  # no dynamic table - let readelf decide (may be static)
            names = [s.name for s in dynsym.iter_symbols() if s.name]
            seen: set[str] = set()
            return [n for n in names if not (n in seen or seen.add(n))]
    except Exception:
        return None


def _pyelftools_has_symtab(so_path: Path) -> bool | None:
    """Arch-agnostic `.symtab`-presence check via pyelftools. True when the lib
    has a `.symtab` (not stripped), False when it does not (stripped), None when
    pyelftools is unavailable or cannot parse the file (caller falls back to
    readelf -S). Mirrors `_is_stripped`'s G10 semantics without needing a shell."""
    try:
        from elftools.elf.elffile import ELFFile
    except ImportError:
        return None
    try:
        with so_path.open("rb") as f:
            return ELFFile(f).get_section_by_name(".symtab") is not None
    except Exception:
        return None


def security_triggers(signatures: list[NativeSignature]) -> set[str]:
    """The union of every native signature pattern - the symbol/string tokens
    whose presence in a lib marks it as a body-decompilation candidate (Gap-1).
    Self-maintaining: adding a signature to the corpus grows this set, so the
    body pass stays aligned with what detection actually cares about."""
    return {p for sig in signatures for p in sig.patterns}


def _has_native_security_signal(
    exports: list[str], strings: list[str], triggers: set[str]
) -> bool:
    """True when the lib's export/string corpus overlaps a native signature
    pattern - it MAY contain native root/SSL logic the symbol layer cannot see,
    so its body is worth decompiling even with no Java_* export."""
    if not triggers:
        return False
    return bool((set(exports) | set(strings)) & triggers)


def _should_decompile_body(
    stripped: bool,
    obfuscated: bool,
    jni_exports: list[str],
    exports: list[str],
    strings: list[str],
    triggers: set[str],
) -> bool:
    """Gap-1 gate: decompile a lib's function bodies when the symbol/string
    layer left it partial (stripped or obfuscated) AND either it exposes a Java_*
    JNI export (the historical trigger) OR it shows a native security signal (its
    corpus overlaps a signature pattern). The security-signal arm closes the
    blind spot this project's native pass had: a stripped lib that reaches
    root/anti-debug logic WITHOUT a Java_-named entry (e.g. via .init/.init_array
    or RegisterNatives) was previously symbol-level-only, so a technique symbol
    hidden inside a body - the `fork` of the ptrace/fork anti-debug combo, say -
    was never recovered and the require_all signature never fired. Decompiling
    recovers the body so match_native's body search can confirm the combo, and
    compute_degradation can honestly upgrade the lib to fully_analyzed (only when
    Ghidra genuinely produced bodies). A lib with no signal (benign infra, e.g.
    libjsi/libc++) still skips the expensive decompilation pass, preserving the
    performance the Java_*-only gate bought."""
    if not (stripped or obfuscated):
        return False
    # Gap-5: the JNI trigger is the FULL JNI surface, not just Java_* exports. A
    # stripped lib with JNI_OnLoad (but no Java_* export and no corpus signal)
    # still registers native methods Java can call - its bodies are exactly the
    # place a dynamically-registered root/SSL check hides - so it must be
    # body-decompiled too, not left symbol-level-only. `jni_exports` is kept in
    # the signature for call-site compatibility; the surface check subsumes it.
    if _has_jni_surface(exports):
        return True
    if _has_native_security_signal(exports, strings, triggers):
        return True
    # Boundary #3: a stripped/obfuscated lib that carries a DETECTION IDIOM the
    # signature corpus does NOT encode - an unrecognized runtime-state idiom
    # (/sbin/su, /proc/self/* self-inspection, getuid()==0, OpenSSL verify
    # control) - is precisely the "stripped lib with no signal stays partial"
    # blind spot this gate exists to close. The indicator scan surfaces it as
    # coverage-limited at match time, but a partial body is never even EXAMINED;
    # decompiling it lets Ghidra recover a root/SSL check the symbol layer cannot
    # see, and lets compute_degradation upgrade the lib honestly to fully_analyzed
    # when the body is benign. Pure: only widens the gate to idiom-bearing libs,
    # never fabricates a finding.
    corpus = "\n".join(exports) + "\n" + "\n".join(strings)
    return bool(find_native_indicator_categories(corpus))


# ---------------------------------------------------------------------------
# Native analysis disk cache
#
# The Ghidra headless body-decompile inside _analyze_so_uncached dominates the
# native scan (~42 min on a 90-lib app like PropertyGuru) and is not cached on
# disk, so every run re-executes readelf/nm/strings/Ghidra from scratch. That is
# real, avoidable work for an unchanged APK. This cache keys each result on the
# .so bytes' SHA-256 + an analysis-version + the security-trigger set, and
# returns the byte-identical NativeLibrary on a hit without re-running any
# toolchain. Invalidation is explicit, not silent: bump _ANALYZE_CACHE_VERSION
# when the readelf/nm/Ghidra logic, the native signature semantics, or a
# toolchain upgrade changes what analysis produces for the same bytes - the same
# discipline as the DEX/jadx cache-invalidation commit. A stale entry (wrong
# version or trigger set) is simply not served, so old rules can never certify a
# lib analyzed under different rules (ADR-0002, no silent staleness).
# ---------------------------------------------------------------------------

# v3 (2026-09-04): _recover_body_calls changed what it can scan AND what it claims.
# It learned MIPS and armeabi-v7a Thumb-2, gained a resyncing sweep, and now gates
# `scanned` on the decoded-byte ratio instead of returning True unconditionally. A
# cached v2 entry therefore holds both stale body_calls (recovered under the wrong
# encoding) and a stale body_scanned that over-claims coverage; without this bump
# every already-analysed APK would keep serving them.
_ANALYZE_CACHE_VERSION = "native-analyze-v3"


def _ghidra_fingerprint() -> str:
    """Version token for the discovered Ghidra headless install, folded into the
    analyze-cache key (G9).

    A native lib's analysis result depends on the Ghidra version that decompiled
    its bodies (ghidra_decompiled bodies, and thus native coverage, differ across
    versions). The manual `_ANALYZE_CACHE_VERSION` tag only invalidates on an
    explicit rule/logic bump - a silent Ghidra *upgrade* would otherwise keep
    serving stale entries a different decompiler produced (this is exactly the
    kind of staleness that caused an observed multi-minute native stall). Folding
    the tool version in makes tool drift auto-invalidate too.

    Absence is itself a distinct fingerprint: a lib analyzed with no body-decomp
    must not be served from an entry built when Ghidra was present, or vice versa.
    The version is read from the pinned tools/ghidra/ghidra_<ver>/ install path,
    so no extra subprocess is spawned."""
    headless = _find_ghidra_headless()
    if headless is None:
        return "no-ghidra"
    for part in Path(headless).parts:
        if part.startswith("ghidra_"):
            return part
    return "ghidra-unknown-version"


def _analyze_cache_version() -> str:
    """Full analyze-cache version key: the manual analysis-logic tag PLUS the live
    Ghidra toolchain fingerprint (G9), so BOTH an explicit rule/logic bump and a
    silent toolchain upgrade invalidate stale entries - not just manual bumps."""
    return f"{_ANALYZE_CACHE_VERSION}+{_ghidra_fingerprint()}"


def _trigger_key(security_triggers: set[str] | None) -> str:
    """Deterministic key for the security-trigger set. _analyze_so_uncached's
    behavior - above all the Gap-1 Ghidra body gate (_should_decompile_body) -
    depends on which signature patterns are present, so a lib analyzed under one
    corpus must never be served from a cache entry built under another."""
    return ",".join(sorted(security_triggers or ())) or "<none>"


def _load_analyze_cache(cache_dir: Path, so_hash: str, version: str, trigger_key: str) -> NativeLibrary | None:
    """Return the cached NativeLibrary for this .so, or None on any miss/staleness.
    A corrupt or wrong-version entry is a miss - it is never treated as a valid
    lib (a partial write or old analysis must not silently certify a scan)."""
    data = load_json_cache(cache_dir, so_hash)
    if data is None or data.get("version") != version or data.get("trigger_key") != trigger_key:
        return None
    return NativeLibrary(**data["lib"])


def _save_analyze_cache(cache_dir: Path, so_hash: str, version: str, trigger_key: str, lib: NativeLibrary) -> None:
    """Persist a NativeLibrary for this .so via the shared atomic write (a
    corrupt cache is a miss, never a wrong result)."""
    atomic_json_write(cache_dir, so_hash, {"version": version, "trigger_key": trigger_key, "lib": asdict(lib)})


def analyze_so(so_path: Path, security_triggers: set[str] | None = None, cache_dir: Path | None = None) -> NativeLibrary:
    """Analyze one .so, optionally through a disk cache.

    With `cache_dir` set, the expensive readelf/nm/strings/Ghidra pass
    (_analyze_so_uncached) runs once per distinct .so bytes; a subsequent call
    with the same bytes, analysis version, and security-trigger set returns the
    identical NativeLibrary from disk without re-running any toolchain. Cache
    semantics are lossless: the cached lib is the exact dataclass the uncached
    pass would have returned. With `cache_dir` None (the test default) behavior
    is unchanged - always a fresh analysis."""
    if cache_dir is None:
        return _analyze_so_uncached(so_path, security_triggers)
    so_hash = sha256_file(so_path)
    trigger_key = _trigger_key(security_triggers)
    version = _analyze_cache_version()
    cached = _load_analyze_cache(cache_dir, so_hash, version, trigger_key)
    if cached is not None:
        return cached
    lib = _analyze_so_uncached(so_path, security_triggers)
    _save_analyze_cache(cache_dir, so_hash, version, trigger_key, lib)
    return lib


def analyze_so_many(
    so_paths,
    security_triggers: set[str] | None = None,
    cache_dir: Path | None = None,
    max_workers: int | None = None,
) -> list[NativeLibrary]:
    """analyze_so for many .so files concurrently, preserving input order.

    Pure orchestrator over analyze_so - it holds no toolchain logic itself. The
    heavy work stays inside analyze_so's own subprocesses, so a THREAD pool is
    correct: the GIL is released while each thread blocks on its readelf/nm/
    Ghidra subprocess, which is what actually runs concurrently. Workers are
    bounded (default MIN(MAX_GHIDRA_WORKERS, cpu_count)) so N concurrent ~2 GB
    Ghidra JVMs cannot exhaust the reference box's RAM.

    Results are returned in input order (concurrent.futures.map preserves it),
    so the caller's (abi,name)-keyed evidence and per-ABI coverage are unchanged
    from the serial loop. Per-.so failures are already contained inside
    analyze_so (NativeToolError -> an `unscannable` NativeLibrary, never a
    raise); a MISSING TOOL raises RuntimeError in every worker and surfaces here
    as a stage-halting exception (principle 3), never a silent no-op."""
    reps = list(so_paths)
    if not reps:
        return []
    workers = max_workers or min(MAX_GHIDRA_WORKERS, os.cpu_count() or 1)
    workers = max(1, min(workers, len(reps)))
    with concurrent.futures.ThreadPoolExecutor(max_workers=workers) as ex:
        return list(ex.map(
            lambda p: analyze_so(p, security_triggers=security_triggers, cache_dir=cache_dir),
            reps,
        ))


def _analyze_so_uncached(so_path: Path, security_triggers: set[str] | None = None) -> NativeLibrary:
    """Populate a NativeLibrary from a real .so, arch-agnostic first via
    pyelftools (pure Python, no host-binutils arch limit - closes limitation 8,
    the per-ABI native-coverage degradation), then the proven readelf/nm/strings
    shell path as fallback. Fails loudly (unscannable + error) when the file is
    genuinely unreadable by every path - never misreads empty output as
    'stripped', which would falsely certify a confident negative (H1/H4). Pure
    parsing of readelf/nm output happens in the fixture-testable functions above;
    the pyelftools read is itself fixture-testable with any real .so.
    `security_triggers` (union of native signature patterns, from
    `security_triggers()`) drives the Gap-1 body-decompilation gate: a
    stripped/obfuscated lib whose corpus overlaps a signature pattern gets its
    function bodies decompiled even with NO Java_* export, recovering a
    technique hidden inside a body (e.g. the `fork` of the ptrace/fork
    anti-debug combo)."""
    readelf = require_tool("readelf")
    nm = require_tool("nm")
    strings_tool = require_tool("strings")

    abi = so_path.parent.name if so_path.parent.name in KNOWN_ABIS else "unknown"
    name = so_path.name
    # Stream the .so's digest once up front so every return path below (including
    # the UPX-fail and NativeToolError early returns) carries the identity of the
    # bytes actually analyzed - lets the Fix 3 dedup group clones by digest even
    # when the representative could not be fully read.
    so_digest = sha256_file(so_path)

    # Gap-4: UPX / native packing. A UPX-packed .so's symbols/strings read from
    # the compressed stub come back empty - reading it as clean would falsely
    # certify a confident negative over code we never read (ADR-0006). Detect
    # from the ELF's own markers (.UPX* sections / UPX! magic) and, when the
    # optional `upx` unpacker is present, recover the real uncompressed code so
    # the proven symbol/string/Ghidra path below analyses the ACTUAL library.
    # When unpacking is impossible (upx absent or fails) the lib reads as
    # packed -> partial, never clean - matching Gap-2's packed -> java=partial.
    effective_path = so_path
    packed = False
    packer: str | None = None
    if is_upx_packed(so_path):
        packed = True
        packer = "UPX"
        unpacked_path = so_path.parent / f"{so_path.stem}.unpacked.so"
        ok, err = unpack_upx(so_path, unpacked_path)
        if not ok:
            return NativeLibrary(
                abi=abi, name=name,
                packed=True, packer=packer, obfuscated=True,
                scan_error=f"UPX-packed and could not unpack: {err}",
                sha256=so_digest,
            )
        effective_path = unpacked_path

    try:
        # Arch-agnostic pure-Python symbol + section read first: host readelf/nm
        # are GNU-binutils and may lack the BFD target for a given ABI (e.g. a
        # host built without i386 cannot read ELF32-x86 - "file format not
        # recognized"), which drags that lib's surface to unscannable on a
        # multi-arch APK. pyelftools parses the ELF structure directly regardless
        # of target arch. On any unavailability or parse failure we fall through
        # to readelf/nm below - fail-loud for a genuinely unreadable file stays.
        pe_dyn = _try_read_dynsym_pyelftools(effective_path)
        pe_has_symtab = _pyelftools_has_symtab(effective_path)
        if pe_dyn is not None:
            # pyelftools read the .dynsym table arch-agnostically - the same
            # dynamic table nm -D surfaces and the source of truth for stripped.
            exports = pe_dyn
        else:
            exports = parse_readelf_symbols(
                _run_tool([readelf, "-Ws", str(effective_path)], READELF_TIMEOUT, "readelf")
            )
            # nm reads the SAME symbol table readelf -Ws above just populated. A
            # host `nm` built without the BFD target for this arch exits non-zero
            # even though readelf parsed the file completely - a redundant-tool
            # degradation, not an unreadable lib, so fall back to readelf exports
            # rather than marking the lib unscannable (H1/H4 preserved for a real
            # unreadable file by the outer except below).
            dyn_exports: list[str] = []
            try:
                dyn_exports = parse_readelf_symbols(
                    _run_tool([nm, "-D", str(effective_path)], NM_TIMEOUT, "nm")
                )
            except NativeToolError:
                pass  # nm unavailable for this arch: readelf exports above are complete.
            exports = dyn_exports or exports  # dynamic table is the source of truth for stripped
        jni_exports = [e for e in exports if _is_jni_export(e)]
        jni_onload = bool(_JNI_LOAD_SYMBOLS & set(exports))
        embedded = parse_strings(
            _run_tool([strings_tool, str(effective_path)], STRINGS_TIMEOUT, "strings")
        )
        # Stripped detection: pyelftools reads .symtab presence arch-agnostically
        # when available; otherwise fall back to readelf -S (G10).
        if pe_has_symtab is not None:
            stripped = not pe_has_symtab
        else:
            sections = _run_tool([readelf, "-S", str(so_path)], READELF_TIMEOUT, "readelf")
            stripped = _is_stripped(exports, sections)
    except NativeToolError as exc:
        # We could not read this file with pyelftools/readelf/nm/strings. Before
        # certifying it `unscannable` - a confident lower bound that abandons the
        # lib - try Ghidra as a LAST RESORT: it is a wholly different parser and
        # can read a binary the GNU binutils BFD cannot (a non-standard or
        # partially-unreadable ELF variant), recovering function bodies where the
        # symbol layer read nothing. This is the "even a tool failure" recovery
        # compute_degradation's ghidra_decompiled branch already intends (L375):
        # a lib whose BODIES Ghidra genuinely decompiled is scanned, not a silent
        # lower bound. Ghidra either reads it (bodies recovered -> the lib reads
        # fully_analyzed, or partial if truncated) or fails too (returns False) ->
        # genuinely unscannable, certified as today. Bounded by GHIDRA_TIMEOUT, so
        # an unreadable file can never hang the pipeline (NFR-1).
        ghidra_decompiled, ghidra_functions, ghidra_truncated, ghidra_error = ghidra_decompile(
            effective_path, effective_path.parent / f"{effective_path.stem}.ghidra.txt"
        )
        if ghidra_decompiled and ghidra_functions:
            return NativeLibrary(
                abi=abi, name=name,
                ghidra_functions=ghidra_functions, ghidra_decompiled=True,
                ghidra_truncated=ghidra_truncated, ghidra_error=ghidra_error,
                scan_error=(
                    f"symbol layer failed ({exc}); recovered "
                    f"{len(ghidra_functions)} function bodies via Ghidra last-resort"
                ),
                sha256=so_digest,
            )
        return NativeLibrary(
            abi=abi, name=name, unscannable=True, scan_error=str(exc), sha256=so_digest,
        )

    obfuscated = _classify_obfuscated(exports, embedded)

    # L-M6 / Gap-1: deepen coverage by decompiling this lib's function bodies
    # with Ghidra headless - but ONLY a lib the symbol/string layer left PARTIAL
    # (stripped or obfuscated) AND that has native security surface. The gate
    # (`_should_decompile_body`) is proven, not guessed, from match_native's
    # semantics:
    #   - embedded_string signatures NEVER consult Ghidra bodies, so
    #     decompiling for them is pure waste.
    #   - export_symbol signatures match from the export corpus ALONE (the
    #     ptrace/fork anti-debug combo fires off `-Ws` exports, which include
    #     imported symbols); a Ghidra body is an ADDITIONAL confirmation source
    #     when the technique symbol is hidden.
    # The trigger is (a) a Java_* JNI export (historical: the entry points a
    # Java -> native root/ssl check reaches) OR (b) a native security signal -
    # the lib's corpus overlaps a signature pattern. Arm (b) is the Gap-1 fix:
    # a stripped lib can reach security logic WITHOUT a Java_-named entry (via
    # .init/.init_array constructors or RegisterNatives), and such a lib was
    # previously symbol-level-only, so a technique symbol hidden inside a body -
    # the `fork` of the ptrace/fork combo - was never recovered and the
    # require_all signature never fired. Decompiling recovers the body so the
    # combo can be confirmed. A lib with neither a Java_* export nor a security
    # signal (benign infra, e.g. React Native's libjsi/libc++/libavif) still
    # skips the expensive pass - Verified 2026-08: of PropertyGuru's 90 libs, 21
    # have Java_* JNI and 69 are infra with none; most of those 69 also carry no
    # security signal, so the performance the Java_*-only gate bought is kept
    # while the blind spot is closed.
    # A failed or absent Ghidra degrades gracefully (ok=False -> ghidra_error
    # set, ghidra_decompiled stays False) and the lib remains partial - it is
    # never falsely certified scanned (ADR-0006).
    ghidra_functions: list[str] = []
    ghidra_decompiled = False
    ghidra_error: str | None = None
    ghidra_truncated = False
    body_calls: list[str] = []
    body_scanned = False
    if _should_decompile_body(stripped, obfuscated, jni_exports, exports, embedded, security_triggers or set()):
        # Fix-2: recover the body-level call surface with capstone (pure Python,
        # machine-independent) so a technique symbol hidden inside a function
        # body is recovered and matched even where Ghidra is absent. Run on the
        # same body gate as Ghidra (a partial lib with native security surface),
        # so a stripped lib's hidden calls no longer go undetected on a machine
        # without Ghidra. `body_scanned` is True only when capstone genuinely
        # disassembled the executable sections - the honest "code examined"
        # signal that upgrades a stripped-but-not-obfuscated lib to fully_analyzed.
        body_scanned, body_calls = _recover_body_calls(effective_path)
        # Gap-4: decompile the UNPACKED library when the lib was UPX-packed, so
        # Ghidra sees the real code, not the compressed stub.
        ghidra_decompiled, ghidra_functions, ghidra_truncated, ghidra_error = ghidra_decompile(
            effective_path, effective_path.parent / f"{effective_path.stem}.ghidra.txt"
        )

    return NativeLibrary(
        abi=abi,
        name=name,
        exports=exports,
        jni_exports=jni_exports,
        strings=embedded,
        stripped=stripped,
        obfuscated=obfuscated,
        jni_onload=jni_onload,
        packed=packed,
        packer=packer,
        ghidra_functions=ghidra_functions,
        ghidra_decompiled=ghidra_decompiled,
        ghidra_error=ghidra_error,
        ghidra_truncated=ghidra_truncated,
        body_calls=body_calls,
        body_scanned=body_scanned,
        sha256=so_digest,
    )



def group_identical_so_files(so_files: list[Path]) -> list[tuple[str, list[Path]]]:
    """Group extracted .so paths by byte-identical SHA-256, preserving order.

    Pure, fixture-testable anywhere (no toolchain). Returns one `(digest, paths)`
    per distinct binary, so the caller can run the expensive readelf/nm/Ghidra
    pass once on the representative (paths[0]) and clone the result for the rest.
    ABI variants are distinct builds, so groups are normally size 1 - this is a
    correctness-preserving dedup, not a shortcut (the ~42-min native scan is
    genuine per-ABI analysis; identical bytes across paths are rare).
    """
    groups: list[tuple[str, list[Path]]] = []
    by_digest: dict[str, list[Path]] = {}
    order: list[str] = []
    for so in so_files:
        digest = sha256_file(so)
        if digest not in by_digest:
            by_digest[digest] = []
            order.append(digest)
        by_digest[digest].append(so)
    return [(digest, by_digest[digest]) for digest in order]


def _clone_lib_for_path(base: "NativeLibrary", so_path: Path) -> "NativeLibrary":
    """Clone a representative NativeLibrary for another path in the same digest
    group, overriding only the ABI/name that derive from that path. All analysis
    fields (exports, strings, ghidra_functions, ...) are read-only after analyze_so
    returns, so sharing them across clones is safe and keeps the result per-ABI
    (abi_coverage and match_native Evidence key on (abi, name))."""
    abi = so_path.parent.name if so_path.parent.name in KNOWN_ABIS else "unknown"
    return replace(base, abi=abi, name=so_path.name)


# --- YAML loading (mirrors signatures.py's loud-validation discipline) -------

def _validate_native_entry(entry: dict, path: Path) -> None:
    sig_id = entry.get("id", "<unnamed>")
    _validate_category(entry, path, sig_id, CATEGORIES, label="native signature")
    _validate_weight(entry, path, sig_id, label="native signature")
    _validate_pattern_type(entry, path, sig_id, VALID_NATIVE_PATTERN_TYPES, label="native signature")
    _validate_patterns_present(entry, path, sig_id, label="native signature")
    # require_all is an opt-in bool like the Java-side matching flags - a typo
    # ("true" as a string) must fail loudly at load, not silently change the
    # signature into a no-op or an OR.
    _validate_bool_flag(entry, path, sig_id, "require_all", label="native signature")


def load_native_signatures(path: Path) -> list[NativeSignature]:
    return load_yaml_entries(path, _validate_native_entry, NativeSignature)


