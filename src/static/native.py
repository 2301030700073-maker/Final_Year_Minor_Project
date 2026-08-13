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

import os
import re
import shutil
import subprocess
from dataclasses import dataclass, field
from pathlib import Path

import yaml

from common import Evidence, StaticEvidence

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


class NativeToolError(RuntimeError):
    """A native tool failed on *this* library (timeout or non-zero exit) - the
    library is marked unscannable and the error surfaced, never silently
    misread as a clean empty parse (H4, principle 3). Distinct from a missing
    tool, which _require_tool raises as a whole-stage failure."""


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
    # L-M6: Ghidra headless decompilation of this lib's function bodies.
    # ghidra_decompiled is True ONLY when Ghidra genuinely produced functions -
    # that is the honest "native = scanned" signal that upgrades a stripped/
    # partial lib to fully_analyzed in compute_degradation. A failed/missing
    # Ghidra run leaves ghidra_error set and ghidra_decompiled False, so the
    # surface stays partial/unscannable - never falsely certified scanned.
    ghidra_functions: list[str] = field(default_factory=list)
    ghidra_decompiled: bool = False
    ghidra_error: str | None = None
    # H1/H4: a tool timeout or non-zero exit on this file sets unscannable (not
    # a silent 'stripped' - that would certify a confident negative we couldn't
    # actually rule out). scan_error carries the loud message for the report.
    unscannable: bool = False
    scan_error: str | None = None


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
            # embedded_string matches against the string corpus; export_symbol
            # (including JNI exports) against the export corpus.
            this_corpus = lib.strings if sig.pattern_type == "embedded_string" else lib.exports + lib.jni_exports
            if sig.require_all:
                # AND semantics (native anti-debug combo): every pattern must be
                # present. Otherwise `ptrace` alone would fire on any app that
                # imports libc's ptrace for a benign reason (ADR-0006).
                if not all(p in this_corpus for p in sig.patterns):
                    continue
                hit_pattern = sig.patterns[0]
            else:
                hit_pattern = next((p for p in sig.patterns if p in this_corpus), None)
                if hit_pattern is None:
                    continue
            key = (sig.id, path)
            if key in matched:
                continue  # already credited this (sig, lib)
            matched.add(key)
            matched_confidence.add(sig.id)
            idx = this_corpus.index(hit_pattern)
            item = Evidence(
                signature_id=sig.id,
                file=path,
                line_or_offset=f"symbol[{idx}]",
                matched_text=hit_pattern,
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
    return result


def compute_degradation(libs: list[NativeLibrary]) -> dict[str, str]:
    """Per-ABI coverage state (G10 + G-B + G6). A lib a tool failed on (H1/H4) is
    `unscannable` - we could not read it at all, so it can't certify a negative.
    A lib that is stripped or obfuscated maps to `partial`; an empty (no exports,
    no strings) lib is `unscannable` (we parsed it, it had nothing - that's not
    proof of absence); a healthy lib is `fully_analyzed`. Per-ABI so a device-only
    scan can't silently under-cover (G6)."""
    coverage: dict[str, str] = {}
    for lib in libs:
        if lib.ghidra_decompiled:
            # L-M6: Ghidra decompiled real function bodies, so whatever
            # readelf/strings missed (stripped, obfuscated, even a tool failure),
            # the code was scanned at the function-body level - the surface is
            # genuinely scanned. This is NOT a silent upgrade: ghidra_decompiled
            # is only True on actual decompilation; a failed run keeps
            # ghidra_error set and ghidra_decompiled False, so coverage stays
            # partial/unscannable rather than falsely certified scanned.
            coverage[lib.abi] = "fully_analyzed"
        elif lib.unscannable:
            coverage[lib.abi] = "unscannable"
        elif lib.stripped or lib.obfuscated:
            coverage[lib.abi] = "partial"
        elif not lib.exports and not lib.strings:
            coverage[lib.abi] = "unscannable"
        else:
            coverage[lib.abi] = "fully_analyzed"
    return coverage


# --- toolchain-gated (reference environment only) ----------------------------

def _require_tool(name: str) -> str:
    path = shutil.which(name)
    if path is None:
        raise RuntimeError(
            f"required tool '{name}' not found on PATH - native analysis only runs "
            "on the reference WSL2 environment with the Android toolchain installed"
        )
    return path


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


def extract_native_libs(apk_path: Path, dest_root: Path) -> list[Path]:
    """Extract lib/<abi>/*.so from the APK into dest_root. Returns the .so paths.
    Uses `unzip` (present in the reference toolchain); fails loudly if absent.
    One structured `lib/<abi>/`-preserving pass only (H5) - a previous `-j`
    flatten pass dumped ABI-less copies into the same dir, which rglob picked up
    with abi="unknown", dragging a clean native surface down via _min_coverage."""
    unzip = _require_tool("unzip")
    dest_root = Path(dest_root)
    dest_root.mkdir(parents=True, exist_ok=True)
    try:
        subprocess.run(
            [unzip, "-o", str(apk_path), "lib/*/*.so", "-d", str(dest_root)],
            check=False, capture_output=True, text=True, timeout=UNZIP_TIMEOUT,
        )
    except subprocess.TimeoutExpired:
        raise NativeToolError(f"unzip timed out after {UNZIP_TIMEOUT:.0f}s extracting {apk_path}") from None
    # Note: unzip's return code is deliberately NOT checked here - it exits
    # non-zero when nothing matches 'lib/*/*.so' (an APK with no native libs),
    # which is a legitimate 'nothing to scan', not a failure.
    so_files = sorted(dest_root.rglob("*.so"))
    return so_files


def analyze_so(so_path: Path) -> NativeLibrary:
    """Shell out to readelf/nm/strings to populate a NativeLibrary. Fails loudly
    if a tool is missing. A timeout/non-zero exit on *this* file marks the lib
    unscannable with a loud error (H1/H4) rather than misreading empty output as
    'stripped' - which would falsely certify a confident negative. Pure parsing
    of the output happens in the fixture-testable functions above."""
    readelf = _require_tool("readelf")
    nm = _require_tool("nm")
    strings_tool = _require_tool("strings")

    abi = so_path.parent.name if so_path.parent.name in KNOWN_ABIS else "unknown"
    name = so_path.name

    try:
        exports = parse_readelf_symbols(
            _run_tool([readelf, "-Ws", str(so_path)], READELF_TIMEOUT, "readelf")
        )
        dyn_exports = parse_readelf_symbols(
            _run_tool([nm, "-D", str(so_path)], NM_TIMEOUT, "nm")
        )
        # nm -D output is "0000000000000000 T check_root" - reuse the symbol tokenizer.
        exports = dyn_exports or exports  # dynamic table is the source of truth for stripped
        jni_exports = [e for e in exports if _is_jni_export(e)]
        embedded = parse_strings(
            _run_tool([strings_tool, str(so_path)], STRINGS_TIMEOUT, "strings")
        )
        sections = _run_tool([readelf, "-S", str(so_path)], READELF_TIMEOUT, "readelf")
    except NativeToolError as exc:
        # We could not read this file at all - never certify a negative from it.
        return NativeLibrary(abi=abi, name=name, unscannable=True, scan_error=str(exc))

    stripped = _is_stripped(exports, sections)
    obfuscated = _classify_obfuscated(exports, embedded)
    return NativeLibrary(
        abi=abi,
        name=name,
        exports=exports,
        jni_exports=jni_exports,
        strings=embedded,
        stripped=stripped,
        obfuscated=obfuscated,
    )


# --- YAML loading (mirrors signatures.py's loud-validation discipline) -------

def _validate_native_entry(entry: dict, path: Path) -> None:
    sig_id = entry.get("id", "<unnamed>")
    if entry.get("category") not in {"root", "ssl"}:
        raise ValueError(
            f"{path}: native signature '{sig_id}' has invalid category "
            f"{entry.get('category')!r} - must be one of ['root', 'ssl']"
        )
    weight = entry.get("weight")
    if weight is None or not isinstance(weight, (int, float)) or not (0 <= weight <= 1):
        raise ValueError(
            f"{path}: native signature '{sig_id}' has invalid weight '{weight}' - must be in [0, 1]"
        )
    if entry.get("pattern_type") not in VALID_NATIVE_PATTERN_TYPES:
        raise ValueError(
            f"{path}: native signature '{sig_id}' has invalid pattern_type "
            f"{entry.get('pattern_type')!r} - must be one of {sorted(VALID_NATIVE_PATTERN_TYPES)}"
        )
    if not entry.get("patterns"):
        raise ValueError(f"{path}: native signature '{sig_id}' has no patterns")
    # require_all is an opt-in bool like the Java-side matching flags - a typo
    # ("true" as a string) must fail loudly at load, not silently change the
    # signature into a no-op or an OR.
    ra = entry.get("require_all")
    if ra is not None and not isinstance(ra, bool):
        raise ValueError(
            f"{path}: native signature '{sig_id}' has invalid require_all "
            f"{ra!r} - must be a boolean"
        )


def load_native_signatures(path: Path) -> list[NativeSignature]:
    with open(path, "r", encoding="utf-8") as f:
        raw = yaml.safe_load(f) or []
    sigs = []
    for entry in raw:
        _validate_native_entry(entry, path)
        sigs.append(NativeSignature(**entry))
    return sigs


# --- L-M6: Ghidra headless decompilation (native surface -> scanned) ---------
# The readelf/strings path above sees export symbols and embedded strings, but a
# stripped or Dex2C-transpiled .so hides its logic in function bodies those two
# cannot see - exactly the "native = unscannable/partial" gap L-M6 targets. Ghidra
# headless decompiles every function to C pseudocode; this section feeds those
# bodies to the SAME deterministic matcher (ADR-0001 - Ghidra is an evidence
# source like jadx, never a decision tier). Pure parsing/matching is fixture-
# testable anywhere; run_ghidra_headless is toolchain-gated and fails loudly.

GHIDRA_DECOMPILE_SCRIPT = "ghidra_export_decompiled.java"  # versioned under scripts/
# Java, not Python: Ghidra 12 removed Jython, and .py headless scripts need
# PyGhidra which analyzeHeadless does not start with - a .java script always runs.
GHIDRA_TIMEOUT = 600  # a real .so can take minutes to analyze + decompile


@dataclass
class GhidraFunction:
    name: str
    address: str
    body: str


# The Ghidra script writes one block per function: a header line then the
# decompiled C body until the next header or EOF.
_GHIDRA_FUNC_HEADER_RE = re.compile(r"^=== FUNC: (.+?) @ (.+?) ===$", re.MULTILINE)


def parse_ghidra_decompile(text: str) -> list[GhidraFunction]:
    """Parse the script's `=== FUNC: <name> @ <addr> ===` block format into
    GhidraFunction objects. A block whose body is `(no decompilation)` keeps its
    name/address with an empty body - the function exists but could not be
    recovered, and the pipeline must never mistake that for an absent function
    (principle 3)."""
    funcs: list[GhidraFunction] = []
    headers = list(_GHIDRA_FUNC_HEADER_RE.finditer(text))
    for i, m in enumerate(headers):
        name = m.group(1).strip()
        address = m.group(2).strip()
        end = headers[i + 1].start() if i + 1 < len(headers) else len(text)
        body = text[m.end():end].strip()
        body = body.removesuffix("(no decompilation)").strip()
        funcs.append(GhidraFunction(name=name, address=address, body=body))
    return funcs


def match_ghidra_decompile(
    functions: list[GhidraFunction],
    signatures: list[NativeSignature],
) -> NativeScanResult:
    """Match native signatures against decompiled function bodies. Unlike
    match_native's exact corpus membership (export/string token lists), a
    decompiled body is free-form C pseudocode, so a pattern is a substring match
    - a root check calls access("/system/xbin/su", ...) and the literal appears
    in the body, or a JNI symbol name appears in the text. Same weight-once-per-
    signature discipline and Evidence shape as the Java/native matchers; the
    offset carries the function's address for traceability."""
    result = NativeScanResult(libraries=[])
    matched_confidence: set[str] = set()
    for func in functions:
        body = func.body.casefold()
        for sig in signatures:
            hit_text = None
            for pat in sig.patterns:
                if pat.casefold() in body:
                    hit_text = pat
                    break
            if hit_text is None or sig.id in matched_confidence:
                continue
            matched_confidence.add(sig.id)
            item = Evidence(
                signature_id=sig.id,
                file=f"ghidra:{func.name}",
                line_or_offset=func.address,
                matched_text=hit_text,
            )
            if sig.category == "root":
                result.root_evidence.append(item)
            elif sig.category == "ssl":
                result.ssl_evidence.append(item)
    for sig in signatures:
        if sig.id in matched_confidence:
            if sig.category == "root":
                result.root_confidence = min(1.0, result.root_confidence + sig.weight)
            elif sig.category == "ssl":
                result.ssl_confidence = min(1.0, result.ssl_confidence + sig.weight)
    return result


def _find_ghidra_headless() -> str:
    """Locate analyzeHeadless: $GHIDRA_HOME/support/analyzeHeadless, else the
    repo's tools/ghidra/ghidra_*/support/analyzeHeadless. Raises loudly (a
    NativeToolError, catchable per-lib) if Ghidra is absent - never a silent
    no-op (principle 3)."""
    candidates: list[Path] = []
    env = os.environ.get("GHIDRA_HOME")
    if env:
        candidates.append(Path(env) / "support" / "analyzeHeadless")
    candidates.extend(
        sorted(Path(__file__).resolve().parents[2].joinpath("tools", "ghidra").glob("ghidra_*/support/analyzeHeadless"))
    )
    for c in candidates:
        if c.is_file():
            return str(c)
    raise NativeToolError(
        "Ghidra analyzeHeadless not found - set GHIDRA_HOME or install under "
        "tools/ghidra/ghidra_*/ (Ghidra decompilation runs on the reference environment)"
    )


def run_ghidra_headless(so_path: Path, work_dir: Path, script_dir: Path) -> Path:
    """Run Ghidra headless on one .so, returning the path to the decompiled-text
    output. Uses a throwaway project under work_dir so re-runs are clean. Fails
    loudly on a missing Ghidra, a failed run, or missing output - never a silent
    empty file misread as 'no native code' (principle 3)."""
    headless = _find_ghidra_headless()
    project_dir = work_dir / "ghidra_project"
    project_dir.mkdir(parents=True, exist_ok=True)
    out_path = work_dir / "decompiled.txt"
    if out_path.exists():
        out_path.unlink()
    cmd = [
        headless,
        str(project_dir), f"proj_{so_path.stem}",
        "-import", str(so_path),
        "-scriptPath", str(script_dir),
        "-postScript", GHIDRA_DECOMPILE_SCRIPT, str(out_path),
        "-scriptLog", str(work_dir / "ghidra_script.log"),
    ]
    try:
        proc = subprocess.run(cmd, capture_output=True, text=True, timeout=GHIDRA_TIMEOUT)
    except subprocess.TimeoutExpired:
        raise NativeToolError(f"Ghidra headless timed out after {GHIDRA_TIMEOUT:.0f}s on {so_path.name}") from None
    if proc.returncode != 0:
        lines = (proc.stderr or proc.stdout or "").strip().splitlines()
        tail = lines[-1] if lines else "no output"
        raise NativeToolError(
            f"Ghidra headless exited {proc.returncode} on {so_path.name}: {tail[:200]}"
        )
    if not out_path.exists():
        raise NativeToolError(f"Ghidra headless ran but produced no decompiled output on {so_path.name}")
    return out_path


def analyze_so_ghidra(so_path: Path, work_dir: Path, script_dir: Path | None = None) -> NativeLibrary:
    """Analyze one .so with readelf/strings AND Ghidra decompilation. Returns a
    NativeLibrary enriched with ghidra_functions + ghidra_decompiled. A readelf/
    strings failure on this file still surfaces as unscannable (existing H1/H4
    behavior); a Ghidra failure is recorded in ghidra_error with ghidra_decompiled
    False, so coverage is never falsely certified scanned (principle 3)."""
    lib = analyze_so(so_path)
    script_dir = script_dir or (Path(__file__).resolve().parents[2] / "scripts")
    try:
        out = run_ghidra_headless(so_path, work_dir, script_dir)
        funcs = parse_ghidra_decompile(out.read_text(encoding="utf-8", errors="replace"))
        lib.ghidra_functions = [f.name for f in funcs]
        lib.ghidra_decompiled = bool(funcs)
    except NativeToolError as exc:
        lib.ghidra_error = str(exc)
        lib.ghidra_decompiled = False
    return lib
