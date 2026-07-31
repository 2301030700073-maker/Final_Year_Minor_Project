package j$.time.temporal;

import j$.time.DateTimeException;
import j$.util.Objects;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public abstract class n {
    public static final j$.desugar.sun.nio.fs.m a = new j$.desugar.sun.nio.fs.m(7);
    public static final j$.desugar.sun.nio.fs.m b = new j$.desugar.sun.nio.fs.m(8);
    public static final j$.desugar.sun.nio.fs.m c = new j$.desugar.sun.nio.fs.m(9);
    public static final j$.desugar.sun.nio.fs.m d = new j$.desugar.sun.nio.fs.m(10);
    public static final j$.desugar.sun.nio.fs.m e = new j$.desugar.sun.nio.fs.m(11);
    public static final j$.desugar.sun.nio.fs.m f = new j$.desugar.sun.nio.fs.m(12);
    public static final j$.desugar.sun.nio.fs.m g = new j$.desugar.sun.nio.fs.m(13);

    public static int a(TemporalAccessor temporalAccessor, TemporalField temporalField) {
        p n = temporalAccessor.n(temporalField);
        if (!n.d()) {
            throw new o("Invalid field " + temporalField + " for get() method, use getLong() instead");
        }
        long J = temporalAccessor.J(temporalField);
        if (n.e(J)) {
            return (int) J;
        }
        throw new DateTimeException("Invalid value for " + temporalField + " (valid values " + n + "): " + J);
    }

    public static Temporal b(Temporal temporal, long j, TemporalUnit temporalUnit) {
        long j2;
        if (j == Long.MIN_VALUE) {
            temporal = temporal.c(Long.MAX_VALUE, temporalUnit);
            j2 = 1;
        } else {
            j2 = -j;
        }
        return temporal.c(j2, temporalUnit);
    }

    public static Object c(TemporalAccessor temporalAccessor, TemporalQuery temporalQuery) {
        if (temporalQuery == a || temporalQuery == b || temporalQuery == c) {
            return null;
        }
        return temporalQuery.queryFrom(temporalAccessor);
    }

    public static p d(TemporalAccessor temporalAccessor, TemporalField temporalField) {
        if (!(temporalField instanceof ChronoField)) {
            Objects.requireNonNull(temporalField, "field");
            return temporalField.m(temporalAccessor);
        }
        if (temporalAccessor.d(temporalField)) {
            return ((ChronoField) temporalField).b;
        }
        throw new o(j$.time.b.a("Unsupported field: ", temporalField));
    }
}
