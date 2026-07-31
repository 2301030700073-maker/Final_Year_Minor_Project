package j$.time.chrono;

import j$.time.DateTimeException;
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

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class v extends a implements Serializable {
    public static final v c = new v();
    private static final long serialVersionUID = 459996390165777884L;

    private v() {
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    @Override // j$.time.chrono.l
    public final List A() {
        y[] yVarArr = y.e;
        return j$.com.android.tools.r8.a.G((y[]) Arrays.copyOf(yVarArr, yVarArr.length));
    }

    @Override // j$.time.chrono.l
    public final m B(int i) {
        return y.j(i);
    }

    @Override // j$.time.chrono.l
    public final int D(m mVar, int i) {
        if (!(mVar instanceof y)) {
            throw new ClassCastException("Era must be JapaneseEra");
        }
        int i2 = ((y) mVar).b.a;
        int i3 = (i2 + i) - 1;
        if (i == 1 || (i3 >= -999999999 && i3 <= 999999999 && i3 >= i2 && mVar == y.h(LocalDate.of(i3, 1, 1)))) {
            return i3;
        }
        j$.nio.file.m.k("Invalid yearOfEra value");
        return 0;
    }

    @Override // j$.time.chrono.l
    public final b J(TemporalAccessor temporalAccessor) {
        return temporalAccessor instanceof x ? (x) temporalAccessor : new x(LocalDate.b0(temporalAccessor));
    }

    @Override // j$.time.chrono.a
    public final b M(Map map, j$.time.format.e0 e0Var) {
        x f0;
        j$.time.temporal.a aVar = j$.time.temporal.a.ERA;
        Long l = (Long) map.get(aVar);
        y j = l != null ? y.j(y(aVar).a(l.longValue(), aVar)) : null;
        j$.time.temporal.a aVar2 = j$.time.temporal.a.YEAR_OF_ERA;
        Long l2 = (Long) map.get(aVar2);
        int a = l2 != null ? y(aVar2).a(l2.longValue(), aVar2) : 0;
        if (j == null && l2 != null && !map.containsKey(j$.time.temporal.a.YEAR) && e0Var != j$.time.format.e0.STRICT) {
            y[] yVarArr = y.e;
            j = ((y[]) Arrays.copyOf(yVarArr, yVarArr.length))[((y[]) Arrays.copyOf(yVarArr, yVarArr.length)).length - 1];
        }
        if (l2 != null && j != null) {
            j$.time.temporal.a aVar3 = j$.time.temporal.a.MONTH_OF_YEAR;
            if (map.containsKey(aVar3)) {
                j$.time.temporal.a aVar4 = j$.time.temporal.a.DAY_OF_MONTH;
                if (map.containsKey(aVar4)) {
                    map.remove(aVar);
                    map.remove(aVar2);
                    if (e0Var == j$.time.format.e0.LENIENT) {
                        return new x(LocalDate.of((j.b.a + a) - 1, 1, 1)).d0(j$.com.android.tools.r8.a.U(((Long) map.remove(aVar3)).longValue(), 1L), ChronoUnit.MONTHS).d0(j$.com.android.tools.r8.a.U(((Long) map.remove(aVar4)).longValue(), 1L), ChronoUnit.DAYS);
                    }
                    int a2 = y(aVar3).a(((Long) map.remove(aVar3)).longValue(), aVar3);
                    int a3 = y(aVar4).a(((Long) map.remove(aVar4)).longValue(), aVar4);
                    if (e0Var != j$.time.format.e0.SMART) {
                        LocalDate localDate = x.d;
                        Objects.requireNonNull(j, "era");
                        LocalDate of = LocalDate.of((j.b.a + a) - 1, a2, a3);
                        if (!of.f0(j.b) && j == y.h(of)) {
                            return new x(j, a, of);
                        }
                        j$.nio.file.m.k("year, month, and day not valid for Era");
                        return null;
                    }
                    if (a < 1) {
                        j$.nio.file.m.d("Invalid YearOfEra: ", a);
                        return null;
                    }
                    int i = (j.b.a + a) - 1;
                    try {
                        f0 = new x(LocalDate.of(i, a2, a3));
                    } catch (DateTimeException unused) {
                        f0 = new x(LocalDate.of(i, a2, 1)).f0(new j$.desugar.sun.nio.fs.m(7));
                    }
                    if (f0.b == j || j$.time.temporal.q.a(f0, j$.time.temporal.a.YEAR_OF_ERA) <= 1 || a <= 1) {
                        return f0;
                    }
                    throw new DateTimeException("Invalid YearOfEra for Era: " + j + " " + a);
                }
            }
            j$.time.temporal.a aVar5 = j$.time.temporal.a.DAY_OF_YEAR;
            if (map.containsKey(aVar5)) {
                map.remove(aVar);
                map.remove(aVar2);
                if (e0Var == j$.time.format.e0.LENIENT) {
                    return new x(LocalDate.k0((j.b.a + a) - 1, 1)).d0(j$.com.android.tools.r8.a.U(((Long) map.remove(aVar5)).longValue(), 1L), ChronoUnit.DAYS);
                }
                int a4 = y(aVar5).a(((Long) map.remove(aVar5)).longValue(), aVar5);
                LocalDate localDate2 = x.d;
                Objects.requireNonNull(j, "era");
                LocalDate localDate3 = j.b;
                LocalDate k0 = a == 1 ? LocalDate.k0(localDate3.a, (localDate3.e0() + a4) - 1) : LocalDate.k0((localDate3.a + a) - 1, a4);
                if (!k0.f0(j.b) && j == y.h(k0)) {
                    return new x(j, a, k0);
                }
                j$.nio.file.m.k("Invalid parameters");
            }
        }
        return null;
    }

    @Override // j$.time.chrono.l
    public final b S(int i, int i2, int i3) {
        return new x(LocalDate.of(i, i2, i3));
    }

    @Override // j$.time.chrono.a, j$.time.chrono.l
    public final b U(Map map, j$.time.format.e0 e0Var) {
        return (x) super.U(map, e0Var);
    }

    @Override // j$.time.chrono.l
    public final ChronoZonedDateTime V(Instant instant, ZoneId zoneId) {
        return k.a0(this, instant, zoneId);
    }

    @Override // j$.time.chrono.l
    public final boolean Y(long j) {
        return s.c.Y(j);
    }

    @Override // j$.time.chrono.l
    public final b h(long j) {
        return new x(LocalDate.j0(j));
    }

    @Override // j$.time.chrono.l
    public final String i() {
        return "Japanese";
    }

    @Override // j$.time.chrono.a
    public final b n() {
        return new x(LocalDate.b0(LocalDate.i0(j$.com.android.tools.r8.a.X())));
    }

    @Override // j$.time.chrono.l
    public final String q() {
        return "japanese";
    }

    @Override // j$.time.chrono.l
    public final b s(int i, int i2) {
        return new x(LocalDate.k0(i, i2));
    }

    public Object writeReplace() {
        return new e0((byte) 1, this);
    }

    @Override // j$.time.chrono.l
    public final j$.time.temporal.s y(j$.time.temporal.a aVar) {
        switch (u.a[aVar.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
                j$.nio.file.m.b(aVar, "Unsupported field: ");
                return null;
            case 5:
                y[] yVarArr = y.e;
                int i = yVarArr[yVarArr.length - 1].b.a;
                int i2 = 1000000000 - yVarArr[yVarArr.length - 1].b.a;
                int i3 = yVarArr[0].b.a;
                int i4 = 1;
                while (true) {
                    y[] yVarArr2 = y.e;
                    if (i4 >= yVarArr2.length) {
                        return j$.time.temporal.s.g(1L, i2, 999999999 - i);
                    }
                    y yVar = yVarArr2[i4];
                    i2 = Math.min(i2, (yVar.b.a - i3) + 1);
                    i3 = yVar.b.a;
                    i4++;
                }
            case 6:
                y yVar2 = y.d;
                long j = j$.time.temporal.a.DAY_OF_YEAR.b.c;
                long j2 = j;
                for (y yVar3 : y.e) {
                    long min = Math.min(j2, (yVar3.b.W() - yVar3.b.e0()) + 1);
                    j2 = yVar3.i() != null ? Math.min(min, yVar3.i().b.e0() - 1) : min;
                }
                return j$.time.temporal.s.g(1L, j2, j$.time.temporal.a.DAY_OF_YEAR.b.d);
            case 7:
                return j$.time.temporal.s.f(x.d.a, 999999999L);
            case 8:
                long j3 = y.d.a;
                y[] yVarArr3 = y.e;
                return j$.time.temporal.s.f(j3, yVarArr3[yVarArr3.length - 1].a);
            default:
                return aVar.b;
        }
    }
}
