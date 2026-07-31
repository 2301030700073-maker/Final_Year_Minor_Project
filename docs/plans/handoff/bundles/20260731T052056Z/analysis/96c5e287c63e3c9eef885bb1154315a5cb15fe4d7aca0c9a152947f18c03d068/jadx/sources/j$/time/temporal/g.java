package j$.time.temporal;

import j$.time.DayOfWeek;
import j$.time.LocalDate;
import j$.time.format.d0;
import j$.time.format.e0;
import java.util.HashMap;
import java.util.Map;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes2.dex */
public abstract class g implements n {
    public static final g DAY_OF_QUARTER;
    public static final g QUARTER_OF_YEAR;
    public static final g WEEK_BASED_YEAR;
    public static final g WEEK_OF_WEEK_BASED_YEAR;
    public static final int[] a;
    public static final /* synthetic */ g[] b;

    static {
        g gVar = new g() { // from class: j$.time.temporal.c
            @Override // j$.time.temporal.n
            public final boolean f(TemporalAccessor temporalAccessor) {
                if (!temporalAccessor.c(a.DAY_OF_YEAR) || !temporalAccessor.c(a.MONTH_OF_YEAR) || !temporalAccessor.c(a.YEAR)) {
                    return false;
                }
                g gVar2 = i.a;
                return j$.time.a.N(temporalAccessor).equals(j$.time.chrono.p.c);
            }

            @Override // j$.time.temporal.n
            public final q g(TemporalAccessor temporalAccessor) {
                if (!f(temporalAccessor)) {
                    throw new p("Unsupported field: DayOfQuarter");
                }
                long q = temporalAccessor.q(g.QUARTER_OF_YEAR);
                if (q == 1) {
                    return j$.time.chrono.p.c.isLeapYear(temporalAccessor.q(a.YEAR)) ? q.f(1L, 91L) : q.f(1L, 90L);
                }
                return q == 2 ? q.f(1L, 91L) : (q == 3 || q == 4) ? q.f(1L, 92L) : range();
            }

            @Override // j$.time.temporal.g, j$.time.temporal.n
            public final TemporalAccessor h(Map map, d0 d0Var, e0 e0Var) {
                LocalDate of;
                long j;
                a aVar = a.YEAR;
                HashMap hashMap = (HashMap) map;
                Long l = (Long) hashMap.get(aVar);
                n nVar = g.QUARTER_OF_YEAR;
                Long l2 = (Long) hashMap.get(nVar);
                if (l != null && l2 != null) {
                    int a2 = aVar.b.a(l.longValue(), aVar);
                    long longValue = ((Long) hashMap.get(g.DAY_OF_QUARTER)).longValue();
                    g gVar2 = i.a;
                    if (j$.time.a.N(d0Var).equals(j$.time.chrono.p.c)) {
                        if (e0Var == e0.LENIENT) {
                            of = LocalDate.of(a2, 1, 1).E(j$.time.a.U(j$.time.a.V(l2.longValue(), 1L), 3L));
                            j = j$.time.a.V(longValue, 1L);
                        } else {
                            of = LocalDate.of(a2, ((nVar.range().a(l2.longValue(), nVar) - 1) * 3) + 1, 1);
                            if (longValue < 1 || longValue > 90) {
                                if (e0Var == e0.STRICT) {
                                    g(of).b(longValue, this);
                                } else {
                                    range().b(longValue, this);
                                }
                            }
                            j = longValue - 1;
                        }
                        hashMap.remove(this);
                        hashMap.remove(aVar);
                        hashMap.remove(nVar);
                        return of.plusDays(j);
                    }
                    j$.time.h.k("Resolve requires IsoChronology");
                }
                return null;
            }

            @Override // j$.time.temporal.n
            public final long i(TemporalAccessor temporalAccessor) {
                if (!f(temporalAccessor)) {
                    throw new p("Unsupported field: DayOfQuarter");
                }
                return temporalAccessor.f(a.DAY_OF_YEAR) - g.a[((temporalAccessor.f(a.MONTH_OF_YEAR) - 1) / 3) + (j$.time.chrono.p.c.isLeapYear(temporalAccessor.q(a.YEAR)) ? 4 : 0)];
            }

            @Override // j$.time.temporal.n
            public final Temporal k(Temporal temporal, long j) {
                long i = i(temporal);
                range().b(j, this);
                a aVar = a.DAY_OF_YEAR;
                return temporal.a((j - i) + temporal.q(aVar), aVar);
            }

            @Override // j$.time.temporal.n
            public final q range() {
                return q.g(1L, 90L, 92L);
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "DayOfQuarter";
            }
        };
        DAY_OF_QUARTER = gVar;
        g gVar2 = new g() { // from class: j$.time.temporal.d
            @Override // j$.time.temporal.n
            public final boolean f(TemporalAccessor temporalAccessor) {
                if (!temporalAccessor.c(a.MONTH_OF_YEAR)) {
                    return false;
                }
                g gVar3 = i.a;
                return j$.time.a.N(temporalAccessor).equals(j$.time.chrono.p.c);
            }

            @Override // j$.time.temporal.n
            public final q g(TemporalAccessor temporalAccessor) {
                if (f(temporalAccessor)) {
                    return range();
                }
                throw new p("Unsupported field: QuarterOfYear");
            }

            @Override // j$.time.temporal.n
            public final long i(TemporalAccessor temporalAccessor) {
                if (f(temporalAccessor)) {
                    return (temporalAccessor.q(a.MONTH_OF_YEAR) + 2) / 3;
                }
                throw new p("Unsupported field: QuarterOfYear");
            }

            @Override // j$.time.temporal.n
            public final Temporal k(Temporal temporal, long j) {
                long i = i(temporal);
                range().b(j, this);
                a aVar = a.MONTH_OF_YEAR;
                return temporal.a(((j - i) * 3) + temporal.q(aVar), aVar);
            }

            @Override // j$.time.temporal.n
            public final q range() {
                return q.f(1L, 4L);
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "QuarterOfYear";
            }
        };
        QUARTER_OF_YEAR = gVar2;
        g gVar3 = new g() { // from class: j$.time.temporal.e
            @Override // j$.time.temporal.n
            public final boolean f(TemporalAccessor temporalAccessor) {
                if (!temporalAccessor.c(a.EPOCH_DAY)) {
                    return false;
                }
                g gVar4 = i.a;
                return j$.time.a.N(temporalAccessor).equals(j$.time.chrono.p.c);
            }

            @Override // j$.time.temporal.n
            public final q g(TemporalAccessor temporalAccessor) {
                if (f(temporalAccessor)) {
                    return q.f(1L, g.u(g.q(LocalDate.w(temporalAccessor))));
                }
                throw new p("Unsupported field: WeekOfWeekBasedYear");
            }

            @Override // j$.time.temporal.g, j$.time.temporal.n
            public final TemporalAccessor h(Map map, d0 d0Var, e0 e0Var) {
                LocalDate a2;
                long j;
                n nVar = g.WEEK_BASED_YEAR;
                HashMap hashMap = (HashMap) map;
                Long l = (Long) hashMap.get(nVar);
                a aVar = a.DAY_OF_WEEK;
                Long l2 = (Long) hashMap.get(aVar);
                if (l != null && l2 != null) {
                    int a3 = nVar.range().a(l.longValue(), nVar);
                    long longValue = ((Long) hashMap.get(g.WEEK_OF_WEEK_BASED_YEAR)).longValue();
                    g gVar4 = i.a;
                    if (j$.time.a.N(d0Var).equals(j$.time.chrono.p.c)) {
                        LocalDate of = LocalDate.of(a3, 1, 4);
                        if (e0Var == e0.LENIENT) {
                            long longValue2 = l2.longValue();
                            if (longValue2 > 7) {
                                long j2 = longValue2 - 1;
                                of = of.F(j2 / 7);
                                j = j2 % 7;
                            } else {
                                if (longValue2 < 1) {
                                    of = of.F(j$.time.a.V(longValue2, 7L) / 7);
                                    j = (longValue2 + 6) % 7;
                                }
                                a2 = of.F(j$.time.a.V(longValue, 1L)).a(longValue2, aVar);
                            }
                            longValue2 = j + 1;
                            a2 = of.F(j$.time.a.V(longValue, 1L)).a(longValue2, aVar);
                        } else {
                            int a4 = aVar.b.a(l2.longValue(), aVar);
                            if (longValue < 1 || longValue > 52) {
                                if (e0Var == e0.STRICT) {
                                    q.f(1L, g.u(g.q(of))).b(longValue, this);
                                } else {
                                    range().b(longValue, this);
                                }
                            }
                            a2 = of.F(longValue - 1).a(a4, aVar);
                        }
                        hashMap.remove(this);
                        hashMap.remove(nVar);
                        hashMap.remove(aVar);
                        return a2;
                    }
                    j$.time.h.k("Resolve requires IsoChronology");
                }
                return null;
            }

            @Override // j$.time.temporal.n
            public final long i(TemporalAccessor temporalAccessor) {
                if (f(temporalAccessor)) {
                    return g.o(LocalDate.w(temporalAccessor));
                }
                throw new p("Unsupported field: WeekOfWeekBasedYear");
            }

            @Override // j$.time.temporal.n
            public final Temporal k(Temporal temporal, long j) {
                range().b(j, this);
                return temporal.b(j$.time.a.V(j, i(temporal)), ChronoUnit.WEEKS);
            }

            @Override // j$.time.temporal.n
            public final q range() {
                return q.g(1L, 52L, 53L);
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "WeekOfWeekBasedYear";
            }
        };
        WEEK_OF_WEEK_BASED_YEAR = gVar3;
        g gVar4 = new g() { // from class: j$.time.temporal.f
            @Override // j$.time.temporal.n
            public final boolean f(TemporalAccessor temporalAccessor) {
                if (!temporalAccessor.c(a.EPOCH_DAY)) {
                    return false;
                }
                g gVar5 = i.a;
                return j$.time.a.N(temporalAccessor).equals(j$.time.chrono.p.c);
            }

            @Override // j$.time.temporal.n
            public final q g(TemporalAccessor temporalAccessor) {
                if (f(temporalAccessor)) {
                    return a.YEAR.b;
                }
                throw new p("Unsupported field: WeekBasedYear");
            }

            @Override // j$.time.temporal.n
            public final long i(TemporalAccessor temporalAccessor) {
                if (f(temporalAccessor)) {
                    return g.q(LocalDate.w(temporalAccessor));
                }
                throw new p("Unsupported field: WeekBasedYear");
            }

            @Override // j$.time.temporal.n
            public final Temporal k(Temporal temporal, long j) {
                if (!f(temporal)) {
                    throw new p("Unsupported field: WeekBasedYear");
                }
                int a2 = a.YEAR.b.a(j, g.WEEK_BASED_YEAR);
                LocalDate w = LocalDate.w(temporal);
                int f = w.f(a.DAY_OF_WEEK);
                int o = g.o(w);
                if (o == 53 && g.u(a2) == 52) {
                    o = 52;
                }
                return temporal.n(LocalDate.of(a2, 1, 4).plusDays(((o - 1) * 7) + (f - r3.f(r6))));
            }

            @Override // j$.time.temporal.n
            public final q range() {
                return a.YEAR.b;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "WeekBasedYear";
            }
        };
        WEEK_BASED_YEAR = gVar4;
        b = new g[]{gVar, gVar2, gVar3, gVar4};
        a = new int[]{0, 90, 181, 273, 0, 91, 182, 274};
    }

    public static int o(LocalDate localDate) {
        int ordinal = localDate.getDayOfWeek().ordinal();
        int dayOfYear = localDate.getDayOfYear() - 1;
        int i = (3 - ordinal) + dayOfYear;
        int i2 = i - ((i / 7) * 7);
        int i3 = i2 - 3;
        if (i3 < -3) {
            i3 = i2 + 4;
        }
        if (dayOfYear < i3) {
            if (localDate.getDayOfYear() != 180) {
                localDate = LocalDate.C(localDate.a, 180);
            }
            return (int) q.f(1L, u(q(localDate.minusYears(1L)))).d;
        }
        int i4 = ((dayOfYear - i3) / 7) + 1;
        if (i4 != 53 || i3 == -3 || (i3 == -2 && localDate.isLeapYear())) {
            return i4;
        }
        return 1;
    }

    public static int q(LocalDate localDate) {
        int year = localDate.getYear();
        int dayOfYear = localDate.getDayOfYear();
        if (dayOfYear <= 3) {
            return dayOfYear - localDate.getDayOfWeek().ordinal() < -2 ? year - 1 : year;
        }
        if (dayOfYear >= 363) {
            return ((dayOfYear - 363) - (localDate.isLeapYear() ? 1 : 0)) - localDate.getDayOfWeek().ordinal() >= 0 ? year + 1 : year;
        }
        return year;
    }

    public static int u(int i) {
        LocalDate of = LocalDate.of(i, 1, 1);
        if (of.getDayOfWeek() != DayOfWeek.THURSDAY) {
            return (of.getDayOfWeek() == DayOfWeek.WEDNESDAY && of.isLeapYear()) ? 53 : 52;
        }
        return 53;
    }

    public static g valueOf(String str) {
        return (g) Enum.valueOf(g.class, str);
    }

    public static g[] values() {
        return (g[]) b.clone();
    }

    public TemporalAccessor h(Map map, d0 d0Var, e0 e0Var) {
        return null;
    }

    @Override // j$.time.temporal.n
    public final boolean isDateBased() {
        return true;
    }
}
