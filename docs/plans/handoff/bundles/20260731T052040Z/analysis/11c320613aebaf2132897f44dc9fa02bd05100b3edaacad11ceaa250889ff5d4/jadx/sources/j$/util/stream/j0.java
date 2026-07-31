package j$.util.stream;

import j$.util.Optional;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class j0 extends k0 {
    public static final f0 c;
    public static final f0 d;

    static {
        e7 e7Var = e7.REFERENCE;
        c = new f0(true, e7Var, Optional.empty(), new r(8), new r(9));
        d = new f0(false, e7Var, Optional.empty(), new r(8), new r(9));
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        if (this.a) {
            return Optional.of(this.b);
        }
        return null;
    }
}
