package j$.time.chrono;

import j$.time.Instant;
import j$.time.LocalDate;
import j$.time.LocalTime;
import j$.time.ZoneId;
import j$.time.ZoneOffset;
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
public final class e implements ChronoLocalDateTime, Temporal, TemporalAdjuster, Serializable {
    private static final long serialVersionUID = 4556003607393004514L;
    public final transient ChronoLocalDate a;
    public final transient LocalTime b;

    public e(ChronoLocalDate chronoLocalDate, LocalTime localTime) {
        Objects.requireNonNull(chronoLocalDate, "date");
        Objects.requireNonNull(localTime, "time");
        this.a = chronoLocalDate;
        this.b = localTime;
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    public static e u(a aVar, Temporal temporal) {
        e eVar = (e) temporal;
        if (aVar.equals(eVar.a.getChronology())) {
            return eVar;
        }
        j$.time.h.f("Chronology mismatch, required: ", aVar.getId(), eVar.a.getChronology().getId());
        return null;
    }

    private Object writeReplace() {
        return new b0((byte) 2, this);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final boolean c(j$.time.temporal.n nVar) {
        if (!(nVar instanceof j$.time.temporal.a)) {
            return nVar != null && nVar.f(this);
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) nVar;
        return aVar.isDateBased() || aVar.q();
    }

    @Override // j$.time.temporal.Temporal
    public final long d(Temporal temporal, TemporalUnit temporalUnit) {
        Objects.requireNonNull(temporal, "endExclusive");
        ChronoLocalDateTime u = this.a.getChronology().u(temporal);
        if (!(temporalUnit instanceof ChronoUnit)) {
            Objects.requireNonNull(temporalUnit, "unit");
            return temporalUnit.between(this, u);
        }
        ChronoUnit chronoUnit = (ChronoUnit) temporalUnit;
        ChronoUnit chronoUnit2 = ChronoUnit.DAYS;
        if (chronoUnit.compareTo(chronoUnit2) >= 0) {
            ChronoLocalDate localDate = u.toLocalDate();
            if (u.toLocalTime().compareTo(this.b) < 0) {
                localDate = localDate.o(1L, chronoUnit2);
            }
            return this.a.d(localDate, temporalUnit);
        }
        j$.time.temporal.a aVar = j$.time.temporal.a.EPOCH_DAY;
        long q = u.q(aVar) - this.a.q(aVar);
        switch (d.a[chronoUnit.ordinal()]) {
            case 1:
                q = j$.time.a.U(q, 86400000000000L);
                break;
            case 2:
                q = j$.time.a.U(q, 86400000000L);
                break;
            case 3:
                q = j$.time.a.U(q, 86400000L);
                break;
            case 4:
                q = j$.time.a.U(q, 86400L);
                break;
            case 5:
                q = j$.time.a.U(q, 1440L);
                break;
            case 6:
                q = j$.time.a.U(q, 24L);
                break;
            case 7:
                q = j$.time.a.U(q, 2L);
                break;
        }
        return j$.time.a.P(q, this.b.d(u.toLocalTime(), temporalUnit));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ChronoLocalDateTime) && j$.time.a.f(this, (ChronoLocalDateTime) obj) == 0;
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final int f(j$.time.temporal.n nVar) {
        return nVar instanceof j$.time.temporal.a ? ((j$.time.temporal.a) nVar).q() ? this.b.f(nVar) : this.a.f(nVar) : h(nVar).a(q(nVar), nVar);
    }

    @Override // j$.time.temporal.Temporal
    /* renamed from: g */
    public final Temporal n(LocalDate localDate) {
        if (j$.time.d.b(localDate)) {
            return y(localDate, this.b);
        }
        a chronology = this.a.getChronology();
        localDate.getClass();
        return u(chronology, (e) j$.time.a.a(localDate, this));
    }

    @Override // j$.time.chrono.ChronoLocalDateTime
    public final a getChronology() {
        return this.a.getChronology();
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final j$.time.temporal.q h(j$.time.temporal.n nVar) {
        if (!(nVar instanceof j$.time.temporal.a)) {
            return nVar.g(this);
        }
        if (!((j$.time.temporal.a) nVar).q()) {
            return this.a.h(nVar);
        }
        LocalTime localTime = this.b;
        localTime.getClass();
        return j$.time.temporal.o.d(localTime, nVar);
    }

    public final int hashCode() {
        return this.b.hashCode() ^ this.a.hashCode();
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final /* synthetic */ Object i(j$.time.f fVar) {
        return j$.time.a.t(this, fVar);
    }

    @Override // j$.time.chrono.ChronoLocalDateTime
    public final /* synthetic */ long j(ZoneOffset zoneOffset) {
        return j$.time.a.w(this, zoneOffset);
    }

    @Override // j$.time.temporal.TemporalAdjuster
    public final Temporal k(Temporal temporal) {
        return temporal.a(toLocalDate().toEpochDay(), j$.time.temporal.a.EPOCH_DAY).a(toLocalTime().G(), j$.time.temporal.a.NANO_OF_DAY);
    }

    @Override // j$.time.temporal.Temporal
    public final Temporal o(long j, ChronoUnit chronoUnit) {
        return u(this.a.getChronology(), j$.time.temporal.o.b(this, j, chronoUnit));
    }

    @Override // j$.time.chrono.ChronoLocalDateTime
    public final ChronoZonedDateTime p(ZoneId zoneId) {
        return i.u(zoneId, null, this);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final long q(j$.time.temporal.n nVar) {
        return nVar instanceof j$.time.temporal.a ? ((j$.time.temporal.a) nVar).q() ? this.b.q(nVar) : this.a.q(nVar) : nVar.i(this);
    }

    @Override // java.lang.Comparable
    /* renamed from: s */
    public final /* synthetic */ int compareTo(ChronoLocalDateTime chronoLocalDateTime) {
        return j$.time.a.f(this, chronoLocalDateTime);
    }

    @Override // j$.time.chrono.ChronoLocalDateTime
    public final /* synthetic */ Instant toInstant(ZoneOffset zoneOffset) {
        return j$.time.a.y(this, zoneOffset);
    }

    @Override // j$.time.chrono.ChronoLocalDateTime
    public final ChronoLocalDate toLocalDate() {
        return this.a;
    }

    @Override // j$.time.chrono.ChronoLocalDateTime
    public final LocalTime toLocalTime() {
        return this.b;
    }

    public final String toString() {
        return this.a.toString() + "T" + this.b.toString();
    }

    @Override // j$.time.temporal.Temporal
    /* renamed from: v, reason: merged with bridge method [inline-methods] */
    public final e b(long j, TemporalUnit temporalUnit) {
        if (!(temporalUnit instanceof ChronoUnit)) {
            return u(this.a.getChronology(), temporalUnit.f(this, j));
        }
        switch (d.a[((ChronoUnit) temporalUnit).ordinal()]) {
            case 1:
                return w(this.a, 0L, 0L, 0L, j);
            case 2:
                e y = y(this.a.b(j / 86400000000L, (TemporalUnit) ChronoUnit.DAYS), this.b);
                return y.w(y.a, 0L, 0L, 0L, (j % 86400000000L) * 1000);
            case 3:
                e y2 = y(this.a.b(j / 86400000, (TemporalUnit) ChronoUnit.DAYS), this.b);
                return y2.w(y2.a, 0L, 0L, 0L, (j % 86400000) * 1000000);
            case 4:
                return w(this.a, 0L, 0L, j, 0L);
            case 5:
                return w(this.a, 0L, j, 0L, 0L);
            case 6:
                return w(this.a, j, 0L, 0L, 0L);
            case 7:
                e y3 = y(this.a.b(j / 256, (TemporalUnit) ChronoUnit.DAYS), this.b);
                return y3.w(y3.a, (j % 256) * 12, 0L, 0L, 0L);
            default:
                return y(this.a.b(j, temporalUnit), this.b);
        }
    }

    public final e w(ChronoLocalDate chronoLocalDate, long j, long j2, long j3, long j4) {
        long j5 = j | j2 | j3 | j4;
        LocalTime localTime = this.b;
        if (j5 == 0) {
            return y(chronoLocalDate, localTime);
        }
        long j6 = j / 24;
        long G = localTime.G();
        long j7 = ((j % 24) * 3600000000000L) + ((j2 % 1440) * 60000000000L) + ((j3 % 86400) * 1000000000) + (j4 % 86400000000000L) + G;
        long T = j$.time.a.T(j7, 86400000000000L) + j6 + (j2 / 1440) + (j3 / 86400) + (j4 / 86400000000000L);
        long S = j$.time.a.S(j7, 86400000000000L);
        return y(chronoLocalDate.b(T, (TemporalUnit) ChronoUnit.DAYS), S == G ? this.b : LocalTime.z(S));
    }

    @Override // j$.time.temporal.Temporal
    /* renamed from: x, reason: merged with bridge method [inline-methods] */
    public final e a(long j, j$.time.temporal.n nVar) {
        if (!(nVar instanceof j$.time.temporal.a)) {
            return u(this.a.getChronology(), nVar.k(this, j));
        }
        boolean q = ((j$.time.temporal.a) nVar).q();
        ChronoLocalDate chronoLocalDate = this.a;
        return q ? y(chronoLocalDate, this.b.a(j, nVar)) : y(chronoLocalDate.a(j, nVar), this.b);
    }

    public final e y(Temporal temporal, LocalTime localTime) {
        ChronoLocalDate chronoLocalDate = this.a;
        return (chronoLocalDate == temporal && this.b == localTime) ? this : new e(c.u(chronoLocalDate.getChronology(), temporal), localTime);
    }
}
