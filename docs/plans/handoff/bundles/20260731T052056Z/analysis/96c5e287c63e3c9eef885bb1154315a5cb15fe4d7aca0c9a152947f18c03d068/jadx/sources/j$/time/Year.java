package j$.time;

import j$.time.format.e0;
import j$.time.format.f0;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.Temporal;
import j$.time.temporal.TemporalAdjuster;
import j$.time.temporal.TemporalUnit;
import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Locale;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes2.dex */
public final class Year implements Temporal, TemporalAdjuster, Comparable<Year>, Serializable {
    public static final /* synthetic */ int b = 0;
    private static final long serialVersionUID = -23038383694477807L;
    public final int a;

    static {
        j$.time.format.v vVar = new j$.time.format.v();
        vVar.n(j$.time.temporal.a.YEAR, 4, 10, f0.EXCEEDS_PAD);
        vVar.r(Locale.getDefault(), e0.SMART, null);
    }

    public Year(int i) {
        this.a = i;
    }

    public static Year now() {
        return u(LocalDate.B(a.X()).getYear());
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    public static Year u(int i) {
        j$.time.temporal.a.YEAR.o(i);
        return new Year(i);
    }

    private Object writeReplace() {
        return new r((byte) 11, this);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final boolean c(j$.time.temporal.n nVar) {
        return nVar instanceof j$.time.temporal.a ? nVar == j$.time.temporal.a.YEAR || nVar == j$.time.temporal.a.YEAR_OF_ERA || nVar == j$.time.temporal.a.ERA : nVar != null && nVar.f(this);
    }

    @Override // java.lang.Comparable
    public final int compareTo(Year year) {
        return this.a - year.a;
    }

    @Override // j$.time.temporal.Temporal
    public final long d(Temporal temporal, TemporalUnit temporalUnit) {
        Year u;
        if (temporal instanceof Year) {
            u = (Year) temporal;
        } else {
            Objects.requireNonNull(temporal, "temporal");
            try {
                if (!j$.time.chrono.p.c.equals(a.N(temporal))) {
                    temporal = LocalDate.w(temporal);
                }
                u = u(temporal.f(j$.time.temporal.a.YEAR));
            } catch (c e) {
                h.h("Unable to obtain Year from TemporalAccessor: ", temporal, temporal.getClass().getName(), e);
                return 0L;
            }
        }
        if (!(temporalUnit instanceof ChronoUnit)) {
            return temporalUnit.between(this, u);
        }
        long j = u.a - this.a;
        int i = s.b[((ChronoUnit) temporalUnit).ordinal()];
        if (i == 1) {
            return j;
        }
        if (i == 2) {
            return j / 10;
        }
        if (i == 3) {
            return j / 100;
        }
        if (i == 4) {
            return j / 1000;
        }
        if (i == 5) {
            j$.time.temporal.a aVar = j$.time.temporal.a.ERA;
            return u.q(aVar) - q(aVar);
        }
        h.b(temporalUnit, "Unsupported unit: ");
        return 0L;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof Year) && this.a == ((Year) obj).a;
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final int f(j$.time.temporal.n nVar) {
        return h(nVar).a(q(nVar), nVar);
    }

    @Override // j$.time.temporal.Temporal
    /* renamed from: g */
    public final Temporal n(LocalDate localDate) {
        localDate.getClass();
        return (Year) a.a(localDate, this);
    }

    public int getValue() {
        return this.a;
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final j$.time.temporal.q h(j$.time.temporal.n nVar) {
        if (nVar == j$.time.temporal.a.YEAR_OF_ERA) {
            return j$.time.temporal.q.f(1L, this.a <= 0 ? 1000000000L : 999999999L);
        }
        return j$.time.temporal.o.d(this, nVar);
    }

    public final int hashCode() {
        return this.a;
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final Object i(f fVar) {
        return fVar == j$.time.temporal.o.b ? j$.time.chrono.p.c : fVar == j$.time.temporal.o.c ? ChronoUnit.YEARS : j$.time.temporal.o.c(this, fVar);
    }

    @Override // j$.time.temporal.TemporalAdjuster
    public final Temporal k(Temporal temporal) {
        if (a.N(temporal).equals(j$.time.chrono.p.c)) {
            return temporal.a(this.a, j$.time.temporal.a.YEAR);
        }
        h.k("Adjustment only supported on ISO date-time");
        return null;
    }

    @Override // j$.time.temporal.Temporal
    public final Temporal o(long j, ChronoUnit chronoUnit) {
        long j2;
        if (j == Long.MIN_VALUE) {
            this = b(Long.MAX_VALUE, chronoUnit);
            j2 = 1;
        } else {
            j2 = -j;
        }
        return this.b(j2, chronoUnit);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final long q(j$.time.temporal.n nVar) {
        if (!(nVar instanceof j$.time.temporal.a)) {
            return nVar.i(this);
        }
        int i = s.a[((j$.time.temporal.a) nVar).ordinal()];
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
        throw new j$.time.temporal.p(d.a("Unsupported field: ", nVar));
    }

    public final String toString() {
        return Integer.toString(this.a);
    }

    @Override // j$.time.temporal.Temporal
    /* renamed from: v, reason: merged with bridge method [inline-methods] */
    public final Year b(long j, TemporalUnit temporalUnit) {
        if (!(temporalUnit instanceof ChronoUnit)) {
            return (Year) temporalUnit.f(this, j);
        }
        int i = s.b[((ChronoUnit) temporalUnit).ordinal()];
        if (i == 1) {
            return w(j);
        }
        if (i == 2) {
            return w(a.U(j, 10L));
        }
        if (i == 3) {
            return w(a.U(j, 100L));
        }
        if (i == 4) {
            return w(a.U(j, 1000L));
        }
        if (i == 5) {
            j$.time.temporal.a aVar = j$.time.temporal.a.ERA;
            return a(a.P(q(aVar), j), aVar);
        }
        h.b(temporalUnit, "Unsupported unit: ");
        return null;
    }

    public final Year w(long j) {
        if (j == 0) {
            return this;
        }
        j$.time.temporal.a aVar = j$.time.temporal.a.YEAR;
        return u(aVar.b.a(this.a + j, aVar));
    }

    @Override // j$.time.temporal.Temporal
    /* renamed from: x, reason: merged with bridge method [inline-methods] */
    public final Year a(long j, j$.time.temporal.n nVar) {
        if (!(nVar instanceof j$.time.temporal.a)) {
            return (Year) nVar.k(this, j);
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) nVar;
        aVar.o(j);
        int i = s.a[aVar.ordinal()];
        if (i == 1) {
            if (this.a < 1) {
                j = 1 - j;
            }
            return u((int) j);
        }
        if (i == 2) {
            return u((int) j);
        }
        if (i == 3) {
            return q(j$.time.temporal.a.ERA) == j ? this : u(1 - this.a);
        }
        throw new j$.time.temporal.p(d.a("Unsupported field: ", nVar));
    }
}
