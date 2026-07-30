package j$.time.temporal;

import j$.time.Duration;

/* loaded from: classes2.dex */
public enum b implements u {
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

    private final String a;

    static {
        Duration.n(1L);
        Duration.n(1000L);
        Duration.n(1000000L);
        Duration.v(Long.MAX_VALUE, 999999999L);
    }

    b(String str) {
        this.a = str;
    }

    @Override // j$.time.temporal.u
    public final m i(m mVar, long j) {
        return mVar.d(j, this);
    }

    @Override // j$.time.temporal.u
    public final boolean isDateBased() {
        return compareTo(DAYS) >= 0 && this != FOREVER;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.a;
    }
}
