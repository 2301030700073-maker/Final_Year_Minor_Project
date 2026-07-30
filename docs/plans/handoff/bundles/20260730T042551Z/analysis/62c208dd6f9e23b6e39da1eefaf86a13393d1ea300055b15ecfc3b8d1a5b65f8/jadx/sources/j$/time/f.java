package j$.time;

/* loaded from: classes2.dex */
public enum f implements j$.time.temporal.n, j$.time.temporal.o {
    MONDAY,
    TUESDAY,
    WEDNESDAY,
    THURSDAY,
    FRIDAY,
    SATURDAY,
    SUNDAY;

    private static final f[] a = values();

    public static f D(int i) {
        if (i >= 1 && i <= 7) {
            return a[i - 1];
        }
        throw new d("Invalid value for DayOfWeek: " + i);
    }

    @Override // j$.time.temporal.n
    public final boolean e(j$.time.temporal.r rVar) {
        return rVar instanceof j$.time.temporal.a ? rVar == j$.time.temporal.a.DAY_OF_WEEK : rVar != null && rVar.i(this);
    }

    public final int getValue() {
        return ordinal() + 1;
    }

    @Override // j$.time.temporal.n
    public final int i(j$.time.temporal.r rVar) {
        return rVar == j$.time.temporal.a.DAY_OF_WEEK ? getValue() : j$.time.temporal.q.a(this, rVar);
    }

    @Override // j$.time.temporal.n
    public final j$.time.temporal.w k(j$.time.temporal.r rVar) {
        return rVar == j$.time.temporal.a.DAY_OF_WEEK ? rVar.k() : j$.time.temporal.q.d(this, rVar);
    }

    @Override // j$.time.temporal.o
    public final j$.time.temporal.m n(j$.time.temporal.m mVar) {
        return mVar.c(getValue(), j$.time.temporal.a.DAY_OF_WEEK);
    }

    @Override // j$.time.temporal.n
    public final long v(j$.time.temporal.r rVar) {
        if (rVar == j$.time.temporal.a.DAY_OF_WEEK) {
            return getValue();
        }
        if (rVar instanceof j$.time.temporal.a) {
            throw new j$.time.temporal.v(e.a("Unsupported field: ", rVar));
        }
        return rVar.n(this);
    }

    @Override // j$.time.temporal.n
    public final Object y(j$.time.temporal.t tVar) {
        return tVar == j$.time.temporal.q.i() ? j$.time.temporal.b.DAYS : j$.time.temporal.q.c(this, tVar);
    }
}
