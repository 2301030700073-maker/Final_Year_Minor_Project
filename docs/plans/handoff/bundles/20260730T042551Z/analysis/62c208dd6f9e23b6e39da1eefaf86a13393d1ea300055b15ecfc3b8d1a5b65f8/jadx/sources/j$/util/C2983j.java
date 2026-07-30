package j$.util;

import java.util.RandomAccess;

/* renamed from: j$.util.j, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C2983j extends C2981h implements RandomAccess {
    private static final long serialVersionUID = 1530674583602358482L;

    C2983j(java.util.List list) {
        super(list);
    }

    C2983j(java.util.List list, Object obj) {
        super(list, obj);
    }

    private Object writeReplace() {
        return new C2981h(this.c);
    }

    @Override // j$.util.C2981h, java.util.List, j$.util.List
    public final java.util.List subList(int i, int i2) {
        C2983j c2983j;
        synchronized (this.b) {
            c2983j = new C2983j(this.c.subList(i, i2), this.b);
        }
        return c2983j;
    }
}
