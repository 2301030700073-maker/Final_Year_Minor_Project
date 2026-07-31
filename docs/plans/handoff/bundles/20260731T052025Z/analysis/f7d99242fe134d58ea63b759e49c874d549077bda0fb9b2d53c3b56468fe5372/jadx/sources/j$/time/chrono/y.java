package j$.time.chrono;

import j$.time.Instant;
import j$.time.LocalDate;
import j$.time.ZoneId;
import j$.time.temporal.ChronoField;
import j$.time.temporal.TemporalAccessor;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.List;
import java.util.Map;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public final class y extends a implements Serializable {
    public static final y c = new y();
    private static final long serialVersionUID = 1039765215346859963L;

    private y() {
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    @Override // j$.time.chrono.j
    public final k A(int i) {
        if (i == 0) {
            return b0.BEFORE_ROC;
        }
        if (i == 1) {
            return b0.ROC;
        }
        j$.nio.file.j.d("Invalid era: ", i);
        return null;
    }

    @Override // j$.time.chrono.j
    public final int C(k kVar, int i) {
        if (kVar instanceof b0) {
            return kVar == b0.ROC ? i : 1 - i;
        }
        throw new ClassCastException("Era must be MinguoEra");
    }

    @Override // j$.time.chrono.j
    public final ChronoLocalDate H(TemporalAccessor temporalAccessor) {
        return temporalAccessor instanceof a0 ? (a0) temporalAccessor : new a0(LocalDate.W(temporalAccessor));
    }

    @Override // j$.time.chrono.j
    public final ChronoLocalDate P(int i, int i2, int i3) {
        return new a0(LocalDate.of(i + 1911, i2, i3));
    }

    @Override // j$.time.chrono.a, j$.time.chrono.j
    public final ChronoLocalDate R(Map map, j$.time.format.v vVar) {
        return (a0) super.R(map, vVar);
    }

    @Override // j$.time.chrono.j
    public final ChronoZonedDateTime S(Instant instant, ZoneId zoneId) {
        return i.V(this, instant, zoneId);
    }

    @Override // j$.time.chrono.j
    public final ChronoLocalDate h(long j) {
        return new a0(LocalDate.ofEpochDay(j));
    }

    @Override // j$.time.chrono.j
    public final String i() {
        return "Minguo";
    }

    @Override // j$.time.chrono.a
    public final ChronoLocalDate m() {
        return new a0(LocalDate.W(LocalDate.d0(new j$.time.a(ZoneId.systemDefault()))));
    }

    @Override // j$.time.chrono.j
    public final String p() {
        return "roc";
    }

    @Override // j$.time.chrono.j
    public final ChronoLocalDate s(int i, int i2) {
        return new a0(LocalDate.e0(i + 1911, i2));
    }

    public Object writeReplace() {
        return new c0((byte) 1, this);
    }

    @Override // j$.time.chrono.j
    public final j$.time.temporal.p x(ChronoField chronoField) {
        int i = x.a[chronoField.ordinal()];
        if (i == 1) {
            j$.time.temporal.p pVar = ChronoField.PROLEPTIC_MONTH.b;
            return j$.time.temporal.p.f(pVar.a - 22932, pVar.d - 22932);
        }
        if (i == 2) {
            j$.time.temporal.p pVar2 = ChronoField.YEAR.b;
            return j$.time.temporal.p.g(pVar2.d - 1911, (-pVar2.a) + 1912);
        }
        if (i != 3) {
            return chronoField.b;
        }
        j$.time.temporal.p pVar3 = ChronoField.YEAR.b;
        return j$.time.temporal.p.f(pVar3.a - 1911, pVar3.d - 1911);
    }

    @Override // j$.time.chrono.j
    public final List z() {
        return j$.com.android.tools.r8.a.E(b0.values());
    }
}
