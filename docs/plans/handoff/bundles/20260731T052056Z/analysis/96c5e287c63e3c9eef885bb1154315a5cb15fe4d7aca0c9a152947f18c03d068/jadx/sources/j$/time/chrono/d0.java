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

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes2.dex */
public final class d0 extends a implements Serializable {
    public static final d0 c = new d0();
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

    private d0() {
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    @Override // j$.time.chrono.a
    public final ChronoLocalDate A(Map map, j$.time.format.e0 e0Var) {
        return (f0) super.A(map, e0Var);
    }

    @Override // j$.time.chrono.a
    public final ChronoZonedDateTime E(Instant instant, ZoneId zoneId) {
        return i.v(this, instant, zoneId);
    }

    @Override // j$.time.chrono.a
    public final List eras() {
        return j$.time.a.Q(g0.values());
    }

    @Override // j$.time.chrono.a
    public final ChronoLocalDate g(int i, int i2, int i3) {
        return new f0(LocalDate.of(i - 543, i2, i3));
    }

    @Override // j$.time.chrono.a
    public final String getCalendarType() {
        return "buddhist";
    }

    @Override // j$.time.chrono.a
    public final String getId() {
        return "ThaiBuddhist";
    }

    @Override // j$.time.chrono.a
    public final ChronoLocalDate h(TemporalAccessor temporalAccessor) {
        return temporalAccessor instanceof f0 ? (f0) temporalAccessor : new f0(LocalDate.w(temporalAccessor));
    }

    @Override // j$.time.chrono.a
    public final ChronoLocalDate i(long j) {
        return new f0(LocalDate.ofEpochDay(j));
    }

    @Override // j$.time.chrono.a
    public final boolean isLeapYear(long j) {
        return p.c.isLeapYear(j - 543);
    }

    @Override // j$.time.chrono.a
    public final ChronoLocalDate k() {
        return new f0(LocalDate.w(LocalDate.B(j$.time.a.X())));
    }

    @Override // j$.time.chrono.a
    public final ChronoLocalDate o(int i, int i2) {
        return new f0(LocalDate.C(i - 543, i2));
    }

    @Override // j$.time.chrono.a
    public final j q(int i) {
        if (i == 0) {
            return g0.BEFORE_BE;
        }
        if (i == 1) {
            return g0.BE;
        }
        j$.time.h.d("Invalid era: ", i);
        return null;
    }

    @Override // j$.time.chrono.a
    public final int w(j jVar, int i) {
        if (jVar instanceof g0) {
            return jVar == g0.BE ? i : 1 - i;
        }
        throw new ClassCastException("Era must be BuddhistEra");
    }

    public Object writeReplace() {
        return new b0((byte) 1, this);
    }

    @Override // j$.time.chrono.a
    public final j$.time.temporal.q x(j$.time.temporal.a aVar) {
        int i = c0.a[aVar.ordinal()];
        if (i == 1) {
            j$.time.temporal.q qVar = j$.time.temporal.a.PROLEPTIC_MONTH.b;
            return j$.time.temporal.q.f(qVar.a + 6516, qVar.d + 6516);
        }
        if (i == 2) {
            j$.time.temporal.q qVar2 = j$.time.temporal.a.YEAR.b;
            return j$.time.temporal.q.g(1L, (-(qVar2.a + 543)) + 1, qVar2.d + 543);
        }
        if (i != 3) {
            return aVar.b;
        }
        j$.time.temporal.q qVar3 = j$.time.temporal.a.YEAR.b;
        return j$.time.temporal.q.f(qVar3.a + 543, qVar3.d + 543);
    }
}
