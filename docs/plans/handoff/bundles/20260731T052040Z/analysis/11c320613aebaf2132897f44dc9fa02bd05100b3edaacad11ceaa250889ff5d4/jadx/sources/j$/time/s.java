package j$.time;

import com.google.android.exoplayer2.C;
import j$.time.format.e0;
import j$.time.format.f0;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.TemporalUnit;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Locale;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class s implements j$.time.temporal.l, j$.time.temporal.m, Comparable, Serializable {
    public static final /* synthetic */ int b = 0;
    private static final long serialVersionUID = -23038383694477807L;
    public final int a;

    static {
        j$.time.format.v vVar = new j$.time.format.v();
        vVar.o(j$.time.temporal.a.YEAR, 4, 10, f0.EXCEEDS_PAD);
        vVar.s(Locale.getDefault(), e0.SMART, null);
    }

    public s(int i) {
        this.a = i;
    }

    public static s Z(int i) {
        j$.time.temporal.a.YEAR.M(i);
        return new s(i);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new q((byte) 11, this);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final Object F(j$.desugar.sun.nio.fs.m mVar) {
        return mVar == j$.time.temporal.q.b ? j$.time.chrono.s.c : mVar == j$.time.temporal.q.c ? ChronoUnit.YEARS : j$.time.temporal.q.c(this, mVar);
    }

    @Override // j$.time.temporal.l
    /* renamed from: H */
    public final j$.time.temporal.l z(long j, ChronoUnit chronoUnit) {
        long j2;
        if (j == Long.MIN_VALUE) {
            this = d(Long.MAX_VALUE, chronoUnit);
            j2 = 1;
        } else {
            j2 = -j;
        }
        return this.d(j2, chronoUnit);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final long M(j$.time.temporal.p pVar) {
        if (!(pVar instanceof j$.time.temporal.a)) {
            return pVar.F(this);
        }
        int i = r.a[((j$.time.temporal.a) pVar).ordinal()];
        if (i == 1) {
            int i2 = this.a;
            if (i2 < 1) {
                i2 = 1 - i2;
            }
            return i2;
        }
        if (i == 2) {
            return this.a;
        }
        if (i == 3) {
            return this.a < 1 ? 0 : 1;
        }
        throw new j$.time.temporal.r(b.a("Unsupported field: ", pVar));
    }

    @Override // j$.time.temporal.l
    /* renamed from: a0, reason: merged with bridge method [inline-methods] */
    public final s d(long j, TemporalUnit temporalUnit) {
        if (!(temporalUnit instanceof ChronoUnit)) {
            return (s) temporalUnit.k(this, j);
        }
        int i = r.b[((ChronoUnit) temporalUnit).ordinal()];
        if (i == 1) {
            return b0(j);
        }
        if (i == 2) {
            return b0(j$.com.android.tools.r8.a.T(j, 10L));
        }
        if (i == 3) {
            return b0(j$.com.android.tools.r8.a.T(j, 100L));
        }
        if (i == 4) {
            return b0(j$.com.android.tools.r8.a.T(j, 1000L));
        }
        if (i == 5) {
            j$.time.temporal.a aVar = j$.time.temporal.a.ERA;
            return c(j$.com.android.tools.r8.a.S(M(aVar), j), aVar);
        }
        j$.nio.file.m.b(temporalUnit, "Unsupported unit: ");
        return null;
    }

    public final s b0(long j) {
        if (j == 0) {
            return this;
        }
        j$.time.temporal.a aVar = j$.time.temporal.a.YEAR;
        return Z(aVar.b.a(this.a + j, aVar));
    }

    @Override // j$.time.temporal.l
    /* renamed from: c0, reason: merged with bridge method [inline-methods] */
    public final s c(long j, j$.time.temporal.p pVar) {
        if (!(pVar instanceof j$.time.temporal.a)) {
            return (s) pVar.H(this, j);
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) pVar;
        aVar.M(j);
        int i = r.a[aVar.ordinal()];
        if (i == 1) {
            if (this.a < 1) {
                j = 1 - j;
            }
            return Z((int) j);
        }
        if (i == 2) {
            return Z((int) j);
        }
        if (i == 3) {
            return M(j$.time.temporal.a.ERA) == j ? this : Z(1 - this.a);
        }
        throw new j$.time.temporal.r(b.a("Unsupported field: ", pVar));
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return this.a - ((s) obj).a;
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final boolean e(j$.time.temporal.p pVar) {
        return pVar instanceof j$.time.temporal.a ? pVar == j$.time.temporal.a.YEAR || pVar == j$.time.temporal.a.YEAR_OF_ERA || pVar == j$.time.temporal.a.ERA : pVar != null && pVar.k(this);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof s) && this.a == ((s) obj).a;
    }

    public final int hashCode() {
        return this.a;
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final int k(j$.time.temporal.p pVar) {
        return o(pVar).a(M(pVar), pVar);
    }

    @Override // j$.time.temporal.l
    public final j$.time.temporal.l n(LocalDate localDate) {
        return (s) j$.com.android.tools.r8.a.a(localDate, this);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final j$.time.temporal.s o(j$.time.temporal.p pVar) {
        if (pVar == j$.time.temporal.a.YEAR_OF_ERA) {
            return j$.time.temporal.s.f(1L, this.a <= 0 ? C.NANOS_PER_SECOND : 999999999L);
        }
        return j$.time.temporal.q.d(this, pVar);
    }

    public final String toString() {
        return Integer.toString(this.a);
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.l u(j$.time.temporal.l lVar) {
        if (j$.com.android.tools.r8.a.B(lVar).equals(j$.time.chrono.s.c)) {
            return lVar.c(this.a, j$.time.temporal.a.YEAR);
        }
        j$.nio.file.m.k("Adjustment only supported on ISO date-time");
        return null;
    }
}
