package j$.time.chrono;

import j$.time.Instant;
import j$.time.LocalDate;
import j$.time.LocalDateTime;
import j$.time.LocalTime;
import j$.time.ZoneId;
import j$.time.ZoneOffset;
import j$.time.temporal.ChronoField;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.Temporal;
import j$.time.temporal.TemporalField;
import j$.time.temporal.TemporalQuery;
import j$.time.temporal.TemporalUnit;
import j$.time.zone.ZoneRules;
import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.List;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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

    public static i U(ZoneId zoneId, ZoneOffset zoneOffset, e eVar) {
        Objects.requireNonNull(eVar, "localDateTime");
        Objects.requireNonNull(zoneId, "zone");
        if (zoneId instanceof ZoneOffset) {
            return new i(zoneId, (ZoneOffset) zoneId, eVar);
        }
        ZoneRules rules = zoneId.getRules();
        LocalDateTime V = LocalDateTime.V(eVar);
        List f = rules.f(V);
        if (f.size() == 1) {
            zoneOffset = (ZoneOffset) f.get(0);
        } else if (f.size() == 0) {
            Object e = rules.e(V);
            j$.time.zone.b bVar = e instanceof j$.time.zone.b ? (j$.time.zone.b) e : null;
            eVar = eVar.W(eVar.a, 0L, 0L, j$.time.c.m(bVar.d.getTotalSeconds() - bVar.c.getTotalSeconds(), 0).a, 0L);
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

    public static i V(j jVar, Instant instant, ZoneId zoneId) {
        ZoneOffset d = zoneId.getRules().d(instant);
        Objects.requireNonNull(d, "offset");
        return new i(zoneId, d, (e) jVar.M(LocalDateTime.X(instant.getEpochSecond(), instant.getNano(), d)));
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    public static i u(j jVar, Temporal temporal) {
        i iVar = (i) temporal;
        if (jVar.equals(iVar.a())) {
            return iVar;
        }
        j$.nio.file.j.m("Chronology mismatch, required: ", jVar.i(), iVar.a().i());
        return null;
    }

    private Object writeReplace() {
        return new c0((byte) 3, this);
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    public final ChronoZonedDateTime D(ZoneId zoneId) {
        return U(zoneId, this.b, this.a);
    }

    @Override // j$.time.temporal.Temporal
    public final Temporal F(long j, ChronoUnit chronoUnit) {
        return u(a(), j$.time.temporal.n.b(this, j, chronoUnit));
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    public final ZoneId I() {
        return this.c;
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final long J(TemporalField temporalField) {
        if (!(temporalField instanceof ChronoField)) {
            return temporalField.F(this);
        }
        int i = g.a[((ChronoField) temporalField).ordinal()];
        return i != 1 ? i != 2 ? ((e) w()).J(temporalField) : f().getTotalSeconds() : T();
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final /* synthetic */ Object L(TemporalQuery temporalQuery) {
        return j$.com.android.tools.r8.a.l(this, temporalQuery);
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    public final /* synthetic */ long T() {
        return j$.com.android.tools.r8.a.o(this);
    }

    @Override // j$.time.temporal.Temporal
    /* renamed from: W, reason: merged with bridge method [inline-methods] */
    public final i c(long j, TemporalUnit temporalUnit) {
        if (!(temporalUnit instanceof ChronoUnit)) {
            return u(a(), temporalUnit.m(this, j));
        }
        return u(a(), this.a.c(j, temporalUnit).u(this));
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    public final j a() {
        return e().a();
    }

    @Override // j$.time.temporal.Temporal
    public final Temporal b(long j, TemporalField temporalField) {
        if (!(temporalField instanceof ChronoField)) {
            return u(a(), temporalField.J(this, j));
        }
        ChronoField chronoField = (ChronoField) temporalField;
        int i = h.a[chronoField.ordinal()];
        if (i == 1) {
            return c(j - j$.com.android.tools.r8.a.o(this), ChronoUnit.SECONDS);
        }
        if (i != 2) {
            return U(this.c, this.b, this.a.b(j, temporalField));
        }
        ZoneOffset ofTotalSeconds = ZoneOffset.ofTotalSeconds(chronoField.b.a(j, chronoField));
        e eVar = this.a;
        eVar.getClass();
        return V(a(), Instant.ofEpochSecond(j$.com.android.tools.r8.a.n(eVar, ofTotalSeconds), eVar.b.getNano()), this.c);
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(ChronoZonedDateTime<?> chronoZonedDateTime) {
        return j$.com.android.tools.r8.a.d(this, chronoZonedDateTime);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final boolean d(TemporalField temporalField) {
        if (temporalField instanceof ChronoField) {
            return true;
        }
        return temporalField != null && temporalField.k(this);
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    public final ChronoLocalDate e() {
        return ((e) w()).e();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ChronoZonedDateTime) && j$.com.android.tools.r8.a.d(this, (ChronoZonedDateTime) obj) == 0;
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    public final ZoneOffset f() {
        return this.b;
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    public final ChronoZonedDateTime g(ZoneId zoneId) {
        Objects.requireNonNull(zoneId, "zone");
        if (this.c.equals(zoneId)) {
            return this;
        }
        e eVar = this.a;
        ZoneOffset zoneOffset = this.b;
        eVar.getClass();
        return V(a(), Instant.ofEpochSecond(j$.com.android.tools.r8.a.n(eVar, zoneOffset), eVar.b.getNano()), zoneId);
    }

    public final int hashCode() {
        return Integer.rotateLeft(this.c.hashCode(), 3) ^ (this.a.hashCode() ^ this.b.hashCode());
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final /* synthetic */ int k(TemporalField temporalField) {
        return j$.com.android.tools.r8.a.e(this, temporalField);
    }

    @Override // j$.time.temporal.Temporal
    public final Temporal m(LocalDate localDate) {
        return u(a(), localDate.u(this));
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final j$.time.temporal.p n(TemporalField temporalField) {
        return temporalField instanceof ChronoField ? (temporalField == ChronoField.INSTANT_SECONDS || temporalField == ChronoField.OFFSET_SECONDS) ? ((ChronoField) temporalField).b : this.a.n(temporalField) : temporalField.m(this);
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    public final Instant toInstant() {
        return Instant.ofEpochSecond(T(), toLocalTime().getNano());
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    public final LocalTime toLocalTime() {
        return ((e) w()).toLocalTime();
    }

    public final String toString() {
        String str = this.a.toString() + this.b.toString();
        ZoneOffset zoneOffset = this.b;
        ZoneId zoneId = this.c;
        if (zoneOffset == zoneId) {
            return str;
        }
        return str + "[" + zoneId.toString() + "]";
    }

    @Override // j$.time.temporal.Temporal
    public final long until(Temporal temporal, TemporalUnit temporalUnit) {
        Objects.requireNonNull(temporal, "endExclusive");
        ChronoZonedDateTime r = a().r(temporal);
        if (temporalUnit instanceof ChronoUnit) {
            return this.a.until(r.g(this.b).w(), temporalUnit);
        }
        Objects.requireNonNull(temporalUnit, "unit");
        return temporalUnit.k(this, r);
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    public final ChronoLocalDateTime w() {
        return this.a;
    }
}
