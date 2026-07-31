package j$.time.temporal;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public enum h implements TemporalUnit {
    WEEK_BASED_YEARS("WeekBasedYears", j$.time.d.n(31556952, 0)),
    QUARTER_YEARS("QuarterYears", j$.time.d.n(7889238, 0));

    public final String a;
    public final j$.time.d b;

    h(String str, j$.time.d dVar) {
        this.a = str;
        this.b = dVar;
    }

    @Override // j$.time.temporal.TemporalUnit
    public final j$.time.d getDuration() {
        return this.b;
    }

    @Override // j$.time.temporal.TemporalUnit
    public final boolean isDateBased() {
        throw null;
    }

    @Override // j$.time.temporal.TemporalUnit
    public final l k(l lVar, long j) {
        int i = b.a[ordinal()];
        if (i == 1) {
            return lVar.c(j$.com.android.tools.r8.a.S(lVar.k(r4), j), i.c);
        }
        if (i == 2) {
            return lVar.d(j / 4, ChronoUnit.YEARS).d((j % 4) * 3, ChronoUnit.MONTHS);
        }
        throw new IllegalStateException("Unreachable");
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.a;
    }
}
