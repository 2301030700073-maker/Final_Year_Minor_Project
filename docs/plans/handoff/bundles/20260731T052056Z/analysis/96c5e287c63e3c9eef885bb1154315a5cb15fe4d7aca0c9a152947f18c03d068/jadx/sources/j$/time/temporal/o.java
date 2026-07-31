package j$.time.temporal;

import j$.util.Objects;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes2.dex */
public abstract class o {
    public static final j$.time.f a = new j$.time.f(5);
    public static final j$.time.f b = new j$.time.f(6);
    public static final j$.time.f c = new j$.time.f(7);
    public static final j$.time.f d = new j$.time.f(8);
    public static final j$.time.f e = new j$.time.f(9);
    public static final j$.time.f f = new j$.time.f(10);
    public static final j$.time.f g = new j$.time.f(11);

    public static int a(TemporalAccessor temporalAccessor, n nVar) {
        q h = temporalAccessor.h(nVar);
        if (!h.d()) {
            throw new p("Invalid field " + nVar + " for get() method, use getLong() instead");
        }
        long q = temporalAccessor.q(nVar);
        if (h.e(q)) {
            return (int) q;
        }
        throw new j$.time.c("Invalid value for " + nVar + " (valid values " + h + "): " + q);
    }

    public static Temporal b(Temporal temporal, long j, TemporalUnit temporalUnit) {
        long j2;
        if (j == Long.MIN_VALUE) {
            temporal = temporal.b(Long.MAX_VALUE, temporalUnit);
            j2 = 1;
        } else {
            j2 = -j;
        }
        return temporal.b(j2, temporalUnit);
    }

    public static Object c(TemporalAccessor temporalAccessor, j$.time.f fVar) {
        if (fVar == a || fVar == b || fVar == c) {
            return null;
        }
        return fVar.e(temporalAccessor);
    }

    public static q d(TemporalAccessor temporalAccessor, n nVar) {
        if (!(nVar instanceof a)) {
            Objects.requireNonNull(nVar, "field");
            return nVar.g(temporalAccessor);
        }
        if (temporalAccessor.c(nVar)) {
            return ((a) nVar).b;
        }
        throw new p(j$.time.d.a("Unsupported field: ", nVar));
    }

    public static /* synthetic */ int e(int i) {
        int i2 = i % 7;
        if (i2 == 0) {
            return 0;
        }
        return (((i ^ 7) >> 31) | 1) > 0 ? i2 : i2 + 7;
    }
}
