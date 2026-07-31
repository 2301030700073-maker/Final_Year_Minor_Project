package j$.time.chrono;

import j$.time.LocalDate;
import j$.time.temporal.Temporal;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes2.dex */
public final class v implements j, Serializable {
    public static final v d;
    public static final v[] e;
    private static final long serialVersionUID = 1466499369062886794L;
    public final transient int a;
    public final transient LocalDate b;
    public final transient String c;

    static {
        v vVar = new v(-1, LocalDate.of(1868, 1, 1), "Meiji");
        d = vVar;
        e = new v[]{vVar, new v(0, LocalDate.of(1912, 7, 30), "Taisho"), new v(1, LocalDate.of(1926, 12, 25), "Showa"), new v(2, LocalDate.of(1989, 1, 8), "Heisei"), new v(3, LocalDate.of(2019, 5, 1), "Reiwa")};
    }

    public v(int i, LocalDate localDate, String str) {
        this.a = i;
        this.b = localDate;
        this.c = str;
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    public static v u(LocalDate localDate) {
        if (localDate.isBefore(u.d)) {
            j$.time.h.k("JapaneseDate before Meiji 6 are not supported");
            return null;
        }
        for (int length = e.length - 1; length >= 0; length--) {
            v vVar = e[length];
            if (localDate.compareTo((ChronoLocalDate) vVar.b) >= 0) {
                return vVar;
            }
        }
        return null;
    }

    public static v w(int i) {
        int i2 = i + 1;
        if (i2 >= 0) {
            v[] vVarArr = e;
            if (i2 < vVarArr.length) {
                return vVarArr[i2];
            }
        }
        j$.time.h.d("Invalid era: ", i);
        return null;
    }

    private Object writeReplace() {
        return new b0((byte) 5, this);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final /* synthetic */ boolean c(j$.time.temporal.n nVar) {
        return j$.time.a.r(this, nVar);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final /* synthetic */ int f(j$.time.temporal.n nVar) {
        return j$.time.a.m(this, nVar);
    }

    @Override // j$.time.chrono.j
    public final int getValue() {
        return this.a;
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final j$.time.temporal.q h(j$.time.temporal.n nVar) {
        j$.time.temporal.a aVar = j$.time.temporal.a.ERA;
        return nVar == aVar ? s.c.x(aVar) : j$.time.temporal.o.d(this, nVar);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final /* synthetic */ Object i(j$.time.f fVar) {
        return j$.time.a.v(this, fVar);
    }

    @Override // j$.time.temporal.TemporalAdjuster
    public final Temporal k(Temporal temporal) {
        return temporal.a(getValue(), j$.time.temporal.a.ERA);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final /* synthetic */ long q(j$.time.temporal.n nVar) {
        return j$.time.a.o(this, nVar);
    }

    public final String toString() {
        return this.c;
    }

    public final v v() {
        if (this == e[r0.length - 1]) {
            return null;
        }
        return w(this.a + 1);
    }
}
