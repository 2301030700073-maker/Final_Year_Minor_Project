package j$.time.chrono;

import j$.time.Instant;
import j$.time.LocalDate;
import j$.time.ZoneId;
import j$.time.temporal.TemporalAccessor;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class g0 extends a implements Serializable {
    public static final g0 c = new g0();
    private static final long serialVersionUID = 2775954514031616474L;

    static {
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        HashMap hashMap3 = new HashMap();
        hashMap.put("en", new String[]{"BB", "BE"});
        hashMap.put("th", new String[]{"BB", "BE"});
        hashMap2.put("en", new String[]{"B.B.", "B.E."});
        hashMap2.put("th", new String[]{"พ.ศ.", "ปีก่อนคริสต์กาลที่"});
        hashMap3.put("en", new String[]{"Before Buddhist", "Budhhist Era"});
        hashMap3.put("th", new String[]{"พุทธศักราช", "ปีก่อนคริสต์กาลที่"});
    }

    private g0() {
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    @Override // j$.time.chrono.l
    public final List A() {
        return j$.com.android.tools.r8.a.G(j0.values());
    }

    @Override // j$.time.chrono.l
    public final m B(int i) {
        if (i == 0) {
            return j0.BEFORE_BE;
        }
        if (i == 1) {
            return j0.BE;
        }
        j$.nio.file.m.d("Invalid era: ", i);
        return null;
    }

    @Override // j$.time.chrono.l
    public final int D(m mVar, int i) {
        if (mVar instanceof j0) {
            return mVar == j0.BE ? i : 1 - i;
        }
        throw new ClassCastException("Era must be BuddhistEra");
    }

    @Override // j$.time.chrono.l
    public final b J(TemporalAccessor temporalAccessor) {
        return temporalAccessor instanceof i0 ? (i0) temporalAccessor : new i0(LocalDate.b0(temporalAccessor));
    }

    @Override // j$.time.chrono.l
    public final b S(int i, int i2, int i3) {
        return new i0(LocalDate.of(i - 543, i2, i3));
    }

    @Override // j$.time.chrono.a, j$.time.chrono.l
    public final b U(Map map, j$.time.format.e0 e0Var) {
        return (i0) super.U(map, e0Var);
    }

    @Override // j$.time.chrono.l
    public final ChronoZonedDateTime V(Instant instant, ZoneId zoneId) {
        return k.a0(this, instant, zoneId);
    }

    @Override // j$.time.chrono.l
    public final boolean Y(long j) {
        return s.c.Y(j - 543);
    }

    @Override // j$.time.chrono.l
    public final b h(long j) {
        return new i0(LocalDate.j0(j));
    }

    @Override // j$.time.chrono.l
    public final String i() {
        return "ThaiBuddhist";
    }

    @Override // j$.time.chrono.a
    public final b n() {
        return new i0(LocalDate.b0(LocalDate.i0(j$.com.android.tools.r8.a.X())));
    }

    @Override // j$.time.chrono.l
    public final String q() {
        return "buddhist";
    }

    @Override // j$.time.chrono.l
    public final b s(int i, int i2) {
        return new i0(LocalDate.k0(i - 543, i2));
    }

    public Object writeReplace() {
        return new e0((byte) 1, this);
    }

    @Override // j$.time.chrono.l
    public final j$.time.temporal.s y(j$.time.temporal.a aVar) {
        int i = f0.a[aVar.ordinal()];
        if (i == 1) {
            j$.time.temporal.s sVar = j$.time.temporal.a.PROLEPTIC_MONTH.b;
            return j$.time.temporal.s.f(sVar.a + 6516, sVar.d + 6516);
        }
        if (i == 2) {
            j$.time.temporal.s sVar2 = j$.time.temporal.a.YEAR.b;
            return j$.time.temporal.s.g(1L, (-(sVar2.a + 543)) + 1, sVar2.d + 543);
        }
        if (i != 3) {
            return aVar.b;
        }
        j$.time.temporal.s sVar3 = j$.time.temporal.a.YEAR.b;
        return j$.time.temporal.s.f(sVar3.a + 543, sVar3.d + 543);
    }
}
