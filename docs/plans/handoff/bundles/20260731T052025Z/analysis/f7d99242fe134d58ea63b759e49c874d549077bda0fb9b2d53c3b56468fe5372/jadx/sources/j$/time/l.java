package j$.time;

import j$.time.chrono.ChronoLocalDateTime;
import j$.time.temporal.ChronoField;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.Temporal;
import j$.time.temporal.TemporalField;
import j$.time.temporal.TemporalQuery;
import j$.time.temporal.TemporalUnit;
import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public final class l implements Temporal, j$.time.temporal.k, Comparable, Serializable {
    public static final /* synthetic */ int c = 0;
    private static final long serialVersionUID = 2287754244819255394L;
    public final LocalDateTime a;
    public final ZoneOffset b;

    static {
        LocalDateTime localDateTime = LocalDateTime.MIN;
        ZoneOffset zoneOffset = ZoneOffset.g;
        localDateTime.getClass();
        new l(localDateTime, zoneOffset);
        LocalDateTime localDateTime2 = LocalDateTime.MAX;
        ZoneOffset zoneOffset2 = ZoneOffset.f;
        localDateTime2.getClass();
        new l(localDateTime2, zoneOffset2);
    }

    public l(LocalDateTime localDateTime, ZoneOffset zoneOffset) {
        this.a = (LocalDateTime) Objects.requireNonNull(localDateTime, "dateTime");
        this.b = (ZoneOffset) Objects.requireNonNull(zoneOffset, "offset");
    }

    public static l U(Instant instant, ZoneId zoneId) {
        Objects.requireNonNull(instant, "instant");
        Objects.requireNonNull(zoneId, "zone");
        ZoneOffset d = zoneId.getRules().d(instant);
        return new l(LocalDateTime.X(instant.getEpochSecond(), instant.getNano(), d), d);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new p((byte) 10, this);
    }

    @Override // j$.time.temporal.Temporal
    public final Temporal F(long j, ChronoUnit chronoUnit) {
        long j2;
        if (j == Long.MIN_VALUE) {
            this = c(Long.MAX_VALUE, chronoUnit);
            j2 = 1;
        } else {
            j2 = -j;
        }
        return this.c(j2, chronoUnit);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final long J(TemporalField temporalField) {
        if (!(temporalField instanceof ChronoField)) {
            return temporalField.F(this);
        }
        int i = k.a[((ChronoField) temporalField).ordinal()];
        if (i != 1) {
            return i != 2 ? this.a.J(temporalField) : this.b.getTotalSeconds();
        }
        LocalDateTime localDateTime = this.a;
        ZoneOffset zoneOffset = this.b;
        localDateTime.getClass();
        return j$.com.android.tools.r8.a.n(localDateTime, zoneOffset);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final Object L(TemporalQuery temporalQuery) {
        if (temporalQuery == j$.time.temporal.n.d || temporalQuery == j$.time.temporal.n.e) {
            return this.b;
        }
        if (temporalQuery == j$.time.temporal.n.a) {
            return null;
        }
        return temporalQuery == j$.time.temporal.n.f ? this.a.e() : temporalQuery == j$.time.temporal.n.g ? this.a.toLocalTime() : temporalQuery == j$.time.temporal.n.b ? j$.time.chrono.q.c : temporalQuery == j$.time.temporal.n.c ? ChronoUnit.NANOS : temporalQuery.queryFrom(this);
    }

    @Override // j$.time.temporal.Temporal
    /* renamed from: V, reason: merged with bridge method [inline-methods] */
    public final l c(long j, TemporalUnit temporalUnit) {
        return temporalUnit instanceof ChronoUnit ? W(this.a.c(j, temporalUnit), this.b) : (l) temporalUnit.m(this, j);
    }

    public final l W(LocalDateTime localDateTime, ZoneOffset zoneOffset) {
        return (this.a == localDateTime && this.b.equals(zoneOffset)) ? this : new l(localDateTime, zoneOffset);
    }

    @Override // j$.time.temporal.Temporal
    public final Temporal b(long j, TemporalField temporalField) {
        if (!(temporalField instanceof ChronoField)) {
            return (l) temporalField.J(this, j);
        }
        ChronoField chronoField = (ChronoField) temporalField;
        int i = k.a[chronoField.ordinal()];
        LocalDateTime localDateTime = this.a;
        return i != 1 ? i != 2 ? W(localDateTime.b(j, temporalField), this.b) : W(localDateTime, ZoneOffset.ofTotalSeconds(chronoField.b.a(j, chronoField))) : U(Instant.ofEpochSecond(j, localDateTime.b.getNano()), this.b);
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        int compare;
        l lVar = (l) obj;
        boolean equals = this.b.equals(lVar.b);
        LocalDateTime localDateTime = this.a;
        if (equals) {
            compare = localDateTime.compareTo((ChronoLocalDateTime<?>) lVar.a);
        } else {
            ZoneOffset zoneOffset = this.b;
            localDateTime.getClass();
            long n = j$.com.android.tools.r8.a.n(localDateTime, zoneOffset);
            LocalDateTime localDateTime2 = lVar.a;
            ZoneOffset zoneOffset2 = lVar.b;
            localDateTime2.getClass();
            compare = Long.compare(n, j$.com.android.tools.r8.a.n(localDateTime2, zoneOffset2));
            if (compare == 0) {
                compare = this.a.toLocalTime().getNano() - lVar.a.toLocalTime().getNano();
            }
        }
        return compare == 0 ? this.a.compareTo((ChronoLocalDateTime<?>) lVar.a) : compare;
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final boolean d(TemporalField temporalField) {
        if (temporalField instanceof ChronoField) {
            return true;
        }
        return temporalField != null && temporalField.k(this);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof l) {
            l lVar = (l) obj;
            if (this.a.equals(lVar.a) && this.b.equals(lVar.b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.b.hashCode() ^ this.a.hashCode();
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final int k(TemporalField temporalField) {
        if (!(temporalField instanceof ChronoField)) {
            return j$.time.temporal.n.a(this, temporalField);
        }
        int i = k.a[((ChronoField) temporalField).ordinal()];
        if (i != 1) {
            return i != 2 ? this.a.k(temporalField) : this.b.getTotalSeconds();
        }
        throw new j$.time.temporal.o("Invalid field 'InstantSeconds' for get() method, use getLong() instead");
    }

    @Override // j$.time.temporal.Temporal
    public final Temporal m(LocalDate localDate) {
        if (b.b(localDate)) {
            return W(this.a.m(localDate), this.b);
        }
        localDate.getClass();
        return (l) j$.com.android.tools.r8.a.a(localDate, this);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final j$.time.temporal.p n(TemporalField temporalField) {
        return temporalField instanceof ChronoField ? (temporalField == ChronoField.INSTANT_SECONDS || temporalField == ChronoField.OFFSET_SECONDS) ? ((ChronoField) temporalField).b : this.a.n(temporalField) : temporalField.m(this);
    }

    public final String toString() {
        return this.a.toString() + this.b.toString();
    }

    @Override // j$.time.temporal.k
    public final Temporal u(Temporal temporal) {
        return temporal.b(this.a.e().toEpochDay(), ChronoField.EPOCH_DAY).b(this.a.toLocalTime().e0(), ChronoField.NANO_OF_DAY).b(this.b.getTotalSeconds(), ChronoField.OFFSET_SECONDS);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v11, types: [j$.time.l] */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v4 */
    @Override // j$.time.temporal.Temporal
    public final long until(Temporal temporal, TemporalUnit temporalUnit) {
        if (temporal instanceof l) {
            temporal = (l) temporal;
        } else {
            try {
                ZoneOffset from = ZoneOffset.from(temporal);
                LocalDate localDate = (LocalDate) temporal.L(j$.time.temporal.n.f);
                LocalTime localTime = (LocalTime) temporal.L(j$.time.temporal.n.g);
                temporal = (localDate == null || localTime == null) ? U(Instant.V(temporal), from) : new l(LocalDateTime.of(localDate, localTime), from);
            } catch (DateTimeException e) {
                j$.nio.file.j.h("Unable to obtain OffsetDateTime from TemporalAccessor: ", temporal, temporal.getClass().getName(), e);
                return 0L;
            }
        }
        if (!(temporalUnit instanceof ChronoUnit)) {
            return temporalUnit.k(this, temporal);
        }
        ZoneOffset zoneOffset = this.b;
        boolean equals = zoneOffset.equals(temporal.b);
        l lVar = temporal;
        if (!equals) {
            lVar = new l(temporal.a.Z(zoneOffset.getTotalSeconds() - temporal.b.getTotalSeconds()), zoneOffset);
        }
        return this.a.until(lVar.a, temporalUnit);
    }
}
