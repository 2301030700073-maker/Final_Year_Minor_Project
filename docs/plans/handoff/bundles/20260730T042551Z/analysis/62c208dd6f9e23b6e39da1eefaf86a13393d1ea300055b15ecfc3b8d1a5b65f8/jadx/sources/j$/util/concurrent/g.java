package j$.util.concurrent;

/* loaded from: classes2.dex */
final class g extends l {
    final l[] e;

    g(l[] lVarArr) {
        super(-1, null, null);
        this.e = lVarArr;
    }

    @Override // j$.util.concurrent.l
    final l a(int i, Object obj) {
        int length;
        l l;
        Object obj2;
        l[] lVarArr = this.e;
        loop0: while (obj != null && lVarArr != null && (length = lVarArr.length) != 0 && (l = ConcurrentHashMap.l(lVarArr, (length - 1) & i)) != null) {
            do {
                int i2 = l.a;
                if (i2 == i && ((obj2 = l.b) == obj || (obj2 != null && obj.equals(obj2)))) {
                    return l;
                }
                if (i2 >= 0) {
                    l = l.d;
                } else {
                    if (!(l instanceof g)) {
                        return l.a(i, obj);
                    }
                    lVarArr = ((g) l).e;
                }
            } while (l != null);
        }
        return null;
    }
}
