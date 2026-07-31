package j$.time.chrono;

import j$.time.Instant;
import j$.time.LocalDate;
import j$.time.ZoneId;
import j$.time.temporal.TemporalAccessor;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.List;
import java.util.Map;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes2.dex */
public final class x extends a implements Serializable {
    public static final x c = new x();
    private static final long serialVersionUID = 1039765215346859963L;

    private x() {
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    @Override // j$.time.chrono.a
    public final ChronoLocalDate A(Map map, j$.time.format.e0 e0Var) {
        return (z) super.A(map, e0Var);
    }

    @Override // j$.time.chrono.a
    public final ChronoZonedDateTime E(Instant instant, ZoneId zoneId) {
        return i.v(this, instant, zoneId);
    }

    @Override // j$.time.chrono.a
    public final List eras() {
        return j$.time.a.Q(a0.values());
    }

    @Override // j$.time.chrono.a
    public final ChronoLocalDate g(int i, int i2, int i3) {
        return new z(LocalDate.of(i + 1911, i2, i3));
    }

    @Override // j$.time.chrono.a
    public final String getCalendarType() {
        return "roc";
    }

    @Override // j$.time.chrono.a
    public final String getId() {
        return "Minguo";
    }

    @Override // j$.time.chrono.a
    public final ChronoLocalDate h(TemporalAccessor temporalAccessor) {
        return temporalAccessor instanceof z ? (z) temporalAccessor : new z(LocalDate.w(temporalAccessor));
    }

    @Override // j$.time.chrono.a
    public final ChronoLocalDate i(long j) {
        return new z(LocalDate.ofEpochDay(j));
    }

    @Override // j$.time.chrono.a
    public final boolean isLeapYear(long j) {
        return p.c.isLeapYear(j + 1911);
    }

    @Override // j$.time.chrono.a
    public final ChronoLocalDate k() {
        return new z(LocalDate.w(LocalDate.B(j$.time.a.X())));
    }

    @Override // j$.time.chrono.a
    public final ChronoLocalDate o(int i, int i2) {
        return new z(LocalDate.C(i + 1911, i2));
    }

    @Override // j$.time.chrono.a
    public final j q(int i) {
        if (i == 0) {
            return a0.BEFORE_ROC;
        }
        if (i == 1) {
            return a0.ROC;
        }
        j$.time.h.d("Invalid era: ", i);
        return null;
    }

    @Override // j$.time.chrono.a
    public final int w(j jVar, int i) {
        if (jVar instanceof a0) {
            return jVar == a0.ROC ? i : 1 - i;
        }
        throw new ClassCastException("Era must be MinguoEra");
    }

    public Object writeReplace() {
        return new b0((byte) 1, this);
    }

    @Override // j$.time.chrono.a
    public final j$.time.temporal.q x(j$.time.temporal.a aVar) {
        int i = w.a[aVar.ordinal()];
        if (i == 1) {
            j$.time.temporal.q qVar = j$.time.temporal.a.PROLEPTIC_MONTH.b;
            return j$.time.temporal.q.f(qVar.a - 22932, qVar.d - 22932);
        }
        if (i == 2) {
            j$.time.temporal.q qVar2 = j$.time.temporal.a.YEAR.b;
            return j$.time.temporal.q.g(1L, qVar2.d - 1911, (-qVar2.a) + 1912);
        }
        if (i != 3) {
            return aVar.b;
        }
        j$.time.temporal.q qVar3 = j$.time.temporal.a.YEAR.b;
        return j$.time.temporal.q.f(qVar3.a - 1911, qVar3.d - 1911);
    }
}
