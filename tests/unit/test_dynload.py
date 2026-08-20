"""Pure dynamic-code-loading detection - no device, no toolchain, testable anywhere."""

from pathlib import Path

from static import dynload


def _write(tmp_path: Path, name: str, text: str) -> Path:
    p = tmp_path / name
    p.write_text(text, encoding="utf-8")
    return p


def test_finds_dex_class_loader(tmp_path):
    p = _write(tmp_path, "A.java", "DexClassLoader loader = new DexClassLoader(path, opt, lib, parent);")
    hits = dynload.find_dynamic_loading([p])
    assert len(hits) == 1
    assert "A.java" in hits[0]
    assert "DexClassLoader(" in hits[0]


def test_finds_path_class_loader_qualified(tmp_path):
    p = _write(tmp_path, "B.java", "dalvik.system.PathClassLoader c = new dalvik.system.PathClassLoader(p, parent);")
    hits = dynload.find_dynamic_loading([p])
    assert len(hits) == 1


def test_finds_class_forname(tmp_path):
    p = _write(tmp_path, "C.java", "Class<?> k = Class.forName(\"x.y.Z\");")
    hits = dynload.find_dynamic_loading([p])
    assert len(hits) == 1
    assert "Class.forName(" in hits[0]


def test_finds_dexfile_loaddex(tmp_path):
    p = _write(tmp_path, "D.java", "DexFile.loadDex(p, o, 0);")
    hits = dynload.find_dynamic_loading([p])
    assert len(hits) == 1


def test_finds_base_and_inmemory_loaders(tmp_path):
    p = _write(
        tmp_path, "E.java",
        "new BaseDexClassLoader(a, b, c, d); new InMemoryDexClassLoader(buf); openDexFile(f);",
    )
    hits = dynload.find_dynamic_loading([p])
    assert len(hits) == 1  # three call sites on one line -> one hit


def test_skips_non_loading_code(tmp_path):
    p = _write(
        tmp_path, "F.java",
        "NotDexClassLoader factory = new NotDexClassLoader();\n"
        "int x = loadDex;\n"
        "Class<?> k = Class.notForName(\"x\");",
    )
    hits = dynload.find_dynamic_loading([p])
    assert hits == []


def test_does_not_match_identifier_suffix(tmp_path):
    p = _write(tmp_path, "G.java", "notADexClassLoader path = factory.make();")
    assert dynload.find_dynamic_loading([p]) == []


def test_empty_corpus():
    assert dynload.find_dynamic_loading([]) == []


def test_skips_unreadable_file(tmp_path):
    p = _write(tmp_path, "H.java", "DexClassLoader")
    p.chmod(0o000)
    try:
        assert dynload.find_dynamic_loading([p]) == []
    finally:
        p.chmod(0o644)
