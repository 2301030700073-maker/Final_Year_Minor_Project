package j$.util.stream;

import j$.util.Optional;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public final class i0 extends j0 {
    public static final e0 c;
    public static final e0 d;

    static {
        a7 a7Var = a7.REFERENCE;
        o oVar = new o(18);
        o oVar2 = new o(19);
        Optional optional = Optional.b;
        c = new e0(true, a7Var, optional, oVar, oVar2);
        d = new e0(false, a7Var, optional, new o(18), new o(19));
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        if (this.a) {
            return new Optional(this.b);
        }
        return null;
    }
}
