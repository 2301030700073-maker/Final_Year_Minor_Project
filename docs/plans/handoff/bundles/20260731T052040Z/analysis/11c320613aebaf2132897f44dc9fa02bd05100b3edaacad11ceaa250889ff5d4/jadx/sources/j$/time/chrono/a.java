package j$.time.chrono;

import j$.time.DateTimeException;
import j$.time.LocalDateTime;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.TemporalUnit;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Locale;
import java.util.Map;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public abstract class a implements l {
    public static final ConcurrentHashMap a = new ConcurrentHashMap();
    public static final ConcurrentHashMap b = new ConcurrentHashMap();

    static {
        new Locale("ja", "JP", "JP");
    }

    public static void k(Map map, j$.time.temporal.a aVar, long j) {
        Long l = (Long) map.get(aVar);
        if (l == null || l.longValue() == j) {
            map.put(aVar, Long.valueOf(j));
            return;
        }
        throw new DateTimeException("Conflict found: " + aVar + " " + l + " differs from " + aVar + " " + j);
    }

    public static l o(l lVar, String str) {
        String q;
        l lVar2 = (l) a.putIfAbsent(str, lVar);
        if (lVar2 == null && (q = lVar.q()) != null) {
            b.putIfAbsent(q, lVar);
        }
        return lVar2;
    }

    public static b u(b bVar, long j, long j2, long j3) {
        long j4;
        b d = bVar.d(j, (TemporalUnit) ChronoUnit.MONTHS);
        ChronoUnit chronoUnit = ChronoUnit.WEEKS;
        b d2 = d.d(j2, (TemporalUnit) chronoUnit);
        if (j3 <= 7) {
            if (j3 < 1) {
                d2 = d2.d(j$.com.android.tools.r8.a.U(j3, 7L) / 7, (TemporalUnit) chronoUnit);
                j4 = (j3 + 6) % 7;
            }
            return d2.n(new j$.time.temporal.n(j$.time.c.Z((int) j3).getValue(), 0));
        }
        long j5 = j3 - 1;
        d2 = d2.d(j5 / 7, (TemporalUnit) chronoUnit);
        j4 = j5 % 7;
        j3 = j4 + 1;
        return d2.n(new j$.time.temporal.n(j$.time.c.Z((int) j3).getValue(), 0));
    }

    public void F(Map map, j$.time.format.e0 e0Var) {
        j$.time.temporal.a aVar = j$.time.temporal.a.PROLEPTIC_MONTH;
        Long l = (Long) map.remove(aVar);
        if (l != null) {
            if (e0Var != j$.time.format.e0.LENIENT) {
                aVar.M(l.longValue());
            }
            b c = n().c(1L, (j$.time.temporal.p) j$.time.temporal.a.DAY_OF_MONTH).c(l.longValue(), (j$.time.temporal.p) aVar);
            k(map, j$.time.temporal.a.MONTH_OF_YEAR, c.k(r6));
            k(map, j$.time.temporal.a.YEAR, c.k(r6));
        }
    }

    public b H(Map map, j$.time.format.e0 e0Var) {
        j$.time.temporal.a aVar = j$.time.temporal.a.YEAR;
        int a2 = y(aVar).a(((Long) map.remove(aVar)).longValue(), aVar);
        if (e0Var == j$.time.format.e0.LENIENT) {
            long U = j$.com.android.tools.r8.a.U(((Long) map.remove(j$.time.temporal.a.MONTH_OF_YEAR)).longValue(), 1L);
            return S(a2, 1, 1).d(U, (TemporalUnit) ChronoUnit.MONTHS).d(j$.com.android.tools.r8.a.U(((Long) map.remove(j$.time.temporal.a.DAY_OF_MONTH)).longValue(), 1L), (TemporalUnit) ChronoUnit.DAYS);
        }
        j$.time.temporal.a aVar2 = j$.time.temporal.a.MONTH_OF_YEAR;
        int a3 = y(aVar2).a(((Long) map.remove(aVar2)).longValue(), aVar2);
        j$.time.temporal.a aVar3 = j$.time.temporal.a.DAY_OF_MONTH;
        int a4 = y(aVar3).a(((Long) map.remove(aVar3)).longValue(), aVar3);
        if (e0Var != j$.time.format.e0.SMART) {
            return S(a2, a3, a4);
        }
        try {
            return S(a2, a3, a4);
        } catch (DateTimeException unused) {
            return this.S(a2, a3, 1).n(new j$.desugar.sun.nio.fs.m(7));
        }
    }

    @Override // j$.time.chrono.l
    public e K(LocalDateTime localDateTime) {
        try {
            return J(localDateTime).O(j$.time.i.b0(localDateTime));
        } catch (DateTimeException e) {
            throw new DateTimeException("Unable to obtain ChronoLocalDateTime from TemporalAccessor: " + LocalDateTime.class, e);
        }
    }

    public b M(Map map, j$.time.format.e0 e0Var) {
        j$.time.temporal.a aVar = j$.time.temporal.a.YEAR_OF_ERA;
        Long l = (Long) map.remove(aVar);
        if (l == null) {
            j$.time.temporal.a aVar2 = j$.time.temporal.a.ERA;
            if (!map.containsKey(aVar2)) {
                return null;
            }
            y(aVar2).b(((Long) map.get(aVar2)).longValue(), aVar2);
            return null;
        }
        Long l2 = (Long) map.remove(j$.time.temporal.a.ERA);
        int a2 = e0Var != j$.time.format.e0.LENIENT ? y(aVar).a(l.longValue(), aVar) : j$.com.android.tools.r8.a.D(l.longValue());
        if (l2 != null) {
            k(map, j$.time.temporal.a.YEAR, D(B(y(r2).a(l2.longValue(), r2)), a2));
            return null;
        }
        j$.time.temporal.a aVar3 = j$.time.temporal.a.YEAR;
        if (map.containsKey(aVar3)) {
            k(map, aVar3, D(s(y(aVar3).a(((Long) map.get(aVar3)).longValue(), aVar3), 1).P(), a2));
            return null;
        }
        if (e0Var == j$.time.format.e0.STRICT) {
            map.put(aVar, l);
            return null;
        }
        if (A().isEmpty()) {
            k(map, aVar3, a2);
            return null;
        }
        k(map, aVar3, D((m) r9.get(r9.size() - 1), a2));
        return null;
    }

    @Override // j$.time.chrono.l
    public b U(Map map, j$.time.format.e0 e0Var) {
        j$.time.temporal.a aVar = j$.time.temporal.a.EPOCH_DAY;
        if (map.containsKey(aVar)) {
            return h(((Long) map.remove(aVar)).longValue());
        }
        F(map, e0Var);
        b M = M(map, e0Var);
        if (M != null) {
            return M;
        }
        j$.time.temporal.a aVar2 = j$.time.temporal.a.YEAR;
        if (map.containsKey(aVar2)) {
            j$.time.temporal.a aVar3 = j$.time.temporal.a.MONTH_OF_YEAR;
            if (map.containsKey(aVar3)) {
                if (map.containsKey(j$.time.temporal.a.DAY_OF_MONTH)) {
                    return H(map, e0Var);
                }
                j$.time.temporal.a aVar4 = j$.time.temporal.a.ALIGNED_WEEK_OF_MONTH;
                if (map.containsKey(aVar4)) {
                    j$.time.temporal.a aVar5 = j$.time.temporal.a.ALIGNED_DAY_OF_WEEK_IN_MONTH;
                    if (map.containsKey(aVar5)) {
                        int a2 = y(aVar2).a(((Long) map.remove(aVar2)).longValue(), aVar2);
                        if (e0Var == j$.time.format.e0.LENIENT) {
                            long U = j$.com.android.tools.r8.a.U(((Long) map.remove(aVar3)).longValue(), 1L);
                            return S(a2, 1, 1).d(U, (TemporalUnit) ChronoUnit.MONTHS).d(j$.com.android.tools.r8.a.U(((Long) map.remove(aVar4)).longValue(), 1L), (TemporalUnit) ChronoUnit.WEEKS).d(j$.com.android.tools.r8.a.U(((Long) map.remove(aVar5)).longValue(), 1L), (TemporalUnit) ChronoUnit.DAYS);
                        }
                        int a3 = y(aVar3).a(((Long) map.remove(aVar3)).longValue(), aVar3);
                        int a4 = y(aVar4).a(((Long) map.remove(aVar4)).longValue(), aVar4);
                        b d = S(a2, a3, 1).d((y(aVar5).a(((Long) map.remove(aVar5)).longValue(), aVar5) - 1) + ((a4 - 1) * 7), (TemporalUnit) ChronoUnit.DAYS);
                        if (e0Var != j$.time.format.e0.STRICT || d.k(aVar3) == a3) {
                            return d;
                        }
                        j$.nio.file.m.k("Strict mode rejected resolved date as it is in a different month");
                        return null;
                    }
                    j$.time.temporal.a aVar6 = j$.time.temporal.a.DAY_OF_WEEK;
                    if (map.containsKey(aVar6)) {
                        int a5 = y(aVar2).a(((Long) map.remove(aVar2)).longValue(), aVar2);
                        if (e0Var == j$.time.format.e0.LENIENT) {
                            return u(S(a5, 1, 1), j$.com.android.tools.r8.a.U(((Long) map.remove(aVar3)).longValue(), 1L), j$.com.android.tools.r8.a.U(((Long) map.remove(aVar4)).longValue(), 1L), j$.com.android.tools.r8.a.U(((Long) map.remove(aVar6)).longValue(), 1L));
                        }
                        int a6 = y(aVar3).a(((Long) map.remove(aVar3)).longValue(), aVar3);
                        b n = S(a5, a6, 1).d((y(aVar4).a(((Long) map.remove(aVar4)).longValue(), aVar4) - 1) * 7, (TemporalUnit) ChronoUnit.DAYS).n(new j$.time.temporal.n(j$.time.c.Z(y(aVar6).a(((Long) map.remove(aVar6)).longValue(), aVar6)).getValue(), 0));
                        if (e0Var != j$.time.format.e0.STRICT || n.k(aVar3) == a6) {
                            return n;
                        }
                        j$.nio.file.m.k("Strict mode rejected resolved date as it is in a different month");
                        return null;
                    }
                }
            }
            j$.time.temporal.a aVar7 = j$.time.temporal.a.DAY_OF_YEAR;
            if (map.containsKey(aVar7)) {
                int a7 = y(aVar2).a(((Long) map.remove(aVar2)).longValue(), aVar2);
                if (e0Var != j$.time.format.e0.LENIENT) {
                    return s(a7, y(aVar7).a(((Long) map.remove(aVar7)).longValue(), aVar7));
                }
                return s(a7, 1).d(j$.com.android.tools.r8.a.U(((Long) map.remove(aVar7)).longValue(), 1L), (TemporalUnit) ChronoUnit.DAYS);
            }
            j$.time.temporal.a aVar8 = j$.time.temporal.a.ALIGNED_WEEK_OF_YEAR;
            if (map.containsKey(aVar8)) {
                j$.time.temporal.a aVar9 = j$.time.temporal.a.ALIGNED_DAY_OF_WEEK_IN_YEAR;
                if (map.containsKey(aVar9)) {
                    int a8 = y(aVar2).a(((Long) map.remove(aVar2)).longValue(), aVar2);
                    if (e0Var == j$.time.format.e0.LENIENT) {
                        return s(a8, 1).d(j$.com.android.tools.r8.a.U(((Long) map.remove(aVar8)).longValue(), 1L), (TemporalUnit) ChronoUnit.WEEKS).d(j$.com.android.tools.r8.a.U(((Long) map.remove(aVar9)).longValue(), 1L), (TemporalUnit) ChronoUnit.DAYS);
                    }
                    int a9 = y(aVar8).a(((Long) map.remove(aVar8)).longValue(), aVar8);
                    b d2 = s(a8, 1).d((y(aVar9).a(((Long) map.remove(aVar9)).longValue(), aVar9) - 1) + ((a9 - 1) * 7), (TemporalUnit) ChronoUnit.DAYS);
                    if (e0Var != j$.time.format.e0.STRICT || d2.k(aVar2) == a8) {
                        return d2;
                    }
                    j$.nio.file.m.k("Strict mode rejected resolved date as it is in a different year");
                    return null;
                }
                j$.time.temporal.a aVar10 = j$.time.temporal.a.DAY_OF_WEEK;
                if (map.containsKey(aVar10)) {
                    int a10 = y(aVar2).a(((Long) map.remove(aVar2)).longValue(), aVar2);
                    if (e0Var == j$.time.format.e0.LENIENT) {
                        return u(s(a10, 1), 0L, j$.com.android.tools.r8.a.U(((Long) map.remove(aVar8)).longValue(), 1L), j$.com.android.tools.r8.a.U(((Long) map.remove(aVar10)).longValue(), 1L));
                    }
                    b n2 = s(a10, 1).d((y(aVar8).a(((Long) map.remove(aVar8)).longValue(), aVar8) - 1) * 7, (TemporalUnit) ChronoUnit.DAYS).n(new j$.time.temporal.n(j$.time.c.Z(y(aVar10).a(((Long) map.remove(aVar10)).longValue(), aVar10)).getValue(), 0));
                    if (e0Var != j$.time.format.e0.STRICT || n2.k(aVar2) == a10) {
                        return n2;
                    }
                    j$.nio.file.m.k("Strict mode rejected resolved date as it is in a different year");
                    return null;
                }
            }
        }
        return null;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return i().compareTo(((l) obj).i());
    }

    @Override // j$.time.chrono.l
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof a) && i().compareTo(((a) obj).i()) == 0;
    }

    @Override // j$.time.chrono.l
    public final int hashCode() {
        return i().hashCode() ^ getClass().hashCode();
    }

    public abstract /* synthetic */ b n();

    @Override // j$.time.chrono.l
    public final String toString() {
        return i();
    }
}
