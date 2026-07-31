package j$.time;

import com.google.android.exoplayer2.C;
import j$.time.format.DateTimeFormatter;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.TemporalAccessor;
import j$.time.temporal.TemporalUnit;
import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class LocalDateTime implements j$.time.temporal.l, j$.time.temporal.m, j$.time.chrono.e, Serializable {
    public static final LocalDateTime c = c0(LocalDate.d, i.e);
    public static final LocalDateTime d = c0(LocalDate.e, i.f);
    private static final long serialVersionUID = 6207766400415563566L;
    public final LocalDate a;
    public final i b;

    public LocalDateTime(LocalDate localDate, i iVar) {
        this.a = localDate;
        this.b = iVar;
    }

    public static LocalDateTime a0(TemporalAccessor temporalAccessor) {
        if (temporalAccessor instanceof LocalDateTime) {
            return (LocalDateTime) temporalAccessor;
        }
        if (temporalAccessor instanceof ZonedDateTime) {
            return ((ZonedDateTime) temporalAccessor).a;
        }
        if (temporalAccessor instanceof OffsetDateTime) {
            return ((OffsetDateTime) temporalAccessor).a;
        }
        try {
            return new LocalDateTime(LocalDate.b0(temporalAccessor), i.b0(temporalAccessor));
        } catch (DateTimeException e) {
            j$.nio.file.m.h("Unable to obtain LocalDateTime from TemporalAccessor: ", temporalAccessor, temporalAccessor.getClass().getName(), e);
            return null;
        }
    }

    public static LocalDateTime c0(LocalDate localDate, i iVar) {
        Objects.requireNonNull(localDate, "date");
        Objects.requireNonNull(iVar, "time");
        return new LocalDateTime(localDate, iVar);
    }

    public static LocalDateTime d0(long j, int i, ZoneOffset zoneOffset) {
        Objects.requireNonNull(zoneOffset, "offset");
        long j2 = i;
        j$.time.temporal.a.NANO_OF_SECOND.M(j2);
        return new LocalDateTime(LocalDate.j0(j$.com.android.tools.r8.a.E(j + zoneOffset.b, 86400L)), i.e0((((int) j$.com.android.tools.r8.a.R(r5, 86400L)) * C.NANOS_PER_SECOND) + j2));
    }

    public static LocalDateTime now() {
        a X = j$.com.android.tools.r8.a.X();
        Objects.requireNonNull(X, "clock");
        Instant ofEpochMilli = Instant.ofEpochMilli(System.currentTimeMillis());
        return d0(ofEpochMilli.a, ofEpochMilli.b, X.a.a0().d(ofEpochMilli));
    }

    public static LocalDateTime ofInstant(Instant instant, ZoneId zoneId) {
        Objects.requireNonNull(instant, "instant");
        Objects.requireNonNull(zoneId, "zone");
        return d0(instant.a, instant.b, zoneId.a0().d(instant));
    }

    public static LocalDateTime parse(CharSequence charSequence, DateTimeFormatter dateTimeFormatter) {
        Objects.requireNonNull(dateTimeFormatter, "formatter");
        return (LocalDateTime) dateTimeFormatter.b(charSequence, new j$.desugar.sun.nio.fs.m(3));
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new q((byte) 5, this);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final Object F(j$.desugar.sun.nio.fs.m mVar) {
        return mVar == j$.time.temporal.q.f ? this.a : j$.com.android.tools.r8.a.k(this, mVar);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final long M(j$.time.temporal.p pVar) {
        return pVar instanceof j$.time.temporal.a ? ((j$.time.temporal.a) pVar).Z() ? this.b.M(pVar) : this.a.M(pVar) : pVar.F(this);
    }

    @Override // java.lang.Comparable
    /* renamed from: R, reason: merged with bridge method [inline-methods] */
    public final int compareTo(j$.time.chrono.e eVar) {
        return eVar instanceof LocalDateTime ? Z((LocalDateTime) eVar) : j$.com.android.tools.r8.a.c(this, eVar);
    }

    public final int Z(LocalDateTime localDateTime) {
        int Z = this.a.Z(localDateTime.a);
        return Z == 0 ? this.b.compareTo(localDateTime.b) : Z;
    }

    @Override // j$.time.chrono.e
    public final j$.time.chrono.l a() {
        return ((LocalDate) f()).a();
    }

    public OffsetDateTime atOffset(ZoneOffset zoneOffset) {
        return new OffsetDateTime(this, zoneOffset);
    }

    @Override // j$.time.chrono.e
    /* renamed from: atZone, reason: merged with bridge method [inline-methods] */
    public ZonedDateTime I(ZoneId zoneId) {
        return ZonedDateTime.b0(this, zoneId, null);
    }

    @Override // j$.time.chrono.e
    public final i b() {
        return this.b;
    }

    public final boolean b0(j$.time.chrono.e eVar) {
        if (eVar instanceof LocalDateTime) {
            return Z((LocalDateTime) eVar) < 0;
        }
        long N = this.a.N();
        long N2 = eVar.f().N();
        if (N >= N2) {
            return N == N2 && this.b.l0() < eVar.b().l0();
        }
        return true;
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final boolean e(j$.time.temporal.p pVar) {
        if (!(pVar instanceof j$.time.temporal.a)) {
            return pVar != null && pVar.k(this);
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) pVar;
        return aVar.isDateBased() || aVar.Z();
    }

    @Override // j$.time.temporal.l
    /* renamed from: e0, reason: merged with bridge method [inline-methods] */
    public final LocalDateTime d(long j, TemporalUnit temporalUnit) {
        if (!(temporalUnit instanceof ChronoUnit)) {
            return (LocalDateTime) temporalUnit.k(this, j);
        }
        switch (g.a[((ChronoUnit) temporalUnit).ordinal()]) {
            case 1:
                return h0(this.a, 0L, 0L, 0L, j);
            case 2:
                LocalDateTime f0 = f0(j / 86400000000L);
                return f0.h0(f0.a, 0L, 0L, 0L, (j % 86400000000L) * 1000);
            case 3:
                LocalDateTime f02 = f0(j / 86400000);
                return f02.h0(f02.a, 0L, 0L, 0L, (j % 86400000) * 1000000);
            case 4:
                return g0(j);
            case 5:
                return h0(this.a, 0L, j, 0L, 0L);
            case 6:
                return h0(this.a, j, 0L, 0L, 0L);
            case 7:
                LocalDateTime f03 = f0(j / 256);
                return f03.h0(f03.a, (j % 256) * 12, 0L, 0L, 0L);
            default:
                return j0(this.a.d(j, temporalUnit), this.b);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof LocalDateTime) {
            LocalDateTime localDateTime = (LocalDateTime) obj;
            if (this.a.equals(localDateTime.a) && this.b.equals(localDateTime.b)) {
                return true;
            }
        }
        return false;
    }

    @Override // j$.time.chrono.e
    public final j$.time.chrono.b f() {
        return this.a;
    }

    public final LocalDateTime f0(long j) {
        return j0(this.a.m0(j), this.b);
    }

    public String format(DateTimeFormatter dateTimeFormatter) {
        Objects.requireNonNull(dateTimeFormatter, "formatter");
        return dateTimeFormatter.format(this);
    }

    public final LocalDateTime g0(long j) {
        return h0(this.a, 0L, 0L, j, 0L);
    }

    public final LocalDateTime h0(LocalDate localDate, long j, long j2, long j3, long j4) {
        long j5 = j | j2 | j3 | j4;
        i iVar = this.b;
        if (j5 == 0) {
            return j0(localDate, iVar);
        }
        long j6 = j / 24;
        long j7 = ((j2 % 1440) * 60000000000L) + ((j3 % 86400) * C.NANOS_PER_SECOND) + (j4 % 86400000000000L);
        long l0 = iVar.l0();
        long j8 = ((j % 24) * 3600000000000L) + j7 + l0;
        long E = j$.com.android.tools.r8.a.E(j8, 86400000000000L) + j6 + (j2 / 1440) + (j3 / 86400) + (j4 / 86400000000000L);
        long R = j$.com.android.tools.r8.a.R(j8, 86400000000000L);
        return j0(localDate.m0(E), R == l0 ? this.b : i.e0(R));
    }

    public final int hashCode() {
        return this.b.hashCode() ^ this.a.hashCode();
    }

    @Override // j$.time.temporal.l
    /* renamed from: i0, reason: merged with bridge method [inline-methods] */
    public final LocalDateTime c(long j, j$.time.temporal.p pVar) {
        if (!(pVar instanceof j$.time.temporal.a)) {
            return (LocalDateTime) pVar.H(this, j);
        }
        boolean Z = ((j$.time.temporal.a) pVar).Z();
        LocalDate localDate = this.a;
        return Z ? j0(localDate, this.b.c(j, pVar)) : j0(localDate.c(j, pVar), this.b);
    }

    public final LocalDateTime j0(LocalDate localDate, i iVar) {
        return (this.a == localDate && this.b == iVar) ? this : new LocalDateTime(localDate, iVar);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final int k(j$.time.temporal.p pVar) {
        return pVar instanceof j$.time.temporal.a ? ((j$.time.temporal.a) pVar).Z() ? this.b.k(pVar) : this.a.k(pVar) : j$.time.temporal.q.a(this, pVar);
    }

    @Override // j$.time.temporal.l
    /* renamed from: minus, reason: merged with bridge method [inline-methods] */
    public LocalDateTime z(long j, TemporalUnit temporalUnit) {
        long j2;
        if (j == Long.MIN_VALUE) {
            this = d(Long.MAX_VALUE, temporalUnit);
            j2 = 1;
        } else {
            j2 = -j;
        }
        return this.d(j2, temporalUnit);
    }

    public LocalDateTime minusDays(long j) {
        long j2;
        if (j == Long.MIN_VALUE) {
            this = f0(Long.MAX_VALUE);
            j2 = 1;
        } else {
            j2 = -j;
        }
        return this.f0(j2);
    }

    public LocalDateTime minusYears(long j) {
        LocalDate p0;
        LocalDate localDate = this.a;
        if (j == Long.MIN_VALUE) {
            this = j0(localDate.p0(Long.MAX_VALUE), this.b);
            p0 = this.a.p0(1L);
        } else {
            p0 = localDate.p0(-j);
        }
        return this.j0(p0, this.b);
    }

    @Override // j$.time.temporal.l
    public final j$.time.temporal.l n(LocalDate localDate) {
        return j0(localDate, this.b);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final j$.time.temporal.s o(j$.time.temporal.p pVar) {
        if (!(pVar instanceof j$.time.temporal.a)) {
            return pVar.n(this);
        }
        if (!((j$.time.temporal.a) pVar).Z()) {
            return this.a.o(pVar);
        }
        i iVar = this.b;
        iVar.getClass();
        return j$.time.temporal.q.d(iVar, pVar);
    }

    public final String toString() {
        return this.a.toString() + "T" + this.b.toString();
    }

    public LocalDateTime truncatedTo(TemporalUnit temporalUnit) {
        LocalDate localDate = this.a;
        i iVar = this.b;
        iVar.getClass();
        if (temporalUnit != ChronoUnit.NANOS) {
            d duration = temporalUnit.getDuration();
            long j = duration.a;
            if (j > 86400) {
                throw new j$.time.temporal.r("Unit is too large to be used for truncation");
            }
            long j2 = duration.b;
            if (j < 0) {
                j++;
                j2 -= C.NANOS_PER_SECOND;
            }
            long S = j$.com.android.tools.r8.a.S(j$.com.android.tools.r8.a.T(j, C.NANOS_PER_SECOND), j2);
            if (86400000000000L % S != 0) {
                throw new j$.time.temporal.r("Unit must divide into a standard day without remainder");
            }
            iVar = i.e0((iVar.l0() / S) * S);
        }
        return j0(localDate, iVar);
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.l u(j$.time.temporal.l lVar) {
        return lVar.c(((LocalDate) f()).N(), j$.time.temporal.a.EPOCH_DAY).c(b().l0(), j$.time.temporal.a.NANO_OF_DAY);
    }
}
