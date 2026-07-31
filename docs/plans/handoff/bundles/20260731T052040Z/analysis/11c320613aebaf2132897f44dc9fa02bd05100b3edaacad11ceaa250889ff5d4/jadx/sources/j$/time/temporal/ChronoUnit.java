package j$.time.temporal;

import com.google.android.exoplayer2.C;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public enum ChronoUnit implements TemporalUnit {
    NANOS("Nanos", j$.time.d.o(1)),
    MICROS("Micros", j$.time.d.o(1000)),
    MILLIS("Millis", j$.time.d.o(1000000)),
    SECONDS("Seconds", j$.time.d.n(1, 0)),
    MINUTES("Minutes", j$.time.d.n(60, 0)),
    HOURS("Hours", j$.time.d.n(3600, 0)),
    HALF_DAYS("HalfDays", j$.time.d.n(43200, 0)),
    DAYS("Days", j$.time.d.n(86400, 0)),
    WEEKS("Weeks", j$.time.d.n(604800, 0)),
    MONTHS("Months", j$.time.d.n(2629746, 0)),
    YEARS("Years", j$.time.d.n(31556952, 0)),
    DECADES("Decades", j$.time.d.n(315569520, 0)),
    CENTURIES("Centuries", j$.time.d.n(3155695200L, 0)),
    MILLENNIA("Millennia", j$.time.d.n(31556952000L, 0)),
    ERAS("Eras", j$.time.d.n(31556952000000000L, 0)),
    FOREVER("Forever", j$.time.d.n(j$.com.android.tools.r8.a.S(Long.MAX_VALUE, j$.com.android.tools.r8.a.E(999999999, C.NANOS_PER_SECOND)), (int) j$.com.android.tools.r8.a.R(999999999, C.NANOS_PER_SECOND)));

    public final String a;
    public final j$.time.d b;

    ChronoUnit(String str, j$.time.d dVar) {
        this.a = str;
        this.b = dVar;
    }

    @Override // j$.time.temporal.TemporalUnit
    public final j$.time.d getDuration() {
        return this.b;
    }

    @Override // j$.time.temporal.TemporalUnit
    public boolean isDateBased() {
        return compareTo(DAYS) >= 0 && this != FOREVER;
    }

    @Override // j$.time.temporal.TemporalUnit
    public final l k(l lVar, long j) {
        return lVar.d(j, this);
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.a;
    }
}
