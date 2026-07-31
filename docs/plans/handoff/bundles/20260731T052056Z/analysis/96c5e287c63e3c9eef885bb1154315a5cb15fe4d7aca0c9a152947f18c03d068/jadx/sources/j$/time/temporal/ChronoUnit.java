package j$.time.temporal;

import j$.time.Duration;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes2.dex */
public enum ChronoUnit implements TemporalUnit {
    NANOS("Nanos", Duration.h(1)),
    MICROS("Micros", Duration.h(1000)),
    MILLIS("Millis", Duration.h(1000000)),
    SECONDS("Seconds", Duration.g(1, 0)),
    MINUTES("Minutes", Duration.g(60, 0)),
    HOURS("Hours", Duration.g(3600, 0)),
    HALF_DAYS("HalfDays", Duration.g(43200, 0)),
    DAYS("Days", Duration.g(86400, 0)),
    WEEKS("Weeks", Duration.g(604800, 0)),
    MONTHS("Months", Duration.g(2629746, 0)),
    YEARS("Years", Duration.g(31556952, 0)),
    DECADES("Decades", Duration.g(315569520, 0)),
    CENTURIES("Centuries", Duration.g(3155695200L, 0)),
    MILLENNIA("Millennia", Duration.g(31556952000L, 0)),
    ERAS("Eras", Duration.g(31556952000000000L, 0)),
    FOREVER("Forever", Duration.g(j$.time.a.P(Long.MAX_VALUE, j$.time.a.T(999999999, 1000000000)), (int) j$.time.a.S(999999999, 1000000000)));

    public final String a;
    public final Duration b;

    ChronoUnit(String str, Duration duration) {
        this.a = str;
        this.b = duration;
    }

    @Override // j$.time.temporal.TemporalUnit
    public long between(Temporal temporal, Temporal temporal2) {
        return temporal.d(temporal2, this);
    }

    @Override // j$.time.temporal.TemporalUnit
    public final Temporal f(Temporal temporal, long j) {
        return temporal.b(j, this);
    }

    @Override // j$.time.temporal.TemporalUnit
    public final Duration getDuration() {
        return this.b;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.a;
    }
}
