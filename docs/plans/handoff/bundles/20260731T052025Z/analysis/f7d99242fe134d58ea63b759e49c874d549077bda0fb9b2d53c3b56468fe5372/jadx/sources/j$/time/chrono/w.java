package j$.time.chrono;

import j$.time.LocalDate;
import j$.time.temporal.ChronoField;
import j$.time.temporal.Temporal;
import j$.time.temporal.TemporalField;
import j$.time.temporal.TemporalQuery;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public final class w implements k, Serializable {
    public static final w d;
    public static final w[] e;
    private static final long serialVersionUID = 1466499369062886794L;
    public final transient int a;
    public final transient LocalDate b;
    public final transient String c;

    static {
        w wVar = new w(-1, LocalDate.of(1868, 1, 1), "Meiji");
        d = wVar;
        e = new w[]{wVar, new w(0, LocalDate.of(1912, 7, 30), "Taisho"), new w(1, LocalDate.of(1926, 12, 25), "Showa"), new w(2, LocalDate.of(1989, 1, 8), "Heisei"), new w(3, LocalDate.of(2019, 5, 1), "Reiwa")};
    }

    public w(int i, LocalDate localDate, String str) {
        this.a = i;
        this.b = localDate;
        this.c = str;
    }

    public static w h(LocalDate localDate) {
        if (localDate.Z(v.d)) {
            j$.nio.file.j.k("JapaneseDate before Meiji 6 are not supported");
            return null;
        }
        for (int length = e.length - 1; length >= 0; length--) {
            w wVar = e[length];
            if (localDate.compareTo((ChronoLocalDate) wVar.b) >= 0) {
                return wVar;
            }
        }
        return null;
    }

    public static w j(int i) {
        int i2 = i + 1;
        if (i2 >= 0) {
            w[] wVarArr = e;
            if (i2 < wVarArr.length) {
                return wVarArr[i2];
            }
        }
        j$.nio.file.j.d("Invalid era: ", i);
        return null;
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new c0((byte) 5, this);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final /* synthetic */ long J(TemporalField temporalField) {
        return j$.com.android.tools.r8.a.g(this, temporalField);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final /* synthetic */ Object L(TemporalQuery temporalQuery) {
        return j$.com.android.tools.r8.a.m(this, temporalQuery);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final /* synthetic */ boolean d(TemporalField temporalField) {
        return j$.com.android.tools.r8.a.i(this, temporalField);
    }

    @Override // j$.time.chrono.k
    public final int getValue() {
        return this.a;
    }

    public final w i() {
        if (this == e[r0.length - 1]) {
            return null;
        }
        return j(this.a + 1);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final /* synthetic */ int k(TemporalField temporalField) {
        return j$.com.android.tools.r8.a.f(this, temporalField);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final j$.time.temporal.p n(TemporalField temporalField) {
        ChronoField chronoField = ChronoField.ERA;
        return temporalField == chronoField ? t.c.x(chronoField) : j$.time.temporal.n.d(this, temporalField);
    }

    public final String toString() {
        return this.c;
    }

    @Override // j$.time.temporal.k
    public final Temporal u(Temporal temporal) {
        return temporal.b(getValue(), ChronoField.ERA);
    }
}
