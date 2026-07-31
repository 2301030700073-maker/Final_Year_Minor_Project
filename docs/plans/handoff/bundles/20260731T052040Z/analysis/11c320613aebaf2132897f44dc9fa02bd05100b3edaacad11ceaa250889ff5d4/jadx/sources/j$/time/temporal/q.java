package j$.time.temporal;

import j$.time.DateTimeException;
import j$.util.Objects;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public abstract class q {
    public static final j$.desugar.sun.nio.fs.m a = new j$.desugar.sun.nio.fs.m(8);
    public static final j$.desugar.sun.nio.fs.m b = new j$.desugar.sun.nio.fs.m(9);
    public static final j$.desugar.sun.nio.fs.m c = new j$.desugar.sun.nio.fs.m(10);
    public static final j$.desugar.sun.nio.fs.m d = new j$.desugar.sun.nio.fs.m(11);
    public static final j$.desugar.sun.nio.fs.m e = new j$.desugar.sun.nio.fs.m(12);
    public static final j$.desugar.sun.nio.fs.m f = new j$.desugar.sun.nio.fs.m(13);
    public static final j$.desugar.sun.nio.fs.m g = new j$.desugar.sun.nio.fs.m(14);

    public static int a(TemporalAccessor temporalAccessor, p pVar) {
        s o = temporalAccessor.o(pVar);
        if (!o.d()) {
            throw new r("Invalid field " + pVar + " for get() method, use getLong() instead");
        }
        long M = temporalAccessor.M(pVar);
        if (o.e(M)) {
            return (int) M;
        }
        throw new DateTimeException("Invalid value for " + pVar + " (valid values " + o + "): " + M);
    }

    public static l b(l lVar, long j, TemporalUnit temporalUnit) {
        long j2;
        if (j == Long.MIN_VALUE) {
            lVar = lVar.d(Long.MAX_VALUE, temporalUnit);
            j2 = 1;
        } else {
            j2 = -j;
        }
        return lVar.d(j2, temporalUnit);
    }

    public static Object c(TemporalAccessor temporalAccessor, j$.desugar.sun.nio.fs.m mVar) {
        if (mVar == a || mVar == b || mVar == c) {
            return null;
        }
        return mVar.g(temporalAccessor);
    }

    public static s d(TemporalAccessor temporalAccessor, p pVar) {
        if (!(pVar instanceof a)) {
            Objects.requireNonNull(pVar, "field");
            return pVar.n(temporalAccessor);
        }
        if (temporalAccessor.e(pVar)) {
            return ((a) pVar).b;
        }
        throw new r(j$.time.b.a("Unsupported field: ", pVar));
    }

    public static /* synthetic */ int e(int i) {
        int i2 = i % 7;
        if (i2 == 0) {
            return 0;
        }
        return (((i ^ 7) >> 31) | 1) > 0 ? i2 : i2 + 7;
    }
}
