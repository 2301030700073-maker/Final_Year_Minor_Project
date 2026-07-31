package j$.time.chrono;

import j$.time.DateTimeException;
import j$.time.DayOfWeek;
import j$.time.Instant;
import j$.time.LocalTime;
import j$.time.ZoneId;
import j$.time.temporal.ChronoField;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.TemporalAccessor;
import j$.time.temporal.TemporalField;
import j$.time.temporal.TemporalUnit;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Locale;
import java.util.Map;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public abstract class a implements j {
    public static final ConcurrentHashMap a = new ConcurrentHashMap();
    public static final ConcurrentHashMap b = new ConcurrentHashMap();

    static {
        new Locale("ja", "JP", "JP");
    }

    public static void k(Map map, ChronoField chronoField, long j) {
        Long l = (Long) map.get(chronoField);
        if (l == null || l.longValue() == j) {
            map.put(chronoField, Long.valueOf(j));
            return;
        }
        throw new DateTimeException("Conflict found: " + chronoField + " " + l + " differs from " + chronoField + " " + j);
    }

    public static j n(j jVar, String str) {
        String p;
        j jVar2 = (j) a.putIfAbsent(str, jVar);
        if (jVar2 == null && (p = jVar.p()) != null) {
            b.putIfAbsent(p, jVar);
        }
        return jVar2;
    }

    public static ChronoLocalDate u(ChronoLocalDate chronoLocalDate, long j, long j2, long j3) {
        long j4;
        ChronoLocalDate c = chronoLocalDate.c(j, (TemporalUnit) ChronoUnit.MONTHS);
        ChronoUnit chronoUnit = ChronoUnit.WEEKS;
        ChronoLocalDate c2 = c.c(j2, (TemporalUnit) chronoUnit);
        if (j3 <= 7) {
            if (j3 < 1) {
                c2 = c2.c(j$.com.android.tools.r8.a.S(j3, 7L) / 7, (TemporalUnit) chronoUnit);
                j4 = (j3 + 6) % 7;
            }
            return c2.m(new j$.time.temporal.l(DayOfWeek.U((int) j3).getValue(), 0));
        }
        long j5 = j3 - 1;
        c2 = c2.c(j5 / 7, (TemporalUnit) chronoUnit);
        j4 = j5 % 7;
        j3 = j4 + 1;
        return c2.m(new j$.time.temporal.l(DayOfWeek.U((int) j3).getValue(), 0));
    }

    public void F(Map map, j$.time.format.v vVar) {
        ChronoField chronoField = ChronoField.PROLEPTIC_MONTH;
        Long l = (Long) map.remove(chronoField);
        if (l != null) {
            if (vVar != j$.time.format.v.LENIENT) {
                chronoField.L(l.longValue());
            }
            ChronoLocalDate b2 = m().b(1L, (TemporalField) ChronoField.DAY_OF_MONTH).b(l.longValue(), (TemporalField) chronoField);
            k(map, ChronoField.MONTH_OF_YEAR, b2.k(r6));
            k(map, ChronoField.YEAR, b2.k(r6));
        }
    }

    public ChronoLocalDate J(Map map, j$.time.format.v vVar) {
        ChronoField chronoField = ChronoField.YEAR;
        int a2 = x(chronoField).a(((Long) map.remove(chronoField)).longValue(), chronoField);
        if (vVar == j$.time.format.v.LENIENT) {
            long S = j$.com.android.tools.r8.a.S(((Long) map.remove(ChronoField.MONTH_OF_YEAR)).longValue(), 1L);
            return P(a2, 1, 1).c(S, (TemporalUnit) ChronoUnit.MONTHS).c(j$.com.android.tools.r8.a.S(((Long) map.remove(ChronoField.DAY_OF_MONTH)).longValue(), 1L), (TemporalUnit) ChronoUnit.DAYS);
        }
        ChronoField chronoField2 = ChronoField.MONTH_OF_YEAR;
        int a3 = x(chronoField2).a(((Long) map.remove(chronoField2)).longValue(), chronoField2);
        ChronoField chronoField3 = ChronoField.DAY_OF_MONTH;
        int a4 = x(chronoField3).a(((Long) map.remove(chronoField3)).longValue(), chronoField3);
        if (vVar != j$.time.format.v.SMART) {
            return P(a2, a3, a4);
        }
        try {
            return P(a2, a3, a4);
        } catch (DateTimeException unused) {
            return this.P(a2, a3, 1).m(new j$.desugar.sun.nio.fs.m(6));
        }
    }

    public ChronoLocalDate L(Map map, j$.time.format.v vVar) {
        int i;
        ChronoField chronoField = ChronoField.YEAR_OF_ERA;
        Long l = (Long) map.remove(chronoField);
        if (l == null) {
            ChronoField chronoField2 = ChronoField.ERA;
            if (!map.containsKey(chronoField2)) {
                return null;
            }
            x(chronoField2).b(((Long) map.get(chronoField2)).longValue(), chronoField2);
            return null;
        }
        Long l2 = (Long) map.remove(ChronoField.ERA);
        if (vVar != j$.time.format.v.LENIENT) {
            i = x(chronoField).a(l.longValue(), chronoField);
        } else {
            long longValue = l.longValue();
            int i2 = (int) longValue;
            if (longValue != i2) {
                throw new ArithmeticException();
            }
            i = i2;
        }
        if (l2 != null) {
            k(map, ChronoField.YEAR, C(A(x(r2).a(l2.longValue(), r2)), i));
            return null;
        }
        ChronoField chronoField3 = ChronoField.YEAR;
        if (map.containsKey(chronoField3)) {
            k(map, chronoField3, C(s(x(chronoField3).a(((Long) map.get(chronoField3)).longValue(), chronoField3), 1).N(), i));
            return null;
        }
        if (vVar == j$.time.format.v.STRICT) {
            map.put(chronoField, l);
            return null;
        }
        if (z().isEmpty()) {
            k(map, chronoField3, i);
            return null;
        }
        k(map, chronoField3, C((k) r11.get(r11.size() - 1), i));
        return null;
    }

    @Override // j$.time.chrono.j
    public ChronoLocalDateTime M(TemporalAccessor temporalAccessor) {
        try {
            return H(temporalAccessor).K(LocalTime.V(temporalAccessor));
        } catch (DateTimeException e) {
            throw new DateTimeException("Unable to obtain ChronoLocalDateTime from TemporalAccessor: " + temporalAccessor.getClass(), e);
        }
    }

    @Override // j$.time.chrono.j
    public ChronoLocalDate R(Map map, j$.time.format.v vVar) {
        ChronoField chronoField = ChronoField.EPOCH_DAY;
        if (map.containsKey(chronoField)) {
            return h(((Long) map.remove(chronoField)).longValue());
        }
        F(map, vVar);
        ChronoLocalDate L = L(map, vVar);
        if (L != null) {
            return L;
        }
        ChronoField chronoField2 = ChronoField.YEAR;
        if (map.containsKey(chronoField2)) {
            ChronoField chronoField3 = ChronoField.MONTH_OF_YEAR;
            if (map.containsKey(chronoField3)) {
                if (map.containsKey(ChronoField.DAY_OF_MONTH)) {
                    return J(map, vVar);
                }
                ChronoField chronoField4 = ChronoField.ALIGNED_WEEK_OF_MONTH;
                if (map.containsKey(chronoField4)) {
                    ChronoField chronoField5 = ChronoField.ALIGNED_DAY_OF_WEEK_IN_MONTH;
                    if (map.containsKey(chronoField5)) {
                        int a2 = x(chronoField2).a(((Long) map.remove(chronoField2)).longValue(), chronoField2);
                        if (vVar == j$.time.format.v.LENIENT) {
                            long S = j$.com.android.tools.r8.a.S(((Long) map.remove(chronoField3)).longValue(), 1L);
                            return P(a2, 1, 1).c(S, (TemporalUnit) ChronoUnit.MONTHS).c(j$.com.android.tools.r8.a.S(((Long) map.remove(chronoField4)).longValue(), 1L), (TemporalUnit) ChronoUnit.WEEKS).c(j$.com.android.tools.r8.a.S(((Long) map.remove(chronoField5)).longValue(), 1L), (TemporalUnit) ChronoUnit.DAYS);
                        }
                        int a3 = x(chronoField3).a(((Long) map.remove(chronoField3)).longValue(), chronoField3);
                        int a4 = x(chronoField4).a(((Long) map.remove(chronoField4)).longValue(), chronoField4);
                        ChronoLocalDate c = P(a2, a3, 1).c((x(chronoField5).a(((Long) map.remove(chronoField5)).longValue(), chronoField5) - 1) + ((a4 - 1) * 7), (TemporalUnit) ChronoUnit.DAYS);
                        if (vVar != j$.time.format.v.STRICT || c.k(chronoField3) == a3) {
                            return c;
                        }
                        j$.nio.file.j.k("Strict mode rejected resolved date as it is in a different month");
                        return null;
                    }
                    ChronoField chronoField6 = ChronoField.DAY_OF_WEEK;
                    if (map.containsKey(chronoField6)) {
                        int a5 = x(chronoField2).a(((Long) map.remove(chronoField2)).longValue(), chronoField2);
                        if (vVar == j$.time.format.v.LENIENT) {
                            return u(P(a5, 1, 1), j$.com.android.tools.r8.a.S(((Long) map.remove(chronoField3)).longValue(), 1L), j$.com.android.tools.r8.a.S(((Long) map.remove(chronoField4)).longValue(), 1L), j$.com.android.tools.r8.a.S(((Long) map.remove(chronoField6)).longValue(), 1L));
                        }
                        int a6 = x(chronoField3).a(((Long) map.remove(chronoField3)).longValue(), chronoField3);
                        ChronoLocalDate m = P(a5, a6, 1).c((x(chronoField4).a(((Long) map.remove(chronoField4)).longValue(), chronoField4) - 1) * 7, (TemporalUnit) ChronoUnit.DAYS).m(new j$.time.temporal.l(DayOfWeek.U(x(chronoField6).a(((Long) map.remove(chronoField6)).longValue(), chronoField6)).getValue(), 0));
                        if (vVar != j$.time.format.v.STRICT || m.k(chronoField3) == a6) {
                            return m;
                        }
                        j$.nio.file.j.k("Strict mode rejected resolved date as it is in a different month");
                        return null;
                    }
                }
            }
            ChronoField chronoField7 = ChronoField.DAY_OF_YEAR;
            if (map.containsKey(chronoField7)) {
                int a7 = x(chronoField2).a(((Long) map.remove(chronoField2)).longValue(), chronoField2);
                if (vVar != j$.time.format.v.LENIENT) {
                    return s(a7, x(chronoField7).a(((Long) map.remove(chronoField7)).longValue(), chronoField7));
                }
                return s(a7, 1).c(j$.com.android.tools.r8.a.S(((Long) map.remove(chronoField7)).longValue(), 1L), (TemporalUnit) ChronoUnit.DAYS);
            }
            ChronoField chronoField8 = ChronoField.ALIGNED_WEEK_OF_YEAR;
            if (map.containsKey(chronoField8)) {
                ChronoField chronoField9 = ChronoField.ALIGNED_DAY_OF_WEEK_IN_YEAR;
                if (map.containsKey(chronoField9)) {
                    int a8 = x(chronoField2).a(((Long) map.remove(chronoField2)).longValue(), chronoField2);
                    if (vVar == j$.time.format.v.LENIENT) {
                        return s(a8, 1).c(j$.com.android.tools.r8.a.S(((Long) map.remove(chronoField8)).longValue(), 1L), (TemporalUnit) ChronoUnit.WEEKS).c(j$.com.android.tools.r8.a.S(((Long) map.remove(chronoField9)).longValue(), 1L), (TemporalUnit) ChronoUnit.DAYS);
                    }
                    int a9 = x(chronoField8).a(((Long) map.remove(chronoField8)).longValue(), chronoField8);
                    ChronoLocalDate c2 = s(a8, 1).c((x(chronoField9).a(((Long) map.remove(chronoField9)).longValue(), chronoField9) - 1) + ((a9 - 1) * 7), (TemporalUnit) ChronoUnit.DAYS);
                    if (vVar != j$.time.format.v.STRICT || c2.k(chronoField2) == a8) {
                        return c2;
                    }
                    j$.nio.file.j.k("Strict mode rejected resolved date as it is in a different year");
                    return null;
                }
                ChronoField chronoField10 = ChronoField.DAY_OF_WEEK;
                if (map.containsKey(chronoField10)) {
                    int a10 = x(chronoField2).a(((Long) map.remove(chronoField2)).longValue(), chronoField2);
                    if (vVar == j$.time.format.v.LENIENT) {
                        return u(s(a10, 1), 0L, j$.com.android.tools.r8.a.S(((Long) map.remove(chronoField8)).longValue(), 1L), j$.com.android.tools.r8.a.S(((Long) map.remove(chronoField10)).longValue(), 1L));
                    }
                    ChronoLocalDate m2 = s(a10, 1).c((x(chronoField8).a(((Long) map.remove(chronoField8)).longValue(), chronoField8) - 1) * 7, (TemporalUnit) ChronoUnit.DAYS).m(new j$.time.temporal.l(DayOfWeek.U(x(chronoField10).a(((Long) map.remove(chronoField10)).longValue(), chronoField10)).getValue(), 0));
                    if (vVar != j$.time.format.v.STRICT || m2.k(chronoField2) == a10) {
                        return m2;
                    }
                    j$.nio.file.j.k("Strict mode rejected resolved date as it is in a different year");
                    return null;
                }
            }
        }
        return null;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return i().compareTo(((j) obj).i());
    }

    @Override // j$.time.chrono.j
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof a) && i().compareTo(((a) obj).i()) == 0;
    }

    @Override // j$.time.chrono.j
    public final int hashCode() {
        return i().hashCode() ^ getClass().hashCode();
    }

    public abstract /* synthetic */ ChronoLocalDate m();

    @Override // j$.time.chrono.j
    public ChronoZonedDateTime r(TemporalAccessor temporalAccessor) {
        try {
            ZoneId U = ZoneId.U(temporalAccessor);
            try {
                return S(Instant.V(temporalAccessor), U);
            } catch (DateTimeException unused) {
                return i.U(U, null, e.U(this, this.M(temporalAccessor)));
            }
        } catch (DateTimeException e) {
            throw new DateTimeException("Unable to obtain ChronoZonedDateTime from TemporalAccessor: " + temporalAccessor.getClass(), e);
        }
    }

    @Override // j$.time.chrono.j
    public final String toString() {
        return i();
    }
}
