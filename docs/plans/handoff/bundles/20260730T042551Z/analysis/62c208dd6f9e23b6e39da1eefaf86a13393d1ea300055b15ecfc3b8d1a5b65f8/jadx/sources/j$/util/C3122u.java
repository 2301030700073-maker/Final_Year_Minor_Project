package j$.util;

import java.util.RandomAccess;

/* renamed from: j$.util.u, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C3122u extends C2988o implements RandomAccess {
    private static final long serialVersionUID = -2542308836966382001L;

    C3122u(java.util.List list) {
        super(list);
    }

    private Object writeReplace() {
        return new C2988o(this.b);
    }

    @Override // j$.util.C2988o, java.util.List, j$.util.List
    public final java.util.List subList(int i, int i2) {
        return new C3122u(this.b.subList(i, i2));
    }
}
