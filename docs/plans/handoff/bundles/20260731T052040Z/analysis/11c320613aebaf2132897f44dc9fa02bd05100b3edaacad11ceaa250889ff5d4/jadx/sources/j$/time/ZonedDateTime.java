package j$.time;

import j$.time.chrono.ChronoZonedDateTime;
import j$.time.format.DateTimeFormatter;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.TemporalAccessor;
import j$.time.temporal.TemporalUnit;
import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.List;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class ZonedDateTime implements j$.time.temporal.l, ChronoZonedDateTime<LocalDate>, Serializable {
    private static final long serialVersionUID = -6260982410461394882L;
    public final LocalDateTime a;
    public final ZoneOffset b;
    public final ZoneId c;

    public ZonedDateTime(LocalDateTime localDateTime, ZoneId zoneId, ZoneOffset zoneOffset) {
        this.a = localDateTime;
        this.b = zoneOffset;
        this.c = zoneId;
    }

    public static ZonedDateTime Z(Instant instant, ZoneId zoneId) {
        Objects.requireNonNull(instant, "instant");
        Objects.requireNonNull(zoneId, "zone");
        return u(instant.a, instant.b, zoneId);
    }

    public static ZonedDateTime a0(LocalDateTime localDateTime, ZoneId zoneId, ZoneOffset zoneOffset) {
        Objects.requireNonNull(localDateTime, "localDateTime");
        Objects.requireNonNull(zoneOffset, "offset");
        Objects.requireNonNull(zoneId, "zone");
        if (zoneId.a0().f(localDateTime).contains(zoneOffset)) {
            return new ZonedDateTime(localDateTime, zoneId, zoneOffset);
        }
        localDateTime.getClass();
        return u(j$.com.android.tools.r8.a.n(localDateTime, zoneOffset), localDateTime.b.d, zoneId);
    }

    public static ZonedDateTime b0(LocalDateTime localDateTime, ZoneId zoneId, ZoneOffset zoneOffset) {
        Objects.requireNonNull(localDateTime, "localDateTime");
        Objects.requireNonNull(zoneId, "zone");
        if (zoneId instanceof ZoneOffset) {
            return new ZonedDateTime(localDateTime, zoneId, (ZoneOffset) zoneId);
        }
        j$.time.zone.f a0 = zoneId.a0();
        List f = a0.f(localDateTime);
        if (f.size() == 1) {
            zoneOffset = (ZoneOffset) f.get(0);
        } else if (f.size() == 0) {
            Object e = a0.e(localDateTime);
            j$.time.zone.b bVar = e instanceof j$.time.zone.b ? (j$.time.zone.b) e : null;
            localDateTime = localDateTime.g0(d.n(bVar.d.b - bVar.c.b, 0).a);
            zoneOffset = bVar.d;
        } else if (zoneOffset == null || !f.contains(zoneOffset)) {
            zoneOffset = (ZoneOffset) Objects.requireNonNull((ZoneOffset) f.get(0), "offset");
        }
        return new ZonedDateTime(localDateTime, zoneId, zoneOffset);
    }

    public static ZonedDateTime from(TemporalAccessor temporalAccessor) {
        if (temporalAccessor instanceof ZonedDateTime) {
            return (ZonedDateTime) temporalAccessor;
        }
        try {
            ZoneId Z = ZoneId.Z(temporalAccessor);
            j$.time.temporal.a aVar = j$.time.temporal.a.INSTANT_SECONDS;
            return temporalAccessor.e(aVar) ? u(temporalAccessor.M(aVar), temporalAccessor.k(j$.time.temporal.a.NANO_OF_SECOND), Z) : b0(LocalDateTime.c0(LocalDate.b0(temporalAccessor), i.b0(temporalAccessor)), Z, null);
        } catch (DateTimeException e) {
            j$.nio.file.m.h("Unable to obtain ZonedDateTime from TemporalAccessor: ", temporalAccessor, temporalAccessor.getClass().getName(), e);
            return null;
        }
    }

    public static ZonedDateTime now() {
        a X = j$.com.android.tools.r8.a.X();
        Objects.requireNonNull(X, "clock");
        return Z(Instant.ofEpochMilli(System.currentTimeMillis()), X.a);
    }

    public static ZonedDateTime parse(CharSequence charSequence, DateTimeFormatter dateTimeFormatter) {
        Objects.requireNonNull(dateTimeFormatter, "formatter");
        return (ZonedDateTime) dateTimeFormatter.b(charSequence, new j$.desugar.sun.nio.fs.m(5));
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    public static ZonedDateTime u(long j, int i, ZoneId zoneId) {
        ZoneOffset d = zoneId.a0().d(Instant.b0(j, i));
        return new ZonedDateTime(LocalDateTime.d0(j, i, d), zoneId, d);
    }

    private Object writeReplace() {
        return new q((byte) 6, this);
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    public final ChronoZonedDateTime E(ZoneId zoneId) {
        Objects.requireNonNull(zoneId, "zone");
        return this.c.equals(zoneId) ? this : b0(this.a, zoneId, this.b);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final Object F(j$.desugar.sun.nio.fs.m mVar) {
        return mVar == j$.time.temporal.q.f ? this.a.a : j$.com.android.tools.r8.a.l(this, mVar);
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

    @Override // j$.time.chrono.ChronoZonedDateTime
    public final ZoneId L() {
        return this.c;
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final long M(j$.time.temporal.p pVar) {
        if (!(pVar instanceof j$.time.temporal.a)) {
            return pVar.F(this);
        }
        int i = w.a[((j$.time.temporal.a) pVar).ordinal()];
        return i != 1 ? i != 2 ? this.a.M(pVar) : this.b.b : j$.com.android.tools.r8.a.o(this);
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    public final j$.time.chrono.l a() {
        return ((LocalDate) f()).a();
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    public final i b() {
        return this.a.b;
    }

    @Override // j$.time.temporal.l
    public final j$.time.temporal.l c(long j, j$.time.temporal.p pVar) {
        if (!(pVar instanceof j$.time.temporal.a)) {
            return (ZonedDateTime) pVar.H(this, j);
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) pVar;
        int i = w.a[aVar.ordinal()];
        if (i == 1) {
            return u(j, this.a.b.d, this.c);
        }
        if (i != 2) {
            return b0(this.a.c(j, pVar), this.c, this.b);
        }
        ZoneOffset i0 = ZoneOffset.i0(aVar.b.a(j, aVar));
        return (i0.equals(this.b) || !this.c.a0().f(this.a).contains(i0)) ? this : new ZonedDateTime(this.a, this.c, i0);
    }

    @Override // j$.time.temporal.l
    /* renamed from: c0, reason: merged with bridge method [inline-methods] */
    public final ZonedDateTime d(long j, TemporalUnit temporalUnit) {
        if (!(temporalUnit instanceof ChronoUnit)) {
            return (ZonedDateTime) temporalUnit.k(this, j);
        }
        boolean isDateBased = temporalUnit.isDateBased();
        LocalDateTime localDateTime = this.a;
        if (isDateBased) {
            return b0(localDateTime.d(j, temporalUnit), this.c, this.b);
        }
        return a0(localDateTime.d(j, temporalUnit), this.c, this.b);
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(ChronoZonedDateTime<?> chronoZonedDateTime) {
        return j$.com.android.tools.r8.a.d(this, chronoZonedDateTime);
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
        if (obj instanceof ZonedDateTime) {
            ZonedDateTime zonedDateTime = (ZonedDateTime) obj;
            if (this.a.equals(zonedDateTime.a) && this.b.equals(zonedDateTime.b) && this.c.equals(zonedDateTime.c)) {
                return true;
            }
        }
        return false;
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    public final j$.time.chrono.b f() {
        return this.a.a;
    }

    public String format(DateTimeFormatter dateTimeFormatter) {
        Objects.requireNonNull(dateTimeFormatter, "formatter");
        return dateTimeFormatter.format(this);
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    public final ZoneOffset g() {
        return this.b;
    }

    public final int hashCode() {
        return Integer.rotateLeft(this.c.hashCode(), 3) ^ (this.a.hashCode() ^ this.b.b);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final int k(j$.time.temporal.p pVar) {
        if (!(pVar instanceof j$.time.temporal.a)) {
            return j$.com.android.tools.r8.a.e(this, pVar);
        }
        int i = w.a[((j$.time.temporal.a) pVar).ordinal()];
        if (i != 1) {
            return i != 2 ? this.a.k(pVar) : this.b.b;
        }
        throw new j$.time.temporal.r("Invalid field 'InstantSeconds' for get() method, use getLong() instead");
    }

    @Override // j$.time.temporal.l
    public final j$.time.temporal.l n(LocalDate localDate) {
        return b0(LocalDateTime.c0(localDate, this.a.b), this.c, this.b);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final j$.time.temporal.s o(j$.time.temporal.p pVar) {
        return pVar instanceof j$.time.temporal.a ? (pVar == j$.time.temporal.a.INSTANT_SECONDS || pVar == j$.time.temporal.a.OFFSET_SECONDS) ? ((j$.time.temporal.a) pVar).b : this.a.o(pVar) : pVar.n(this);
    }

    public ZonedDateTime plusHours(long j) {
        LocalDateTime localDateTime = this.a;
        return a0(localDateTime.h0(localDateTime.a, j, 0L, 0L, 0L), this.c, this.b);
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    public final /* synthetic */ long toEpochSecond() {
        return j$.com.android.tools.r8.a.o(this);
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    public final Instant toInstant() {
        return Instant.b0(toEpochSecond(), b().d);
    }

    public final String toString() {
        String str = this.a.toString() + this.b.c;
        ZoneOffset zoneOffset = this.b;
        ZoneId zoneId = this.c;
        if (zoneOffset == zoneId) {
            return str;
        }
        return str + "[" + zoneId.toString() + "]";
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    public final j$.time.chrono.e w() {
        return this.a;
    }
}
