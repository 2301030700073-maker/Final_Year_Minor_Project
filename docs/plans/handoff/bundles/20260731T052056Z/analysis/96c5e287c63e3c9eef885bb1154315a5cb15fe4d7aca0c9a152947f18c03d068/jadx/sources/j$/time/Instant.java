package j$.time;

import j$.time.format.DateTimeFormatter;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.Temporal;
import j$.time.temporal.TemporalAccessor;
import j$.time.temporal.TemporalAdjuster;
import j$.time.temporal.TemporalUnit;
import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes2.dex */
public final class Instant implements Temporal, TemporalAdjuster, Comparable<Instant>, Serializable {
    public static final Instant c = new Instant(0, 0);
    private static final long serialVersionUID = -665713676816604388L;
    public final long a;
    public final int b;

    static {
        w(-31557014167219200L, 0L);
        w(31556889864403199L, 999999999L);
    }

    public Instant(long j, int i) {
        this.a = j;
        this.b = i;
    }

    public static Instant now() {
        b.b.getClass();
        return ofEpochMilli(System.currentTimeMillis());
    }

    public static Instant ofEpochMilli(long j) {
        return u(a.T(j, 1000L), ((int) a.S(j, 1000L)) * 1000000);
    }

    public static Instant ofEpochSecond(long j) {
        return u(j, 0);
    }

    public static Instant parse(CharSequence charSequence) {
        return (Instant) DateTimeFormatter.g.a(charSequence, new f(0));
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    public static Instant u(long j, int i) {
        if ((i | j) == 0) {
            return c;
        }
        if (j >= -31557014167219200L && j <= 31556889864403199L) {
            return new Instant(j, i);
        }
        h.k("Instant exceeds minimum or maximum instant");
        return null;
    }

    public static Instant v(TemporalAccessor temporalAccessor) {
        if (temporalAccessor instanceof Instant) {
            return (Instant) temporalAccessor;
        }
        Objects.requireNonNull(temporalAccessor, "temporal");
        try {
            return w(temporalAccessor.q(j$.time.temporal.a.INSTANT_SECONDS), temporalAccessor.f(j$.time.temporal.a.NANO_OF_SECOND));
        } catch (c e) {
            h.h("Unable to obtain Instant from TemporalAccessor: ", temporalAccessor, temporalAccessor.getClass().getName(), e);
            return null;
        }
    }

    public static Instant w(long j, long j2) {
        return u(a.P(j, a.T(j2, 1000000000L)), (int) a.S(j2, 1000000000L));
    }

    private Object writeReplace() {
        return new r((byte) 2, this);
    }

    @Override // j$.time.temporal.Temporal
    public final Temporal a(long j, j$.time.temporal.n nVar) {
        if (!(nVar instanceof j$.time.temporal.a)) {
            return (Instant) nVar.k(this, j);
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) nVar;
        aVar.o(j);
        int i = e.a[aVar.ordinal()];
        if (i == 1) {
            return j != ((long) this.b) ? u(this.a, (int) j) : this;
        }
        if (i == 2) {
            int i2 = ((int) j) * 1000;
            return i2 != this.b ? u(this.a, i2) : this;
        }
        if (i == 3) {
            int i3 = ((int) j) * 1000000;
            return i3 != this.b ? u(this.a, i3) : this;
        }
        if (i == 4) {
            return j != this.a ? u(j, this.b) : this;
        }
        throw new j$.time.temporal.p(d.a("Unsupported field: ", nVar));
    }

    public ZonedDateTime atZone(ZoneId zoneId) {
        return ZonedDateTime.v(this, zoneId);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final boolean c(j$.time.temporal.n nVar) {
        return nVar instanceof j$.time.temporal.a ? nVar == j$.time.temporal.a.INSTANT_SECONDS || nVar == j$.time.temporal.a.NANO_OF_SECOND || nVar == j$.time.temporal.a.MICRO_OF_SECOND || nVar == j$.time.temporal.a.MILLI_OF_SECOND : nVar != null && nVar.f(this);
    }

    @Override // java.lang.Comparable
    public int compareTo(Instant instant) {
        int compare = Long.compare(this.a, instant.a);
        return compare != 0 ? compare : this.b - instant.b;
    }

    @Override // j$.time.temporal.Temporal
    public final long d(Temporal temporal, TemporalUnit temporalUnit) {
        Instant v = v(temporal);
        if (!(temporalUnit instanceof ChronoUnit)) {
            return temporalUnit.between(this, v);
        }
        switch (e.b[((ChronoUnit) temporalUnit).ordinal()]) {
            case 1:
                return a.P(a.U(a.V(v.a, this.a), 1000000000L), v.b - this.b);
            case 2:
                return a.P(a.U(a.V(v.a, this.a), 1000000000L), v.b - this.b) / 1000;
            case 3:
                return a.V(v.toEpochMilli(), toEpochMilli());
            case 4:
                return y(v);
            case 5:
                return y(v) / 60;
            case 6:
                return y(v) / 3600;
            case 7:
                return y(v) / 43200;
            case 8:
                return y(v) / 86400;
            default:
                h.b(temporalUnit, "Unsupported unit: ");
                return 0L;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Instant) {
            Instant instant = (Instant) obj;
            if (this.a == instant.a && this.b == instant.b) {
                return true;
            }
        }
        return false;
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final int f(j$.time.temporal.n nVar) {
        if (!(nVar instanceof j$.time.temporal.a)) {
            return j$.time.temporal.o.d(this, nVar).a(nVar.i(this), nVar);
        }
        int i = e.a[((j$.time.temporal.a) nVar).ordinal()];
        if (i == 1) {
            return this.b;
        }
        if (i == 2) {
            return this.b / 1000;
        }
        if (i == 3) {
            return this.b / 1000000;
        }
        if (i == 4) {
            j$.time.temporal.a aVar = j$.time.temporal.a.INSTANT_SECONDS;
            aVar.b.a(this.a, aVar);
        }
        throw new j$.time.temporal.p(d.a("Unsupported field: ", nVar));
    }

    @Override // j$.time.temporal.Temporal
    /* renamed from: g */
    public final Temporal n(LocalDate localDate) {
        localDate.getClass();
        return (Instant) a.a(localDate, this);
    }

    public long getEpochSecond() {
        return this.a;
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final j$.time.temporal.q h(j$.time.temporal.n nVar) {
        return j$.time.temporal.o.d(this, nVar);
    }

    public int hashCode() {
        long j = this.a;
        return (this.b * 51) + ((int) (j ^ (j >>> 32)));
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final Object i(f fVar) {
        if (fVar == j$.time.temporal.o.c) {
            return ChronoUnit.NANOS;
        }
        if (fVar == j$.time.temporal.o.b || fVar == j$.time.temporal.o.a || fVar == j$.time.temporal.o.e || fVar == j$.time.temporal.o.d || fVar == j$.time.temporal.o.f || fVar == j$.time.temporal.o.g) {
            return null;
        }
        return fVar.e(this);
    }

    public boolean isBefore(Instant instant) {
        return compareTo(instant) < 0;
    }

    @Override // j$.time.temporal.TemporalAdjuster
    public final Temporal k(Temporal temporal) {
        return temporal.a(this.a, j$.time.temporal.a.INSTANT_SECONDS).a(this.b, j$.time.temporal.a.NANO_OF_SECOND);
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

    @Override // j$.time.temporal.Temporal
    /* renamed from: plus, reason: merged with bridge method [inline-methods] */
    public Instant b(long j, TemporalUnit temporalUnit) {
        if (!(temporalUnit instanceof ChronoUnit)) {
            return (Instant) temporalUnit.f(this, j);
        }
        switch (e.b[((ChronoUnit) temporalUnit).ordinal()]) {
            case 1:
                return x(0L, j);
            case 2:
                return x(j / 1000000, (j % 1000000) * 1000);
            case 3:
                return x(j / 1000, (j % 1000) * 1000000);
            case 4:
                return x(j, 0L);
            case 5:
                return x(a.U(j, 60L), 0L);
            case 6:
                return x(a.U(j, 3600L), 0L);
            case 7:
                return x(a.U(j, 43200L), 0L);
            case 8:
                return x(a.U(j, 86400L), 0L);
            default:
                h.b(temporalUnit, "Unsupported unit: ");
                return null;
        }
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final long q(j$.time.temporal.n nVar) {
        int i;
        if (!(nVar instanceof j$.time.temporal.a)) {
            return nVar.i(this);
        }
        int i2 = e.a[((j$.time.temporal.a) nVar).ordinal()];
        if (i2 == 1) {
            i = this.b;
        } else if (i2 == 2) {
            i = this.b / 1000;
        } else {
            if (i2 != 3) {
                if (i2 == 4) {
                    return this.a;
                }
                throw new j$.time.temporal.p(d.a("Unsupported field: ", nVar));
            }
            i = this.b / 1000000;
        }
        return i;
    }

    public long toEpochMilli() {
        long j = this.a;
        return (j >= 0 || this.b <= 0) ? a.P(a.U(j, 1000L), this.b / 1000000) : a.P(a.U(j + 1, 1000L), (this.b / 1000000) - 1000);
    }

    public String toString() {
        return DateTimeFormatter.g.format(this);
    }

    public final Instant x(long j, long j2) {
        if ((j | j2) == 0) {
            return this;
        }
        return w(a.P(a.P(this.a, j), j2 / 1000000000), this.b + (j2 % 1000000000));
    }

    public final long y(Instant instant) {
        long V = a.V(instant.a, this.a);
        long j = instant.b - this.b;
        return (V <= 0 || j >= 0) ? (V >= 0 || j <= 0) ? V : V + 1 : V - 1;
    }
}
