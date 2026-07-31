package j$.time.chrono;

import j$.time.Duration;
import j$.time.Instant;
import j$.time.LocalDate;
import j$.time.LocalDateTime;
import j$.time.LocalTime;
import j$.time.ZoneId;
import j$.time.ZoneOffset;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.Temporal;
import j$.time.temporal.TemporalUnit;
import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.List;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes2.dex */
public final class i implements ChronoZonedDateTime, Serializable {
    private static final long serialVersionUID = -5261813987200935591L;
    public final transient e a;
    public final transient ZoneOffset b;
    public final transient ZoneId c;

    public i(ZoneId zoneId, ZoneOffset zoneOffset, e eVar) {
        this.a = (e) Objects.requireNonNull(eVar, "dateTime");
        this.b = (ZoneOffset) Objects.requireNonNull(zoneOffset, "offset");
        this.c = (ZoneId) Objects.requireNonNull(zoneId, "zone");
    }

    public static i k(a aVar, Temporal temporal) {
        i iVar = (i) temporal;
        if (aVar.equals(iVar.getChronology())) {
            return iVar;
        }
        j$.time.h.f("Chronology mismatch, required: ", aVar.getId(), iVar.getChronology().getId());
        return null;
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    public static i u(ZoneId zoneId, ZoneOffset zoneOffset, e eVar) {
        Objects.requireNonNull(eVar, "localDateTime");
        Objects.requireNonNull(zoneId, "zone");
        if (zoneId instanceof ZoneOffset) {
            return new i(zoneId, (ZoneOffset) zoneId, eVar);
        }
        j$.time.zone.f v = zoneId.v();
        LocalDateTime v2 = LocalDateTime.v(eVar);
        List f = v.f(v2);
        if (f.size() == 1) {
            zoneOffset = (ZoneOffset) f.get(0);
        } else if (f.size() == 0) {
            Object e = v.e(v2);
            j$.time.zone.b bVar = e instanceof j$.time.zone.b ? (j$.time.zone.b) e : null;
            eVar = eVar.w(eVar.a, 0L, 0L, Duration.g(bVar.d.b - bVar.c.b, 0).getSeconds(), 0L);
            zoneOffset = bVar.d;
        } else {
            if (zoneOffset == null || !f.contains(zoneOffset)) {
                zoneOffset = (ZoneOffset) f.get(0);
            }
            eVar = eVar;
        }
        Objects.requireNonNull(zoneOffset, "offset");
        return new i(zoneId, zoneOffset, eVar);
    }

    public static i v(a aVar, Instant instant, ZoneId zoneId) {
        ZoneOffset d = zoneId.v().d(instant);
        Objects.requireNonNull(d, "offset");
        return new i(zoneId, d, (e) aVar.u(LocalDateTime.w(instant.getEpochSecond(), instant.b, d)));
    }

    private Object writeReplace() {
        return new b0((byte) 3, this);
    }

    @Override // j$.time.temporal.Temporal
    public final Temporal a(long j, j$.time.temporal.n nVar) {
        if (!(nVar instanceof j$.time.temporal.a)) {
            return k(getChronology(), nVar.k(this, j));
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) nVar;
        int i = h.a[aVar.ordinal()];
        if (i == 1) {
            return b(j - j$.time.a.x(this), ChronoUnit.SECONDS);
        }
        if (i != 2) {
            return u(this.c, this.b, this.a.a(j, nVar));
        }
        ZoneOffset D = ZoneOffset.D(aVar.b.a(j, aVar));
        e eVar = this.a;
        eVar.getClass();
        return v(getChronology(), j$.time.a.y(eVar, D), this.c);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final boolean c(j$.time.temporal.n nVar) {
        if (nVar instanceof j$.time.temporal.a) {
            return true;
        }
        return nVar != null && nVar.f(this);
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(ChronoZonedDateTime<?> chronoZonedDateTime) {
        return j$.time.a.g(this, chronoZonedDateTime);
    }

    @Override // j$.time.temporal.Temporal
    public final long d(Temporal temporal, TemporalUnit temporalUnit) {
        Objects.requireNonNull(temporal, "endExclusive");
        ChronoZonedDateTime F = getChronology().F(temporal);
        if (temporalUnit instanceof ChronoUnit) {
            return this.a.d(F.e(this.b).toLocalDateTime(), temporalUnit);
        }
        Objects.requireNonNull(temporalUnit, "unit");
        return temporalUnit.between(this, F);
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    public final ChronoZonedDateTime e(ZoneId zoneId) {
        Objects.requireNonNull(zoneId, "zone");
        if (this.c.equals(zoneId)) {
            return this;
        }
        e eVar = this.a;
        ZoneOffset zoneOffset = this.b;
        eVar.getClass();
        return v(getChronology(), j$.time.a.y(eVar, zoneOffset), zoneId);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ChronoZonedDateTime) && j$.time.a.g(this, (ChronoZonedDateTime) obj) == 0;
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final /* synthetic */ int f(j$.time.temporal.n nVar) {
        return j$.time.a.l(this, nVar);
    }

    @Override // j$.time.temporal.Temporal
    /* renamed from: g */
    public final Temporal n(LocalDate localDate) {
        return k(getChronology(), localDate.k(this));
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    public final a getChronology() {
        return this.a.a.getChronology();
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    public final ZoneOffset getOffset() {
        return this.b;
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    public final ZoneId getZone() {
        return this.c;
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final j$.time.temporal.q h(j$.time.temporal.n nVar) {
        return nVar instanceof j$.time.temporal.a ? (nVar == j$.time.temporal.a.INSTANT_SECONDS || nVar == j$.time.temporal.a.OFFSET_SECONDS) ? ((j$.time.temporal.a) nVar).b : this.a.h(nVar) : nVar.g(this);
    }

    public final int hashCode() {
        return Integer.rotateLeft(this.c.hashCode(), 3) ^ (this.a.hashCode() ^ this.b.b);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final /* synthetic */ Object i(j$.time.f fVar) {
        return j$.time.a.u(this, fVar);
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    public final ChronoZonedDateTime m(ZoneId zoneId) {
        return u(zoneId, this.b, this.a);
    }

    @Override // j$.time.temporal.Temporal
    public final Temporal o(long j, ChronoUnit chronoUnit) {
        return k(getChronology(), j$.time.temporal.o.b(this, j, chronoUnit));
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final long q(j$.time.temporal.n nVar) {
        if (!(nVar instanceof j$.time.temporal.a)) {
            return nVar.i(this);
        }
        int i = g.a[((j$.time.temporal.a) nVar).ordinal()];
        return i != 1 ? i != 2 ? ((e) toLocalDateTime()).q(nVar) : getOffset().b : toEpochSecond();
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    public final /* synthetic */ long toEpochSecond() {
        return j$.time.a.x(this);
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    public final Instant toInstant() {
        return Instant.w(toEpochSecond(), toLocalTime().d);
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    public final ChronoLocalDate toLocalDate() {
        return this.a.a;
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    public final ChronoLocalDateTime toLocalDateTime() {
        return this.a;
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    public final LocalTime toLocalTime() {
        return ((e) toLocalDateTime()).toLocalTime();
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

    @Override // j$.time.temporal.Temporal
    /* renamed from: w, reason: merged with bridge method [inline-methods] */
    public final i b(long j, TemporalUnit temporalUnit) {
        if (!(temporalUnit instanceof ChronoUnit)) {
            return k(getChronology(), temporalUnit.f(this, j));
        }
        return k(getChronology(), this.a.b(j, temporalUnit).k(this));
    }
}
