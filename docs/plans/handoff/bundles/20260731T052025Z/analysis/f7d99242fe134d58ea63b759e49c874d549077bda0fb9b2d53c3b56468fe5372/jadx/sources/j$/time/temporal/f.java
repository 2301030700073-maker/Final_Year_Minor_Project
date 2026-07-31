package j$.time.temporal;

import j$.time.DayOfWeek;
import j$.time.LocalDate;
import j$.time.chrono.q;
import j$.time.format.u;
import j$.time.format.v;
import java.util.Map;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public abstract class f implements TemporalField {
    public static final f DAY_OF_QUARTER;
    public static final f QUARTER_OF_YEAR;
    public static final f WEEK_BASED_YEAR;
    public static final f WEEK_OF_WEEK_BASED_YEAR;
    public static final int[] a;
    public static final /* synthetic */ f[] b;

    static {
        f fVar = new f() { // from class: j$.time.temporal.b
            @Override // j$.time.temporal.TemporalField
            public final long F(TemporalAccessor temporalAccessor) {
                if (!k(temporalAccessor)) {
                    throw new o("Unsupported field: DayOfQuarter");
                }
                int k = temporalAccessor.k(ChronoField.DAY_OF_YEAR);
                int k2 = temporalAccessor.k(ChronoField.MONTH_OF_YEAR);
                long J = temporalAccessor.J(ChronoField.YEAR);
                int i = (k2 - 1) / 3;
                q.c.getClass();
                return k - f.a[i + (q.U(J) ? 4 : 0)];
            }

            @Override // j$.time.temporal.TemporalField
            public final Temporal J(Temporal temporal, long j) {
                long F = F(temporal);
                u().b(j, this);
                ChronoField chronoField = ChronoField.DAY_OF_YEAR;
                return temporal.b((j - F) + temporal.J(chronoField), chronoField);
            }

            @Override // j$.time.temporal.TemporalField
            public final boolean k(TemporalAccessor temporalAccessor) {
                if (!temporalAccessor.d(ChronoField.DAY_OF_YEAR) || !temporalAccessor.d(ChronoField.MONTH_OF_YEAR) || !temporalAccessor.d(ChronoField.YEAR)) {
                    return false;
                }
                f fVar2 = h.a;
                return j$.com.android.tools.r8.a.A(temporalAccessor).equals(q.c);
            }

            @Override // j$.time.temporal.TemporalField
            public final p m(TemporalAccessor temporalAccessor) {
                if (!k(temporalAccessor)) {
                    throw new o("Unsupported field: DayOfQuarter");
                }
                long J = temporalAccessor.J(f.QUARTER_OF_YEAR);
                if (J != 1) {
                    return J == 2 ? p.f(1L, 91L) : (J == 3 || J == 4) ? p.f(1L, 92L) : u();
                }
                long J2 = temporalAccessor.J(ChronoField.YEAR);
                q.c.getClass();
                return q.U(J2) ? p.f(1L, 91L) : p.f(1L, 90L);
            }

            @Override // j$.time.temporal.f, j$.time.temporal.TemporalField
            public final TemporalAccessor n(Map map, u uVar, v vVar) {
                LocalDate of;
                long j;
                ChronoField chronoField = ChronoField.YEAR;
                Long l = (Long) map.get(chronoField);
                TemporalField temporalField = f.QUARTER_OF_YEAR;
                Long l2 = (Long) map.get(temporalField);
                if (l != null && l2 != null) {
                    int a2 = chronoField.b.a(l.longValue(), chronoField);
                    long longValue = ((Long) map.get(f.DAY_OF_QUARTER)).longValue();
                    f fVar2 = h.a;
                    if (j$.com.android.tools.r8.a.A(uVar).equals(q.c)) {
                        if (vVar == v.LENIENT) {
                            of = LocalDate.of(a2, 1, 1).h0(j$.com.android.tools.r8.a.R(j$.com.android.tools.r8.a.S(l2.longValue(), 1L), 3L));
                            j = j$.com.android.tools.r8.a.S(longValue, 1L);
                        } else {
                            of = LocalDate.of(a2, ((temporalField.u().a(l2.longValue(), temporalField) - 1) * 3) + 1, 1);
                            if (longValue < 1 || longValue > 90) {
                                if (vVar == v.STRICT) {
                                    m(of).b(longValue, this);
                                } else {
                                    u().b(longValue, this);
                                }
                            }
                            j = longValue - 1;
                        }
                        map.remove(this);
                        map.remove(chronoField);
                        map.remove(temporalField);
                        return of.g0(j);
                    }
                    j$.nio.file.j.k("Resolve requires IsoChronology");
                }
                return null;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "DayOfQuarter";
            }

            @Override // j$.time.temporal.TemporalField
            public final p u() {
                return p.g(90L, 92L);
            }
        };
        DAY_OF_QUARTER = fVar;
        f fVar2 = new f() { // from class: j$.time.temporal.c
            @Override // j$.time.temporal.TemporalField
            public final long F(TemporalAccessor temporalAccessor) {
                if (k(temporalAccessor)) {
                    return (temporalAccessor.J(ChronoField.MONTH_OF_YEAR) + 2) / 3;
                }
                throw new o("Unsupported field: QuarterOfYear");
            }

            @Override // j$.time.temporal.TemporalField
            public final Temporal J(Temporal temporal, long j) {
                long F = F(temporal);
                u().b(j, this);
                ChronoField chronoField = ChronoField.MONTH_OF_YEAR;
                return temporal.b(((j - F) * 3) + temporal.J(chronoField), chronoField);
            }

            @Override // j$.time.temporal.TemporalField
            public final boolean k(TemporalAccessor temporalAccessor) {
                if (!temporalAccessor.d(ChronoField.MONTH_OF_YEAR)) {
                    return false;
                }
                f fVar3 = h.a;
                return j$.com.android.tools.r8.a.A(temporalAccessor).equals(q.c);
            }

            @Override // j$.time.temporal.TemporalField
            public final p m(TemporalAccessor temporalAccessor) {
                if (k(temporalAccessor)) {
                    return u();
                }
                throw new o("Unsupported field: QuarterOfYear");
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "QuarterOfYear";
            }

            @Override // j$.time.temporal.TemporalField
            public final p u() {
                return p.f(1L, 4L);
            }
        };
        QUARTER_OF_YEAR = fVar2;
        f fVar3 = new f() { // from class: j$.time.temporal.d
            @Override // j$.time.temporal.TemporalField
            public final long F(TemporalAccessor temporalAccessor) {
                if (k(temporalAccessor)) {
                    return f.L(LocalDate.W(temporalAccessor));
                }
                throw new o("Unsupported field: WeekOfWeekBasedYear");
            }

            @Override // j$.time.temporal.TemporalField
            public final Temporal J(Temporal temporal, long j) {
                u().b(j, this);
                return temporal.c(j$.com.android.tools.r8.a.S(j, F(temporal)), ChronoUnit.WEEKS);
            }

            @Override // j$.time.temporal.TemporalField
            public final boolean k(TemporalAccessor temporalAccessor) {
                if (!temporalAccessor.d(ChronoField.EPOCH_DAY)) {
                    return false;
                }
                f fVar4 = h.a;
                return j$.com.android.tools.r8.a.A(temporalAccessor).equals(q.c);
            }

            @Override // j$.time.temporal.TemporalField
            public final p m(TemporalAccessor temporalAccessor) {
                if (k(temporalAccessor)) {
                    return f.W(LocalDate.W(temporalAccessor));
                }
                throw new o("Unsupported field: WeekOfWeekBasedYear");
            }

            @Override // j$.time.temporal.f, j$.time.temporal.TemporalField
            public final TemporalAccessor n(Map map, u uVar, v vVar) {
                LocalDate b2;
                long j;
                TemporalField temporalField = f.WEEK_BASED_YEAR;
                Long l = (Long) map.get(temporalField);
                ChronoField chronoField = ChronoField.DAY_OF_WEEK;
                Long l2 = (Long) map.get(chronoField);
                if (l != null && l2 != null) {
                    int a2 = temporalField.u().a(l.longValue(), temporalField);
                    long longValue = ((Long) map.get(f.WEEK_OF_WEEK_BASED_YEAR)).longValue();
                    f fVar4 = h.a;
                    if (j$.com.android.tools.r8.a.A(uVar).equals(q.c)) {
                        LocalDate of = LocalDate.of(a2, 1, 4);
                        if (vVar == v.LENIENT) {
                            long longValue2 = l2.longValue();
                            if (longValue2 > 7) {
                                long j2 = longValue2 - 1;
                                of = of.i0(j2 / 7);
                                j = j2 % 7;
                            } else {
                                if (longValue2 < 1) {
                                    of = of.i0(j$.com.android.tools.r8.a.S(longValue2, 7L) / 7);
                                    j = (longValue2 + 6) % 7;
                                }
                                b2 = of.i0(j$.com.android.tools.r8.a.S(longValue, 1L)).b(longValue2, chronoField);
                            }
                            longValue2 = j + 1;
                            b2 = of.i0(j$.com.android.tools.r8.a.S(longValue, 1L)).b(longValue2, chronoField);
                        } else {
                            int a3 = chronoField.b.a(l2.longValue(), chronoField);
                            if (longValue < 1 || longValue > 52) {
                                if (vVar == v.STRICT) {
                                    f.W(of).b(longValue, this);
                                } else {
                                    u().b(longValue, this);
                                }
                            }
                            b2 = of.i0(longValue - 1).b(a3, chronoField);
                        }
                        map.remove(this);
                        map.remove(temporalField);
                        map.remove(chronoField);
                        return b2;
                    }
                    j$.nio.file.j.k("Resolve requires IsoChronology");
                }
                return null;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "WeekOfWeekBasedYear";
            }

            @Override // j$.time.temporal.TemporalField
            public final p u() {
                return p.g(52L, 53L);
            }
        };
        WEEK_OF_WEEK_BASED_YEAR = fVar3;
        f fVar4 = new f() { // from class: j$.time.temporal.e
            @Override // j$.time.temporal.TemporalField
            public final long F(TemporalAccessor temporalAccessor) {
                if (k(temporalAccessor)) {
                    return f.U(LocalDate.W(temporalAccessor));
                }
                throw new o("Unsupported field: WeekBasedYear");
            }

            @Override // j$.time.temporal.TemporalField
            public final Temporal J(Temporal temporal, long j) {
                if (!k(temporal)) {
                    throw new o("Unsupported field: WeekBasedYear");
                }
                int a2 = ChronoField.YEAR.b.a(j, f.WEEK_BASED_YEAR);
                LocalDate W = LocalDate.W(temporal);
                int k = W.k(ChronoField.DAY_OF_WEEK);
                int L = f.L(W);
                if (L == 53 && f.V(a2) == 52) {
                    L = 52;
                }
                return temporal.m(LocalDate.of(a2, 1, 4).g0(((L - 1) * 7) + (k - r3.k(r6))));
            }

            @Override // j$.time.temporal.TemporalField
            public final boolean k(TemporalAccessor temporalAccessor) {
                if (!temporalAccessor.d(ChronoField.EPOCH_DAY)) {
                    return false;
                }
                f fVar5 = h.a;
                return j$.com.android.tools.r8.a.A(temporalAccessor).equals(q.c);
            }

            @Override // j$.time.temporal.TemporalField
            public final p m(TemporalAccessor temporalAccessor) {
                if (k(temporalAccessor)) {
                    return ChronoField.YEAR.b;
                }
                throw new o("Unsupported field: WeekBasedYear");
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "WeekBasedYear";
            }

            @Override // j$.time.temporal.TemporalField
            public final p u() {
                return ChronoField.YEAR.b;
            }
        };
        WEEK_BASED_YEAR = fVar4;
        b = new f[]{fVar, fVar2, fVar3, fVar4};
        a = new int[]{0, 90, 181, 273, 0, 91, 182, 274};
    }

    public static int L(LocalDate localDate) {
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
                localDate = LocalDate.e0(localDate.a, 180);
            }
            return (int) W(localDate.j0(-1L)).d;
        }
        int i4 = ((dayOfYear - i3) / 7) + 1;
        if (i4 != 53 || i3 == -3 || (i3 == -2 && localDate.a0())) {
            return i4;
        }
        return 1;
    }

    public static int U(LocalDate localDate) {
        int year = localDate.getYear();
        int dayOfYear = localDate.getDayOfYear();
        if (dayOfYear <= 3) {
            return dayOfYear - localDate.getDayOfWeek().ordinal() < -2 ? year - 1 : year;
        }
        if (dayOfYear >= 363) {
            return ((dayOfYear - 363) - (localDate.a0() ? 1 : 0)) - localDate.getDayOfWeek().ordinal() >= 0 ? year + 1 : year;
        }
        return year;
    }

    public static int V(int i) {
        LocalDate of = LocalDate.of(i, 1, 1);
        if (of.getDayOfWeek() != DayOfWeek.THURSDAY) {
            return (of.getDayOfWeek() == DayOfWeek.WEDNESDAY && of.a0()) ? 53 : 52;
        }
        return 53;
    }

    public static p W(LocalDate localDate) {
        return p.f(1L, V(U(localDate)));
    }

    public static f valueOf(String str) {
        return (f) Enum.valueOf(f.class, str);
    }

    public static f[] values() {
        return (f[]) b.clone();
    }

    @Override // j$.time.temporal.TemporalField
    public final boolean isDateBased() {
        return true;
    }

    public /* synthetic */ TemporalAccessor n(Map map, u uVar, v vVar) {
        return null;
    }
}
