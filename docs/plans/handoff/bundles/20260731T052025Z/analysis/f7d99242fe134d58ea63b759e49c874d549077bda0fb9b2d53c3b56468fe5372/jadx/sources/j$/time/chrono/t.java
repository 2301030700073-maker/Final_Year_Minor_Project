package j$.time.chrono;

import androidx.datastore.preferences.PreferencesProto$Value;
import j$.time.DateTimeException;
import j$.time.Instant;
import j$.time.LocalDate;
import j$.time.ZoneId;
import j$.time.temporal.ChronoField;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.TemporalAccessor;
import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public final class t extends a implements Serializable {
    public static final t c = new t();
    private static final long serialVersionUID = 459996390165777884L;

    private t() {
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    @Override // j$.time.chrono.j
    public final k A(int i) {
        return w.j(i);
    }

    @Override // j$.time.chrono.j
    public final int C(k kVar, int i) {
        if (!(kVar instanceof w)) {
            throw new ClassCastException("Era must be JapaneseEra");
        }
        w wVar = (w) kVar;
        int year = (wVar.b.getYear() + i) - 1;
        if (i == 1 || (year >= -999999999 && year <= 999999999 && year >= wVar.b.getYear() && kVar == w.h(LocalDate.of(year, 1, 1)))) {
            return year;
        }
        j$.nio.file.j.k("Invalid yearOfEra value");
        return 0;
    }

    @Override // j$.time.chrono.j
    public final ChronoLocalDate H(TemporalAccessor temporalAccessor) {
        return temporalAccessor instanceof v ? (v) temporalAccessor : new v(LocalDate.W(temporalAccessor));
    }

    @Override // j$.time.chrono.a
    public final ChronoLocalDate L(Map map, j$.time.format.v vVar) {
        v b0;
        ChronoField chronoField = ChronoField.ERA;
        Long l = (Long) map.get(chronoField);
        w j = l != null ? w.j(x(chronoField).a(l.longValue(), chronoField)) : null;
        ChronoField chronoField2 = ChronoField.YEAR_OF_ERA;
        Long l2 = (Long) map.get(chronoField2);
        int a = l2 != null ? x(chronoField2).a(l2.longValue(), chronoField2) : 0;
        if (j == null && l2 != null && !map.containsKey(ChronoField.YEAR) && vVar != j$.time.format.v.STRICT) {
            w[] wVarArr = w.e;
            j = ((w[]) Arrays.copyOf(wVarArr, wVarArr.length))[((w[]) Arrays.copyOf(wVarArr, wVarArr.length)).length - 1];
        }
        if (l2 != null && j != null) {
            ChronoField chronoField3 = ChronoField.MONTH_OF_YEAR;
            if (map.containsKey(chronoField3)) {
                ChronoField chronoField4 = ChronoField.DAY_OF_MONTH;
                if (map.containsKey(chronoField4)) {
                    map.remove(chronoField);
                    map.remove(chronoField2);
                    if (vVar == j$.time.format.v.LENIENT) {
                        return new v(LocalDate.of((j.b.getYear() + a) - 1, 1, 1)).Z(j$.com.android.tools.r8.a.S(((Long) map.remove(chronoField3)).longValue(), 1L), ChronoUnit.MONTHS).Z(j$.com.android.tools.r8.a.S(((Long) map.remove(chronoField4)).longValue(), 1L), ChronoUnit.DAYS);
                    }
                    int a2 = x(chronoField3).a(((Long) map.remove(chronoField3)).longValue(), chronoField3);
                    int a3 = x(chronoField4).a(((Long) map.remove(chronoField4)).longValue(), chronoField4);
                    if (vVar != j$.time.format.v.SMART) {
                        LocalDate localDate = v.d;
                        Objects.requireNonNull(j, "era");
                        LocalDate of = LocalDate.of((j.b.getYear() + a) - 1, a2, a3);
                        if (!of.Z(j.b) && j == w.h(of)) {
                            return new v(j, a, of);
                        }
                        j$.nio.file.j.k("year, month, and day not valid for Era");
                        return null;
                    }
                    if (a < 1) {
                        j$.nio.file.j.d("Invalid YearOfEra: ", a);
                        return null;
                    }
                    int year = (j.b.getYear() + a) - 1;
                    try {
                        b0 = new v(LocalDate.of(year, a2, a3));
                    } catch (DateTimeException unused) {
                        b0 = new v(LocalDate.of(year, a2, 1)).b0(new j$.desugar.sun.nio.fs.m(6));
                    }
                    if (b0.b == j || j$.time.temporal.n.a(b0, ChronoField.YEAR_OF_ERA) <= 1 || a <= 1) {
                        return b0;
                    }
                    throw new DateTimeException("Invalid YearOfEra for Era: " + j + " " + a);
                }
            }
            ChronoField chronoField5 = ChronoField.DAY_OF_YEAR;
            if (map.containsKey(chronoField5)) {
                map.remove(chronoField);
                map.remove(chronoField2);
                if (vVar == j$.time.format.v.LENIENT) {
                    return new v(LocalDate.e0((j.b.getYear() + a) - 1, 1)).Z(j$.com.android.tools.r8.a.S(((Long) map.remove(chronoField5)).longValue(), 1L), ChronoUnit.DAYS);
                }
                int a4 = x(chronoField5).a(((Long) map.remove(chronoField5)).longValue(), chronoField5);
                LocalDate localDate2 = v.d;
                Objects.requireNonNull(j, "era");
                LocalDate localDate3 = j.b;
                LocalDate e0 = a == 1 ? LocalDate.e0(localDate3.getYear(), (j.b.getDayOfYear() + a4) - 1) : LocalDate.e0((localDate3.getYear() + a) - 1, a4);
                if (!e0.Z(j.b) && j == w.h(e0)) {
                    return new v(j, a, e0);
                }
                j$.nio.file.j.k("Invalid parameters");
            }
        }
        return null;
    }

    @Override // j$.time.chrono.j
    public final ChronoLocalDate P(int i, int i2, int i3) {
        return new v(LocalDate.of(i, i2, i3));
    }

    @Override // j$.time.chrono.a, j$.time.chrono.j
    public final ChronoLocalDate R(Map map, j$.time.format.v vVar) {
        return (v) super.R(map, vVar);
    }

    @Override // j$.time.chrono.j
    public final ChronoZonedDateTime S(Instant instant, ZoneId zoneId) {
        return i.V(this, instant, zoneId);
    }

    @Override // j$.time.chrono.j
    public final ChronoLocalDate h(long j) {
        return new v(LocalDate.ofEpochDay(j));
    }

    @Override // j$.time.chrono.j
    public final String i() {
        return "Japanese";
    }

    @Override // j$.time.chrono.a
    public final ChronoLocalDate m() {
        return new v(LocalDate.W(LocalDate.d0(new j$.time.a(ZoneId.systemDefault()))));
    }

    @Override // j$.time.chrono.j
    public final String p() {
        return "japanese";
    }

    @Override // j$.time.chrono.j
    public final ChronoLocalDate s(int i, int i2) {
        return new v(LocalDate.e0(i, i2));
    }

    public Object writeReplace() {
        return new c0((byte) 1, this);
    }

    @Override // j$.time.chrono.j
    public final j$.time.temporal.p x(ChronoField chronoField) {
        switch (s.a[chronoField.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
                j$.nio.file.j.b(chronoField, "Unsupported field: ");
                return null;
            case 5:
                w[] wVarArr = w.e;
                int year = wVarArr[wVarArr.length - 1].b.getYear();
                int year2 = 1000000000 - wVarArr[wVarArr.length - 1].b.getYear();
                int year3 = wVarArr[0].b.getYear();
                int i = 1;
                while (true) {
                    w[] wVarArr2 = w.e;
                    if (i >= wVarArr2.length) {
                        return j$.time.temporal.p.g(year2, 999999999 - year);
                    }
                    w wVar = wVarArr2[i];
                    year2 = Math.min(year2, (wVar.b.getYear() - year3) + 1);
                    year3 = wVar.b.getYear();
                    i++;
                }
            case 6:
                w wVar2 = w.d;
                long j = ChronoField.DAY_OF_YEAR.b.c;
                for (w wVar3 : w.e) {
                    j = Math.min(j, ((wVar3.b.a0() ? 366 : 365) - wVar3.b.getDayOfYear()) + 1);
                    if (wVar3.i() != null) {
                        j = Math.min(j, wVar3.i().b.getDayOfYear() - 1);
                    }
                }
                return j$.time.temporal.p.g(j, ChronoField.DAY_OF_YEAR.b.d);
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                return j$.time.temporal.p.f(v.d.getYear(), 999999999L);
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                long j2 = w.d.a;
                w[] wVarArr3 = w.e;
                return j$.time.temporal.p.f(j2, wVarArr3[wVarArr3.length - 1].a);
            default:
                return chronoField.b;
        }
    }

    @Override // j$.time.chrono.j
    public final List z() {
        w[] wVarArr = w.e;
        return j$.com.android.tools.r8.a.E((w[]) Arrays.copyOf(wVarArr, wVarArr.length));
    }
}
