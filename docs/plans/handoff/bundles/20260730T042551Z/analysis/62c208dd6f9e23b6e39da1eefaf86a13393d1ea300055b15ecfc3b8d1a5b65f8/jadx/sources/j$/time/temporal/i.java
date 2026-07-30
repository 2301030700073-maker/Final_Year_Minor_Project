package j$.time.temporal;

import j$.time.AbstractC2959a;
import j$.time.Duration;

/* loaded from: classes2.dex */
enum i implements u {
    WEEK_BASED_YEARS("WeekBasedYears"),
    QUARTER_YEARS("QuarterYears");

    private final String a;

    static {
        Duration duration = Duration.c;
    }

    i(String str) {
        this.a = str;
    }

    @Override // j$.time.temporal.u
    public final m i(m mVar, long j) {
        int i = c.a[ordinal()];
        if (i == 1) {
            return mVar.c(AbstractC2959a.d(mVar.i(r0), j), j.c);
        }
        if (i == 2) {
            return mVar.d(j / 4, b.YEARS).d((j % 4) * 3, b.MONTHS);
        }
        throw new IllegalStateException("Unreachable");
    }

    @Override // j$.time.temporal.u
    public final boolean isDateBased() {
        return true;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.a;
    }
}
