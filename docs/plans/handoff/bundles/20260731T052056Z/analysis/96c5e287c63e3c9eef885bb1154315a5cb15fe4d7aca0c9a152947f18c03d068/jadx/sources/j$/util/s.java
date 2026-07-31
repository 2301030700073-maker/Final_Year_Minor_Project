package j$.util;

import java.util.RandomAccess;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes2.dex */
public final class s extends m implements RandomAccess {
    private static final long serialVersionUID = -2542308836966382001L;

    private Object writeReplace() {
        return new m(this.b);
    }

    @Override // j$.util.m, java.util.List
    public final java.util.List subList(int i, int i2) {
        return new s(this.b.subList(i, i2));
    }
}
