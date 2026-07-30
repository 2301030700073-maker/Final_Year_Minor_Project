package j$.time.temporal;

import j$.time.AbstractC2959a;

/* loaded from: classes2.dex */
enum k implements r {
    JULIAN_DAY("JulianDay", 2440588),
    MODIFIED_JULIAN_DAY("ModifiedJulianDay", 40587),
    RATA_DIE("RataDie", 719163);

    private static final long serialVersionUID = -7501623920830201812L;
    private final transient String a;
    private final transient w b;
    private final transient long c;

    static {
        b bVar = b.NANOS;
    }

    k(String str, long j) {
        this.a = str;
        this.b = w.j((-365243219162L) + j, 365241780471L + j);
        this.c = j;
    }

    @Override // j$.time.temporal.r
    public final boolean i(n nVar) {
        return nVar.e(a.EPOCH_DAY);
    }

    @Override // j$.time.temporal.r
    public final boolean isDateBased() {
        return true;
    }

    @Override // j$.time.temporal.r
    public final boolean isTimeBased() {
        return false;
    }

    @Override // j$.time.temporal.r
    public final w j(n nVar) {
        if (i(nVar)) {
            return this.b;
        }
        throw new j$.time.d("Unsupported field: " + this);
    }

    @Override // j$.time.temporal.r
    public final w k() {
        return this.b;
    }

    @Override // j$.time.temporal.r
    public final long n(n nVar) {
        return nVar.v(a.EPOCH_DAY) + this.c;
    }

    @Override // j$.time.temporal.r
    public final m r(m mVar, long j) {
        if (this.b.i(j)) {
            return mVar.c(AbstractC2959a.j(j, this.c), a.EPOCH_DAY);
        }
        throw new j$.time.d("Invalid value: " + this.a + " " + j);
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.a;
    }
}
