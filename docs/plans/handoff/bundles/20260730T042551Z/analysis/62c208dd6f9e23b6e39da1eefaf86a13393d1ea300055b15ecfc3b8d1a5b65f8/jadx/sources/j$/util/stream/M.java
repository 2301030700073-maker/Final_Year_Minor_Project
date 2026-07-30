package j$.util.stream;

import j$.util.Optional;

/* loaded from: classes2.dex */
final class M extends N {
    static final I c;
    static final I d;

    static {
        EnumC3031h3 enumC3031h3 = EnumC3031h3.REFERENCE;
        c = new I(true, enumC3031h3, Optional.empty(), new O0(22), new C2997b(12));
        d = new I(false, enumC3031h3, Optional.empty(), new O0(22), new C2997b(12));
    }

    M() {
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        if (this.a) {
            return Optional.of(this.b);
        }
        return null;
    }
}
