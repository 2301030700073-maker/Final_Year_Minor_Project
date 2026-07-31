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

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class a0 extends a implements Serializable {
    public static final a0 c = new a0();
    private static final long serialVersionUID = 1039765215346859963L;

    private a0() {
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    @Override // j$.time.chrono.l
    public final List A() {
        return j$.com.android.tools.r8.a.G(d0.values());
    }

    @Override // j$.time.chrono.l
    public final m B(int i) {
        if (i == 0) {
            return d0.BEFORE_ROC;
        }
        if (i == 1) {
            return d0.ROC;
        }
        j$.nio.file.m.d("Invalid era: ", i);
        return null;
    }

    @Override // j$.time.chrono.l
    public final int D(m mVar, int i) {
        if (mVar instanceof d0) {
            return mVar == d0.ROC ? i : 1 - i;
        }
        throw new ClassCastException("Era must be MinguoEra");
    }

    @Override // j$.time.chrono.l
    public final b J(TemporalAccessor temporalAccessor) {
        return temporalAccessor instanceof c0 ? (c0) temporalAccessor : new c0(LocalDate.b0(temporalAccessor));
    }

    @Override // j$.time.chrono.l
    public final b S(int i, int i2, int i3) {
        return new c0(LocalDate.of(i + 1911, i2, i3));
    }

    @Override // j$.time.chrono.a, j$.time.chrono.l
    public final b U(Map map, j$.time.format.e0 e0Var) {
        return (c0) super.U(map, e0Var);
    }

    @Override // j$.time.chrono.l
    public final ChronoZonedDateTime V(Instant instant, ZoneId zoneId) {
        return k.a0(this, instant, zoneId);
    }

    @Override // j$.time.chrono.l
    public final boolean Y(long j) {
        return s.c.Y(j + 1911);
    }

    @Override // j$.time.chrono.l
    public final b h(long j) {
        return new c0(LocalDate.j0(j));
    }

    @Override // j$.time.chrono.l
    public final String i() {
        return "Minguo";
    }

    @Override // j$.time.chrono.a
    public final b n() {
        return new c0(LocalDate.b0(LocalDate.i0(j$.com.android.tools.r8.a.X())));
    }

    @Override // j$.time.chrono.l
    public final String q() {
        return "roc";
    }

    @Override // j$.time.chrono.l
    public final b s(int i, int i2) {
        return new c0(LocalDate.k0(i + 1911, i2));
    }

    public Object writeReplace() {
        return new e0((byte) 1, this);
    }

    @Override // j$.time.chrono.l
    public final j$.time.temporal.s y(j$.time.temporal.a aVar) {
        int i = z.a[aVar.ordinal()];
        if (i == 1) {
            j$.time.temporal.s sVar = j$.time.temporal.a.PROLEPTIC_MONTH.b;
            return j$.time.temporal.s.f(sVar.a - 22932, sVar.d - 22932);
        }
        if (i == 2) {
            j$.time.temporal.s sVar2 = j$.time.temporal.a.YEAR.b;
            return j$.time.temporal.s.g(1L, sVar2.d - 1911, (-sVar2.a) + 1912);
        }
        if (i != 3) {
            return aVar.b;
        }
        j$.time.temporal.s sVar3 = j$.time.temporal.a.YEAR.b;
        return j$.time.temporal.s.f(sVar3.a - 1911, sVar3.d - 1911);
    }
}
