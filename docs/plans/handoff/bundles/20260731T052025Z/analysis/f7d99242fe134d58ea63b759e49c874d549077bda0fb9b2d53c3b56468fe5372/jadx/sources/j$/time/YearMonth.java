package j$.time;

import j$.time.format.DateTimeFormatter;
import j$.time.format.DateTimeFormatterBuilder;
import j$.time.format.SignStyle;
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
public final class YearMonth implements Temporal, j$.time.temporal.k, Comparable<YearMonth>, Serializable {
    public static final DateTimeFormatter c = new DateTimeFormatterBuilder().appendValue(ChronoField.YEAR, 4, 10, SignStyle.EXCEEDS_PAD).appendLiteral('-').appendValue(ChronoField.MONTH_OF_YEAR, 2).toFormatter();
    private static final long serialVersionUID = 4183400860270640070L;
    public final int a;
    public final int b;

    public YearMonth(int i, int i2) {
        this.a = i;
        this.b = i2;
    }

    public static YearMonth U(TemporalAccessor temporalAccessor) {
        if (temporalAccessor instanceof YearMonth) {
            return (YearMonth) temporalAccessor;
        }
        Objects.requireNonNull(temporalAccessor, "temporal");
        try {
            if (!j$.time.chrono.q.c.equals(j$.com.android.tools.r8.a.A(temporalAccessor))) {
                temporalAccessor = LocalDate.W(temporalAccessor);
            }
            return of(temporalAccessor.k(ChronoField.YEAR), temporalAccessor.k(ChronoField.MONTH_OF_YEAR));
        } catch (DateTimeException e) {
            j$.nio.file.j.h("Unable to obtain YearMonth from TemporalAccessor: ", temporalAccessor, temporalAccessor.getClass().getName(), e);
            return null;
        }
    }

    public static YearMonth of(int i, int i2) {
        ChronoField.YEAR.L(i);
        ChronoField.MONTH_OF_YEAR.L(i2);
        return new YearMonth(i, i2);
    }

    public static YearMonth parse(CharSequence charSequence) {
        DateTimeFormatter dateTimeFormatter = c;
        Objects.requireNonNull(dateTimeFormatter, "formatter");
        return (YearMonth) dateTimeFormatter.parse(charSequence, new j$.desugar.sun.nio.fs.m(4));
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new p((byte) 12, this);
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
        int i;
        if (!(temporalField instanceof ChronoField)) {
            return temporalField.F(this);
        }
        int i2 = s.a[((ChronoField) temporalField).ordinal()];
        if (i2 == 1) {
            i = this.b;
        } else {
            if (i2 == 2) {
                return V();
            }
            if (i2 == 3) {
                int i3 = this.a;
                if (i3 < 1) {
                    i3 = 1 - i3;
                }
                return i3;
            }
            if (i2 != 4) {
                if (i2 == 5) {
                    return this.a < 1 ? 0 : 1;
                }
                throw new j$.time.temporal.o(b.a("Unsupported field: ", temporalField));
            }
            i = this.a;
        }
        return i;
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final Object L(TemporalQuery temporalQuery) {
        return temporalQuery == j$.time.temporal.n.b ? j$.time.chrono.q.c : temporalQuery == j$.time.temporal.n.c ? ChronoUnit.MONTHS : j$.time.temporal.n.c(this, temporalQuery);
    }

    public final long V() {
        return ((this.a * 12) + this.b) - 1;
    }

    @Override // j$.time.temporal.Temporal
    /* renamed from: W, reason: merged with bridge method [inline-methods] */
    public final YearMonth c(long j, TemporalUnit temporalUnit) {
        if (!(temporalUnit instanceof ChronoUnit)) {
            return (YearMonth) temporalUnit.m(this, j);
        }
        switch (s.b[((ChronoUnit) temporalUnit).ordinal()]) {
            case 1:
                return X(j);
            case 2:
                return Y(j);
            case 3:
                return Y(j$.com.android.tools.r8.a.R(j, 10L));
            case 4:
                return Y(j$.com.android.tools.r8.a.R(j, 100L));
            case 5:
                return Y(j$.com.android.tools.r8.a.R(j, 1000L));
            case 6:
                ChronoField chronoField = ChronoField.ERA;
                return b(j$.com.android.tools.r8.a.Q(J(chronoField), j), chronoField);
            default:
                j$.nio.file.j.b(temporalUnit, "Unsupported unit: ");
                return null;
        }
    }

    public final YearMonth X(long j) {
        if (j == 0) {
            return this;
        }
        long j2 = (this.a * 12) + (this.b - 1) + j;
        ChronoField chronoField = ChronoField.YEAR;
        return Z(chronoField.b.a(j$.com.android.tools.r8.a.C(j2, 12L), chronoField), ((int) j$.com.android.tools.r8.a.P(j2, 12L)) + 1);
    }

    public final YearMonth Y(long j) {
        if (j == 0) {
            return this;
        }
        ChronoField chronoField = ChronoField.YEAR;
        return Z(chronoField.b.a(this.a + j, chronoField), this.b);
    }

    public final YearMonth Z(int i, int i2) {
        return (this.a == i && this.b == i2) ? this : new YearMonth(i, i2);
    }

    @Override // j$.time.temporal.Temporal
    /* renamed from: a0, reason: merged with bridge method [inline-methods] */
    public final YearMonth b(long j, TemporalField temporalField) {
        if (!(temporalField instanceof ChronoField)) {
            return (YearMonth) temporalField.J(this, j);
        }
        ChronoField chronoField = (ChronoField) temporalField;
        chronoField.L(j);
        int i = s.a[chronoField.ordinal()];
        if (i == 1) {
            int i2 = (int) j;
            ChronoField.MONTH_OF_YEAR.L(i2);
            return Z(this.a, i2);
        }
        if (i == 2) {
            return X(j - V());
        }
        if (i == 3) {
            if (this.a < 1) {
                j = 1 - j;
            }
            int i3 = (int) j;
            ChronoField.YEAR.L(i3);
            return Z(i3, this.b);
        }
        if (i == 4) {
            int i4 = (int) j;
            ChronoField.YEAR.L(i4);
            return Z(i4, this.b);
        }
        if (i != 5) {
            throw new j$.time.temporal.o(b.a("Unsupported field: ", temporalField));
        }
        if (J(ChronoField.ERA) == j) {
            return this;
        }
        int i5 = 1 - this.a;
        ChronoField.YEAR.L(i5);
        return Z(i5, this.b);
    }

    @Override // java.lang.Comparable
    public int compareTo(YearMonth yearMonth) {
        int i = this.a - yearMonth.a;
        return i == 0 ? this.b - yearMonth.b : i;
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final boolean d(TemporalField temporalField) {
        return temporalField instanceof ChronoField ? temporalField == ChronoField.YEAR || temporalField == ChronoField.MONTH_OF_YEAR || temporalField == ChronoField.PROLEPTIC_MONTH || temporalField == ChronoField.YEAR_OF_ERA || temporalField == ChronoField.ERA : temporalField != null && temporalField.k(this);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof YearMonth) {
            YearMonth yearMonth = (YearMonth) obj;
            if (this.a == yearMonth.a && this.b == yearMonth.b) {
                return true;
            }
        }
        return false;
    }

    public Month getMonth() {
        return Month.X(this.b);
    }

    public int getYear() {
        return this.a;
    }

    public int hashCode() {
        return (this.b << 27) ^ this.a;
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final int k(TemporalField temporalField) {
        return n(temporalField).a(J(temporalField), temporalField);
    }

    @Override // j$.time.temporal.Temporal
    public final Temporal m(LocalDate localDate) {
        localDate.getClass();
        return (YearMonth) j$.com.android.tools.r8.a.a(localDate, this);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final j$.time.temporal.p n(TemporalField temporalField) {
        if (temporalField == ChronoField.YEAR_OF_ERA) {
            return j$.time.temporal.p.f(1L, getYear() <= 0 ? 1000000000L : 999999999L);
        }
        return j$.time.temporal.n.d(this, temporalField);
    }

    public final String toString() {
        int abs = Math.abs(this.a);
        StringBuilder sb = new StringBuilder(9);
        int i = this.a;
        if (abs >= 1000) {
            sb.append(i);
        } else if (i < 0) {
            sb.append(i - 10000);
            sb.deleteCharAt(1);
        } else {
            sb.append(i + 10000);
            sb.deleteCharAt(0);
        }
        sb.append(this.b < 10 ? "-0" : "-");
        sb.append(this.b);
        return sb.toString();
    }

    @Override // j$.time.temporal.k
    public final Temporal u(Temporal temporal) {
        if (j$.com.android.tools.r8.a.A(temporal).equals(j$.time.chrono.q.c)) {
            return temporal.b(V(), ChronoField.PROLEPTIC_MONTH);
        }
        j$.nio.file.j.k("Adjustment only supported on ISO date-time");
        return null;
    }

    @Override // j$.time.temporal.Temporal
    public final long until(Temporal temporal, TemporalUnit temporalUnit) {
        YearMonth U = U(temporal);
        if (!(temporalUnit instanceof ChronoUnit)) {
            return temporalUnit.k(this, U);
        }
        long V = U.V() - V();
        switch (s.b[((ChronoUnit) temporalUnit).ordinal()]) {
            case 1:
                return V;
            case 2:
                return V / 12;
            case 3:
                return V / 120;
            case 4:
                return V / 1200;
            case 5:
                return V / 12000;
            case 6:
                ChronoField chronoField = ChronoField.ERA;
                return U.J(chronoField) - J(chronoField);
            default:
                j$.nio.file.j.b(temporalUnit, "Unsupported unit: ");
                return 0L;
        }
    }
}
