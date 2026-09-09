"""Boundary-3 static half: reconcile the Java-declared `native` method surface
against the native libraries actually present, so no declared native method is a
silent blind spot.

Boundary #3 is "runtime JNI view - which methods actually fire on-device". The
dynamic half (observing which methods dispatch and run) is irreducibly Frida's
domain (Phase 5+, per ADR-0003) - static analysis cannot observe runtime
dispatch or runtime invocation. What static analysis CAN and MUST do is make the
DECLARED surface complete: every `native` method the Java/DEX code declares is
assigned one of three honest statuses:

    resolved           a `Java_*` export exists whose decoded JNI name equals the
                       declared class+method. The native body IS statically
                       reachable - no blind spot.
    dynamic_candidate  no `Java_*` export, but >=1 extracted lib defines
                       `JNI_OnLoad`, so the method MAY be registered at runtime
                       (RegisterNatives). Those bodies are statically invisible
                       (reached through the JNIEnv vtable) -> this surface stays
                       `partial`; only Frida can confirm which methods register
                       and fire (boundary #3's honest residue).
    unresolved         no `Java_*` export AND no lib defines `JNI_OnLoad`. The
                       app must bind this method somehow we cannot see (a lib we
                       did not extract, a runtime-loaded library, a second DEX).
                       A genuine unexamined surface -> forces native coverage to
                       `partial` so a NEITHER here is never a confident negative
                       (ADR-0006).

`resolved` matching is STRICT on the unmangled JNI name: an export resolves
(class, method) only when it EXACTLY equals `Java_` + class.replace('.','_') +
'_' + method. This is the JNI convention (the JVM resolves `Java_<class>_<method>`
by name; the method name is always the final `_` segment). Any JNI name-mangling
(`_` inside a class/method name, a nested `$` class) misses the strict match and
falls to `dynamic_candidate`/`unresolved` - the conservative direction. We never
claim a binding we cannot name exactly: a false `resolved` would certify a body
we cannot see, violating ADR-0006. Overloaded `native` methods share one export
name (JNI does not mangle overloads), so an exact class+method match is
unambiguous.

Pure module: parses already-decompiled .java text + the `NativeLibrary` surface
already produced by native.py (read via duck-typed `.jni_exports`/`.jni_onload`,
so jnibridge does not import native.py - no coupling). No toolchain, no I/O
beyond reading .java files, every function fixture-testable anywhere (NFR).
"""

from __future__ import annotations
from common import read_text_ignore

import re
from dataclasses import dataclass
from pathlib import Path

# `package com.foo.bar;` (a default-package file has none).
_PACKAGE = re.compile(r"(?m)^\s*package\s+([A-Za-z_$][\w$]*(?:\.[A-Za-z_$][\w$]*)*)\s*;")
# A `native` method declaration, captured on a single jadx line (native methods
# have no body - the declaration ends at `;`). `[^;(]*` bounds the capture to the
# return type and stops at the parameter list's `(`; the captured identifier is
# the method name (the last token before `(`).
_NATIVE_DECL = re.compile(r"\bnative\b[^;(]*\b([A-Za-z_$][\w$]*)\s*\(")

# A comment or string literal that merely MENTIONS a native-looking call (e.g.
# `// calls the native helper doCheck()`, a javadoc `* uses nativeInit()`, or a
# `Log.d(TAG, "loading native lib initCrypto()")`) is NOT a declaration. Left
# unfiltered, `_NATIVE_DECL` matches inside it and fabricates a DeclaredNative -
# a phantom binding that renders a fake row in the JNI-bindings table and can
# force native coverage to `partial` on non-code text (a Principle-3 fake finding
# and an under-claim of coverage). A REAL native declaration contains neither a
# string literal nor a `//` comment, so masking string contents and stripping
# line comments can only ever REMOVE a false match - never drop a real
# declaration (the dangerous false-negative direction, which would let a
# confident negative stand over an unexamined native method).
_LINE_COMMENT = re.compile(r"//.*$")
_STRING_LIT = re.compile(r'"(?:\\.|[^"\\])*"')


@dataclass(frozen=True)
class DeclaredNative:
    """One `native` method the Java/DEX code declares, with its declaring class."""

    class_name: str  # fully-qualified, dotted, e.g. "sg.vantagepoint.uncrackable3.CodeCheck"
    method_name: str


@dataclass(frozen=True)
class JNIBinding:
    """The resolved status of one declared native method against the real libs."""

    class_name: str
    method_name: str
    # "resolved" | "dynamic_candidate" | "unresolved" - see module docstring.
    status: str


def _class_fqn(filename: str, text: str) -> str:
    """The fully-qualified name of the top-level type in a jadx .java file.

    jadx emits one file per top-level type, named after that type, so the class
    name is the filename stem (nested `Outer$Inner` files keep their `$` - a
    nested binary name, which strict JNI matching conservatively does not
    resolve). The package comes from the file's own `package` statement."""
    pkg = ""
    m = _PACKAGE.search(text)
    if m:
        pkg = m.group(1)
    stem = Path(filename).stem
    return f"{pkg}.{stem}" if pkg else stem


def _declared_natives_in_text(text: str, class_name: str) -> list[DeclaredNative]:
    """All `native` methods declared in one .java source, attributed to
    `class_name`. jadx prints one declaration per line, so line-wise matching is
    safe; a line that fails to parse is skipped, never crash."""

    found: list[DeclaredNative] = []
    for raw in text.splitlines():
        # A javadoc / block-comment continuation line (`* uses nativeInit()`) or a
        # line that opens a block comment (`/* native doCheck() */`) is prose, not
        # a declaration. A real `native` declaration never begins with `*` or `/*`,
        # so skipping these only removes false matches.
        stripped = raw.lstrip()
        if stripped.startswith("*") or stripped.startswith("/*"):
            continue
        # Mask string-literal contents and drop a trailing line comment so a
        # native-looking call MENTIONED in a string or `//` comment cannot be read
        # as a declaration. Masking (not deleting) preserves column structure and
        # cannot merge a real declaration across the removed span.
        line = _STRING_LIT.sub('""', raw)
        line = _LINE_COMMENT.sub("", line)
        if "native" not in line:
            continue
        for m in _NATIVE_DECL.finditer(line):
            found.append(DeclaredNative(class_name=class_name, method_name=m.group(1)))
    return found


def extract_declared_natives(java_files: list[Path]) -> list[DeclaredNative]:
    """Extract every declared `native` method across the decompiled .java files.
    A file that can't be read degrades per-file (never raises the whole extract,
    mirroring the androguard/enhancement-source discipline). Dedupes identical
    (class, method) pairs (jadx can emit a class in several modules)."""

    seen: set[tuple[str, str]] = set()
    declared: list[DeclaredNative] = []
    for p in java_files:
        text = read_text_ignore(p)
        if text is None:
            continue
        class_name = _class_fqn(p.name, text)
        for d in _declared_natives_in_text(text, class_name):
            key = (d.class_name, d.method_name)
            if key in seen:
                continue
            seen.add(key)
            declared.append(d)
    return declared


def resolve_jni_bindings(
    declared: list[DeclaredNative],
    libraries: list,
) -> list[JNIBinding]:
    """Classify each declared native method against the real library surface.

    `libraries` items must expose `.jni_exports` (the `Java_*` export names) and
    `.jni_onload` (bool) - i.e. the `NativeLibrary` shape from native.py (read
    duck-typed so jnibridge stays decoupled).

    Strict, conservative resolution (module docstring): a declared method is
    `resolved` ONLY on an exact unmangled JNI-name match with a `Java_*` export.
    Otherwise it is `dynamic_candidate` when any lib defines JNI_OnLoad (a
    plausible RegisterNatives target - bodies statically invisible), else
    `unresolved` (a genuine unexamined surface that must force native coverage
    to `partial`)."""

    exports: set[str] = set()
    has_onload = False
    for lib in libraries:
        exports.update(getattr(lib, "jni_exports", ()) or ())
        if getattr(lib, "jni_onload", False):
            has_onload = True

    bindings: list[JNIBinding] = []
    for d in declared:
        # JNI export name for an UNMANGLED class: `Java_` + dotted class with
        # '.' -> '_' + '_' + method. Exact match = statically resolvable.
        expected = f"Java_{d.class_name.replace('.', '_')}_{d.method_name}"
        if expected in exports:
            status = "resolved"
        elif has_onload:
            status = "dynamic_candidate"
        else:
            status = "unresolved"
        bindings.append(JNIBinding(class_name=d.class_name, method_name=d.method_name, status=status))
    return bindings


def has_unresolved(bindings: list[JNIBinding]) -> bool:
    """True when any declared native method is `unresolved` - a native method the
    app declares but no extracted lib statically binds and no JNI_OnLoad can
    dynamically register. That is an unexamined surface: the native coverage must
    not certify a confident negative (ADR-0006)."""

    return any(b.status == "unresolved" for b in bindings)
