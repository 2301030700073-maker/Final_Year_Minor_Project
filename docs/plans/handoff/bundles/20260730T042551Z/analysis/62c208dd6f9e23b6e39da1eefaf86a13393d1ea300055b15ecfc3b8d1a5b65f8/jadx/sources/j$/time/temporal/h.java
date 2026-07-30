package j$.time.temporal;

import j$.time.AbstractC2959a;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
abstract class h implements r {
    public static final h DAY_OF_QUARTER;
    public static final h QUARTER_OF_YEAR;
    public static final h WEEK_BASED_YEAR;
    public static final h WEEK_OF_WEEK_BASED_YEAR;
    private static final int[] a;
    private static final /* synthetic */ h[] b;

    static {
        h hVar = new h() { // from class: j$.time.temporal.d
            @Override // j$.time.temporal.r
            public final boolean i(n nVar) {
                return nVar.e(a.DAY_OF_YEAR) && nVar.e(a.MONTH_OF_YEAR) && nVar.e(a.YEAR) && j.a(nVar);
            }

            @Override // j$.time.temporal.r
            public final w j(n nVar) {
                if (!i(nVar)) {
                    throw new v("Unsupported field: DayOfQuarter");
                }
                long v = nVar.v(h.QUARTER_OF_YEAR);
                if (v != 1) {
                    return v == 2 ? w.j(1L, 91L) : (v == 3 || v == 4) ? w.j(1L, 92L) : k();
                }
                long v2 = nVar.v(a.YEAR);
                j$.time.chrono.u.d.getClass();
                return j$.time.chrono.u.n(v2) ? w.j(1L, 91L) : w.j(1L, 90L);
            }

            @Override // j$.time.temporal.r
            public final w k() {
                return w.k(90L, 92L);
            }

            @Override // j$.time.temporal.r
            public final long n(n nVar) {
                int[] iArr;
                if (!i(nVar)) {
                    throw new v("Unsupported field: DayOfQuarter");
                }
                int i = nVar.i(a.DAY_OF_YEAR);
                int i2 = nVar.i(a.MONTH_OF_YEAR);
                long v = nVar.v(a.YEAR);
                iArr = h.a;
                int i3 = (i2 - 1) / 3;
                j$.time.chrono.u.d.getClass();
                return i - iArr[i3 + (j$.time.chrono.u.n(v) ? 4 : 0)];
            }

            @Override // j$.time.temporal.r
            public final m r(m mVar, long j) {
                long n = n(mVar);
                k().b(j, this);
                a aVar = a.DAY_OF_YEAR;
                return mVar.c((j - n) + mVar.v(aVar), aVar);
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "DayOfQuarter";
            }
        };
        DAY_OF_QUARTER = hVar;
        h hVar2 = new h() { // from class: j$.time.temporal.e
            @Override // j$.time.temporal.r
            public final boolean i(n nVar) {
                return nVar.e(a.MONTH_OF_YEAR) && j.a(nVar);
            }

            @Override // j$.time.temporal.r
            public final w j(n nVar) {
                if (i(nVar)) {
                    return k();
                }
                throw new v("Unsupported field: QuarterOfYear");
            }

            @Override // j$.time.temporal.r
            public final w k() {
                return w.j(1L, 4L);
            }

            @Override // j$.time.temporal.r
            public final long n(n nVar) {
                if (i(nVar)) {
                    return (nVar.v(a.MONTH_OF_YEAR) + 2) / 3;
                }
                throw new v("Unsupported field: QuarterOfYear");
            }

            @Override // j$.time.temporal.r
            public final m r(m mVar, long j) {
                long n = n(mVar);
                k().b(j, this);
                a aVar = a.MONTH_OF_YEAR;
                return mVar.c(((j - n) * 3) + mVar.v(aVar), aVar);
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "QuarterOfYear";
            }
        };
        QUARTER_OF_YEAR = hVar2;
        h hVar3 = new h() { // from class: j$.time.temporal.f
            @Override // j$.time.temporal.r
            public final boolean i(n nVar) {
                return nVar.e(a.EPOCH_DAY) && j.a(nVar);
            }

            @Override // j$.time.temporal.r
            public final w j(n nVar) {
                if (i(nVar)) {
                    return h.F(j$.time.i.F(nVar));
                }
                throw new v("Unsupported field: WeekOfWeekBasedYear");
            }

            @Override // j$.time.temporal.r
            public final w k() {
                return w.k(52L, 53L);
            }

            @Override // j$.time.temporal.r
            public final long n(n nVar) {
                if (i(nVar)) {
                    return h.y(j$.time.i.F(nVar));
                }
                throw new v("Unsupported field: WeekOfWeekBasedYear");
            }

            @Override // j$.time.temporal.r
            public final m r(m mVar, long j) {
                k().b(j, this);
                return mVar.d(AbstractC2959a.j(j, n(mVar)), b.WEEKS);
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "WeekOfWeekBasedYear";
            }
        };
        WEEK_OF_WEEK_BASED_YEAR = hVar3;
        h hVar4 = new h() { // from class: j$.time.temporal.g
            @Override // j$.time.temporal.r
            public final boolean i(n nVar) {
                return nVar.e(a.EPOCH_DAY) && j.a(nVar);
            }

            @Override // j$.time.temporal.r
            public final w j(n nVar) {
                if (i(nVar)) {
                    return k();
                }
                throw new v("Unsupported field: WeekBasedYear");
            }

            @Override // j$.time.temporal.r
            public final w k() {
                return a.YEAR.k();
            }

            @Override // j$.time.temporal.r
            public final long n(n nVar) {
                int G;
                if (!i(nVar)) {
                    throw new v("Unsupported field: WeekBasedYear");
                }
                G = h.G(j$.time.i.F(nVar));
                return G;
            }

            @Override // j$.time.temporal.r
            public final m r(m mVar, long j) {
                int H;
                if (!i(mVar)) {
                    throw new v("Unsupported field: WeekBasedYear");
                }
                int a2 = k().a(j, h.WEEK_BASED_YEAR);
                j$.time.i F = j$.time.i.F(mVar);
                int i = F.i(a.DAY_OF_WEEK);
                int y = h.y(F);
                if (y == 53) {
                    H = h.H(a2);
                    if (H == 52) {
                        y = 52;
                    }
                }
                return mVar.j(j$.time.i.O(a2, 1, 4).S(((y - 1) * 7) + (i - r6.i(r0))));
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "WeekBasedYear";
            }
        };
        WEEK_BASED_YEAR = hVar4;
        b = new h[]{hVar, hVar2, hVar3, hVar4};
        a = new int[]{0, 90, 181, 273, 0, 91, 182, 274};
    }

    h(String str, int i) {
    }

    static w F(j$.time.i iVar) {
        return w.j(1L, H(G(iVar)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int G(j$.time.i iVar) {
        int K = iVar.K();
        int I = iVar.I();
        if (I <= 3) {
            return I - iVar.H().ordinal() < -2 ? K - 1 : K;
        }
        if (I >= 363) {
            return ((I - 363) - (iVar.M() ? 1 : 0)) - iVar.H().ordinal() >= 0 ? K + 1 : K;
        }
        return K;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int H(int i) {
        j$.time.i O = j$.time.i.O(i, 1, 1);
        if (O.H() != j$.time.f.THURSDAY) {
            return (O.H() == j$.time.f.WEDNESDAY && O.M()) ? 53 : 52;
        }
        return 53;
    }

    public static h valueOf(String str) {
        return (h) Enum.valueOf(h.class, str);
    }

    public static h[] values() {
        return (h[]) b.clone();
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0056, code lost:
    
        if ((r0 == -3 || (r0 == -2 && r5.M())) == false) goto L20;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static int y(j$.time.i r5) {
        /*
            j$.time.f r0 = r5.H()
            int r0 = r0.ordinal()
            int r1 = r5.I()
            r2 = 1
            int r1 = r1 - r2
            int r0 = 3 - r0
            int r0 = r0 + r1
            int r3 = r0 / 7
            int r3 = r3 * 7
            int r0 = r0 - r3
            r3 = -3
            int r0 = r0 + r3
            if (r0 >= r3) goto L1c
            int r0 = r0 + 7
        L1c:
            if (r1 >= r0) goto L3f
            r0 = 180(0xb4, float:2.52E-43)
            j$.time.i r5 = r5.Y(r0)
            r0 = -1
            j$.time.i r5 = r5.U(r0)
            int r5 = G(r5)
            int r5 = H(r5)
            long r0 = (long) r5
            r2 = 1
            j$.time.temporal.w r5 = j$.time.temporal.w.j(r2, r0)
            long r0 = r5.d()
            int r5 = (int) r0
            goto L5b
        L3f:
            int r1 = r1 - r0
            int r1 = r1 / 7
            int r1 = r1 + r2
            r4 = 53
            if (r1 != r4) goto L59
            if (r0 == r3) goto L55
            r3 = -2
            if (r0 != r3) goto L53
            boolean r5 = r5.M()
            if (r5 == 0) goto L53
            goto L55
        L53:
            r5 = 0
            goto L56
        L55:
            r5 = 1
        L56:
            if (r5 != 0) goto L59
            goto L5a
        L59:
            r2 = r1
        L5a:
            r5 = r2
        L5b:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: j$.time.temporal.h.y(j$.time.i):int");
    }

    @Override // j$.time.temporal.r
    public final boolean isDateBased() {
        return true;
    }

    @Override // j$.time.temporal.r
    public final boolean isTimeBased() {
        return false;
    }
}
