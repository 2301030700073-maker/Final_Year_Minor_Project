package j$.time;

import j$.time.chrono.ChronoLocalDateTime;
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
public final class LocalDateTime implements Temporal, TemporalAdjuster, ChronoLocalDateTime<LocalDate>, Serializable {
    public static final LocalDateTime c = of(LocalDate.d, LocalTime.e);
    public static final LocalDateTime d = of(LocalDate.e, LocalTime.f);
    private static final long serialVersionUID = 6207766400415563566L;
    public final LocalDate a;
    public final LocalTime b;

    public LocalDateTime(LocalDate localDate, LocalTime localTime) {
        this.a = localDate;
        this.b = localTime;
    }

    public static LocalDateTime now() {
        b X = a.X();
        Objects.requireNonNull(X, "clock");
        Instant ofEpochMilli = Instant.ofEpochMilli(System.currentTimeMillis());
        return w(ofEpochMilli.getEpochSecond(), ofEpochMilli.b, X.a.v().d(ofEpochMilli));
    }

    public static LocalDateTime of(LocalDate localDate, LocalTime localTime) {
        Objects.requireNonNull(localDate, "date");
        Objects.requireNonNull(localTime, "time");
        return new LocalDateTime(localDate, localTime);
    }

    public static LocalDateTime ofInstant(Instant instant, ZoneId zoneId) {
        Objects.requireNonNull(instant, "instant");
        Objects.requireNonNull(zoneId, "zone");
        return w(instant.getEpochSecond(), instant.b, zoneId.v().d(instant));
    }

    public static LocalDateTime parse(CharSequence charSequence, DateTimeFormatter dateTimeFormatter) {
        Objects.requireNonNull(dateTimeFormatter, "formatter");
        return (LocalDateTime) dateTimeFormatter.a(charSequence, new f(2));
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    public static LocalDateTime v(TemporalAccessor temporalAccessor) {
        if (temporalAccessor instanceof LocalDateTime) {
            return (LocalDateTime) temporalAccessor;
        }
        if (temporalAccessor instanceof ZonedDateTime) {
            return ((ZonedDateTime) temporalAccessor).toLocalDateTime();
        }
        if (temporalAccessor instanceof n) {
            return ((n) temporalAccessor).a;
        }
        try {
            return new LocalDateTime(LocalDate.w(temporalAccessor), LocalTime.w(temporalAccessor));
        } catch (c e) {
            h.h("Unable to obtain LocalDateTime from TemporalAccessor: ", temporalAccessor, temporalAccessor.getClass().getName(), e);
            return null;
        }
    }

    public static LocalDateTime w(long j, int i, ZoneOffset zoneOffset) {
        Objects.requireNonNull(zoneOffset, "offset");
        long j2 = i;
        j$.time.temporal.a.NANO_OF_SECOND.o(j2);
        return new LocalDateTime(LocalDate.ofEpochDay(a.T(j + zoneOffset.b, 86400L)), LocalTime.z((((int) a.S(r5, 86400L)) * 1000000000) + j2));
    }

    private Object writeReplace() {
        return new r((byte) 5, this);
    }

    @Override // j$.time.temporal.Temporal
    /* renamed from: A, reason: merged with bridge method [inline-methods] */
    public final LocalDateTime a(long j, j$.time.temporal.n nVar) {
        if (!(nVar instanceof j$.time.temporal.a)) {
            return (LocalDateTime) nVar.k(this, j);
        }
        boolean q = ((j$.time.temporal.a) nVar).q();
        LocalDate localDate = this.a;
        return q ? B(localDate, this.b.a(j, nVar)) : B(localDate.a(j, nVar), this.b);
    }

    public final LocalDateTime B(LocalDate localDate, LocalTime localTime) {
        return (this.a == localDate && this.b == localTime) ? this : new LocalDateTime(localDate, localTime);
    }

    @Override // j$.time.chrono.ChronoLocalDateTime
    /* renamed from: atZone, reason: merged with bridge method [inline-methods] */
    public ZonedDateTime p(ZoneId zoneId) {
        return ZonedDateTime.w(this, zoneId, null);
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
        long j;
        long j2;
        LocalDateTime v = v(temporal);
        if (!(temporalUnit instanceof ChronoUnit)) {
            return temporalUnit.between(this, v);
        }
        ChronoUnit chronoUnit = (ChronoUnit) temporalUnit;
        if (chronoUnit.compareTo(ChronoUnit.DAYS) >= 0) {
            LocalDate localDate = v.a;
            if (localDate.isAfter(this.a) && v.b.compareTo(this.b) < 0) {
                localDate = localDate.minusDays(1L);
            } else if (localDate.isBefore(this.a) && v.b.compareTo(this.b) > 0) {
                localDate = localDate.plusDays(1L);
            }
            return this.a.d(localDate, temporalUnit);
        }
        LocalDate localDate2 = this.a;
        LocalDate localDate3 = v.a;
        localDate2.getClass();
        long epochDay = localDate3.toEpochDay() - localDate2.toEpochDay();
        if (epochDay == 0) {
            return this.b.d(v.b, temporalUnit);
        }
        long G = v.b.G() - this.b.G();
        if (epochDay > 0) {
            j = epochDay - 1;
            j2 = G + 86400000000000L;
        } else {
            j = epochDay + 1;
            j2 = G - 86400000000000L;
        }
        switch (i.a[chronoUnit.ordinal()]) {
            case 1:
                j = a.U(j, 86400000000000L);
                break;
            case 2:
                j = a.U(j, 86400000000L);
                j2 /= 1000;
                break;
            case 3:
                j = a.U(j, 86400000L);
                j2 /= 1000000;
                break;
            case 4:
                j = a.U(j, 86400L);
                j2 /= 1000000000;
                break;
            case 5:
                j = a.U(j, 1440L);
                j2 /= 60000000000L;
                break;
            case 6:
                j = a.U(j, 24L);
                j2 /= 3600000000000L;
                break;
            case 7:
                j = a.U(j, 2L);
                j2 /= 43200000000000L;
                break;
        }
        return a.P(j, j2);
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

    @Override // j$.time.temporal.TemporalAccessor
    public final int f(j$.time.temporal.n nVar) {
        return nVar instanceof j$.time.temporal.a ? ((j$.time.temporal.a) nVar).q() ? this.b.f(nVar) : this.a.f(nVar) : j$.time.temporal.o.a(this, nVar);
    }

    public String format(DateTimeFormatter dateTimeFormatter) {
        Objects.requireNonNull(dateTimeFormatter, "formatter");
        return dateTimeFormatter.format(this);
    }

    @Override // j$.time.chrono.ChronoLocalDateTime
    public final j$.time.chrono.a getChronology() {
        return ((LocalDate) toLocalDate()).getChronology();
    }

    public int getYear() {
        return this.a.getYear();
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

    public int hashCode() {
        return this.b.hashCode() ^ this.a.hashCode();
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final Object i(f fVar) {
        return fVar == j$.time.temporal.o.f ? this.a : a.t(this, fVar);
    }

    public boolean isAfter(ChronoLocalDateTime<?> chronoLocalDateTime) {
        if (chronoLocalDateTime instanceof LocalDateTime) {
            return u((LocalDateTime) chronoLocalDateTime) > 0;
        }
        long epochDay = toLocalDate().toEpochDay();
        long epochDay2 = chronoLocalDateTime.toLocalDate().toEpochDay();
        if (epochDay <= epochDay2) {
            return epochDay == epochDay2 && this.b.G() > chronoLocalDateTime.toLocalTime().G();
        }
        return true;
    }

    public boolean isBefore(ChronoLocalDateTime<?> chronoLocalDateTime) {
        if (chronoLocalDateTime instanceof LocalDateTime) {
            return u((LocalDateTime) chronoLocalDateTime) < 0;
        }
        long epochDay = toLocalDate().toEpochDay();
        long epochDay2 = chronoLocalDateTime.toLocalDate().toEpochDay();
        if (epochDay >= epochDay2) {
            return epochDay == epochDay2 && this.b.G() < chronoLocalDateTime.toLocalTime().G();
        }
        return true;
    }

    @Override // j$.time.chrono.ChronoLocalDateTime
    public final /* synthetic */ long j(ZoneOffset zoneOffset) {
        return a.w(this, zoneOffset);
    }

    @Override // j$.time.temporal.TemporalAdjuster
    public final Temporal k(Temporal temporal) {
        return temporal.a(toLocalDate().toEpochDay(), j$.time.temporal.a.EPOCH_DAY).a(toLocalTime().G(), j$.time.temporal.a.NANO_OF_DAY);
    }

    public LocalDateTime minusDays(long j) {
        long j2;
        if (j == Long.MIN_VALUE) {
            this = plusDays(Long.MAX_VALUE);
            j2 = 1;
        } else {
            j2 = -j;
        }
        return this.plusDays(j2);
    }

    public LocalDateTime minusYears(long j) {
        LocalDate G;
        LocalDate localDate = this.a;
        if (j == Long.MIN_VALUE) {
            this = B(localDate.G(Long.MAX_VALUE), this.b);
            G = this.a.G(1L);
        } else {
            G = localDate.G(-j);
        }
        return this.B(G, this.b);
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

    public LocalDateTime plusDays(long j) {
        return B(this.a.plusDays(j), this.b);
    }

    public LocalDateTime plusMinutes(long j) {
        return z(this.a, 0L, j, 0L, 0L);
    }

    public LocalDateTime plusMonths(long j) {
        return B(this.a.E(j), this.b);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final long q(j$.time.temporal.n nVar) {
        return nVar instanceof j$.time.temporal.a ? ((j$.time.temporal.a) nVar).q() ? this.b.q(nVar) : this.a.q(nVar) : nVar.i(this);
    }

    @Override // java.lang.Comparable
    /* renamed from: s, reason: merged with bridge method [inline-methods] */
    public final int compareTo(ChronoLocalDateTime chronoLocalDateTime) {
        return chronoLocalDateTime instanceof LocalDateTime ? u((LocalDateTime) chronoLocalDateTime) : a.f(this, chronoLocalDateTime);
    }

    @Override // j$.time.chrono.ChronoLocalDateTime
    public final /* synthetic */ Instant toInstant(ZoneOffset zoneOffset) {
        return a.y(this, zoneOffset);
    }

    @Override // j$.time.chrono.ChronoLocalDateTime
    public final LocalTime toLocalTime() {
        return this.b;
    }

    public String toString() {
        return this.a.toString() + "T" + this.b.toString();
    }

    public final int u(LocalDateTime localDateTime) {
        int u = this.a.u(localDateTime.toLocalDate());
        return u == 0 ? this.b.compareTo(localDateTime.b) : u;
    }

    @Override // j$.time.temporal.Temporal
    /* renamed from: with, reason: merged with bridge method [inline-methods] */
    public LocalDateTime n(TemporalAdjuster temporalAdjuster) {
        return temporalAdjuster instanceof LocalDate ? B((LocalDate) temporalAdjuster, this.b) : temporalAdjuster instanceof LocalTime ? B(this.a, (LocalTime) temporalAdjuster) : temporalAdjuster instanceof LocalDateTime ? (LocalDateTime) temporalAdjuster : (LocalDateTime) temporalAdjuster.k(this);
    }

    public LocalDateTime withDayOfMonth(int i) {
        LocalDate localDate = this.a;
        if (localDate.c != i) {
            localDate = LocalDate.of(localDate.a, localDate.b, i);
        }
        return B(localDate, this.b);
    }

    @Override // j$.time.temporal.Temporal
    /* renamed from: x, reason: merged with bridge method [inline-methods] */
    public final LocalDateTime b(long j, TemporalUnit temporalUnit) {
        if (!(temporalUnit instanceof ChronoUnit)) {
            return (LocalDateTime) temporalUnit.f(this, j);
        }
        switch (i.a[((ChronoUnit) temporalUnit).ordinal()]) {
            case 1:
                return z(this.a, 0L, 0L, 0L, j);
            case 2:
                LocalDateTime plusDays = plusDays(j / 86400000000L);
                return plusDays.z(plusDays.a, 0L, 0L, 0L, (j % 86400000000L) * 1000);
            case 3:
                LocalDateTime plusDays2 = plusDays(j / 86400000);
                return plusDays2.z(plusDays2.a, 0L, 0L, 0L, (j % 86400000) * 1000000);
            case 4:
                return y(j);
            case 5:
                return plusMinutes(j);
            case 6:
                return z(this.a, j, 0L, 0L, 0L);
            case 7:
                LocalDateTime plusDays3 = plusDays(j / 256);
                return plusDays3.z(plusDays3.a, (j % 256) * 12, 0L, 0L, 0L);
            default:
                return B(this.a.b(j, temporalUnit), this.b);
        }
    }

    public final LocalDateTime y(long j) {
        return z(this.a, 0L, 0L, j, 0L);
    }

    public final LocalDateTime z(LocalDate localDate, long j, long j2, long j3, long j4) {
        long j5 = j | j2 | j3 | j4;
        LocalTime localTime = this.b;
        if (j5 == 0) {
            return B(localDate, localTime);
        }
        long j6 = j / 24;
        long G = localTime.G();
        long j7 = ((j % 24) * 3600000000000L) + ((j2 % 1440) * 60000000000L) + ((j3 % 86400) * 1000000000) + (j4 % 86400000000000L) + G;
        long T = a.T(j7, 86400000000000L) + j6 + (j2 / 1440) + (j3 / 86400) + (j4 / 86400000000000L);
        long S = a.S(j7, 86400000000000L);
        return B(localDate.plusDays(T), S == G ? this.b : LocalTime.z(S));
    }

    @Override // j$.time.chrono.ChronoLocalDateTime
    public LocalDate toLocalDate() {
        return this.a;
    }

    public static LocalDateTime parse(CharSequence charSequence) {
        return parse(charSequence, DateTimeFormatter.f);
    }
}
