package j$.util.concurrent;

/* renamed from: j$.util.concurrent.a, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
abstract class AbstractC2976a extends q {
    final ConcurrentHashMap i;
    l j;

    AbstractC2976a(l[] lVarArr, int i, int i2, ConcurrentHashMap concurrentHashMap) {
        super(lVarArr, i, 0, i2);
        this.i = concurrentHashMap;
        a();
    }

    public final boolean hasMoreElements() {
        return this.b != null;
    }

    public final boolean hasNext() {
        return this.b != null;
    }

    public final void remove() {
        l lVar = this.j;
        if (lVar == null) {
            throw new IllegalStateException();
        }
        this.j = null;
        this.i.h(lVar.b, null, null);
    }
}
