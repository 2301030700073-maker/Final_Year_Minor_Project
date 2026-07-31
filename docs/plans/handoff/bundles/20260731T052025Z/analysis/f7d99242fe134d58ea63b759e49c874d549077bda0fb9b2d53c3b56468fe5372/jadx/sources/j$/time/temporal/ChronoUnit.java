package j$.time.temporal;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public enum ChronoUnit implements TemporalUnit {
    NANOS("Nanos"),
    MICROS("Micros"),
    MILLIS("Millis"),
    SECONDS("Seconds"),
    MINUTES("Minutes"),
    HOURS("Hours"),
    HALF_DAYS("HalfDays"),
    DAYS("Days"),
    WEEKS("Weeks"),
    MONTHS("Months"),
    YEARS("Years"),
    DECADES("Decades"),
    CENTURIES("Centuries"),
    MILLENNIA("Millennia"),
    ERAS("Eras"),
    FOREVER("Forever");

    public final String a;

    static {
        j$.time.c.n(1L);
        j$.time.c.n(1000L);
        j$.time.c.n(1000000L);
        j$.time.c.m(1L, 0);
        j$.time.c.m(60L, 0);
        j$.time.c.m(3600L, 0);
        j$.time.c.m(43200L, 0);
        j$.time.c.m(86400L, 0);
        j$.time.c.m(604800L, 0);
        j$.time.c.m(2629746L, 0);
        j$.time.c.m(31556952L, 0);
        j$.time.c.m(315569520L, 0);
        j$.time.c.m(3155695200L, 0);
        j$.time.c.m(31556952000L, 0);
        j$.time.c.m(31556952000000000L, 0);
        j$.time.c.m(j$.com.android.tools.r8.a.Q(Long.MAX_VALUE, j$.com.android.tools.r8.a.C(999999999L, 1000000000L)), (int) j$.com.android.tools.r8.a.P(999999999L, 1000000000L));
    }

    ChronoUnit(String str) {
        this.a = str;
    }

    @Override // j$.time.temporal.TemporalUnit
    public final long k(Temporal temporal, Temporal temporal2) {
        return temporal.until(temporal2, this);
    }

    @Override // j$.time.temporal.TemporalUnit
    public final Temporal m(Temporal temporal, long j) {
        return temporal.c(j, this);
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.a;
    }
}
