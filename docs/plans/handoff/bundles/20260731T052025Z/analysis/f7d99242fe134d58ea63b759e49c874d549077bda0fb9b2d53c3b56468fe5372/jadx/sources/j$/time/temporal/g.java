package j$.time.temporal;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public enum g implements TemporalUnit {
    WEEK_BASED_YEARS("WeekBasedYears"),
    QUARTER_YEARS("QuarterYears");

    public final String a;

    static {
        j$.time.c.m(31556952L, 0);
        j$.time.c.m(7889238L, 0);
    }

    g(String str) {
        this.a = str;
    }

    @Override // j$.time.temporal.TemporalUnit
    public final long k(Temporal temporal, Temporal temporal2) {
        if (temporal.getClass() != temporal2.getClass()) {
            return temporal.until(temporal2, this);
        }
        int i = a.a[ordinal()];
        if (i == 1) {
            f fVar = h.c;
            return j$.com.android.tools.r8.a.S(temporal2.J(fVar), temporal.J(fVar));
        }
        if (i == 2) {
            return temporal.until(temporal2, ChronoUnit.MONTHS) / 3;
        }
        throw new IllegalStateException("Unreachable");
    }

    @Override // j$.time.temporal.TemporalUnit
    public final Temporal m(Temporal temporal, long j) {
        int i = a.a[ordinal()];
        if (i == 1) {
            return temporal.b(j$.com.android.tools.r8.a.Q(temporal.k(r4), j), h.c);
        }
        if (i == 2) {
            return temporal.c(j / 4, ChronoUnit.YEARS).c((j % 4) * 3, ChronoUnit.MONTHS);
        }
        throw new IllegalStateException("Unreachable");
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.a;
    }
}
