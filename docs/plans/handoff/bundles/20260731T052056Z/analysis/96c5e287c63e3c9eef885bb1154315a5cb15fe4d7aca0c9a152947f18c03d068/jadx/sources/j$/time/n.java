package j$.time;

import j$.time.temporal.ChronoUnit;
import j$.time.temporal.Temporal;
import j$.time.temporal.TemporalAdjuster;
import j$.time.temporal.TemporalUnit;
import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes2.dex */
public final class n implements Temporal, TemporalAdjuster, Comparable, Serializable {
    public static final /* synthetic */ int c = 0;
    private static final long serialVersionUID = 2287754244819255394L;
    public final LocalDateTime a;
    public final ZoneOffset b;

    static {
        LocalDateTime localDateTime = LocalDateTime.c;
        ZoneOffset zoneOffset = ZoneOffset.g;
        localDateTime.getClass();
        new n(localDateTime, zoneOffset);
        LocalDateTime localDateTime2 = LocalDateTime.d;
        ZoneOffset zoneOffset2 = ZoneOffset.f;
        localDateTime2.getClass();
        new n(localDateTime2, zoneOffset2);
    }

    public n(LocalDateTime localDateTime, ZoneOffset zoneOffset) {
        this.a = (LocalDateTime) Objects.requireNonNull(localDateTime, "dateTime");
        this.b = (ZoneOffset) Objects.requireNonNull(zoneOffset, "offset");
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    public static n u(Instant instant, ZoneId zoneId) {
        Objects.requireNonNull(instant, "instant");
        Objects.requireNonNull(zoneId, "zone");
        ZoneOffset d = zoneId.v().d(instant);
        return new n(LocalDateTime.w(instant.getEpochSecond(), instant.b, d), d);
    }

    private Object writeReplace() {
        return new r((byte) 10, this);
    }

    @Override // j$.time.temporal.Temporal
    public final Temporal a(long j, j$.time.temporal.n nVar) {
        if (!(nVar instanceof j$.time.temporal.a)) {
            return (n) nVar.k(this, j);
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) nVar;
        int i = m.a[aVar.ordinal()];
        LocalDateTime localDateTime = this.a;
        return i != 1 ? i != 2 ? w(localDateTime.a(j, nVar), this.b) : w(localDateTime, ZoneOffset.D(aVar.b.a(j, aVar))) : u(Instant.w(j, localDateTime.b.d), this.b);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final boolean c(j$.time.temporal.n nVar) {
        if (nVar instanceof j$.time.temporal.a) {
            return true;
        }
        return nVar != null && nVar.f(this);
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        int compare;
        n nVar = (n) obj;
        boolean equals = this.b.equals(nVar.b);
        LocalDateTime localDateTime = this.a;
        if (equals) {
            compare = localDateTime.compareTo(nVar.a);
        } else {
            ZoneOffset zoneOffset = this.b;
            localDateTime.getClass();
            long w = a.w(localDateTime, zoneOffset);
            LocalDateTime localDateTime2 = nVar.a;
            ZoneOffset zoneOffset2 = nVar.b;
            localDateTime2.getClass();
            compare = Long.compare(w, a.w(localDateTime2, zoneOffset2));
            if (compare == 0) {
                compare = this.a.b.d - nVar.a.b.d;
            }
        }
        return compare == 0 ? this.a.compareTo(nVar.a) : compare;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v11, types: [j$.time.n] */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v4 */
    @Override // j$.time.temporal.Temporal
    public final long d(Temporal temporal, TemporalUnit temporalUnit) {
        if (temporal instanceof n) {
            temporal = (n) temporal;
        } else {
            try {
                ZoneOffset A = ZoneOffset.A(temporal);
                LocalDate localDate = (LocalDate) temporal.i(j$.time.temporal.o.f);
                LocalTime localTime = (LocalTime) temporal.i(j$.time.temporal.o.g);
                temporal = (localDate == null || localTime == null) ? u(Instant.v(temporal), A) : new n(LocalDateTime.of(localDate, localTime), A);
            } catch (c e) {
                h.h("Unable to obtain OffsetDateTime from TemporalAccessor: ", temporal, temporal.getClass().getName(), e);
                return 0L;
            }
        }
        if (!(temporalUnit instanceof ChronoUnit)) {
            return temporalUnit.between(this, temporal);
        }
        ZoneOffset zoneOffset = this.b;
        boolean equals = zoneOffset.equals(temporal.b);
        n nVar = temporal;
        if (!equals) {
            nVar = new n(temporal.a.y(zoneOffset.b - temporal.b.b), zoneOffset);
        }
        return this.a.d(nVar.a, temporalUnit);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof n) {
            n nVar = (n) obj;
            if (this.a.equals(nVar.a) && this.b.equals(nVar.b)) {
                return true;
            }
        }
        return false;
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final int f(j$.time.temporal.n nVar) {
        if (!(nVar instanceof j$.time.temporal.a)) {
            return j$.time.temporal.o.a(this, nVar);
        }
        int i = m.a[((j$.time.temporal.a) nVar).ordinal()];
        if (i != 1) {
            return i != 2 ? this.a.f(nVar) : this.b.b;
        }
        throw new j$.time.temporal.p("Invalid field 'InstantSeconds' for get() method, use getLong() instead");
    }

    @Override // j$.time.temporal.Temporal
    /* renamed from: g */
    public final Temporal n(LocalDate localDate) {
        if (d.b(localDate)) {
            return w(this.a.n(localDate), this.b);
        }
        localDate.getClass();
        return (n) a.a(localDate, this);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final j$.time.temporal.q h(j$.time.temporal.n nVar) {
        return nVar instanceof j$.time.temporal.a ? (nVar == j$.time.temporal.a.INSTANT_SECONDS || nVar == j$.time.temporal.a.OFFSET_SECONDS) ? ((j$.time.temporal.a) nVar).b : this.a.h(nVar) : nVar.g(this);
    }

    public final int hashCode() {
        return this.b.b ^ this.a.hashCode();
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final Object i(f fVar) {
        if (fVar == j$.time.temporal.o.d || fVar == j$.time.temporal.o.e) {
            return this.b;
        }
        if (fVar == j$.time.temporal.o.a) {
            return null;
        }
        return fVar == j$.time.temporal.o.f ? this.a.toLocalDate() : fVar == j$.time.temporal.o.g ? this.a.b : fVar == j$.time.temporal.o.b ? j$.time.chrono.p.c : fVar == j$.time.temporal.o.c ? ChronoUnit.NANOS : fVar.e(this);
    }

    @Override // j$.time.temporal.TemporalAdjuster
    public final Temporal k(Temporal temporal) {
        return temporal.a(this.a.toLocalDate().toEpochDay(), j$.time.temporal.a.EPOCH_DAY).a(this.a.b.G(), j$.time.temporal.a.NANO_OF_DAY).a(this.b.b, j$.time.temporal.a.OFFSET_SECONDS);
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
        int i = m.a[((j$.time.temporal.a) nVar).ordinal()];
        if (i != 1) {
            return i != 2 ? this.a.q(nVar) : this.b.b;
        }
        LocalDateTime localDateTime = this.a;
        ZoneOffset zoneOffset = this.b;
        localDateTime.getClass();
        return a.w(localDateTime, zoneOffset);
    }

    public final String toString() {
        return this.a.toString() + this.b.c;
    }

    @Override // j$.time.temporal.Temporal
    /* renamed from: v, reason: merged with bridge method [inline-methods] */
    public final n b(long j, TemporalUnit temporalUnit) {
        return temporalUnit instanceof ChronoUnit ? w(this.a.b(j, temporalUnit), this.b) : (n) temporalUnit.f(this, j);
    }

    public final n w(LocalDateTime localDateTime, ZoneOffset zoneOffset) {
        return (this.a == localDateTime && this.b.equals(zoneOffset)) ? this : new n(localDateTime, zoneOffset);
    }
}
