package j$.time.temporal;

import j$.time.chrono.ChronoLocalDate;
import j$.time.format.d0;
import j$.time.format.e0;
import java.util.HashMap;
import java.util.Map;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes2.dex */
public final class r implements n {
    public static final q f = q.f(1, 7);
    public static final q g = q.g(0, 4, 6);
    public static final q h = q.g(0, 52, 54);
    public static final q i = q.g(1, 52, 53);
    public final String a;
    public final s b;
    public final TemporalUnit c;
    public final TemporalUnit d;
    public final q e;

    public r(String str, s sVar, TemporalUnit temporalUnit, TemporalUnit temporalUnit2, q qVar) {
        this.a = str;
        this.b = sVar;
        this.c = temporalUnit;
        this.d = temporalUnit2;
        this.e = qVar;
    }

    public static int a(int i2, int i3) {
        return ((i3 - 1) + (i2 + 7)) / 7;
    }

    public final int b(TemporalAccessor temporalAccessor) {
        return o.e(temporalAccessor.f(a.DAY_OF_WEEK) - this.b.a.getValue()) + 1;
    }

    public final int c(TemporalAccessor temporalAccessor) {
        int b = b(temporalAccessor);
        int f2 = temporalAccessor.f(a.YEAR);
        a aVar = a.DAY_OF_YEAR;
        int f3 = temporalAccessor.f(aVar);
        int m = m(f3, b);
        int a = a(m, f3);
        return a == 0 ? f2 - 1 : a >= a(m, ((int) temporalAccessor.h(aVar).d) + this.b.b) ? f2 + 1 : f2;
    }

    public final int d(TemporalAccessor temporalAccessor) {
        int a;
        int b = b(temporalAccessor);
        a aVar = a.DAY_OF_YEAR;
        int f2 = temporalAccessor.f(aVar);
        int m = m(f2, b);
        int a2 = a(m, f2);
        return a2 == 0 ? d(j$.time.a.N(temporalAccessor).h(temporalAccessor).o(f2, ChronoUnit.DAYS)) : (a2 <= 50 || a2 < (a = a(m, ((int) temporalAccessor.h(aVar).d) + this.b.b))) ? a2 : (a2 - a) + 1;
    }

    public final ChronoLocalDate e(j$.time.chrono.a aVar, int i2, int i3, int i4) {
        ChronoLocalDate g2 = aVar.g(i2, 1, 1);
        int m = m(1, b(g2));
        int i5 = i4 - 1;
        return g2.b(((Math.min(i3, a(m, g2.lengthOfYear() + this.b.b) - 1) - 1) * 7) + i5 + (-m), (TemporalUnit) ChronoUnit.DAYS);
    }

    @Override // j$.time.temporal.n
    public final boolean f(TemporalAccessor temporalAccessor) {
        if (!temporalAccessor.c(a.DAY_OF_WEEK)) {
            return false;
        }
        ChronoUnit chronoUnit = ChronoUnit.WEEKS;
        TemporalUnit temporalUnit = this.d;
        if (temporalUnit == chronoUnit) {
            return true;
        }
        if (temporalUnit == ChronoUnit.MONTHS) {
            return temporalAccessor.c(a.DAY_OF_MONTH);
        }
        if (temporalUnit == ChronoUnit.YEARS) {
            return temporalAccessor.c(a.DAY_OF_YEAR);
        }
        if (temporalUnit == s.h) {
            return temporalAccessor.c(a.DAY_OF_YEAR);
        }
        if (temporalUnit == ChronoUnit.FOREVER) {
            return temporalAccessor.c(a.YEAR);
        }
        return false;
    }

    @Override // j$.time.temporal.n
    public final q g(TemporalAccessor temporalAccessor) {
        ChronoUnit chronoUnit = ChronoUnit.WEEKS;
        TemporalUnit temporalUnit = this.d;
        if (temporalUnit == chronoUnit) {
            return this.e;
        }
        if (temporalUnit == ChronoUnit.MONTHS) {
            return j(temporalAccessor, a.DAY_OF_MONTH);
        }
        if (temporalUnit == ChronoUnit.YEARS) {
            return j(temporalAccessor, a.DAY_OF_YEAR);
        }
        if (temporalUnit == s.h) {
            return l(temporalAccessor);
        }
        if (temporalUnit == ChronoUnit.FOREVER) {
            return a.YEAR.b;
        }
        throw new IllegalStateException("unreachable, rangeUnit: " + temporalUnit + ", this: " + this);
    }

    @Override // j$.time.temporal.n
    public final TemporalAccessor h(Map map, d0 d0Var, e0 e0Var) {
        ChronoLocalDate chronoLocalDate;
        ChronoLocalDate chronoLocalDate2;
        ChronoLocalDate chronoLocalDate3;
        HashMap hashMap = (HashMap) map;
        long longValue = ((Long) hashMap.get(this)).longValue();
        int O = j$.time.a.O(longValue);
        ChronoUnit chronoUnit = ChronoUnit.WEEKS;
        q qVar = this.e;
        s sVar = this.b;
        TemporalUnit temporalUnit = this.d;
        if (temporalUnit == chronoUnit) {
            long e = o.e((qVar.a(longValue, this) - 1) + (sVar.a.getValue() - 1)) + 1;
            hashMap.remove(this);
            hashMap.put(a.DAY_OF_WEEK, Long.valueOf(e));
            return null;
        }
        a aVar = a.DAY_OF_WEEK;
        if (!hashMap.containsKey(aVar)) {
            return null;
        }
        int e2 = o.e(aVar.b.a(((Long) hashMap.get(aVar)).longValue(), aVar) - sVar.a.getValue()) + 1;
        j$.time.chrono.a N = j$.time.a.N(d0Var);
        a aVar2 = a.YEAR;
        if (!hashMap.containsKey(aVar2)) {
            if ((temporalUnit != s.h && temporalUnit != ChronoUnit.FOREVER) || !hashMap.containsKey(sVar.f) || !hashMap.containsKey(sVar.e)) {
                return null;
            }
            r rVar = sVar.f;
            int a = rVar.e.a(((Long) hashMap.get(rVar)).longValue(), sVar.f);
            if (e0Var == e0.LENIENT) {
                chronoLocalDate = e(N, a, 1, e2).b(j$.time.a.V(((Long) hashMap.get(sVar.e)).longValue(), 1L), (TemporalUnit) chronoUnit);
            } else {
                r rVar2 = sVar.e;
                ChronoLocalDate e3 = e(N, a, rVar2.e.a(((Long) hashMap.get(rVar2)).longValue(), sVar.e), e2);
                if (e0Var == e0.STRICT && c(e3) != a) {
                    j$.time.h.k("Strict mode rejected resolved date as it is in a different week-based-year");
                    return null;
                }
                chronoLocalDate = e3;
            }
            hashMap.remove(this);
            hashMap.remove(sVar.f);
            hashMap.remove(sVar.e);
            hashMap.remove(aVar);
            return chronoLocalDate;
        }
        int a2 = aVar2.b.a(((Long) hashMap.get(aVar2)).longValue(), aVar2);
        ChronoUnit chronoUnit2 = ChronoUnit.MONTHS;
        if (temporalUnit == chronoUnit2) {
            a aVar3 = a.MONTH_OF_YEAR;
            if (hashMap.containsKey(aVar3)) {
                long longValue2 = ((Long) hashMap.get(aVar3)).longValue();
                long j = O;
                if (e0Var == e0.LENIENT) {
                    ChronoLocalDate b = N.g(a2, 1, 1).b(j$.time.a.V(longValue2, 1L), (TemporalUnit) chronoUnit2);
                    int b2 = b(b);
                    int f2 = b.f(a.DAY_OF_MONTH);
                    chronoLocalDate3 = b.b(j$.time.a.P(j$.time.a.U(j$.time.a.V(j, a(m(f2, b2), f2)), 7L), e2 - b(b)), (TemporalUnit) ChronoUnit.DAYS);
                } else {
                    ChronoLocalDate g2 = N.g(a2, aVar3.b.a(longValue2, aVar3), 1);
                    long a3 = qVar.a(j, this);
                    int b3 = b(g2);
                    int f3 = g2.f(a.DAY_OF_MONTH);
                    ChronoLocalDate b4 = g2.b((((int) (a3 - a(m(f3, b3), f3))) * 7) + (e2 - b(g2)), (TemporalUnit) ChronoUnit.DAYS);
                    if (e0Var == e0.STRICT && b4.q(aVar3) != longValue2) {
                        j$.time.h.k("Strict mode rejected resolved date as it is in a different month");
                        return null;
                    }
                    chronoLocalDate3 = b4;
                }
                hashMap.remove(this);
                hashMap.remove(aVar2);
                hashMap.remove(aVar3);
                hashMap.remove(aVar);
                return chronoLocalDate3;
            }
        }
        if (temporalUnit != ChronoUnit.YEARS) {
            return null;
        }
        long j2 = O;
        ChronoLocalDate g3 = N.g(a2, 1, 1);
        if (e0Var == e0.LENIENT) {
            int b5 = b(g3);
            int f4 = g3.f(a.DAY_OF_YEAR);
            chronoLocalDate2 = g3.b(j$.time.a.P(j$.time.a.U(j$.time.a.V(j2, a(m(f4, b5), f4)), 7L), e2 - b(g3)), (TemporalUnit) ChronoUnit.DAYS);
        } else {
            long a4 = qVar.a(j2, this);
            int b6 = b(g3);
            int f5 = g3.f(a.DAY_OF_YEAR);
            ChronoLocalDate b7 = g3.b((((int) (a4 - a(m(f5, b6), f5))) * 7) + (e2 - b(g3)), (TemporalUnit) ChronoUnit.DAYS);
            if (e0Var == e0.STRICT && b7.q(aVar2) != a2) {
                j$.time.h.k("Strict mode rejected resolved date as it is in a different year");
                return null;
            }
            chronoLocalDate2 = b7;
        }
        hashMap.remove(this);
        hashMap.remove(aVar2);
        hashMap.remove(aVar);
        return chronoLocalDate2;
    }

    @Override // j$.time.temporal.n
    public final long i(TemporalAccessor temporalAccessor) {
        int c;
        ChronoUnit chronoUnit = ChronoUnit.WEEKS;
        TemporalUnit temporalUnit = this.d;
        if (temporalUnit == chronoUnit) {
            c = b(temporalAccessor);
        } else if (temporalUnit == ChronoUnit.MONTHS) {
            int b = b(temporalAccessor);
            int f2 = temporalAccessor.f(a.DAY_OF_MONTH);
            c = a(m(f2, b), f2);
        } else if (temporalUnit == ChronoUnit.YEARS) {
            int b2 = b(temporalAccessor);
            int f3 = temporalAccessor.f(a.DAY_OF_YEAR);
            c = a(m(f3, b2), f3);
        } else if (temporalUnit == s.h) {
            c = d(temporalAccessor);
        } else {
            if (temporalUnit != ChronoUnit.FOREVER) {
                throw new IllegalStateException("unreachable, rangeUnit: " + temporalUnit + ", this: " + this);
            }
            c = c(temporalAccessor);
        }
        return c;
    }

    @Override // j$.time.temporal.n
    public final boolean isDateBased() {
        return true;
    }

    public final q j(TemporalAccessor temporalAccessor, a aVar) {
        int m = m(temporalAccessor.f(aVar), b(temporalAccessor));
        q h2 = temporalAccessor.h(aVar);
        return q.f(a(m, (int) h2.a), a(m, (int) h2.d));
    }

    @Override // j$.time.temporal.n
    public final Temporal k(Temporal temporal, long j) {
        if (this.e.a(j, this) == temporal.f(this)) {
            return temporal;
        }
        if (this.d != ChronoUnit.FOREVER) {
            return temporal.b(r0 - r1, this.c);
        }
        s sVar = this.b;
        return e(j$.time.a.N(temporal), (int) j, temporal.f(sVar.e), temporal.f(sVar.c));
    }

    public final q l(TemporalAccessor temporalAccessor) {
        a aVar = a.DAY_OF_YEAR;
        if (!temporalAccessor.c(aVar)) {
            return h;
        }
        int b = b(temporalAccessor);
        int f2 = temporalAccessor.f(aVar);
        int m = m(f2, b);
        int a = a(m, f2);
        if (a == 0) {
            return l(j$.time.a.N(temporalAccessor).h(temporalAccessor).o(f2 + 7, ChronoUnit.DAYS));
        }
        return a >= a(m, this.b.b + ((int) temporalAccessor.h(aVar).d)) ? l(j$.time.a.N(temporalAccessor).h(temporalAccessor).b((r0 - f2) + 8, (TemporalUnit) ChronoUnit.DAYS)) : q.f(1L, r1 - 1);
    }

    public final int m(int i2, int i3) {
        int e = o.e(i2 - i3);
        return e + 1 > this.b.b ? 7 - e : -e;
    }

    @Override // j$.time.temporal.n
    public final q range() {
        return this.e;
    }

    public final String toString() {
        return this.a + "[" + this.b.toString() + "]";
    }
}
