package j$.time;

import j$.time.chrono.ChronoLocalDate;
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
public final class LocalDate implements Temporal, TemporalAdjuster, ChronoLocalDate, Serializable {
    public static final LocalDate d = of(-999999999, 1, 1);
    public static final LocalDate e = of(999999999, 12, 31);
    private static final long serialVersionUID = 2942565459149668126L;
    public final int a;
    public final short b;
    public final short c;

    static {
        of(1970, 1, 1);
    }

    public LocalDate(int i, int i2, int i3) {
        this.a = i;
        this.b = (short) i2;
        this.c = (short) i3;
    }

    public static LocalDate B(b bVar) {
        Objects.requireNonNull(bVar, "clock");
        return ofInstant(Instant.ofEpochMilli(System.currentTimeMillis()), bVar.a);
    }

    public static LocalDate C(int i, int i2) {
        long j = i;
        j$.time.temporal.a.YEAR.o(j);
        j$.time.temporal.a.DAY_OF_YEAR.o(i2);
        boolean isLeapYear = j$.time.chrono.p.c.isLeapYear(j);
        if (i2 == 366 && !isLeapYear) {
            h.e("Invalid date 'DayOfYear 366' as '", i, "' is not a leap year");
            return null;
        }
        Month of = Month.of(((i2 - 1) / 31) + 1);
        if (i2 > (of.v(isLeapYear) + of.u(isLeapYear)) - 1) {
            of = Month.a[(of.ordinal() + 13) % 12];
        }
        return new LocalDate(i, of.getValue(), (i2 - of.u(isLeapYear)) + 1);
    }

    public static LocalDate H(int i, int i2, int i3) {
        if (i2 == 2) {
            i3 = Math.min(i3, j$.time.chrono.p.c.isLeapYear((long) i) ? 29 : 28);
        } else if (i2 == 4 || i2 == 6 || i2 == 9 || i2 == 11) {
            i3 = Math.min(i3, 30);
        }
        return new LocalDate(i, i2, i3);
    }

    public static LocalDate now() {
        return B(a.X());
    }

    public static LocalDate of(int i, Month month, int i2) {
        j$.time.temporal.a.YEAR.o(i);
        Objects.requireNonNull(month, "month");
        j$.time.temporal.a.DAY_OF_MONTH.o(i2);
        return v(i, month.getValue(), i2);
    }

    public static LocalDate ofEpochDay(long j) {
        long j2;
        j$.time.temporal.a.EPOCH_DAY.o(j);
        long j3 = 719468 + j;
        if (j3 < 0) {
            long j4 = ((j + 719469) / 146097) - 1;
            j2 = j4 * 400;
            j3 += (-j4) * 146097;
        } else {
            j2 = 0;
        }
        long j5 = ((j3 * 400) + 591) / 146097;
        long j6 = j3 - ((j5 / 400) + (((j5 / 4) + (j5 * 365)) - (j5 / 100)));
        if (j6 < 0) {
            j5--;
            j6 = j3 - ((j5 / 400) + (((j5 / 4) + (365 * j5)) - (j5 / 100)));
        }
        int i = (int) j6;
        int i2 = ((i * 5) + 2) / 153;
        int i3 = ((i2 + 2) % 12) + 1;
        int i4 = (i - (((i2 * 306) + 5) / 10)) + 1;
        long j7 = j5 + j2 + (i2 / 10);
        j$.time.temporal.a aVar = j$.time.temporal.a.YEAR;
        return new LocalDate(aVar.b.a(j7, aVar), i3, i4);
    }

    public static LocalDate ofInstant(Instant instant, ZoneId zoneId) {
        Objects.requireNonNull(instant, "instant");
        Objects.requireNonNull(zoneId, "zone");
        return ofEpochDay(a.T(instant.getEpochSecond() + zoneId.v().d(instant).b, 86400L));
    }

    public static LocalDate parse(CharSequence charSequence, DateTimeFormatter dateTimeFormatter) {
        Objects.requireNonNull(dateTimeFormatter, "formatter");
        return (LocalDate) dateTimeFormatter.a(charSequence, new f(1));
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    public static LocalDate v(int i, int i2, int i3) {
        int i4 = 28;
        if (i3 > 28) {
            if (i2 != 2) {
                i4 = (i2 == 4 || i2 == 6 || i2 == 9 || i2 == 11) ? 30 : 31;
            } else if (j$.time.chrono.p.c.isLeapYear(i)) {
                i4 = 29;
            }
            if (i3 > i4) {
                if (i3 == 29) {
                    h.e("Invalid date 'February 29' as '", i, "' is not a leap year");
                    return null;
                }
                throw new c("Invalid date '" + Month.of(i2).name() + " " + i3 + "'");
            }
        }
        return new LocalDate(i, i2, i3);
    }

    public static LocalDate w(TemporalAccessor temporalAccessor) {
        Objects.requireNonNull(temporalAccessor, "temporal");
        LocalDate localDate = (LocalDate) temporalAccessor.i(j$.time.temporal.o.f);
        if (localDate != null) {
            return localDate;
        }
        h.g("Unable to obtain LocalDate from TemporalAccessor: ", temporalAccessor, " of type ", temporalAccessor.getClass().getName());
        return null;
    }

    private Object writeReplace() {
        return new r((byte) 3, this);
    }

    public final long A(LocalDate localDate) {
        return (((localDate.y() * 32) + localDate.getDayOfMonth()) - ((y() * 32) + getDayOfMonth())) / 32;
    }

    @Override // j$.time.temporal.Temporal
    /* renamed from: D, reason: merged with bridge method [inline-methods] */
    public final LocalDate b(long j, TemporalUnit temporalUnit) {
        if (!(temporalUnit instanceof ChronoUnit)) {
            return (LocalDate) temporalUnit.f(this, j);
        }
        switch (g.b[((ChronoUnit) temporalUnit).ordinal()]) {
            case 1:
                return plusDays(j);
            case 2:
                return F(j);
            case 3:
                return E(j);
            case 4:
                return G(j);
            case 5:
                return G(a.U(j, 10L));
            case 6:
                return G(a.U(j, 100L));
            case 7:
                return G(a.U(j, 1000L));
            case 8:
                j$.time.temporal.a aVar = j$.time.temporal.a.ERA;
                return a(a.P(q(aVar), j), aVar);
            default:
                h.b(temporalUnit, "Unsupported unit: ");
                return null;
        }
    }

    public final LocalDate E(long j) {
        if (j == 0) {
            return this;
        }
        long j2 = (this.a * 12) + (this.b - 1) + j;
        j$.time.temporal.a aVar = j$.time.temporal.a.YEAR;
        return H(aVar.b.a(a.T(j2, 12L), aVar), ((int) a.S(j2, 12L)) + 1, this.c);
    }

    public final LocalDate F(long j) {
        return plusDays(a.U(j, 7L));
    }

    public final LocalDate G(long j) {
        if (j == 0) {
            return this;
        }
        j$.time.temporal.a aVar = j$.time.temporal.a.YEAR;
        return H(aVar.b.a(this.a + j, aVar), this.b, this.c);
    }

    @Override // j$.time.temporal.Temporal
    /* renamed from: I, reason: merged with bridge method [inline-methods] */
    public final LocalDate a(long j, j$.time.temporal.n nVar) {
        if (!(nVar instanceof j$.time.temporal.a)) {
            return (LocalDate) nVar.k(this, j);
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) nVar;
        aVar.o(j);
        switch (g.a[aVar.ordinal()]) {
            case 1:
                int i = (int) j;
                if (this.c != i) {
                    return of(this.a, this.b, i);
                }
                return this;
            case 2:
                int i2 = (int) j;
                if (getDayOfYear() != i2) {
                    return C(this.a, i2);
                }
                return this;
            case 3:
                return F(j - q(j$.time.temporal.a.ALIGNED_WEEK_OF_MONTH));
            case 4:
                if (this.a < 1) {
                    j = 1 - j;
                }
                return K((int) j);
            case 5:
                return plusDays(j - getDayOfWeek().getValue());
            case 6:
                return plusDays(j - q(j$.time.temporal.a.ALIGNED_DAY_OF_WEEK_IN_MONTH));
            case 7:
                return plusDays(j - q(j$.time.temporal.a.ALIGNED_DAY_OF_WEEK_IN_YEAR));
            case 8:
                return ofEpochDay(j);
            case 9:
                return F(j - q(j$.time.temporal.a.ALIGNED_WEEK_OF_YEAR));
            case 10:
                int i3 = (int) j;
                if (this.b != i3) {
                    j$.time.temporal.a.MONTH_OF_YEAR.o(i3);
                    return H(this.a, i3, this.c);
                }
                return this;
            case 11:
                return E(j - y());
            case 12:
                return K((int) j);
            case IMAGE_VALUE:
                if (q(j$.time.temporal.a.ERA) != j) {
                    return K(1 - this.a);
                }
                return this;
            default:
                throw new j$.time.temporal.p(d.a("Unsupported field: ", nVar));
        }
    }

    @Override // j$.time.chrono.ChronoLocalDate
    /* renamed from: J, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public final LocalDate n(TemporalAdjuster temporalAdjuster) {
        return temporalAdjuster instanceof LocalDate ? (LocalDate) temporalAdjuster : (LocalDate) temporalAdjuster.k(this);
    }

    public final LocalDate K(int i) {
        if (this.a == i) {
            return this;
        }
        j$.time.temporal.a.YEAR.o(i);
        return H(i, this.b, this.c);
    }

    public ZonedDateTime atStartOfDay(ZoneId zoneId) {
        Objects.requireNonNull(zoneId, "zone");
        LocalDateTime of = LocalDateTime.of(this, LocalTime.MIDNIGHT);
        if (!(zoneId instanceof ZoneOffset)) {
            Object e2 = zoneId.v().e(of);
            j$.time.zone.b bVar = e2 instanceof j$.time.zone.b ? (j$.time.zone.b) e2 : null;
            if (bVar != null && bVar.f()) {
                of = bVar.b.y(bVar.d.b - bVar.c.b);
            }
        }
        return ZonedDateTime.w(of, zoneId, null);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final boolean c(j$.time.temporal.n nVar) {
        return a.q(this, nVar);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.lang.Comparable
    public int compareTo(ChronoLocalDate chronoLocalDate) {
        return chronoLocalDate instanceof LocalDate ? u((LocalDate) chronoLocalDate) : a.e(this, chronoLocalDate);
    }

    @Override // j$.time.temporal.Temporal
    public final long d(Temporal temporal, TemporalUnit temporalUnit) {
        LocalDate w = w(temporal);
        if (!(temporalUnit instanceof ChronoUnit)) {
            return temporalUnit.between(this, w);
        }
        switch (g.b[((ChronoUnit) temporalUnit).ordinal()]) {
            case 1:
                return w.toEpochDay() - toEpochDay();
            case 2:
                return (w.toEpochDay() - toEpochDay()) / 7;
            case 3:
                return A(w);
            case 4:
                return A(w) / 12;
            case 5:
                return A(w) / 120;
            case 6:
                return A(w) / 1200;
            case 7:
                return A(w) / 12000;
            case 8:
                j$.time.temporal.a aVar = j$.time.temporal.a.ERA;
                return w.q(aVar) - q(aVar);
            default:
                h.b(temporalUnit, "Unsupported unit: ");
                return 0L;
        }
    }

    @Override // j$.time.chrono.ChronoLocalDate
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof LocalDate) && u((LocalDate) obj) == 0;
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final int f(j$.time.temporal.n nVar) {
        return nVar instanceof j$.time.temporal.a ? x(nVar) : j$.time.temporal.o.a(this, nVar);
    }

    public String format(DateTimeFormatter dateTimeFormatter) {
        Objects.requireNonNull(dateTimeFormatter, "formatter");
        return dateTimeFormatter.format(this);
    }

    @Override // j$.time.chrono.ChronoLocalDate
    public final j$.time.chrono.a getChronology() {
        return j$.time.chrono.p.c;
    }

    public int getDayOfMonth() {
        return this.c;
    }

    public DayOfWeek getDayOfWeek() {
        return DayOfWeek.of(((int) a.S(toEpochDay() + 3, 7L)) + 1);
    }

    public int getDayOfYear() {
        return (Month.of(this.b).u(isLeapYear()) + this.c) - 1;
    }

    @Override // j$.time.chrono.ChronoLocalDate
    public final j$.time.chrono.j getEra() {
        return getYear() >= 1 ? j$.time.chrono.q.CE : j$.time.chrono.q.BCE;
    }

    public int getMonthValue() {
        return this.b;
    }

    public int getYear() {
        return this.a;
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final j$.time.temporal.q h(j$.time.temporal.n nVar) {
        if (!(nVar instanceof j$.time.temporal.a)) {
            return nVar.g(this);
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) nVar;
        if (!aVar.isDateBased()) {
            throw new j$.time.temporal.p(d.a("Unsupported field: ", nVar));
        }
        int i = g.a[aVar.ordinal()];
        if (i == 1) {
            return j$.time.temporal.q.f(1L, lengthOfMonth());
        }
        if (i == 2) {
            return j$.time.temporal.q.f(1L, lengthOfYear());
        }
        if (i != 3) {
            return i != 4 ? aVar.b : getYear() <= 0 ? j$.time.temporal.q.f(1L, 1000000000L) : j$.time.temporal.q.f(1L, 999999999L);
        }
        return j$.time.temporal.q.f(1L, (Month.of(this.b) != Month.FEBRUARY || isLeapYear()) ? 5L : 4L);
    }

    @Override // j$.time.chrono.ChronoLocalDate
    public final int hashCode() {
        int i = this.a;
        return (i & (-2048)) ^ (((i << 11) + (this.b << 6)) + this.c);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final Object i(f fVar) {
        return fVar == j$.time.temporal.o.f ? this : a.s(this, fVar);
    }

    public boolean isAfter(ChronoLocalDate chronoLocalDate) {
        return chronoLocalDate instanceof LocalDate ? u((LocalDate) chronoLocalDate) > 0 : toEpochDay() > chronoLocalDate.toEpochDay();
    }

    public boolean isBefore(ChronoLocalDate chronoLocalDate) {
        return chronoLocalDate instanceof LocalDate ? u((LocalDate) chronoLocalDate) < 0 : toEpochDay() < chronoLocalDate.toEpochDay();
    }

    @Override // j$.time.chrono.ChronoLocalDate
    public final boolean isLeapYear() {
        return j$.time.chrono.p.c.isLeapYear(this.a);
    }

    @Override // j$.time.temporal.TemporalAdjuster
    public final Temporal k(Temporal temporal) {
        return a.a(this, temporal);
    }

    public final int lengthOfMonth() {
        short s = this.b;
        return s != 2 ? (s == 4 || s == 6 || s == 9 || s == 11) ? 30 : 31 : isLeapYear() ? 29 : 28;
    }

    @Override // j$.time.chrono.ChronoLocalDate
    public final int lengthOfYear() {
        return isLeapYear() ? 366 : 365;
    }

    public LocalDate minusDays(long j) {
        long j2;
        if (j == Long.MIN_VALUE) {
            this = plusDays(Long.MAX_VALUE);
            j2 = 1;
        } else {
            j2 = -j;
        }
        return this.plusDays(j2);
    }

    public LocalDate minusMonths(long j) {
        long j2;
        if (j == Long.MIN_VALUE) {
            this = E(Long.MAX_VALUE);
            j2 = 1;
        } else {
            j2 = -j;
        }
        return this.E(j2);
    }

    public LocalDate minusYears(long j) {
        long j2;
        if (j == Long.MIN_VALUE) {
            this = G(Long.MAX_VALUE);
            j2 = 1;
        } else {
            j2 = -j;
        }
        return this.G(j2);
    }

    public LocalDate plusDays(long j) {
        if (j == 0) {
            return this;
        }
        long j2 = this.c + j;
        if (j2 > 0) {
            if (j2 <= 28) {
                return new LocalDate(this.a, this.b, (int) j2);
            }
            if (j2 <= 59) {
                long lengthOfMonth = lengthOfMonth();
                if (j2 <= lengthOfMonth) {
                    return new LocalDate(this.a, this.b, (int) j2);
                }
                short s = this.b;
                if (s < 12) {
                    return new LocalDate(this.a, s + 1, (int) (j2 - lengthOfMonth));
                }
                j$.time.temporal.a.YEAR.o(this.a + 1);
                return new LocalDate(this.a + 1, 1, (int) (j2 - lengthOfMonth));
            }
        }
        return ofEpochDay(a.P(toEpochDay(), j));
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final long q(j$.time.temporal.n nVar) {
        return nVar instanceof j$.time.temporal.a ? nVar == j$.time.temporal.a.EPOCH_DAY ? toEpochDay() : nVar == j$.time.temporal.a.PROLEPTIC_MONTH ? y() : x(nVar) : nVar.i(this);
    }

    @Override // j$.time.chrono.ChronoLocalDate
    public final ChronoLocalDateTime r(LocalTime localTime) {
        return LocalDateTime.of(this, localTime);
    }

    @Override // j$.time.chrono.ChronoLocalDate
    public final ChronoLocalDate t(j$.time.temporal.m mVar) {
        q qVar = (q) mVar;
        return E((qVar.a * 12) + qVar.b).plusDays(qVar.c);
    }

    @Override // j$.time.chrono.ChronoLocalDate
    public long toEpochDay() {
        long j = this.a;
        long j2 = this.b;
        long j3 = 365 * j;
        long j4 = (((367 * j2) - 362) / 12) + (j >= 0 ? ((j + 399) / 400) + (((3 + j) / 4) - ((99 + j) / 100)) + j3 : j3 - ((j / (-400)) + ((j / (-4)) - (j / (-100))))) + (this.c - 1);
        if (j2 > 2) {
            j4 = !isLeapYear() ? j4 - 2 : j4 - 1;
        }
        return j4 - 719528;
    }

    @Override // j$.time.chrono.ChronoLocalDate
    public String toString() {
        int i = this.a;
        short s = this.b;
        short s2 = this.c;
        int abs = Math.abs(i);
        StringBuilder sb = new StringBuilder(10);
        if (abs >= 1000) {
            if (i > 9999) {
                sb.append('+');
            }
            sb.append(i);
        } else if (i < 0) {
            sb.append(i - 10000);
            sb.deleteCharAt(1);
        } else {
            sb.append(i + 10000);
            sb.deleteCharAt(0);
        }
        sb.append(s < 10 ? "-0" : "-");
        sb.append((int) s);
        sb.append(s2 < 10 ? "-0" : "-");
        sb.append((int) s2);
        return sb.toString();
    }

    public final int u(LocalDate localDate) {
        int i = this.a - localDate.a;
        return (i == 0 && (i = this.b - localDate.b) == 0) ? this.c - localDate.c : i;
    }

    public final int x(j$.time.temporal.n nVar) {
        switch (g.a[((j$.time.temporal.a) nVar).ordinal()]) {
            case 1:
                return this.c;
            case 2:
                return getDayOfYear();
            case 3:
                return ((this.c - 1) / 7) + 1;
            case 4:
                int i = this.a;
                return i >= 1 ? i : 1 - i;
            case 5:
                return getDayOfWeek().getValue();
            case 6:
                return ((this.c - 1) % 7) + 1;
            case 7:
                return ((getDayOfYear() - 1) % 7) + 1;
            case 8:
                throw new j$.time.temporal.p("Invalid field 'EpochDay' for get() method, use getLong() instead");
            case 9:
                return ((getDayOfYear() - 1) / 7) + 1;
            case 10:
                return this.b;
            case 11:
                throw new j$.time.temporal.p("Invalid field 'ProlepticMonth' for get() method, use getLong() instead");
            case 12:
                return this.a;
            case IMAGE_VALUE:
                return this.a >= 1 ? 1 : 0;
            default:
                throw new j$.time.temporal.p(d.a("Unsupported field: ", nVar));
        }
    }

    public final long y() {
        return ((this.a * 12) + this.b) - 1;
    }

    @Override // j$.time.temporal.Temporal
    /* renamed from: z, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public final LocalDate o(long j, TemporalUnit temporalUnit) {
        long j2;
        if (j == Long.MIN_VALUE) {
            this = b(Long.MAX_VALUE, temporalUnit);
            j2 = 1;
        } else {
            j2 = -j;
        }
        return this.b(j2, temporalUnit);
    }

    public static LocalDate parse(CharSequence charSequence) {
        return parse(charSequence, DateTimeFormatter.ISO_LOCAL_DATE);
    }

    public static LocalDate of(int i, int i2, int i3) {
        j$.time.temporal.a.YEAR.o(i);
        j$.time.temporal.a.MONTH_OF_YEAR.o(i2);
        j$.time.temporal.a.DAY_OF_MONTH.o(i3);
        return v(i, i2, i3);
    }

    public LocalDateTime atStartOfDay() {
        return LocalDateTime.of(this, LocalTime.MIDNIGHT);
    }
}
