package j$.time;

import j$.time.chrono.AbstractC2961a;
import j$.time.chrono.AbstractC2962b;

/* loaded from: classes2.dex */
public enum n implements j$.time.temporal.n, j$.time.temporal.o {
    JANUARY,
    FEBRUARY,
    MARCH,
    APRIL,
    MAY,
    JUNE,
    JULY,
    AUGUST,
    SEPTEMBER,
    OCTOBER,
    NOVEMBER,
    DECEMBER;

    private static final n[] a = values();

    public static n G(int i) {
        if (i >= 1 && i <= 12) {
            return a[i - 1];
        }
        throw new d("Invalid value for MonthOfYear: " + i);
    }

    public final int D(boolean z) {
        switch (m.a[ordinal()]) {
            case 1:
                return 32;
            case 2:
                return (z ? 1 : 0) + 91;
            case 3:
                return (z ? 1 : 0) + 152;
            case 4:
                return (z ? 1 : 0) + 244;
            case 5:
                return (z ? 1 : 0) + 305;
            case 6:
                return 1;
            case 7:
                return (z ? 1 : 0) + 60;
            case 8:
                return (z ? 1 : 0) + 121;
            case 9:
                return (z ? 1 : 0) + 182;
            case 10:
                return (z ? 1 : 0) + 213;
            case 11:
                return (z ? 1 : 0) + 274;
            default:
                return (z ? 1 : 0) + 335;
        }
    }

    public final int E(boolean z) {
        int i = m.a[ordinal()];
        return i != 1 ? (i == 2 || i == 3 || i == 4 || i == 5) ? 30 : 31 : z ? 29 : 28;
    }

    public final int F() {
        int i = m.a[ordinal()];
        if (i != 1) {
            return (i == 2 || i == 3 || i == 4 || i == 5) ? 30 : 31;
        }
        return 29;
    }

    public final n H() {
        return a[((((int) 1) + 12) + ordinal()) % 12];
    }

    @Override // j$.time.temporal.n
    public final boolean e(j$.time.temporal.r rVar) {
        return rVar instanceof j$.time.temporal.a ? rVar == j$.time.temporal.a.MONTH_OF_YEAR : rVar != null && rVar.i(this);
    }

    public final int getValue() {
        return ordinal() + 1;
    }

    @Override // j$.time.temporal.n
    public final int i(j$.time.temporal.r rVar) {
        return rVar == j$.time.temporal.a.MONTH_OF_YEAR ? getValue() : j$.time.temporal.q.a(this, rVar);
    }

    @Override // j$.time.temporal.n
    public final j$.time.temporal.w k(j$.time.temporal.r rVar) {
        return rVar == j$.time.temporal.a.MONTH_OF_YEAR ? rVar.k() : j$.time.temporal.q.d(this, rVar);
    }

    @Override // j$.time.temporal.o
    public final j$.time.temporal.m n(j$.time.temporal.m mVar) {
        if (!((AbstractC2961a) AbstractC2962b.r(mVar)).equals(j$.time.chrono.u.d)) {
            throw new d("Adjustment only supported on ISO date-time");
        }
        return mVar.c(getValue(), j$.time.temporal.a.MONTH_OF_YEAR);
    }

    @Override // j$.time.temporal.n
    public final long v(j$.time.temporal.r rVar) {
        if (rVar == j$.time.temporal.a.MONTH_OF_YEAR) {
            return getValue();
        }
        if (rVar instanceof j$.time.temporal.a) {
            throw new j$.time.temporal.v(e.a("Unsupported field: ", rVar));
        }
        return rVar.n(this);
    }

    @Override // j$.time.temporal.n
    public final Object y(j$.time.temporal.t tVar) {
        return tVar == j$.time.temporal.q.e() ? j$.time.chrono.u.d : tVar == j$.time.temporal.q.i() ? j$.time.temporal.b.MONTHS : j$.time.temporal.q.c(this, tVar);
    }
}
