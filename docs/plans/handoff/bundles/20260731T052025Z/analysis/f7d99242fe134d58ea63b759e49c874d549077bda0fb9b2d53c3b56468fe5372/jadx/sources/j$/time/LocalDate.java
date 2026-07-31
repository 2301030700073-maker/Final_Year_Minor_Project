package j$.time;

import androidx.compose.foundation.text.BasicTextKt;
import androidx.datastore.preferences.PreferencesProto$Value;
import j$.time.chrono.ChronoLocalDate;
import j$.time.chrono.ChronoLocalDateTime;
import j$.time.format.DateTimeFormatter;
import j$.time.temporal.ChronoField;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.Temporal;
import j$.time.temporal.TemporalAccessor;
import j$.time.temporal.TemporalField;
import j$.time.temporal.TemporalQuery;
import j$.time.temporal.TemporalUnit;
import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public final class LocalDate implements Temporal, j$.time.temporal.k, ChronoLocalDate, Serializable {
    private static final long serialVersionUID = 2942565459149668126L;
    public final int a;
    public final short b;
    public final short c;
    public static final LocalDate MIN = of(-999999999, 1, 1);
    public static final LocalDate MAX = of(999999999, 12, 31);

    static {
        of(1970, 1, 1);
    }

    public LocalDate(int i, int i2, int i3) {
        this.a = i;
        this.b = (short) i2;
        this.c = (short) i3;
    }

    public static LocalDate V(int i, int i2, int i3) {
        int i4 = 28;
        if (i3 > 28) {
            if (i2 != 2) {
                i4 = (i2 == 4 || i2 == 6 || i2 == 9 || i2 == 11) ? 30 : 31;
            } else {
                j$.time.chrono.q.c.getClass();
                if (j$.time.chrono.q.U(i)) {
                    i4 = 29;
                }
            }
            if (i3 > i4) {
                if (i3 == 29) {
                    j$.nio.file.j.e("Invalid date 'February 29' as '", i, "' is not a leap year");
                    return null;
                }
                throw new DateTimeException("Invalid date '" + Month.X(i2).name() + " " + i3 + "'");
            }
        }
        return new LocalDate(i, i2, i3);
    }

    public static LocalDate W(TemporalAccessor temporalAccessor) {
        Objects.requireNonNull(temporalAccessor, "temporal");
        LocalDate localDate = (LocalDate) temporalAccessor.L(j$.time.temporal.n.f);
        if (localDate != null) {
            return localDate;
        }
        j$.nio.file.j.g("Unable to obtain LocalDate from TemporalAccessor: ", temporalAccessor, " of type ", temporalAccessor.getClass().getName());
        return null;
    }

    public static LocalDate d0(a aVar) {
        Objects.requireNonNull(aVar, "clock");
        long currentTimeMillis = System.currentTimeMillis();
        Instant instant = Instant.c;
        Instant U = Instant.U(j$.com.android.tools.r8.a.C(currentTimeMillis, 1000L), ((int) j$.com.android.tools.r8.a.P(currentTimeMillis, 1000L)) * 1000000);
        ZoneId zoneId = aVar.a;
        Objects.requireNonNull(U, "instant");
        Objects.requireNonNull(zoneId, "zone");
        return ofEpochDay(j$.com.android.tools.r8.a.C(U.getEpochSecond() + zoneId.getRules().d(U).getTotalSeconds(), 86400L));
    }

    public static LocalDate e0(int i, int i2) {
        long j = i;
        ChronoField.YEAR.L(j);
        ChronoField.DAY_OF_YEAR.L(i2);
        j$.time.chrono.q.c.getClass();
        boolean U = j$.time.chrono.q.U(j);
        if (i2 == 366 && !U) {
            j$.nio.file.j.e("Invalid date 'DayOfYear 366' as '", i, "' is not a leap year");
            return null;
        }
        Month X = Month.X(((i2 - 1) / 31) + 1);
        if (i2 > (X.V(U) + X.U(U)) - 1) {
            X = Month.a[(X.ordinal() + 13) % 12];
        }
        return new LocalDate(i, X.getValue(), (i2 - X.U(U)) + 1);
    }

    public static LocalDate k0(int i, int i2, int i3) {
        if (i2 == 2) {
            j$.time.chrono.q.c.getClass();
            i3 = Math.min(i3, j$.time.chrono.q.U((long) i) ? 29 : 28);
        } else if (i2 == 4 || i2 == 6 || i2 == 9 || i2 == 11) {
            i3 = Math.min(i3, 30);
        }
        return new LocalDate(i, i2, i3);
    }

    public static LocalDate of(int i, int i2, int i3) {
        ChronoField.YEAR.L(i);
        ChronoField.MONTH_OF_YEAR.L(i2);
        ChronoField.DAY_OF_MONTH.L(i3);
        return V(i, i2, i3);
    }

    public static LocalDate ofEpochDay(long j) {
        long j2;
        ChronoField.EPOCH_DAY.L(j);
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
        ChronoField chronoField = ChronoField.YEAR;
        return new LocalDate(chronoField.b.a(j7, chronoField), i3, i4);
    }

    public static LocalDate parse(CharSequence charSequence) {
        DateTimeFormatter dateTimeFormatter = DateTimeFormatter.g;
        Objects.requireNonNull(dateTimeFormatter, "formatter");
        return (LocalDate) dateTimeFormatter.parse(charSequence, new j$.desugar.sun.nio.fs.m(1));
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new p((byte) 3, this);
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
        return temporalField instanceof ChronoField ? temporalField == ChronoField.EPOCH_DAY ? toEpochDay() : temporalField == ChronoField.PROLEPTIC_MONTH ? Y() : X(temporalField) : temporalField.F(this);
    }

    @Override // j$.time.chrono.ChronoLocalDate
    public final ChronoLocalDateTime K(LocalTime localTime) {
        return LocalDateTime.of(this, localTime);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final Object L(TemporalQuery temporalQuery) {
        return temporalQuery == j$.time.temporal.n.f ? this : j$.com.android.tools.r8.a.j(this, temporalQuery);
    }

    @Override // j$.time.chrono.ChronoLocalDate
    public final j$.time.chrono.k N() {
        return getYear() >= 1 ? j$.time.chrono.r.CE : j$.time.chrono.r.BCE;
    }

    @Override // j$.time.chrono.ChronoLocalDate
    public final ChronoLocalDate Q(j$.time.temporal.m mVar) {
        if (b.b(mVar)) {
            o oVar = (o) mVar;
            return h0((oVar.a * 12) + oVar.b).g0(oVar.c);
        }
        Objects.requireNonNull(mVar, "amountToAdd");
        return (LocalDate) ((o) mVar).k(this);
    }

    public final int U(LocalDate localDate) {
        int i = this.a - localDate.a;
        return (i == 0 && (i = this.b - localDate.b) == 0) ? this.c - localDate.c : i;
    }

    public final int X(TemporalField temporalField) {
        switch (e.a[((ChronoField) temporalField).ordinal()]) {
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
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                return ((getDayOfYear() - 1) % 7) + 1;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                throw new j$.time.temporal.o("Invalid field 'EpochDay' for get() method, use getLong() instead");
            case 9:
                return ((getDayOfYear() - 1) / 7) + 1;
            case 10:
                return this.b;
            case 11:
                throw new j$.time.temporal.o("Invalid field 'ProlepticMonth' for get() method, use getLong() instead");
            case BasicTextKt.ShiftMeta /* 12 */:
                return this.a;
            case 13:
                return this.a >= 1 ? 1 : 0;
            default:
                throw new j$.time.temporal.o(b.a("Unsupported field: ", temporalField));
        }
    }

    public final long Y() {
        return ((this.a * 12) + this.b) - 1;
    }

    public final boolean Z(ChronoLocalDate chronoLocalDate) {
        return chronoLocalDate instanceof LocalDate ? U((LocalDate) chronoLocalDate) < 0 : toEpochDay() < chronoLocalDate.toEpochDay();
    }

    @Override // j$.time.chrono.ChronoLocalDate
    public final j$.time.chrono.j a() {
        return j$.time.chrono.q.c;
    }

    public final boolean a0() {
        j$.time.chrono.q qVar = j$.time.chrono.q.c;
        long j = this.a;
        qVar.getClass();
        return j$.time.chrono.q.U(j);
    }

    public final int b0() {
        short s = this.b;
        return s != 2 ? (s == 4 || s == 6 || s == 9 || s == 11) ? 30 : 31 : a0() ? 29 : 28;
    }

    public final long c0(LocalDate localDate) {
        return (((localDate.Y() * 32) + localDate.getDayOfMonth()) - ((Y() * 32) + getDayOfMonth())) / 32;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.lang.Comparable
    public int compareTo(ChronoLocalDate chronoLocalDate) {
        return chronoLocalDate instanceof LocalDate ? U((LocalDate) chronoLocalDate) : j$.com.android.tools.r8.a.b(this, chronoLocalDate);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final boolean d(TemporalField temporalField) {
        return j$.com.android.tools.r8.a.h(this, temporalField);
    }

    @Override // j$.time.chrono.ChronoLocalDate
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof LocalDate) && U((LocalDate) obj) == 0;
    }

    @Override // j$.time.temporal.Temporal
    /* renamed from: f0, reason: merged with bridge method [inline-methods] */
    public final LocalDate c(long j, TemporalUnit temporalUnit) {
        if (!(temporalUnit instanceof ChronoUnit)) {
            return (LocalDate) temporalUnit.m(this, j);
        }
        switch (e.b[((ChronoUnit) temporalUnit).ordinal()]) {
            case 1:
                return g0(j);
            case 2:
                return i0(j);
            case 3:
                return h0(j);
            case 4:
                return j0(j);
            case 5:
                return j0(j$.com.android.tools.r8.a.R(j, 10L));
            case 6:
                return j0(j$.com.android.tools.r8.a.R(j, 100L));
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                return j0(j$.com.android.tools.r8.a.R(j, 1000L));
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                ChronoField chronoField = ChronoField.ERA;
                return b(j$.com.android.tools.r8.a.Q(J(chronoField), j), chronoField);
            default:
                j$.nio.file.j.b(temporalUnit, "Unsupported unit: ");
                return null;
        }
    }

    public final LocalDate g0(long j) {
        if (j == 0) {
            return this;
        }
        long j2 = this.c + j;
        if (j2 > 0) {
            if (j2 <= 28) {
                return new LocalDate(this.a, this.b, (int) j2);
            }
            if (j2 <= 59) {
                long b0 = b0();
                if (j2 <= b0) {
                    return new LocalDate(this.a, this.b, (int) j2);
                }
                short s = this.b;
                if (s < 12) {
                    return new LocalDate(this.a, s + 1, (int) (j2 - b0));
                }
                ChronoField.YEAR.L(this.a + 1);
                return new LocalDate(this.a + 1, 1, (int) (j2 - b0));
            }
        }
        return ofEpochDay(j$.com.android.tools.r8.a.Q(toEpochDay(), j));
    }

    public int getDayOfMonth() {
        return this.c;
    }

    public DayOfWeek getDayOfWeek() {
        return DayOfWeek.U(((int) j$.com.android.tools.r8.a.P(toEpochDay() + 3, 7L)) + 1);
    }

    public int getDayOfYear() {
        return (getMonth().U(a0()) + this.c) - 1;
    }

    public Month getMonth() {
        return Month.X(this.b);
    }

    public int getYear() {
        return this.a;
    }

    public final LocalDate h0(long j) {
        if (j == 0) {
            return this;
        }
        long j2 = (this.a * 12) + (this.b - 1) + j;
        ChronoField chronoField = ChronoField.YEAR;
        return k0(chronoField.b.a(j$.com.android.tools.r8.a.C(j2, 12L), chronoField), ((int) j$.com.android.tools.r8.a.P(j2, 12L)) + 1, this.c);
    }

    @Override // j$.time.chrono.ChronoLocalDate
    public int hashCode() {
        int i = this.a;
        return (i & (-2048)) ^ (((i << 11) + (this.b << 6)) + this.c);
    }

    public final LocalDate i0(long j) {
        return g0(j$.com.android.tools.r8.a.R(j, 7L));
    }

    public final LocalDate j0(long j) {
        if (j == 0) {
            return this;
        }
        ChronoField chronoField = ChronoField.YEAR;
        return k0(chronoField.b.a(this.a + j, chronoField), this.b, this.c);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final int k(TemporalField temporalField) {
        return temporalField instanceof ChronoField ? X(temporalField) : j$.time.temporal.n.a(this, temporalField);
    }

    @Override // j$.time.temporal.Temporal
    /* renamed from: l0, reason: merged with bridge method [inline-methods] */
    public final LocalDate b(long j, TemporalField temporalField) {
        if (!(temporalField instanceof ChronoField)) {
            return (LocalDate) temporalField.J(this, j);
        }
        ChronoField chronoField = (ChronoField) temporalField;
        chronoField.L(j);
        switch (e.a[chronoField.ordinal()]) {
            case 1:
                int i = (int) j;
                if (this.c != i) {
                    return of(this.a, this.b, i);
                }
                return this;
            case 2:
                int i2 = (int) j;
                if (getDayOfYear() != i2) {
                    return e0(this.a, i2);
                }
                return this;
            case 3:
                return i0(j - J(ChronoField.ALIGNED_WEEK_OF_MONTH));
            case 4:
                if (this.a < 1) {
                    j = 1 - j;
                }
                return n0((int) j);
            case 5:
                return g0(j - getDayOfWeek().getValue());
            case 6:
                return g0(j - J(ChronoField.ALIGNED_DAY_OF_WEEK_IN_MONTH));
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                return g0(j - J(ChronoField.ALIGNED_DAY_OF_WEEK_IN_YEAR));
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                return ofEpochDay(j);
            case 9:
                return i0(j - J(ChronoField.ALIGNED_WEEK_OF_YEAR));
            case 10:
                int i3 = (int) j;
                if (this.b != i3) {
                    ChronoField.MONTH_OF_YEAR.L(i3);
                    return k0(this.a, i3, this.c);
                }
                return this;
            case 11:
                return h0(j - Y());
            case BasicTextKt.ShiftMeta /* 12 */:
                return n0((int) j);
            case 13:
                if (J(ChronoField.ERA) != j) {
                    return n0(1 - this.a);
                }
                return this;
            default:
                throw new j$.time.temporal.o(b.a("Unsupported field: ", temporalField));
        }
    }

    @Override // j$.time.temporal.Temporal
    /* renamed from: m0, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public final LocalDate m(j$.time.temporal.k kVar) {
        return kVar instanceof LocalDate ? (LocalDate) kVar : (LocalDate) kVar.u(this);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final j$.time.temporal.p n(TemporalField temporalField) {
        if (!(temporalField instanceof ChronoField)) {
            return temporalField.m(this);
        }
        ChronoField chronoField = (ChronoField) temporalField;
        if (!chronoField.isDateBased()) {
            throw new j$.time.temporal.o(b.a("Unsupported field: ", temporalField));
        }
        int i = e.a[chronoField.ordinal()];
        if (i == 1) {
            return j$.time.temporal.p.f(1L, b0());
        }
        if (i == 2) {
            return j$.time.temporal.p.f(1L, a0() ? 366 : 365);
        }
        if (i != 3) {
            return i != 4 ? chronoField.b : getYear() <= 0 ? j$.time.temporal.p.f(1L, 1000000000L) : j$.time.temporal.p.f(1L, 999999999L);
        }
        return j$.time.temporal.p.f(1L, (getMonth() != Month.FEBRUARY || a0()) ? 5L : 4L);
    }

    public final LocalDate n0(int i) {
        if (this.a == i) {
            return this;
        }
        ChronoField.YEAR.L(i);
        return k0(i, this.b, this.c);
    }

    @Override // j$.time.chrono.ChronoLocalDate
    public long toEpochDay() {
        long j = this.a;
        long j2 = this.b;
        long j3 = 365 * j;
        long j4 = (((367 * j2) - 362) / 12) + (j >= 0 ? ((j + 399) / 400) + (((3 + j) / 4) - ((99 + j) / 100)) + j3 : j3 - ((j / (-400)) + ((j / (-4)) - (j / (-100))))) + (this.c - 1);
        if (j2 > 2) {
            j4 = !a0() ? j4 - 2 : j4 - 1;
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

    @Override // j$.time.temporal.k
    public final Temporal u(Temporal temporal) {
        return j$.com.android.tools.r8.a.a(this, temporal);
    }

    @Override // j$.time.temporal.Temporal
    public long until(Temporal temporal, TemporalUnit temporalUnit) {
        LocalDate W = W(temporal);
        if (!(temporalUnit instanceof ChronoUnit)) {
            return temporalUnit.k(this, W);
        }
        switch (e.b[((ChronoUnit) temporalUnit).ordinal()]) {
            case 1:
                return W.toEpochDay() - toEpochDay();
            case 2:
                return (W.toEpochDay() - toEpochDay()) / 7;
            case 3:
                return c0(W);
            case 4:
                return c0(W) / 12;
            case 5:
                return c0(W) / 120;
            case 6:
                return c0(W) / 1200;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                return c0(W) / 12000;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                ChronoField chronoField = ChronoField.ERA;
                return W.J(chronoField) - J(chronoField);
            default:
                j$.nio.file.j.b(temporalUnit, "Unsupported unit: ");
                return 0L;
        }
    }

    @Override // j$.time.chrono.ChronoLocalDate
    public final ChronoLocalDate y(long j, TemporalUnit temporalUnit) {
        return c(-1L, temporalUnit);
    }
}
