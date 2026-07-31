package j$.time.chrono;

import j$.time.Instant;
import j$.time.LocalDate;
import j$.time.ZoneId;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.TemporalAccessor;
import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes2.dex */
public final class s extends a implements Serializable {
    public static final s c = new s();
    private static final long serialVersionUID = 459996390165777884L;

    private s() {
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    @Override // j$.time.chrono.a
    public final ChronoLocalDate A(Map map, j$.time.format.e0 e0Var) {
        return (u) super.A(map, e0Var);
    }

    @Override // j$.time.chrono.a
    public final ChronoLocalDate D(Map map, j$.time.format.e0 e0Var) {
        u B;
        j$.time.temporal.a aVar = j$.time.temporal.a.ERA;
        Long l = (Long) map.get(aVar);
        v w = l != null ? v.w(x(aVar).a(l.longValue(), aVar)) : null;
        j$.time.temporal.a aVar2 = j$.time.temporal.a.YEAR_OF_ERA;
        Long l2 = (Long) map.get(aVar2);
        int a = l2 != null ? x(aVar2).a(l2.longValue(), aVar2) : 0;
        if (w == null && l2 != null && !map.containsKey(j$.time.temporal.a.YEAR) && e0Var != j$.time.format.e0.STRICT) {
            v[] vVarArr = v.e;
            w = ((v[]) Arrays.copyOf(vVarArr, vVarArr.length))[((v[]) Arrays.copyOf(vVarArr, vVarArr.length)).length - 1];
        }
        if (l2 != null && w != null) {
            j$.time.temporal.a aVar3 = j$.time.temporal.a.MONTH_OF_YEAR;
            if (map.containsKey(aVar3)) {
                j$.time.temporal.a aVar4 = j$.time.temporal.a.DAY_OF_MONTH;
                if (map.containsKey(aVar4)) {
                    map.remove(aVar);
                    map.remove(aVar2);
                    if (e0Var == j$.time.format.e0.LENIENT) {
                        return new u(LocalDate.of((w.b.getYear() + a) - 1, 1, 1)).z(j$.time.a.V(((Long) map.remove(aVar3)).longValue(), 1L), ChronoUnit.MONTHS).z(j$.time.a.V(((Long) map.remove(aVar4)).longValue(), 1L), ChronoUnit.DAYS);
                    }
                    int a2 = x(aVar3).a(((Long) map.remove(aVar3)).longValue(), aVar3);
                    int a3 = x(aVar4).a(((Long) map.remove(aVar4)).longValue(), aVar4);
                    if (e0Var != j$.time.format.e0.SMART) {
                        LocalDate localDate = u.d;
                        Objects.requireNonNull(w, "era");
                        LocalDate of = LocalDate.of((w.b.getYear() + a) - 1, a2, a3);
                        if (!of.isBefore(w.b) && w == v.u(of)) {
                            return new u(w, a, of);
                        }
                        j$.time.h.k("year, month, and day not valid for Era");
                        return null;
                    }
                    if (a < 1) {
                        j$.time.h.d("Invalid YearOfEra: ", a);
                        return null;
                    }
                    int year = (w.b.getYear() + a) - 1;
                    try {
                        B = new u(LocalDate.of(year, a2, a3));
                    } catch (j$.time.c unused) {
                        B = new u(LocalDate.of(year, a2, 1)).B(new j$.time.f(4));
                    }
                    if (B.b == w || j$.time.temporal.o.a(B, j$.time.temporal.a.YEAR_OF_ERA) <= 1 || a <= 1) {
                        return B;
                    }
                    throw new j$.time.c("Invalid YearOfEra for Era: " + w + " " + a);
                }
            }
            j$.time.temporal.a aVar5 = j$.time.temporal.a.DAY_OF_YEAR;
            if (map.containsKey(aVar5)) {
                map.remove(aVar);
                map.remove(aVar2);
                if (e0Var == j$.time.format.e0.LENIENT) {
                    return new u(LocalDate.C((w.b.getYear() + a) - 1, 1)).z(j$.time.a.V(((Long) map.remove(aVar5)).longValue(), 1L), ChronoUnit.DAYS);
                }
                int a4 = x(aVar5).a(((Long) map.remove(aVar5)).longValue(), aVar5);
                LocalDate localDate2 = u.d;
                Objects.requireNonNull(w, "era");
                LocalDate localDate3 = w.b;
                LocalDate C = a == 1 ? LocalDate.C(localDate3.getYear(), (w.b.getDayOfYear() + a4) - 1) : LocalDate.C((localDate3.getYear() + a) - 1, a4);
                if (!C.isBefore(w.b) && w == v.u(C)) {
                    return new u(w, a, C);
                }
                j$.time.h.k("Invalid parameters");
            }
        }
        return null;
    }

    @Override // j$.time.chrono.a
    public final ChronoZonedDateTime E(Instant instant, ZoneId zoneId) {
        return i.v(this, instant, zoneId);
    }

    @Override // j$.time.chrono.a
    public final List eras() {
        v[] vVarArr = v.e;
        return j$.time.a.Q((v[]) Arrays.copyOf(vVarArr, vVarArr.length));
    }

    @Override // j$.time.chrono.a
    public final ChronoLocalDate g(int i, int i2, int i3) {
        return new u(LocalDate.of(i, i2, i3));
    }

    @Override // j$.time.chrono.a
    public final String getCalendarType() {
        return "japanese";
    }

    @Override // j$.time.chrono.a
    public final String getId() {
        return "Japanese";
    }

    @Override // j$.time.chrono.a
    public final ChronoLocalDate h(TemporalAccessor temporalAccessor) {
        return temporalAccessor instanceof u ? (u) temporalAccessor : new u(LocalDate.w(temporalAccessor));
    }

    @Override // j$.time.chrono.a
    public final ChronoLocalDate i(long j) {
        return new u(LocalDate.ofEpochDay(j));
    }

    @Override // j$.time.chrono.a
    public final boolean isLeapYear(long j) {
        return p.c.isLeapYear(j);
    }

    @Override // j$.time.chrono.a
    public final ChronoLocalDate k() {
        return new u(LocalDate.w(LocalDate.B(j$.time.a.X())));
    }

    @Override // j$.time.chrono.a
    public final ChronoLocalDate o(int i, int i2) {
        return new u(LocalDate.C(i, i2));
    }

    @Override // j$.time.chrono.a
    public final j q(int i) {
        return v.w(i);
    }

    @Override // j$.time.chrono.a
    public final int w(j jVar, int i) {
        if (!(jVar instanceof v)) {
            throw new ClassCastException("Era must be JapaneseEra");
        }
        v vVar = (v) jVar;
        int year = (vVar.b.getYear() + i) - 1;
        if (i == 1 || (year >= -999999999 && year <= 999999999 && year >= vVar.b.getYear() && jVar == v.u(LocalDate.of(year, 1, 1)))) {
            return year;
        }
        j$.time.h.k("Invalid yearOfEra value");
        return 0;
    }

    public Object writeReplace() {
        return new b0((byte) 1, this);
    }

    @Override // j$.time.chrono.a
    public final j$.time.temporal.q x(j$.time.temporal.a aVar) {
        switch (r.a[aVar.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
                j$.time.h.b(aVar, "Unsupported field: ");
                return null;
            case 5:
                v[] vVarArr = v.e;
                int year = vVarArr[vVarArr.length - 1].b.getYear();
                int year2 = 1000000000 - vVarArr[vVarArr.length - 1].b.getYear();
                int year3 = vVarArr[0].b.getYear();
                int i = 1;
                while (true) {
                    v[] vVarArr2 = v.e;
                    if (i >= vVarArr2.length) {
                        return j$.time.temporal.q.g(1L, year2, 999999999 - year);
                    }
                    v vVar = vVarArr2[i];
                    year2 = Math.min(year2, (vVar.b.getYear() - year3) + 1);
                    year3 = vVar.b.getYear();
                    i++;
                }
            case 6:
                v vVar2 = v.d;
                long j = j$.time.temporal.a.DAY_OF_YEAR.b.c;
                long j2 = j;
                for (v vVar3 : v.e) {
                    long min = Math.min(j2, (vVar3.b.lengthOfYear() - vVar3.b.getDayOfYear()) + 1);
                    j2 = vVar3.v() != null ? Math.min(min, vVar3.v().b.getDayOfYear() - 1) : min;
                }
                return j$.time.temporal.q.g(1L, j2, j$.time.temporal.a.DAY_OF_YEAR.b.d);
            case 7:
                return j$.time.temporal.q.f(u.d.getYear(), 999999999L);
            case 8:
                long j3 = v.d.a;
                v[] vVarArr3 = v.e;
                return j$.time.temporal.q.f(j3, vVarArr3[vVarArr3.length - 1].a);
            default:
                return aVar.b;
        }
    }
}
