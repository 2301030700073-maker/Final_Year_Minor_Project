package j$.time.temporal;

import j$.time.LocalDate;
import j$.time.format.d0;
import j$.time.format.e0;
import java.util.Map;
import org.mozilla.javascript.Token;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public abstract class g implements p {
    public static final g DAY_OF_QUARTER;
    public static final g QUARTER_OF_YEAR;
    public static final g WEEK_BASED_YEAR;
    public static final g WEEK_OF_WEEK_BASED_YEAR;
    public static final int[] a;
    public static final /* synthetic */ g[] b;

    static {
        g gVar = new g() { // from class: j$.time.temporal.c
            @Override // j$.time.temporal.p
            public final long F(TemporalAccessor temporalAccessor) {
                if (!k(temporalAccessor)) {
                    throw new r("Unsupported field: DayOfQuarter");
                }
                return temporalAccessor.k(a.DAY_OF_YEAR) - g.a[((temporalAccessor.k(a.MONTH_OF_YEAR) - 1) / 3) + (j$.time.chrono.s.c.Y(temporalAccessor.M(a.YEAR)) ? 4 : 0)];
            }

            @Override // j$.time.temporal.p
            public final l H(l lVar, long j) {
                long F = F(lVar);
                u().b(j, this);
                a aVar = a.DAY_OF_YEAR;
                return lVar.c((j - F) + lVar.M(aVar), aVar);
            }

            @Override // j$.time.temporal.p
            public final boolean k(TemporalAccessor temporalAccessor) {
                if (!temporalAccessor.e(a.DAY_OF_YEAR) || !temporalAccessor.e(a.MONTH_OF_YEAR) || !temporalAccessor.e(a.YEAR)) {
                    return false;
                }
                g gVar2 = i.a;
                return j$.com.android.tools.r8.a.B(temporalAccessor).equals(j$.time.chrono.s.c);
            }

            @Override // j$.time.temporal.p
            public final s n(TemporalAccessor temporalAccessor) {
                if (!k(temporalAccessor)) {
                    throw new r("Unsupported field: DayOfQuarter");
                }
                long M = temporalAccessor.M(g.QUARTER_OF_YEAR);
                if (M == 1) {
                    return j$.time.chrono.s.c.Y(temporalAccessor.M(a.YEAR)) ? s.f(1L, 91L) : s.f(1L, 90L);
                }
                return M == 2 ? s.f(1L, 91L) : (M == 3 || M == 4) ? s.f(1L, 92L) : u();
            }

            @Override // j$.time.temporal.g, j$.time.temporal.p
            public final TemporalAccessor o(Map map, d0 d0Var, e0 e0Var) {
                LocalDate of;
                long j;
                a aVar = a.YEAR;
                Long l = (Long) map.get(aVar);
                p pVar = g.QUARTER_OF_YEAR;
                Long l2 = (Long) map.get(pVar);
                if (l != null && l2 != null) {
                    int a2 = aVar.b.a(l.longValue(), aVar);
                    long longValue = ((Long) map.get(g.DAY_OF_QUARTER)).longValue();
                    g gVar2 = i.a;
                    if (j$.com.android.tools.r8.a.B(d0Var).equals(j$.time.chrono.s.c)) {
                        if (e0Var == e0.LENIENT) {
                            of = LocalDate.of(a2, 1, 1).n0(j$.com.android.tools.r8.a.T(j$.com.android.tools.r8.a.U(l2.longValue(), 1L), 3L));
                            j = j$.com.android.tools.r8.a.U(longValue, 1L);
                        } else {
                            of = LocalDate.of(a2, ((pVar.u().a(l2.longValue(), pVar) - 1) * 3) + 1, 1);
                            if (longValue < 1 || longValue > 90) {
                                if (e0Var == e0.STRICT) {
                                    n(of).b(longValue, this);
                                } else {
                                    u().b(longValue, this);
                                }
                            }
                            j = longValue - 1;
                        }
                        map.remove(this);
                        map.remove(aVar);
                        map.remove(pVar);
                        return of.m0(j);
                    }
                    j$.nio.file.m.k("Resolve requires IsoChronology");
                }
                return null;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "DayOfQuarter";
            }

            @Override // j$.time.temporal.p
            public final s u() {
                return s.g(1L, 90L, 92L);
            }
        };
        DAY_OF_QUARTER = gVar;
        g gVar2 = new g() { // from class: j$.time.temporal.d
            @Override // j$.time.temporal.p
            public final long F(TemporalAccessor temporalAccessor) {
                if (k(temporalAccessor)) {
                    return (temporalAccessor.M(a.MONTH_OF_YEAR) + 2) / 3;
                }
                throw new r("Unsupported field: QuarterOfYear");
            }

            @Override // j$.time.temporal.p
            public final l H(l lVar, long j) {
                long F = F(lVar);
                u().b(j, this);
                a aVar = a.MONTH_OF_YEAR;
                return lVar.c(((j - F) * 3) + lVar.M(aVar), aVar);
            }

            @Override // j$.time.temporal.p
            public final boolean k(TemporalAccessor temporalAccessor) {
                if (!temporalAccessor.e(a.MONTH_OF_YEAR)) {
                    return false;
                }
                g gVar3 = i.a;
                return j$.com.android.tools.r8.a.B(temporalAccessor).equals(j$.time.chrono.s.c);
            }

            @Override // j$.time.temporal.p
            public final s n(TemporalAccessor temporalAccessor) {
                if (k(temporalAccessor)) {
                    return u();
                }
                throw new r("Unsupported field: QuarterOfYear");
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "QuarterOfYear";
            }

            @Override // j$.time.temporal.p
            public final s u() {
                return s.f(1L, 4L);
            }
        };
        QUARTER_OF_YEAR = gVar2;
        g gVar3 = new g() { // from class: j$.time.temporal.e
            @Override // j$.time.temporal.p
            public final long F(TemporalAccessor temporalAccessor) {
                if (k(temporalAccessor)) {
                    return g.M(LocalDate.b0(temporalAccessor));
                }
                throw new r("Unsupported field: WeekOfWeekBasedYear");
            }

            @Override // j$.time.temporal.p
            public final l H(l lVar, long j) {
                u().b(j, this);
                return lVar.d(j$.com.android.tools.r8.a.U(j, F(lVar)), ChronoUnit.WEEKS);
            }

            @Override // j$.time.temporal.p
            public final boolean k(TemporalAccessor temporalAccessor) {
                if (!temporalAccessor.e(a.EPOCH_DAY)) {
                    return false;
                }
                g gVar4 = i.a;
                return j$.com.android.tools.r8.a.B(temporalAccessor).equals(j$.time.chrono.s.c);
            }

            @Override // j$.time.temporal.p
            public final s n(TemporalAccessor temporalAccessor) {
                if (k(temporalAccessor)) {
                    return g.b0(LocalDate.b0(temporalAccessor));
                }
                throw new r("Unsupported field: WeekOfWeekBasedYear");
            }

            @Override // j$.time.temporal.g, j$.time.temporal.p
            public final TemporalAccessor o(Map map, d0 d0Var, e0 e0Var) {
                LocalDate c;
                long j;
                p pVar = g.WEEK_BASED_YEAR;
                Long l = (Long) map.get(pVar);
                a aVar = a.DAY_OF_WEEK;
                Long l2 = (Long) map.get(aVar);
                if (l != null && l2 != null) {
                    int a2 = pVar.u().a(l.longValue(), pVar);
                    long longValue = ((Long) map.get(g.WEEK_OF_WEEK_BASED_YEAR)).longValue();
                    g gVar4 = i.a;
                    if (j$.com.android.tools.r8.a.B(d0Var).equals(j$.time.chrono.s.c)) {
                        LocalDate of = LocalDate.of(a2, 1, 4);
                        if (e0Var == e0.LENIENT) {
                            long longValue2 = l2.longValue();
                            if (longValue2 > 7) {
                                long j2 = longValue2 - 1;
                                of = of.o0(j2 / 7);
                                j = j2 % 7;
                            } else {
                                if (longValue2 < 1) {
                                    of = of.o0(j$.com.android.tools.r8.a.U(longValue2, 7L) / 7);
                                    j = (longValue2 + 6) % 7;
                                }
                                c = of.o0(j$.com.android.tools.r8.a.U(longValue, 1L)).c(longValue2, aVar);
                            }
                            longValue2 = j + 1;
                            c = of.o0(j$.com.android.tools.r8.a.U(longValue, 1L)).c(longValue2, aVar);
                        } else {
                            int a3 = aVar.b.a(l2.longValue(), aVar);
                            if (longValue < 1 || longValue > 52) {
                                if (e0Var == e0.STRICT) {
                                    g.b0(of).b(longValue, this);
                                } else {
                                    u().b(longValue, this);
                                }
                            }
                            c = of.o0(longValue - 1).c(a3, aVar);
                        }
                        map.remove(this);
                        map.remove(pVar);
                        map.remove(aVar);
                        return c;
                    }
                    j$.nio.file.m.k("Resolve requires IsoChronology");
                }
                return null;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "WeekOfWeekBasedYear";
            }

            @Override // j$.time.temporal.p
            public final s u() {
                return s.g(1L, 52L, 53L);
            }
        };
        WEEK_OF_WEEK_BASED_YEAR = gVar3;
        g gVar4 = new g() { // from class: j$.time.temporal.f
            @Override // j$.time.temporal.p
            public final long F(TemporalAccessor temporalAccessor) {
                if (k(temporalAccessor)) {
                    return g.Z(LocalDate.b0(temporalAccessor));
                }
                throw new r("Unsupported field: WeekBasedYear");
            }

            @Override // j$.time.temporal.p
            public final l H(l lVar, long j) {
                if (!k(lVar)) {
                    throw new r("Unsupported field: WeekBasedYear");
                }
                int a2 = a.YEAR.b.a(j, g.WEEK_BASED_YEAR);
                LocalDate b0 = LocalDate.b0(lVar);
                int k = b0.k(a.DAY_OF_WEEK);
                int M = g.M(b0);
                if (M == 53 && g.a0(a2) == 52) {
                    M = 52;
                }
                return lVar.n(LocalDate.of(a2, 1, 4).m0(((M - 1) * 7) + (k - r3.k(r6))));
            }

            @Override // j$.time.temporal.p
            public final boolean k(TemporalAccessor temporalAccessor) {
                if (!temporalAccessor.e(a.EPOCH_DAY)) {
                    return false;
                }
                g gVar5 = i.a;
                return j$.com.android.tools.r8.a.B(temporalAccessor).equals(j$.time.chrono.s.c);
            }

            @Override // j$.time.temporal.p
            public final s n(TemporalAccessor temporalAccessor) {
                if (k(temporalAccessor)) {
                    return a.YEAR.b;
                }
                throw new r("Unsupported field: WeekBasedYear");
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "WeekBasedYear";
            }

            @Override // j$.time.temporal.p
            public final s u() {
                return a.YEAR.b;
            }
        };
        WEEK_BASED_YEAR = gVar4;
        b = new g[]{gVar, gVar2, gVar3, gVar4};
        a = new int[]{0, 90, Token.TEMPLATE_CHARS, 273, 0, 91, Token.TEMPLATE_LITERAL_SUBST, 274};
    }

    public static int M(LocalDate localDate) {
        int ordinal = localDate.d0().ordinal();
        int e0 = localDate.e0() - 1;
        int i = (3 - ordinal) + e0;
        int i2 = i - ((i / 7) * 7);
        int i3 = i2 - 3;
        if (i3 < -3) {
            i3 = i2 + 4;
        }
        if (e0 < i3) {
            if (localDate.e0() != 180) {
                localDate = LocalDate.k0(localDate.a, 180);
            }
            return (int) b0(localDate.p0(-1L)).d;
        }
        int i4 = ((e0 - i3) / 7) + 1;
        if (i4 != 53 || i3 == -3 || (i3 == -2 && localDate.x())) {
            return i4;
        }
        return 1;
    }

    public static int Z(LocalDate localDate) {
        int i = localDate.a;
        int e0 = localDate.e0();
        if (e0 <= 3) {
            return e0 - localDate.d0().ordinal() < -2 ? i - 1 : i;
        }
        if (e0 >= 363) {
            return ((e0 - 363) - (localDate.x() ? 1 : 0)) - localDate.d0().ordinal() >= 0 ? i + 1 : i;
        }
        return i;
    }

    public static int a0(int i) {
        LocalDate of = LocalDate.of(i, 1, 1);
        if (of.d0() != j$.time.c.THURSDAY) {
            return (of.d0() == j$.time.c.WEDNESDAY && of.x()) ? 53 : 52;
        }
        return 53;
    }

    public static s b0(LocalDate localDate) {
        return s.f(1L, a0(Z(localDate)));
    }

    public static g valueOf(String str) {
        return (g) Enum.valueOf(g.class, str);
    }

    public static g[] values() {
        return (g[]) b.clone();
    }

    @Override // j$.time.temporal.p
    public final boolean isDateBased() {
        return true;
    }

    public /* synthetic */ TemporalAccessor o(Map map, d0 d0Var, e0 e0Var) {
        return null;
    }
}
