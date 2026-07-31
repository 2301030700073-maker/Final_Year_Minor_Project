package j$.time.chrono;

import j$.time.Instant;
import j$.time.LocalDate;
import j$.time.LocalDateTime;
import j$.time.ZoneId;
import j$.time.ZoneOffset;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.TemporalUnit;
import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.List;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class k implements ChronoZonedDateTime, Serializable {
    private static final long serialVersionUID = -5261813987200935591L;
    public final transient g a;
    public final transient ZoneOffset b;
    public final transient ZoneId c;

    public k(ZoneId zoneId, ZoneOffset zoneOffset, g gVar) {
        this.a = (g) Objects.requireNonNull(gVar, "dateTime");
        this.b = (ZoneOffset) Objects.requireNonNull(zoneOffset, "offset");
        this.c = (ZoneId) Objects.requireNonNull(zoneId, "zone");
    }

    public static k Z(ZoneId zoneId, ZoneOffset zoneOffset, g gVar) {
        Objects.requireNonNull(gVar, "localDateTime");
        Objects.requireNonNull(zoneId, "zone");
        if (zoneId instanceof ZoneOffset) {
            return new k(zoneId, (ZoneOffset) zoneId, gVar);
        }
        j$.time.zone.f a0 = zoneId.a0();
        LocalDateTime a02 = LocalDateTime.a0(gVar);
        List f = a0.f(a02);
        if (f.size() == 1) {
            zoneOffset = (ZoneOffset) f.get(0);
        } else if (f.size() == 0) {
            Object e = a0.e(a02);
            j$.time.zone.b bVar = e instanceof j$.time.zone.b ? (j$.time.zone.b) e : null;
            gVar = gVar.b0(gVar.a, 0L, 0L, j$.time.d.n(bVar.d.b - bVar.c.b, 0).a, 0L);
            zoneOffset = bVar.d;
        } else {
            if (zoneOffset == null || !f.contains(zoneOffset)) {
                zoneOffset = (ZoneOffset) f.get(0);
            }
            gVar = gVar;
        }
        Objects.requireNonNull(zoneOffset, "offset");
        return new k(zoneId, zoneOffset, gVar);
    }

    public static k a0(l lVar, Instant instant, ZoneId zoneId) {
        ZoneOffset d = zoneId.a0().d(instant);
        Objects.requireNonNull(d, "offset");
        return new k(zoneId, d, (g) lVar.K(LocalDateTime.d0(instant.a, instant.b, d)));
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    public static k u(l lVar, j$.time.temporal.l lVar2) {
        k kVar = (k) lVar2;
        if (lVar.equals(kVar.a())) {
            return kVar;
        }
        j$.nio.file.m.m("Chronology mismatch, required: ", lVar.i(), kVar.a().i());
        return null;
    }

    private Object writeReplace() {
        return new e0((byte) 3, this);
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    public final ChronoZonedDateTime E(ZoneId zoneId) {
        return Z(zoneId, this.b, this.a);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final /* synthetic */ Object F(j$.desugar.sun.nio.fs.m mVar) {
        return j$.com.android.tools.r8.a.l(this, mVar);
    }

    @Override // j$.time.temporal.l
    /* renamed from: H */
    public final j$.time.temporal.l z(long j, ChronoUnit chronoUnit) {
        return u(a(), j$.time.temporal.q.b(this, j, chronoUnit));
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
        int i = i.a[((j$.time.temporal.a) pVar).ordinal()];
        return i != 1 ? i != 2 ? ((g) w()).M(pVar) : g().b : toEpochSecond();
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    public final l a() {
        return f().a();
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    public final j$.time.i b() {
        return ((g) w()).b();
    }

    @Override // j$.time.temporal.l
    /* renamed from: b0, reason: merged with bridge method [inline-methods] */
    public final k d(long j, TemporalUnit temporalUnit) {
        if (!(temporalUnit instanceof ChronoUnit)) {
            return u(a(), temporalUnit.k(this, j));
        }
        return u(a(), this.a.d(j, temporalUnit).u(this));
    }

    @Override // j$.time.temporal.l
    public final j$.time.temporal.l c(long j, j$.time.temporal.p pVar) {
        if (!(pVar instanceof j$.time.temporal.a)) {
            return u(a(), pVar.H(this, j));
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) pVar;
        int i = j.a[aVar.ordinal()];
        if (i == 1) {
            return d(j - j$.com.android.tools.r8.a.o(this), ChronoUnit.SECONDS);
        }
        if (i != 2) {
            return Z(this.c, this.b, this.a.c(j, pVar));
        }
        ZoneOffset i0 = ZoneOffset.i0(aVar.b.a(j, aVar));
        g gVar = this.a;
        gVar.getClass();
        return a0(a(), Instant.b0(j$.com.android.tools.r8.a.n(gVar, i0), gVar.b().d), this.c);
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
        return (obj instanceof ChronoZonedDateTime) && j$.com.android.tools.r8.a.d(this, (ChronoZonedDateTime) obj) == 0;
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    public final b f() {
        return ((g) w()).f();
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    public final ZoneOffset g() {
        return this.b;
    }

    public final int hashCode() {
        return Integer.rotateLeft(this.c.hashCode(), 3) ^ (this.a.hashCode() ^ this.b.b);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final /* synthetic */ int k(j$.time.temporal.p pVar) {
        return j$.com.android.tools.r8.a.e(this, pVar);
    }

    @Override // j$.time.temporal.l
    public final j$.time.temporal.l n(LocalDate localDate) {
        return u(a(), localDate.u(this));
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final j$.time.temporal.s o(j$.time.temporal.p pVar) {
        return pVar instanceof j$.time.temporal.a ? (pVar == j$.time.temporal.a.INSTANT_SECONDS || pVar == j$.time.temporal.a.OFFSET_SECONDS) ? ((j$.time.temporal.a) pVar).b : this.a.o(pVar) : pVar.n(this);
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
    public final e w() {
        return this.a;
    }
}
