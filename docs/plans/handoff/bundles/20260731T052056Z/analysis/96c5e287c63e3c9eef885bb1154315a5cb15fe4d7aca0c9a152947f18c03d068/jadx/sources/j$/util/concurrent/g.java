package j$.util.concurrent;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes2.dex */
public final class g extends l {
    public final l[] e;

    public g(l[] lVarArr) {
        super(-1, null, null);
        this.e = lVarArr;
    }

    @Override // j$.util.concurrent.l
    public final l a(int i, Object obj) {
        l k;
        Object obj2;
        l[] lVarArr = this.e;
        loop0: while (true) {
            int length = lVarArr.length;
            if (length == 0 || (k = ConcurrentHashMap.k(lVarArr, (length - 1) & i)) == null) {
                return null;
            }
            do {
                int i2 = k.a;
                if (i2 != i || ((obj2 = k.b) != obj && (obj2 == null || !obj.equals(obj2)))) {
                    if (i2 >= 0) {
                        k = k.d;
                    } else {
                        if (!(k instanceof g)) {
                            return k.a(i, obj);
                        }
                        lVarArr = ((g) k).e;
                    }
                }
            } while (k != null);
            return null;
        }
        return k;
    }
}
