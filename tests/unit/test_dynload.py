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


def test_finds_dexfile_loaddex_fully_qualified(tmp_path):
    # A decompiler can emit the DexFile.loadDex static call fully qualified
    # (dalvik.system.DexFile.loadDex) when DexFile isn't imported - the same way
    # the FQ constructor (new dalvik.system.DexFile) and the FQ class loaders
    # (new dalvik.system.PathClassLoader, test above) appear. Those sibling arms
    # already carry the (?:dalvik\.system\.)? prefix; the loadDex arm did not, so
    # this real dynamic-load call slipped through - a missed loading call silently
    # over-claims a confident java negative over the payload it hides, exactly the
    # err-toward-recall contract this module states (ADR-0006).
    p = _write(tmp_path, "D2.java", "dalvik.system.DexFile.loadDex(p, o, 0);")
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


def test_dynamic_loading_ignores_bundled_sdk_code():
    # DYNLOAD-VENDOR1: a Class.forName inside a bundled library is library
    # plumbing on a constant, platform-resident class name - not the app releasing
    # a hidden payload. Counting it degraded the java surface to `partial` for
    # essentially every app that bundles OkHttp/Retrofit, so a confident java
    # negative became unreachable and the registered negative control could never
    # enter Tier-2 calibration. Uses the same common.is_third_party_file as the
    # source and DEX scans so the three cannot drift.
    import tempfile
    from pathlib import Path as _P

    with tempfile.TemporaryDirectory() as d:
        root = _P(d)
        vendor = root / "sources" / "retrofit2" / "Platform.java"
        vendor.parent.mkdir(parents=True)
        vendor.write_text('Class.forName("android.os.Build");\n')
        app = root / "sources" / "com" / "redshift" / "app" / "Loader.java"
        app.parent.mkdir(parents=True)
        app.write_text('new DexClassLoader(path, opt, null, cl);\n')

        hits = dynload.find_dynamic_loading([vendor, app], app_package="com.redshift.app")
        assert len(hits) == 1
        assert "Loader.java" in hits[0]

        # Bug-B parity: an app whose OWN package sits under a vendor prefix keeps
        # its own subtree app-owned, so its loader call is still reported.
        own = root / "sources" / "retrofit2" / "custom" / "Own.java"
        own.parent.mkdir(parents=True)
        own.write_text('new PathClassLoader(p, cl);\n')
        own_hits = dynload.find_dynamic_loading([own], app_package="retrofit2.custom")
        assert len(own_hits) == 1

        # No app_package known -> plain vendor check, vendor still excluded.
        assert dynload.find_dynamic_loading([vendor]) == []


def test_vendor_arch1_android_arch_is_vendor_not_app_dynamic_loading(tmp_path):
    """VENDOR-ARCH1. `android.arch.*` (Android Architecture Components - the
    pre-AndroidX namespace of the same Google lifecycle/room/paging libraries
    whose `androidx` successor was already excluded) was missing from the vendor
    taxonomy, so Google's own `Lifecycling.java` `Class.forName` read as the APP's
    dynamic class loading. That degraded the java surface to `partial`, and
    because java governs BOTH categories every verdict became coverage-limited
    and every NEITHER was excluded from Tier-2 as under-covered - the sole
    remaining reason true_negative stayed 0. Verified on the real AndroGoat run
    of 2026-09-03: all THREE reported call sites were this one Google file (once
    via jadx, twice via CFR), on a `clear`/`complete` decompile.
    """
    from common import is_known_third_party, is_third_party_file

    # The real decompiled file, at its real path, with its real call.
    lifecycling = tmp_path / "sources" / "android" / "arch" / "lifecycle" / "Lifecycling.java"
    lifecycling.parent.mkdir(parents=True)
    lifecycling.write_text(
        "return Class.forName(str).getDeclaredConstructor(klass).newInstance(obj);\n",
        encoding="utf-8",
    )
    app = tmp_path / "sources" / "owasp" / "sat" / "agoat" / "Loader.java"
    app.parent.mkdir(parents=True)
    app.write_text("new DexClassLoader(path, opt, null, cl);\n", encoding="utf-8")

    hits = dynload.find_dynamic_loading([lifecycling, app], app_package="owasp.sat.agoat")
    assert len(hits) == 1, hits
    assert "Loader.java" in hits[0]

    # The CFR layout carries no `sources` marker (`<sha256>/cfr/<pkg>/...`), so the
    # same file must also be excluded when it arrives by that path - two of the
    # three real AndroGoat call sites came from CFR.
    sha = "a" * 64
    cfr = tmp_path / "outputs" / "analysis" / sha / "cfr" / "android" / "arch" / "lifecycle"
    cfr.mkdir(parents=True)
    cfr_file = cfr / "Lifecycling.java"
    cfr_file.write_text(
        "return Class.forName((String)object).getDeclaredConstructor(cls).newInstance(o);\n",
        encoding="utf-8",
    )
    assert dynload.find_dynamic_loading([cfr_file], app_package="owasp.sat.agoat") == []

    # The other toolchain artifacts added with it, same class as `kotlin`.
    for ns in ("android.arch.lifecycle", "android.arch.persistence.room",
               "org.jetbrains.annotations", "org.intellij.lang", "j$.util.stream"):
        assert is_known_third_party(ns), ns

    # Bug-B parity: an app that declares one of these as its OWN package keeps its
    # own subtree app-owned.
    assert not is_third_party_file("android.arch.myapp.RootCheck", "android.arch.myapp")

    # Deliberately NOT excluded, and this is load-bearing in the DETECTION
    # direction: `javax.net.ssl` is where a vendored custom TrustManager would
    # live, and `com.android` is a real app package in this corpus
    # (com.android.insecurebankv2), so excluding either could suppress a genuine
    # app-owned finding. Erring toward app-owned is the safe direction (ADR-0006).
    assert not is_known_third_party("javax.net.ssl")
    assert not is_known_third_party("com.android")
    assert not is_third_party_file("com.android.insecurebankv2.PostLogin", "com.android.insecurebankv2")
