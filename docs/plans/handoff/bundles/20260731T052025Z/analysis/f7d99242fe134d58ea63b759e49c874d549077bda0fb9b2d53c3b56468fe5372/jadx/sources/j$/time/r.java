package j$.time;

import j$.time.format.DateTimeFormatterBuilder;
import j$.time.format.SignStyle;
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
public final class r implements Temporal, j$.time.temporal.k, Comparable, Serializable {
    public static final /* synthetic */ int b = 0;
    private static final long serialVersionUID = -23038383694477807L;
    public final int a;

    static {
        new DateTimeFormatterBuilder().appendValue(ChronoField.YEAR, 4, 10, SignStyle.EXCEEDS_PAD).toFormatter();
    }

    public r(int i) {
        this.a = i;
    }

    public static r U(int i) {
        ChronoField.YEAR.L(i);
        return new r(i);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new p((byte) 11, this);
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
        int i = q.a[((ChronoField) temporalField).ordinal()];
        if (i == 1) {
            int i2 = this.a;
            if (i2 < 1) {
                i2 = 1 - i2;
            }
            return i2;
        }
        if (i == 2) {
            return this.a;
        }
        if (i == 3) {
            return this.a < 1 ? 0 : 1;
        }
        throw new j$.time.temporal.o(b.a("Unsupported field: ", temporalField));
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final Object L(TemporalQuery temporalQuery) {
        return temporalQuery == j$.time.temporal.n.b ? j$.time.chrono.q.c : temporalQuery == j$.time.temporal.n.c ? ChronoUnit.YEARS : j$.time.temporal.n.c(this, temporalQuery);
    }

    @Override // j$.time.temporal.Temporal
    /* renamed from: V, reason: merged with bridge method [inline-methods] */
    public final r c(long j, TemporalUnit temporalUnit) {
        if (!(temporalUnit instanceof ChronoUnit)) {
            return (r) temporalUnit.m(this, j);
        }
        int i = q.b[((ChronoUnit) temporalUnit).ordinal()];
        if (i == 1) {
            return W(j);
        }
        if (i == 2) {
            return W(j$.com.android.tools.r8.a.R(j, 10L));
        }
        if (i == 3) {
            return W(j$.com.android.tools.r8.a.R(j, 100L));
        }
        if (i == 4) {
            return W(j$.com.android.tools.r8.a.R(j, 1000L));
        }
        if (i == 5) {
            ChronoField chronoField = ChronoField.ERA;
            return b(j$.com.android.tools.r8.a.Q(J(chronoField), j), chronoField);
        }
        j$.nio.file.j.b(temporalUnit, "Unsupported unit: ");
        return null;
    }

    public final r W(long j) {
        if (j == 0) {
            return this;
        }
        ChronoField chronoField = ChronoField.YEAR;
        return U(chronoField.b.a(this.a + j, chronoField));
    }

    @Override // j$.time.temporal.Temporal
    /* renamed from: X, reason: merged with bridge method [inline-methods] */
    public final r b(long j, TemporalField temporalField) {
        if (!(temporalField instanceof ChronoField)) {
            return (r) temporalField.J(this, j);
        }
        ChronoField chronoField = (ChronoField) temporalField;
        chronoField.L(j);
        int i = q.a[chronoField.ordinal()];
        if (i == 1) {
            if (this.a < 1) {
                j = 1 - j;
            }
            return U((int) j);
        }
        if (i == 2) {
            return U((int) j);
        }
        if (i == 3) {
            return J(ChronoField.ERA) == j ? this : U(1 - this.a);
        }
        throw new j$.time.temporal.o(b.a("Unsupported field: ", temporalField));
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return this.a - ((r) obj).a;
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final boolean d(TemporalField temporalField) {
        return temporalField instanceof ChronoField ? temporalField == ChronoField.YEAR || temporalField == ChronoField.YEAR_OF_ERA || temporalField == ChronoField.ERA : temporalField != null && temporalField.k(this);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof r) && this.a == ((r) obj).a;
    }

    public final int hashCode() {
        return this.a;
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final int k(TemporalField temporalField) {
        return n(temporalField).a(J(temporalField), temporalField);
    }

    @Override // j$.time.temporal.Temporal
    public final Temporal m(LocalDate localDate) {
        localDate.getClass();
        return (r) j$.com.android.tools.r8.a.a(localDate, this);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final j$.time.temporal.p n(TemporalField temporalField) {
        if (temporalField == ChronoField.YEAR_OF_ERA) {
            return j$.time.temporal.p.f(1L, this.a <= 0 ? 1000000000L : 999999999L);
        }
        return j$.time.temporal.n.d(this, temporalField);
    }

    public final String toString() {
        return Integer.toString(this.a);
    }

    @Override // j$.time.temporal.k
    public final Temporal u(Temporal temporal) {
        if (j$.com.android.tools.r8.a.A(temporal).equals(j$.time.chrono.q.c)) {
            return temporal.b(this.a, ChronoField.YEAR);
        }
        j$.nio.file.j.k("Adjustment only supported on ISO date-time");
        return null;
    }

    @Override // j$.time.temporal.Temporal
    public final long until(Temporal temporal, TemporalUnit temporalUnit) {
        r U;
        if (temporal instanceof r) {
            U = (r) temporal;
        } else {
            Objects.requireNonNull(temporal, "temporal");
            try {
                if (!j$.time.chrono.q.c.equals(j$.com.android.tools.r8.a.A(temporal))) {
                    temporal = LocalDate.W(temporal);
                }
                U = U(temporal.k(ChronoField.YEAR));
            } catch (DateTimeException e) {
                j$.nio.file.j.h("Unable to obtain Year from TemporalAccessor: ", temporal, temporal.getClass().getName(), e);
                return 0L;
            }
        }
        if (!(temporalUnit instanceof ChronoUnit)) {
            return temporalUnit.k(this, U);
        }
        long j = U.a - this.a;
        int i = q.b[((ChronoUnit) temporalUnit).ordinal()];
        if (i == 1) {
            return j;
        }
        if (i == 2) {
            return j / 10;
        }
        if (i == 3) {
            return j / 100;
        }
        if (i == 4) {
            return j / 1000;
        }
        if (i == 5) {
            ChronoField chronoField = ChronoField.ERA;
            return U.J(chronoField) - J(chronoField);
        }
        j$.nio.file.j.b(temporalUnit, "Unsupported unit: ");
        return 0L;
    }
}
