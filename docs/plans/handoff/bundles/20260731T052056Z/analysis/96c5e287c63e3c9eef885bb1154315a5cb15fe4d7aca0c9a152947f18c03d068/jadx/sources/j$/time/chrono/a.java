package j$.time.chrono;

import j$.time.DayOfWeek;
import j$.time.Instant;
import j$.time.LocalTime;
import j$.time.ZoneId;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.TemporalAccessor;
import j$.time.temporal.TemporalUnit;
import j$.util.Objects;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.ServiceConfigurationError;
import java.util.ServiceLoader;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes2.dex */
public abstract class a implements Comparable {
    public static final ConcurrentHashMap a = new ConcurrentHashMap();
    public static final ConcurrentHashMap b = new ConcurrentHashMap();

    static {
        new Locale("ja", "JP", "JP");
    }

    public static void f(Map map, j$.time.temporal.a aVar, long j) {
        Long l = (Long) map.get(aVar);
        if (l == null || l.longValue() == j) {
            map.put(aVar, Long.valueOf(j));
            return;
        }
        throw new j$.time.c("Conflict found: " + aVar + " " + l + " differs from " + aVar + " " + j);
    }

    public static a v(String str) {
        Objects.requireNonNull(str, "id");
        while (true) {
            ConcurrentHashMap concurrentHashMap = a;
            a aVar = (a) concurrentHashMap.get(str);
            if (aVar == null) {
                aVar = (a) b.get(str);
            }
            if (aVar != null) {
                return aVar;
            }
            if (concurrentHashMap.get("ISO") != null) {
                Iterator it = ServiceLoader.load(a.class).iterator();
                while (it.hasNext()) {
                    a aVar2 = (a) it.next();
                    if (str.equals(aVar2.getId()) || str.equals(aVar2.getCalendarType())) {
                        return aVar2;
                    }
                }
                j$.time.h.j(str, "Unknown chronology: ");
                return null;
            }
            l lVar = l.l;
            lVar.getClass();
            y(lVar, "Hijrah-umalqura");
            s sVar = s.c;
            sVar.getClass();
            y(sVar, "Japanese");
            x xVar = x.c;
            xVar.getClass();
            y(xVar, "Minguo");
            d0 d0Var = d0.c;
            d0Var.getClass();
            y(d0Var, "ThaiBuddhist");
            try {
                for (a aVar3 : Arrays.asList(new a[0])) {
                    if (!aVar3.getId().equals("ISO")) {
                        y(aVar3, aVar3.getId());
                    }
                }
                p pVar = p.c;
                pVar.getClass();
                y(pVar, "ISO");
            } catch (Throwable th) {
                throw new ServiceConfigurationError(th.getMessage(), th);
            }
        }
    }

    public static a y(a aVar, String str) {
        String calendarType;
        a aVar2 = (a) a.putIfAbsent(str, aVar);
        if (aVar2 == null && (calendarType = aVar.getCalendarType()) != null) {
            b.putIfAbsent(calendarType, aVar);
        }
        return aVar2;
    }

    public static ChronoLocalDate z(ChronoLocalDate chronoLocalDate, long j, long j2, long j3) {
        long j4;
        ChronoLocalDate b2 = chronoLocalDate.b(j, (TemporalUnit) ChronoUnit.MONTHS);
        ChronoUnit chronoUnit = ChronoUnit.WEEKS;
        ChronoLocalDate b3 = b2.b(j2, (TemporalUnit) chronoUnit);
        if (j3 <= 7) {
            if (j3 < 1) {
                b3 = b3.b(j$.time.a.V(j3, 7L) / 7, (TemporalUnit) chronoUnit);
                j4 = (j3 + 6) % 7;
            }
            return b3.n(new j$.time.temporal.l(DayOfWeek.of((int) j3).getValue(), 1));
        }
        long j5 = j3 - 1;
        b3 = b3.b(j5 / 7, (TemporalUnit) chronoUnit);
        j4 = j5 % 7;
        j3 = j4 + 1;
        return b3.n(new j$.time.temporal.l(DayOfWeek.of((int) j3).getValue(), 1));
    }

    public ChronoLocalDate A(Map map, j$.time.format.e0 e0Var) {
        j$.time.temporal.a aVar = j$.time.temporal.a.EPOCH_DAY;
        if (map.containsKey(aVar)) {
            return i(((Long) map.remove(aVar)).longValue());
        }
        B(map, e0Var);
        ChronoLocalDate D = D(map, e0Var);
        if (D != null) {
            return D;
        }
        j$.time.temporal.a aVar2 = j$.time.temporal.a.YEAR;
        if (map.containsKey(aVar2)) {
            j$.time.temporal.a aVar3 = j$.time.temporal.a.MONTH_OF_YEAR;
            int i = 1;
            if (map.containsKey(aVar3)) {
                if (map.containsKey(j$.time.temporal.a.DAY_OF_MONTH)) {
                    return C(map, e0Var);
                }
                j$.time.temporal.a aVar4 = j$.time.temporal.a.ALIGNED_WEEK_OF_MONTH;
                if (map.containsKey(aVar4)) {
                    j$.time.temporal.a aVar5 = j$.time.temporal.a.ALIGNED_DAY_OF_WEEK_IN_MONTH;
                    if (map.containsKey(aVar5)) {
                        int a2 = x(aVar2).a(((Long) map.remove(aVar2)).longValue(), aVar2);
                        if (e0Var == j$.time.format.e0.LENIENT) {
                            long V = j$.time.a.V(((Long) map.remove(aVar3)).longValue(), 1L);
                            return g(a2, 1, 1).b(V, (TemporalUnit) ChronoUnit.MONTHS).b(j$.time.a.V(((Long) map.remove(aVar4)).longValue(), 1L), (TemporalUnit) ChronoUnit.WEEKS).b(j$.time.a.V(((Long) map.remove(aVar5)).longValue(), 1L), (TemporalUnit) ChronoUnit.DAYS);
                        }
                        int a3 = x(aVar3).a(((Long) map.remove(aVar3)).longValue(), aVar3);
                        int a4 = x(aVar4).a(((Long) map.remove(aVar4)).longValue(), aVar4);
                        ChronoLocalDate b2 = g(a2, a3, 1).b((x(aVar5).a(((Long) map.remove(aVar5)).longValue(), aVar5) - 1) + ((a4 - 1) * 7), (TemporalUnit) ChronoUnit.DAYS);
                        if (e0Var != j$.time.format.e0.STRICT || b2.f(aVar3) == a3) {
                            return b2;
                        }
                        j$.time.h.k("Strict mode rejected resolved date as it is in a different month");
                        return null;
                    }
                    j$.time.temporal.a aVar6 = j$.time.temporal.a.DAY_OF_WEEK;
                    if (map.containsKey(aVar6)) {
                        int a5 = x(aVar2).a(((Long) map.remove(aVar2)).longValue(), aVar2);
                        if (e0Var == j$.time.format.e0.LENIENT) {
                            return z(g(a5, 1, 1), j$.time.a.V(((Long) map.remove(aVar3)).longValue(), 1L), j$.time.a.V(((Long) map.remove(aVar4)).longValue(), 1L), j$.time.a.V(((Long) map.remove(aVar6)).longValue(), 1L));
                        }
                        int a6 = x(aVar3).a(((Long) map.remove(aVar3)).longValue(), aVar3);
                        ChronoLocalDate n = g(a5, a6, 1).b((x(aVar4).a(((Long) map.remove(aVar4)).longValue(), aVar4) - 1) * 7, (TemporalUnit) ChronoUnit.DAYS).n(new j$.time.temporal.l(DayOfWeek.of(x(aVar6).a(((Long) map.remove(aVar6)).longValue(), aVar6)).getValue(), i));
                        if (e0Var != j$.time.format.e0.STRICT || n.f(aVar3) == a6) {
                            return n;
                        }
                        j$.time.h.k("Strict mode rejected resolved date as it is in a different month");
                        return null;
                    }
                }
            }
            j$.time.temporal.a aVar7 = j$.time.temporal.a.DAY_OF_YEAR;
            if (map.containsKey(aVar7)) {
                int a7 = x(aVar2).a(((Long) map.remove(aVar2)).longValue(), aVar2);
                if (e0Var != j$.time.format.e0.LENIENT) {
                    return o(a7, x(aVar7).a(((Long) map.remove(aVar7)).longValue(), aVar7));
                }
                return o(a7, 1).b(j$.time.a.V(((Long) map.remove(aVar7)).longValue(), 1L), (TemporalUnit) ChronoUnit.DAYS);
            }
            j$.time.temporal.a aVar8 = j$.time.temporal.a.ALIGNED_WEEK_OF_YEAR;
            if (map.containsKey(aVar8)) {
                j$.time.temporal.a aVar9 = j$.time.temporal.a.ALIGNED_DAY_OF_WEEK_IN_YEAR;
                if (map.containsKey(aVar9)) {
                    int a8 = x(aVar2).a(((Long) map.remove(aVar2)).longValue(), aVar2);
                    if (e0Var == j$.time.format.e0.LENIENT) {
                        return o(a8, 1).b(j$.time.a.V(((Long) map.remove(aVar8)).longValue(), 1L), (TemporalUnit) ChronoUnit.WEEKS).b(j$.time.a.V(((Long) map.remove(aVar9)).longValue(), 1L), (TemporalUnit) ChronoUnit.DAYS);
                    }
                    int a9 = x(aVar8).a(((Long) map.remove(aVar8)).longValue(), aVar8);
                    ChronoLocalDate b3 = o(a8, 1).b((x(aVar9).a(((Long) map.remove(aVar9)).longValue(), aVar9) - 1) + ((a9 - 1) * 7), (TemporalUnit) ChronoUnit.DAYS);
                    if (e0Var != j$.time.format.e0.STRICT || b3.f(aVar2) == a8) {
                        return b3;
                    }
                    j$.time.h.k("Strict mode rejected resolved date as it is in a different year");
                    return null;
                }
                j$.time.temporal.a aVar10 = j$.time.temporal.a.DAY_OF_WEEK;
                if (map.containsKey(aVar10)) {
                    int a10 = x(aVar2).a(((Long) map.remove(aVar2)).longValue(), aVar2);
                    if (e0Var == j$.time.format.e0.LENIENT) {
                        return z(o(a10, 1), 0L, j$.time.a.V(((Long) map.remove(aVar8)).longValue(), 1L), j$.time.a.V(((Long) map.remove(aVar10)).longValue(), 1L));
                    }
                    ChronoLocalDate n2 = o(a10, 1).b((x(aVar8).a(((Long) map.remove(aVar8)).longValue(), aVar8) - 1) * 7, (TemporalUnit) ChronoUnit.DAYS).n(new j$.time.temporal.l(DayOfWeek.of(x(aVar10).a(((Long) map.remove(aVar10)).longValue(), aVar10)).getValue(), i));
                    if (e0Var != j$.time.format.e0.STRICT || n2.f(aVar2) == a10) {
                        return n2;
                    }
                    j$.time.h.k("Strict mode rejected resolved date as it is in a different year");
                    return null;
                }
            }
        }
        return null;
    }

    public void B(Map map, j$.time.format.e0 e0Var) {
        j$.time.temporal.a aVar = j$.time.temporal.a.PROLEPTIC_MONTH;
        Long l = (Long) map.remove(aVar);
        if (l != null) {
            if (e0Var != j$.time.format.e0.LENIENT) {
                aVar.o(l.longValue());
            }
            ChronoLocalDate a2 = k().a(1L, (j$.time.temporal.n) j$.time.temporal.a.DAY_OF_MONTH).a(l.longValue(), (j$.time.temporal.n) aVar);
            f(map, j$.time.temporal.a.MONTH_OF_YEAR, a2.f(r6));
            f(map, j$.time.temporal.a.YEAR, a2.f(r6));
        }
    }

    public ChronoLocalDate C(Map map, j$.time.format.e0 e0Var) {
        j$.time.temporal.a aVar = j$.time.temporal.a.YEAR;
        int a2 = x(aVar).a(((Long) map.remove(aVar)).longValue(), aVar);
        if (e0Var == j$.time.format.e0.LENIENT) {
            long V = j$.time.a.V(((Long) map.remove(j$.time.temporal.a.MONTH_OF_YEAR)).longValue(), 1L);
            return g(a2, 1, 1).b(V, (TemporalUnit) ChronoUnit.MONTHS).b(j$.time.a.V(((Long) map.remove(j$.time.temporal.a.DAY_OF_MONTH)).longValue(), 1L), (TemporalUnit) ChronoUnit.DAYS);
        }
        j$.time.temporal.a aVar2 = j$.time.temporal.a.MONTH_OF_YEAR;
        int a3 = x(aVar2).a(((Long) map.remove(aVar2)).longValue(), aVar2);
        j$.time.temporal.a aVar3 = j$.time.temporal.a.DAY_OF_MONTH;
        int a4 = x(aVar3).a(((Long) map.remove(aVar3)).longValue(), aVar3);
        if (e0Var != j$.time.format.e0.SMART) {
            return g(a2, a3, a4);
        }
        try {
            return g(a2, a3, a4);
        } catch (j$.time.c unused) {
            return this.g(a2, a3, 1).n(new j$.time.f(4));
        }
    }

    public ChronoLocalDate D(Map map, j$.time.format.e0 e0Var) {
        j$.time.temporal.a aVar = j$.time.temporal.a.YEAR_OF_ERA;
        Long l = (Long) map.remove(aVar);
        if (l == null) {
            j$.time.temporal.a aVar2 = j$.time.temporal.a.ERA;
            if (!map.containsKey(aVar2)) {
                return null;
            }
            x(aVar2).b(((Long) map.get(aVar2)).longValue(), aVar2);
            return null;
        }
        Long l2 = (Long) map.remove(j$.time.temporal.a.ERA);
        int a2 = e0Var != j$.time.format.e0.LENIENT ? x(aVar).a(l.longValue(), aVar) : j$.time.a.O(l.longValue());
        if (l2 != null) {
            f(map, j$.time.temporal.a.YEAR, w(q(x(r2).a(l2.longValue(), r2)), a2));
            return null;
        }
        j$.time.temporal.a aVar3 = j$.time.temporal.a.YEAR;
        if (map.containsKey(aVar3)) {
            f(map, aVar3, w(o(x(aVar3).a(((Long) map.get(aVar3)).longValue(), aVar3), 1).getEra(), a2));
            return null;
        }
        if (e0Var == j$.time.format.e0.STRICT) {
            map.put(aVar, l);
            return null;
        }
        if (eras().isEmpty()) {
            f(map, aVar3, a2);
            return null;
        }
        f(map, aVar3, w((j) r9.get(r9.size() - 1), a2));
        return null;
    }

    public abstract ChronoZonedDateTime E(Instant instant, ZoneId zoneId);

    public ChronoZonedDateTime F(TemporalAccessor temporalAccessor) {
        try {
            ZoneId u = ZoneId.u(temporalAccessor);
            try {
                return E(Instant.v(temporalAccessor), u);
            } catch (j$.time.c unused) {
                return i.u(u, null, e.u(this, this.u(temporalAccessor)));
            }
        } catch (j$.time.c e) {
            throw new j$.time.c("Unable to obtain ChronoZonedDateTime from TemporalAccessor: " + temporalAccessor.getClass(), e);
        }
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return getId().compareTo(((a) obj).getId());
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof a) && getId().compareTo(((a) obj).getId()) == 0;
    }

    public abstract List eras();

    public abstract ChronoLocalDate g(int i, int i2, int i3);

    public abstract String getCalendarType();

    public abstract String getId();

    public abstract ChronoLocalDate h(TemporalAccessor temporalAccessor);

    public final int hashCode() {
        return getId().hashCode() ^ getClass().hashCode();
    }

    public abstract ChronoLocalDate i(long j);

    public abstract boolean isLeapYear(long j);

    public abstract /* synthetic */ ChronoLocalDate k();

    public abstract ChronoLocalDate o(int i, int i2);

    public abstract j q(int i);

    public final String toString() {
        return getId();
    }

    public ChronoLocalDateTime u(TemporalAccessor temporalAccessor) {
        try {
            return h(temporalAccessor).r(LocalTime.w(temporalAccessor));
        } catch (j$.time.c e) {
            throw new j$.time.c("Unable to obtain ChronoLocalDateTime from TemporalAccessor: " + temporalAccessor.getClass(), e);
        }
    }

    public abstract int w(j jVar, int i);

    public abstract j$.time.temporal.q x(j$.time.temporal.a aVar);
}
