package j$.time;

import j$.time.format.DateTimeFormatter;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.TemporalUnit;
import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class OffsetDateTime implements j$.time.temporal.l, j$.time.temporal.m, Comparable<OffsetDateTime>, Serializable {
    public static final /* synthetic */ int c = 0;
    private static final long serialVersionUID = 2287754244819255394L;
    public final LocalDateTime a;
    public final ZoneOffset b;

    static {
        LocalDateTime.c.atOffset(ZoneOffset.g);
        LocalDateTime.d.atOffset(ZoneOffset.f);
    }

    public OffsetDateTime(LocalDateTime localDateTime, ZoneOffset zoneOffset) {
        this.a = (LocalDateTime) Objects.requireNonNull(localDateTime, "dateTime");
        this.b = (ZoneOffset) Objects.requireNonNull(zoneOffset, "offset");
    }

    public static OffsetDateTime now(ZoneId zoneId) {
        Objects.requireNonNull(zoneId, "zone");
        a aVar = zoneId == ZoneOffset.UTC ? a.b : new a(zoneId);
        Objects.requireNonNull(aVar, "clock");
        aVar.getClass();
        Instant ofEpochMilli = Instant.ofEpochMilli(System.currentTimeMillis());
        return ofInstant(ofEpochMilli, aVar.a.a0().d(ofEpochMilli));
    }

    public static OffsetDateTime ofInstant(Instant instant, ZoneId zoneId) {
        Objects.requireNonNull(instant, "instant");
        Objects.requireNonNull(zoneId, "zone");
        ZoneOffset d = zoneId.a0().d(instant);
        return new OffsetDateTime(LocalDateTime.d0(instant.a, instant.b, d), d);
    }

    public static OffsetDateTime parse(CharSequence charSequence, DateTimeFormatter dateTimeFormatter) {
        Objects.requireNonNull(dateTimeFormatter, "formatter");
        return (OffsetDateTime) dateTimeFormatter.b(charSequence, new j$.desugar.sun.nio.fs.m(4));
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new q((byte) 10, this);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final Object F(j$.desugar.sun.nio.fs.m mVar) {
        if (mVar == j$.time.temporal.q.d || mVar == j$.time.temporal.q.e) {
            return this.b;
        }
        if (mVar == j$.time.temporal.q.a) {
            return null;
        }
        return mVar == j$.time.temporal.q.f ? this.a.a : mVar == j$.time.temporal.q.g ? this.a.b : mVar == j$.time.temporal.q.b ? j$.time.chrono.s.c : mVar == j$.time.temporal.q.c ? ChronoUnit.NANOS : mVar.g(this);
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
        int i = n.a[((j$.time.temporal.a) pVar).ordinal()];
        return i != 1 ? i != 2 ? this.a.M(pVar) : this.b.b : toEpochSecond();
    }

    @Override // j$.time.temporal.l
    /* renamed from: Z, reason: merged with bridge method [inline-methods] */
    public final OffsetDateTime d(long j, TemporalUnit temporalUnit) {
        return temporalUnit instanceof ChronoUnit ? a0(this.a.d(j, temporalUnit), this.b) : (OffsetDateTime) temporalUnit.k(this, j);
    }

    public final OffsetDateTime a0(LocalDateTime localDateTime, ZoneOffset zoneOffset) {
        return (this.a == localDateTime && this.b.equals(zoneOffset)) ? this : new OffsetDateTime(localDateTime, zoneOffset);
    }

    public ZonedDateTime atZoneSameInstant(ZoneId zoneId) {
        return ZonedDateTime.a0(this.a, zoneId, this.b);
    }

    @Override // j$.time.temporal.l
    public final j$.time.temporal.l c(long j, j$.time.temporal.p pVar) {
        if (!(pVar instanceof j$.time.temporal.a)) {
            return (OffsetDateTime) pVar.H(this, j);
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) pVar;
        int i = n.a[aVar.ordinal()];
        LocalDateTime localDateTime = this.a;
        return i != 1 ? i != 2 ? a0(localDateTime.c(j, pVar), this.b) : a0(localDateTime, ZoneOffset.i0(aVar.b.a(j, aVar))) : ofInstant(Instant.b0(j, localDateTime.b.d), this.b);
    }

    @Override // java.lang.Comparable
    public int compareTo(OffsetDateTime offsetDateTime) {
        int compare;
        if (this.b.equals(offsetDateTime.b)) {
            compare = this.a.compareTo(offsetDateTime.a);
        } else {
            compare = Long.compare(toEpochSecond(), offsetDateTime.toEpochSecond());
            if (compare == 0) {
                compare = this.a.b.d - offsetDateTime.a.b.d;
            }
        }
        return compare == 0 ? this.a.compareTo(offsetDateTime.a) : compare;
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final boolean e(j$.time.temporal.p pVar) {
        if (pVar instanceof j$.time.temporal.a) {
            return true;
        }
        return pVar != null && pVar.k(this);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof OffsetDateTime) {
            OffsetDateTime offsetDateTime = (OffsetDateTime) obj;
            if (this.a.equals(offsetDateTime.a) && this.b.equals(offsetDateTime.b)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return this.b.b ^ this.a.hashCode();
    }

    public boolean isAfter(OffsetDateTime offsetDateTime) {
        long epochSecond = toEpochSecond();
        long epochSecond2 = offsetDateTime.toEpochSecond();
        if (epochSecond <= epochSecond2) {
            return epochSecond == epochSecond2 && this.a.b.d > offsetDateTime.a.b.d;
        }
        return true;
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final int k(j$.time.temporal.p pVar) {
        if (!(pVar instanceof j$.time.temporal.a)) {
            return j$.time.temporal.q.a(this, pVar);
        }
        int i = n.a[((j$.time.temporal.a) pVar).ordinal()];
        if (i != 1) {
            return i != 2 ? this.a.k(pVar) : this.b.b;
        }
        throw new j$.time.temporal.r("Invalid field 'InstantSeconds' for get() method, use getLong() instead");
    }

    public OffsetDateTime minusSeconds(long j) {
        LocalDateTime g0;
        LocalDateTime localDateTime = this.a;
        if (j == Long.MIN_VALUE) {
            this = a0(localDateTime.g0(Long.MAX_VALUE), this.b);
            g0 = this.a.g0(1L);
        } else {
            g0 = localDateTime.g0(-j);
        }
        return this.a0(g0, this.b);
    }

    @Override // j$.time.temporal.l
    public final j$.time.temporal.l n(LocalDate localDate) {
        LocalDateTime localDateTime = this.a;
        return a0(localDateTime.j0(localDate, localDateTime.b), this.b);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final j$.time.temporal.s o(j$.time.temporal.p pVar) {
        return pVar instanceof j$.time.temporal.a ? (pVar == j$.time.temporal.a.INSTANT_SECONDS || pVar == j$.time.temporal.a.OFFSET_SECONDS) ? ((j$.time.temporal.a) pVar).b : this.a.o(pVar) : pVar.n(this);
    }

    public final long toEpochSecond() {
        LocalDateTime localDateTime = this.a;
        ZoneOffset zoneOffset = this.b;
        localDateTime.getClass();
        return j$.com.android.tools.r8.a.n(localDateTime, zoneOffset);
    }

    public Instant toInstant() {
        LocalDateTime localDateTime = this.a;
        ZoneOffset zoneOffset = this.b;
        localDateTime.getClass();
        return Instant.b0(j$.com.android.tools.r8.a.n(localDateTime, zoneOffset), localDateTime.b().d);
    }

    public final String toString() {
        return this.a.toString() + this.b.c;
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.l u(j$.time.temporal.l lVar) {
        return lVar.c(this.a.a.N(), j$.time.temporal.a.EPOCH_DAY).c(this.a.b.l0(), j$.time.temporal.a.NANO_OF_DAY).c(this.b.b, j$.time.temporal.a.OFFSET_SECONDS);
    }

    public OffsetDateTime withOffsetSameInstant(ZoneOffset zoneOffset) {
        if (zoneOffset.equals(this.b)) {
            return this;
        }
        return new OffsetDateTime(this.a.g0(zoneOffset.b - this.b.b), zoneOffset);
    }

    public static OffsetDateTime parse(CharSequence charSequence) {
        return parse(charSequence, DateTimeFormatter.ISO_OFFSET_DATE_TIME);
    }

    public static OffsetDateTime now() {
        a X = j$.com.android.tools.r8.a.X();
        Objects.requireNonNull(X, "clock");
        Instant ofEpochMilli = Instant.ofEpochMilli(System.currentTimeMillis());
        return ofInstant(ofEpochMilli, X.a.a0().d(ofEpochMilli));
    }
}
