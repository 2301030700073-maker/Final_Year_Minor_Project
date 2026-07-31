package j$.time.temporal;

import j$.time.format.d0;
import j$.time.format.e0;
import java.util.Map;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class t implements p {
    public static final s f = s.f(1, 7);
    public static final s g = s.g(0, 4, 6);
    public static final s h = s.g(0, 52, 54);
    public static final s i = s.g(1, 52, 53);
    public final String a;
    public final u b;
    public final TemporalUnit c;
    public final TemporalUnit d;
    public final s e;

    public t(String str, u uVar, TemporalUnit temporalUnit, TemporalUnit temporalUnit2, s sVar) {
        this.a = str;
        this.b = uVar;
        this.c = temporalUnit;
        this.d = temporalUnit2;
        this.e = sVar;
    }

    public static int a(int i2, int i3) {
        return ((i3 - 1) + (i2 + 7)) / 7;
    }

    @Override // j$.time.temporal.p
    public final long F(TemporalAccessor temporalAccessor) {
        int c;
        ChronoUnit chronoUnit = ChronoUnit.WEEKS;
        TemporalUnit temporalUnit = this.d;
        if (temporalUnit == chronoUnit) {
            c = b(temporalAccessor);
        } else if (temporalUnit == ChronoUnit.MONTHS) {
            int b = b(temporalAccessor);
            int k = temporalAccessor.k(a.DAY_OF_MONTH);
            c = a(h(k, b), k);
        } else if (temporalUnit == ChronoUnit.YEARS) {
            int b2 = b(temporalAccessor);
            int k2 = temporalAccessor.k(a.DAY_OF_YEAR);
            c = a(h(k2, b2), k2);
        } else if (temporalUnit == u.h) {
            c = d(temporalAccessor);
        } else {
            if (temporalUnit != ChronoUnit.FOREVER) {
                throw new IllegalStateException("unreachable, rangeUnit: " + temporalUnit + ", this: " + this);
            }
            c = c(temporalAccessor);
        }
        return c;
    }

    @Override // j$.time.temporal.p
    public final l H(l lVar, long j) {
        if (this.e.a(j, this) == lVar.k(this)) {
            return lVar;
        }
        if (this.d != ChronoUnit.FOREVER) {
            return lVar.d(r0 - r1, this.c);
        }
        u uVar = this.b;
        return e(j$.com.android.tools.r8.a.B(lVar), (int) j, lVar.k(uVar.e), lVar.k(uVar.c));
    }

    public final int b(TemporalAccessor temporalAccessor) {
        return q.e(temporalAccessor.k(a.DAY_OF_WEEK) - this.b.a.getValue()) + 1;
    }

    public final int c(TemporalAccessor temporalAccessor) {
        int b = b(temporalAccessor);
        int k = temporalAccessor.k(a.YEAR);
        a aVar = a.DAY_OF_YEAR;
        int k2 = temporalAccessor.k(aVar);
        int h2 = h(k2, b);
        int a = a(h2, k2);
        return a == 0 ? k - 1 : a >= a(h2, ((int) temporalAccessor.o(aVar).d) + this.b.b) ? k + 1 : k;
    }

    public final int d(TemporalAccessor temporalAccessor) {
        int a;
        int b = b(temporalAccessor);
        a aVar = a.DAY_OF_YEAR;
        int k = temporalAccessor.k(aVar);
        int h2 = h(k, b);
        int a2 = a(h2, k);
        return a2 == 0 ? d(j$.com.android.tools.r8.a.B(temporalAccessor).J(temporalAccessor).z(k, ChronoUnit.DAYS)) : (a2 <= 50 || a2 < (a = a(h2, ((int) temporalAccessor.o(aVar).d) + this.b.b))) ? a2 : (a2 - a) + 1;
    }

    public final j$.time.chrono.b e(j$.time.chrono.l lVar, int i2, int i3, int i4) {
        j$.time.chrono.b S = lVar.S(i2, 1, 1);
        int h2 = h(1, b(S));
        int i5 = i4 - 1;
        return S.d(((Math.min(i3, a(h2, S.W() + this.b.b) - 1) - 1) * 7) + i5 + (-h2), (TemporalUnit) ChronoUnit.DAYS);
    }

    public final s f(TemporalAccessor temporalAccessor, a aVar) {
        int h2 = h(temporalAccessor.k(aVar), b(temporalAccessor));
        s o = temporalAccessor.o(aVar);
        return s.f(a(h2, (int) o.a), a(h2, (int) o.d));
    }

    public final s g(TemporalAccessor temporalAccessor) {
        a aVar = a.DAY_OF_YEAR;
        if (!temporalAccessor.e(aVar)) {
            return h;
        }
        int b = b(temporalAccessor);
        int k = temporalAccessor.k(aVar);
        int h2 = h(k, b);
        int a = a(h2, k);
        if (a == 0) {
            return g(j$.com.android.tools.r8.a.B(temporalAccessor).J(temporalAccessor).z(k + 7, ChronoUnit.DAYS));
        }
        return a >= a(h2, this.b.b + ((int) temporalAccessor.o(aVar).d)) ? g(j$.com.android.tools.r8.a.B(temporalAccessor).J(temporalAccessor).d((r0 - k) + 8, (TemporalUnit) ChronoUnit.DAYS)) : s.f(1L, r1 - 1);
    }

    public final int h(int i2, int i3) {
        int e = q.e(i2 - i3);
        return e + 1 > this.b.b ? 7 - e : -e;
    }

    @Override // j$.time.temporal.p
    public final boolean isDateBased() {
        return true;
    }

    @Override // j$.time.temporal.p
    public final boolean k(TemporalAccessor temporalAccessor) {
        if (!temporalAccessor.e(a.DAY_OF_WEEK)) {
            return false;
        }
        ChronoUnit chronoUnit = ChronoUnit.WEEKS;
        TemporalUnit temporalUnit = this.d;
        if (temporalUnit == chronoUnit) {
            return true;
        }
        if (temporalUnit == ChronoUnit.MONTHS) {
            return temporalAccessor.e(a.DAY_OF_MONTH);
        }
        if (temporalUnit == ChronoUnit.YEARS) {
            return temporalAccessor.e(a.DAY_OF_YEAR);
        }
        if (temporalUnit == u.h) {
            return temporalAccessor.e(a.DAY_OF_YEAR);
        }
        if (temporalUnit == ChronoUnit.FOREVER) {
            return temporalAccessor.e(a.YEAR);
        }
        return false;
    }

    @Override // j$.time.temporal.p
    public final s n(TemporalAccessor temporalAccessor) {
        ChronoUnit chronoUnit = ChronoUnit.WEEKS;
        TemporalUnit temporalUnit = this.d;
        if (temporalUnit == chronoUnit) {
            return this.e;
        }
        if (temporalUnit == ChronoUnit.MONTHS) {
            return f(temporalAccessor, a.DAY_OF_MONTH);
        }
        if (temporalUnit == ChronoUnit.YEARS) {
            return f(temporalAccessor, a.DAY_OF_YEAR);
        }
        if (temporalUnit == u.h) {
            return g(temporalAccessor);
        }
        if (temporalUnit == ChronoUnit.FOREVER) {
            return a.YEAR.b;
        }
        throw new IllegalStateException("unreachable, rangeUnit: " + temporalUnit + ", this: " + this);
    }

    @Override // j$.time.temporal.p
    public final TemporalAccessor o(Map map, d0 d0Var, e0 e0Var) {
        j$.time.chrono.b bVar;
        j$.time.chrono.b bVar2;
        j$.time.chrono.b bVar3;
        long longValue = ((Long) map.get(this)).longValue();
        int D = j$.com.android.tools.r8.a.D(longValue);
        ChronoUnit chronoUnit = ChronoUnit.WEEKS;
        s sVar = this.e;
        u uVar = this.b;
        TemporalUnit temporalUnit = this.d;
        if (temporalUnit == chronoUnit) {
            long e = q.e((sVar.a(longValue, this) - 1) + (uVar.a.getValue() - 1)) + 1;
            map.remove(this);
            map.put(a.DAY_OF_WEEK, Long.valueOf(e));
            return null;
        }
        a aVar = a.DAY_OF_WEEK;
        if (!map.containsKey(aVar)) {
            return null;
        }
        int e2 = q.e(aVar.b.a(((Long) map.get(aVar)).longValue(), aVar) - uVar.a.getValue()) + 1;
        j$.time.chrono.l B = j$.com.android.tools.r8.a.B(d0Var);
        a aVar2 = a.YEAR;
        if (!map.containsKey(aVar2)) {
            if ((temporalUnit != u.h && temporalUnit != ChronoUnit.FOREVER) || !map.containsKey(uVar.f) || !map.containsKey(uVar.e)) {
                return null;
            }
            t tVar = uVar.f;
            int a = tVar.e.a(((Long) map.get(tVar)).longValue(), uVar.f);
            if (e0Var == e0.LENIENT) {
                bVar = e(B, a, 1, e2).d(j$.com.android.tools.r8.a.U(((Long) map.get(uVar.e)).longValue(), 1L), (TemporalUnit) chronoUnit);
            } else {
                t tVar2 = uVar.e;
                j$.time.chrono.b e3 = e(B, a, tVar2.e.a(((Long) map.get(tVar2)).longValue(), uVar.e), e2);
                if (e0Var == e0.STRICT && c(e3) != a) {
                    j$.nio.file.m.k("Strict mode rejected resolved date as it is in a different week-based-year");
                    return null;
                }
                bVar = e3;
            }
            map.remove(this);
            map.remove(uVar.f);
            map.remove(uVar.e);
            map.remove(aVar);
            return bVar;
        }
        int a2 = aVar2.b.a(((Long) map.get(aVar2)).longValue(), aVar2);
        ChronoUnit chronoUnit2 = ChronoUnit.MONTHS;
        if (temporalUnit == chronoUnit2) {
            a aVar3 = a.MONTH_OF_YEAR;
            if (map.containsKey(aVar3)) {
                long longValue2 = ((Long) map.get(aVar3)).longValue();
                long j = D;
                if (e0Var == e0.LENIENT) {
                    j$.time.chrono.b d = B.S(a2, 1, 1).d(j$.com.android.tools.r8.a.U(longValue2, 1L), (TemporalUnit) chronoUnit2);
                    int b = b(d);
                    int k = d.k(a.DAY_OF_MONTH);
                    bVar3 = d.d(j$.com.android.tools.r8.a.S(j$.com.android.tools.r8.a.T(j$.com.android.tools.r8.a.U(j, a(h(k, b), k)), 7L), e2 - b(d)), (TemporalUnit) ChronoUnit.DAYS);
                } else {
                    j$.time.chrono.b S = B.S(a2, aVar3.b.a(longValue2, aVar3), 1);
                    long a3 = sVar.a(j, this);
                    int b2 = b(S);
                    int k2 = S.k(a.DAY_OF_MONTH);
                    j$.time.chrono.b d2 = S.d((((int) (a3 - a(h(k2, b2), k2))) * 7) + (e2 - b(S)), (TemporalUnit) ChronoUnit.DAYS);
                    if (e0Var == e0.STRICT && d2.M(aVar3) != longValue2) {
                        j$.nio.file.m.k("Strict mode rejected resolved date as it is in a different month");
                        return null;
                    }
                    bVar3 = d2;
                }
                map.remove(this);
                map.remove(aVar2);
                map.remove(aVar3);
                map.remove(aVar);
                return bVar3;
            }
        }
        if (temporalUnit != ChronoUnit.YEARS) {
            return null;
        }
        long j2 = D;
        j$.time.chrono.b S2 = B.S(a2, 1, 1);
        if (e0Var == e0.LENIENT) {
            int b3 = b(S2);
            int k3 = S2.k(a.DAY_OF_YEAR);
            bVar2 = S2.d(j$.com.android.tools.r8.a.S(j$.com.android.tools.r8.a.T(j$.com.android.tools.r8.a.U(j2, a(h(k3, b3), k3)), 7L), e2 - b(S2)), (TemporalUnit) ChronoUnit.DAYS);
        } else {
            long a4 = sVar.a(j2, this);
            int b4 = b(S2);
            int k4 = S2.k(a.DAY_OF_YEAR);
            j$.time.chrono.b d3 = S2.d((((int) (a4 - a(h(k4, b4), k4))) * 7) + (e2 - b(S2)), (TemporalUnit) ChronoUnit.DAYS);
            if (e0Var == e0.STRICT && d3.M(aVar2) != a2) {
                j$.nio.file.m.k("Strict mode rejected resolved date as it is in a different year");
                return null;
            }
            bVar2 = d3;
        }
        map.remove(this);
        map.remove(aVar2);
        map.remove(aVar);
        return bVar2;
    }

    public final String toString() {
        return this.a + "[" + this.b.toString() + "]";
    }

    @Override // j$.time.temporal.p
    public final s u() {
        return this.e;
    }
}
