"""DYNCOV1: the dynload / webview coverage-degradation scans must cover the SAME
decompiled-Java corpus the completeness metric certifies as covered - jadx_output
AND the CFR fallback recovery - not jadx alone.

`_jadx_covered` (decompile.py) credits CFR recovery toward a `complete`
completeness label on the whole-APK path: jadx can exit non-zero, the CFR fallback
re-reads the APK, and completeness reads `complete` -> java_coverage returns
`fully_analyzed`. But `native_java_files` used to be built from `jadx_output` only,
so a `DexClassLoader` or a remote `loadUrl` in a class jadx FAILED on but CFR
RECOVERED was invisible to `find_dynamic_loading` / `find_webview_js` ->
`has_remote_js`/`dynamic_loads` stayed empty -> java stayed `fully_analyzed`: a
confident negative over code the completeness metric already counted as read
(ADR-0006).

These tests pin `_full_java_corpus` to the union of both decompiler roots (deduped
by class-relative path, larger file wins on a collision so a truncated jadx stub
never shadows CFR's fuller recovery) and prove end-to-end that a detection idiom
present ONLY in the CFR recovery is now seen.
"""

from cli import _full_java_corpus, _max_obfuscation, _obfuscation_level_over_corpus
from static.dynload import find_dynamic_loading
from static.webview import find_webview_js


def _mk(path, body):
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(body)


def test_full_java_corpus_jadx_only(tmp_path):
    # No CFR fallback (jadx rc==0 path): corpus is exactly the jadx tree.
    jadx = tmp_path / "jadx"
    _mk(jadx / "com" / "app" / "Main.java", "class Main {}\n")
    files = _full_java_corpus([jadx, None])
    assert {f.name for f in files} == {"Main.java"}


def test_full_java_corpus_unions_cfr_only_classes(tmp_path):
    # THE regression core: a class present ONLY in the CFR recovery (jadx failed on
    # it) must appear in the corpus. Completeness counted it as read; the
    # coverage-degradation scans must therefore be able to read it too.
    jadx = tmp_path / "jadx"
    cfr = tmp_path / "cfr"
    _mk(jadx / "com" / "app" / "A.java", "class A {}\n")
    _mk(cfr / "com" / "app" / "B.java", "class B {}\n")  # jadx never produced B
    files = _full_java_corpus([jadx, cfr])
    assert {f.name for f in files} == {"A.java", "B.java"}


def test_full_java_corpus_collision_larger_file_wins(tmp_path):
    # A whole-APK CFR rescue re-reads classes jadx already wrote -> the same
    # class-relative path exists in both roots. We keep ONE copy (no duplicate
    # report lines) and it must be the LARGER one, so a truncated jadx stub can
    # never shadow CFR's fuller recovery of that class (recall-safe).
    jadx = tmp_path / "jadx"
    cfr = tmp_path / "cfr"
    _mk(jadx / "com" / "app" / "A.java", "class A {}\n")  # short stub
    _mk(
        cfr / "com" / "app" / "A.java",
        "class A {\n  void f(){ webView.loadUrl(\"https://evil.example/x\"); }\n}\n",
    )  # fuller recovery (larger)
    files = _full_java_corpus([jadx, cfr])
    assert len(files) == 1  # deduped by relative path - no double count
    assert files[0].read_text().count("loadUrl") == 1  # the CFR (larger) copy won


def test_full_java_corpus_handles_none_and_missing_roots(tmp_path):
    # cfr_output is only appended when present; the list can carry None / absent
    # entries. They are skipped, never crashed on.
    jadx = tmp_path / "jadx"
    _mk(jadx / "A.java", "class A {}\n")
    files = _full_java_corpus([jadx, None, tmp_path / "does_not_exist"])
    assert {f.name for f in files} == {"A.java"}


def test_cfr_only_remote_loadurl_is_now_detected(tmp_path):
    # End-to-end confident-FN closure (webview half): a remote loadUrl living ONLY
    # in a CFR-recovered class must flip has_remote_js -> java degrades to partial
    # instead of asserting a confident negative over unread JS.
    jadx = tmp_path / "jadx"
    cfr = tmp_path / "cfr"
    _mk(jadx / "com" / "app" / "Clean.java", "class Clean { void ok(){} }\n")
    _mk(
        cfr / "com" / "app" / "Hidden.java",
        "class Hidden {\n"
        "  void load(){ webView.loadUrl(\"https://cfg.example/rules.js\"); }\n"
        "}\n",
    )
    corpus = _full_java_corpus([jadx, cfr])
    _sites, has_remote_js = find_webview_js(corpus)
    assert has_remote_js is True  # would be False if the corpus were jadx-only


def test_cfr_only_dynamic_load_is_now_detected(tmp_path):
    # End-to-end confident-FN closure (dynload half): a DexClassLoader living ONLY
    # in a CFR-recovered class must be surfaced -> dynamic_loads non-empty -> java
    # degrades to partial rather than a confident negative over a runtime payload.
    jadx = tmp_path / "jadx"
    cfr = tmp_path / "cfr"
    _mk(jadx / "com" / "app" / "Clean.java", "class Clean { void ok(){} }\n")
    _mk(
        cfr / "com" / "app" / "Loader.java",
        "class Loader {\n"
        "  void go(){ new DexClassLoader(p, o, null, cl); }\n"
        "}\n",
    )
    corpus = _full_java_corpus([jadx, cfr])
    loads = find_dynamic_loading(corpus)
    assert loads  # non-empty; would be empty if the corpus were jadx-only


def test_max_obfuscation_takes_more_severe():
    assert _max_obfuscation("clear", "heavy") == "heavy"
    assert _max_obfuscation("heavy", "clear") == "heavy"
    assert _max_obfuscation("light", "clear") == "light"
    assert _max_obfuscation("light", "light") == "light"


def test_obfuscation_detects_cfr_only_string_encryption(tmp_path):
    # An R8 flat-numeric string-encryption fingerprint in a class jadx failed on
    # but CFR recovered must force `heavy` (-> java partial). Jadx-only it read
    # `clear`, certifying fully_analyzed over hidden literals the signature engine
    # cannot see - a confident negative. The obfuscation read now spans the CFR
    # recovery, so the encryption existence check fires.
    jadx = tmp_path / "jadx"
    cfr = tmp_path / "cfr"
    _mk(jadx / "com" / "app" / "Clean.java", "class Clean { void ok(){} }\n")
    _mk(
        cfr / "com" / "app" / "Enc.java",
        "class Enc {\n"
        "  String d(){ int[] a = {104,101,108,108,111,119,111,114,108};"
        " return new String(a); }\n"
        "}\n",
    )
    # Sanity: jadx-only would be clear (no encryption in Clean.java).
    from static.obfuscation import detect_obfuscation_level

    assert detect_obfuscation_level(_full_java_corpus([jadx])) == "clear"
    assert _obfuscation_level_over_corpus(jadx, cfr) == "heavy"


def test_obfuscation_floor_resists_ratio_dilution(tmp_path):
    # The minified-name RATIO is not monotonic under corpus widening: a whole-APK
    # CFR rescue adds many clear (long-named) classes that could dilute a heavy
    # jadx reading below the threshold. The floor (max with the jadx-only reading)
    # must hold the level at heavy - widening the corpus can only ever RAISE it.
    jadx = tmp_path / "jadx"
    cfr = tmp_path / "cfr"
    # jadx: two single-char classes -> ratio 1.0 -> heavy on its own.
    _mk(jadx / "com" / "j" / "a.java", "class a {}\n")
    _mk(jadx / "com" / "j" / "b.java", "class b {}\n")
    # cfr: six long-named clear classes at DISTINCT relpaths (no dedup collapse).
    for nm in ("Alpha", "Bravo", "Charlie", "Delta", "Echo", "Foxtrot"):
        _mk(cfr / "com" / "c" / f"{nm}.java", f"class {nm} {{}}\n")
    from static.obfuscation import detect_obfuscation_level

    # Un-floored, the union ratio (2/8 = 0.25) would read `light` - dilution.
    assert detect_obfuscation_level(_full_java_corpus([jadx, cfr])) == "light"
    # Floored against the jadx-only heavy reading, it stays heavy.
    assert _obfuscation_level_over_corpus(jadx, cfr) == "heavy"
