package j$.time.temporal;

import j$.util.Objects;

/* loaded from: classes2.dex */
public abstract class q {
    static final t a = new s(0);
    static final t b = new s(1);
    static final t c = new s(2);
    static final t d = new s(3);
    static final t e = new s(4);
    static final t f = new s(5);
    static final t g = new s(6);

    public static int a(n nVar, r rVar) {
        w k = nVar.k(rVar);
        if (!k.h()) {
            throw new v("Invalid field " + rVar + " for get() method, use getLong() instead");
        }
        long v = nVar.v(rVar);
        if (k.i(v)) {
            return (int) v;
        }
        throw new j$.time.d("Invalid value for " + rVar + " (valid values " + k + "): " + v);
    }

    public static m b(m mVar, long j, b bVar) {
        long j2;
        if (j == Long.MIN_VALUE) {
            mVar = mVar.d(Long.MAX_VALUE, bVar);
            j2 = 1;
        } else {
            j2 = -j;
        }
        return mVar.d(j2, bVar);
    }

    public static Object c(n nVar, t tVar) {
        if (tVar == a || tVar == b || tVar == c) {
            return null;
        }
        return tVar.a(nVar);
    }

    public static w d(n nVar, r rVar) {
        if (!(rVar instanceof a)) {
            Objects.requireNonNull(rVar, "field");
            return rVar.j(nVar);
        }
        if (nVar.e(rVar)) {
            return rVar.k();
        }
        throw new v(j$.time.e.a("Unsupported field: ", rVar));
    }

    public static t e() {
        return b;
    }

    public static t f() {
        return f;
    }

    public static t g() {
        return g;
    }

    public static t h() {
        return d;
    }

    public static t i() {
        return c;
    }

    public static t j() {
        return e;
    }

    public static t k() {
        return a;
    }
}
