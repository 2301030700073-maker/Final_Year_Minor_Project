package j$.util.stream;

import j$.util.Optional;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes2.dex */
public final class i0 extends j0 {
    public static final e0 c;
    public static final e0 d;

    static {
        a7 a7Var = a7.REFERENCE;
        o oVar = new o(17);
        o oVar2 = new o(18);
        Optional optional = Optional.b;
        c = new e0(true, a7Var, optional, oVar, oVar2);
        d = new e0(false, a7Var, optional, new o(17), new o(18));
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        if (this.a) {
            return new Optional(this.b);
        }
        return null;
    }
}
