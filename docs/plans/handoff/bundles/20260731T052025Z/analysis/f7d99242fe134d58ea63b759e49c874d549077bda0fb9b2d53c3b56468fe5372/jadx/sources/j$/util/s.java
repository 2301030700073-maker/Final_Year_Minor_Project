package j$.util;

import java.util.RandomAccess;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public final class s extends n implements RandomAccess {
    private static final long serialVersionUID = -2542308836966382001L;

    private Object writeReplace() {
        return new n(this.b);
    }

    @Override // j$.util.n, java.util.List
    public final java.util.List subList(int i, int i2) {
        return new s(this.b.subList(i, i2));
    }
}
