package j$.time;

import androidx.datastore.preferences.PreferencesProto$Value;
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
public final class Instant implements Temporal, j$.time.temporal.k, Comparable<Instant>, Serializable {
    public static final Instant c = new Instant(0, 0);
    public static final Instant d = ofEpochSecond(-31557014167219200L, 0);
    public static final Instant e = ofEpochSecond(31556889864403199L, 999999999);
    private static final long serialVersionUID = -665713676816604388L;
    public final long a;
    public final int b;

    public Instant(long j, int i) {
        this.a = j;
        this.b = i;
    }

    public static Instant U(long j, int i) {
        if ((i | j) == 0) {
            return c;
        }
        if (j >= -31557014167219200L && j <= 31556889864403199L) {
            return new Instant(j, i);
        }
        j$.nio.file.j.k("Instant exceeds minimum or maximum instant");
        return null;
    }

    public static Instant V(TemporalAccessor temporalAccessor) {
        if (temporalAccessor instanceof Instant) {
            return (Instant) temporalAccessor;
        }
        Objects.requireNonNull(temporalAccessor, "temporal");
        try {
            return ofEpochSecond(temporalAccessor.J(ChronoField.INSTANT_SECONDS), temporalAccessor.k(ChronoField.NANO_OF_SECOND));
        } catch (DateTimeException e2) {
            j$.nio.file.j.h("Unable to obtain Instant from TemporalAccessor: ", temporalAccessor, temporalAccessor.getClass().getName(), e2);
            return null;
        }
    }

    public static Instant now() {
        a.b.getClass();
        long currentTimeMillis = System.currentTimeMillis();
        return U(j$.com.android.tools.r8.a.C(currentTimeMillis, 1000L), ((int) j$.com.android.tools.r8.a.P(currentTimeMillis, 1000L)) * 1000000);
    }

    public static Instant ofEpochSecond(long j, long j2) {
        return U(j$.com.android.tools.r8.a.Q(j, j$.com.android.tools.r8.a.C(j2, 1000000000L)), (int) j$.com.android.tools.r8.a.P(j2, 1000000000L));
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new p((byte) 2, this);
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
        int i2 = d.a[((ChronoField) temporalField).ordinal()];
        if (i2 == 1) {
            i = this.b;
        } else if (i2 == 2) {
            i = this.b / 1000;
        } else {
            if (i2 != 3) {
                if (i2 == 4) {
                    return this.a;
                }
                throw new j$.time.temporal.o(b.a("Unsupported field: ", temporalField));
            }
            i = this.b / 1000000;
        }
        return i;
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final Object L(TemporalQuery temporalQuery) {
        if (temporalQuery == j$.time.temporal.n.c) {
            return ChronoUnit.NANOS;
        }
        if (temporalQuery == j$.time.temporal.n.b || temporalQuery == j$.time.temporal.n.a || temporalQuery == j$.time.temporal.n.e || temporalQuery == j$.time.temporal.n.d || temporalQuery == j$.time.temporal.n.f || temporalQuery == j$.time.temporal.n.g) {
            return null;
        }
        return temporalQuery.queryFrom(this);
    }

    public final Instant W(long j, long j2) {
        if ((j | j2) == 0) {
            return this;
        }
        return ofEpochSecond(j$.com.android.tools.r8.a.Q(j$.com.android.tools.r8.a.Q(this.a, j), j2 / 1000000000), this.b + (j2 % 1000000000));
    }

    @Override // j$.time.temporal.Temporal
    /* renamed from: X, reason: merged with bridge method [inline-methods] */
    public final Instant c(long j, TemporalUnit temporalUnit) {
        if (!(temporalUnit instanceof ChronoUnit)) {
            return (Instant) temporalUnit.m(this, j);
        }
        switch (d.b[((ChronoUnit) temporalUnit).ordinal()]) {
            case 1:
                return W(0L, j);
            case 2:
                return W(j / 1000000, (j % 1000000) * 1000);
            case 3:
                return W(j / 1000, (j % 1000) * 1000000);
            case 4:
                return W(j, 0L);
            case 5:
                return W(j$.com.android.tools.r8.a.R(j, 60L), 0L);
            case 6:
                return W(j$.com.android.tools.r8.a.R(j, 3600L), 0L);
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                return W(j$.com.android.tools.r8.a.R(j, 43200L), 0L);
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                return W(j$.com.android.tools.r8.a.R(j, 86400L), 0L);
            default:
                j$.nio.file.j.b(temporalUnit, "Unsupported unit: ");
                return null;
        }
    }

    public final long Y(Instant instant) {
        long S = j$.com.android.tools.r8.a.S(instant.a, this.a);
        long j = instant.b - this.b;
        return (S <= 0 || j >= 0) ? (S >= 0 || j <= 0) ? S : S + 1 : S - 1;
    }

    public final long Z() {
        long j = this.a;
        return (j >= 0 || this.b <= 0) ? j$.com.android.tools.r8.a.Q(j$.com.android.tools.r8.a.R(j, 1000L), this.b / 1000000) : j$.com.android.tools.r8.a.Q(j$.com.android.tools.r8.a.R(j + 1, 1000L), (this.b / 1000000) - 1000);
    }

    @Override // j$.time.temporal.Temporal
    public final Temporal b(long j, TemporalField temporalField) {
        if (!(temporalField instanceof ChronoField)) {
            return (Instant) temporalField.J(this, j);
        }
        ChronoField chronoField = (ChronoField) temporalField;
        chronoField.L(j);
        int i = d.a[chronoField.ordinal()];
        if (i == 1) {
            return j != ((long) this.b) ? U(this.a, (int) j) : this;
        }
        if (i == 2) {
            int i2 = ((int) j) * 1000;
            return i2 != this.b ? U(this.a, i2) : this;
        }
        if (i == 3) {
            int i3 = ((int) j) * 1000000;
            return i3 != this.b ? U(this.a, i3) : this;
        }
        if (i == 4) {
            return j != this.a ? U(j, this.b) : this;
        }
        throw new j$.time.temporal.o(b.a("Unsupported field: ", temporalField));
    }

    @Override // java.lang.Comparable
    public final int compareTo(Instant instant) {
        Instant instant2 = instant;
        int compare = Long.compare(this.a, instant2.a);
        return compare != 0 ? compare : this.b - instant2.b;
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final boolean d(TemporalField temporalField) {
        return temporalField instanceof ChronoField ? temporalField == ChronoField.INSTANT_SECONDS || temporalField == ChronoField.NANO_OF_SECOND || temporalField == ChronoField.MICRO_OF_SECOND || temporalField == ChronoField.MILLI_OF_SECOND : temporalField != null && temporalField.k(this);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Instant) {
            Instant instant = (Instant) obj;
            if (this.a == instant.a && this.b == instant.b) {
                return true;
            }
        }
        return false;
    }

    public long getEpochSecond() {
        return this.a;
    }

    public int getNano() {
        return this.b;
    }

    public final int hashCode() {
        long j = this.a;
        return (this.b * 51) + ((int) (j ^ (j >>> 32)));
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final int k(TemporalField temporalField) {
        if (!(temporalField instanceof ChronoField)) {
            return j$.time.temporal.n.d(this, temporalField).a(temporalField.F(this), temporalField);
        }
        int i = d.a[((ChronoField) temporalField).ordinal()];
        if (i == 1) {
            return this.b;
        }
        if (i == 2) {
            return this.b / 1000;
        }
        if (i == 3) {
            return this.b / 1000000;
        }
        if (i == 4) {
            ChronoField chronoField = ChronoField.INSTANT_SECONDS;
            chronoField.b.a(this.a, chronoField);
        }
        throw new j$.time.temporal.o(b.a("Unsupported field: ", temporalField));
    }

    @Override // j$.time.temporal.Temporal
    public final Temporal m(LocalDate localDate) {
        localDate.getClass();
        return (Instant) j$.com.android.tools.r8.a.a(localDate, this);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final j$.time.temporal.p n(TemporalField temporalField) {
        return j$.time.temporal.n.d(this, temporalField);
    }

    public final String toString() {
        return DateTimeFormatter.j.format(this);
    }

    @Override // j$.time.temporal.k
    public final Temporal u(Temporal temporal) {
        return temporal.b(this.a, ChronoField.INSTANT_SECONDS).b(this.b, ChronoField.NANO_OF_SECOND);
    }

    @Override // j$.time.temporal.Temporal
    public final long until(Temporal temporal, TemporalUnit temporalUnit) {
        Instant V = V(temporal);
        if (!(temporalUnit instanceof ChronoUnit)) {
            return temporalUnit.k(this, V);
        }
        switch (d.b[((ChronoUnit) temporalUnit).ordinal()]) {
            case 1:
                return j$.com.android.tools.r8.a.Q(j$.com.android.tools.r8.a.R(j$.com.android.tools.r8.a.S(V.a, this.a), 1000000000L), V.b - this.b);
            case 2:
                return j$.com.android.tools.r8.a.Q(j$.com.android.tools.r8.a.R(j$.com.android.tools.r8.a.S(V.a, this.a), 1000000000L), V.b - this.b) / 1000;
            case 3:
                return j$.com.android.tools.r8.a.S(V.Z(), Z());
            case 4:
                return Y(V);
            case 5:
                return Y(V) / 60;
            case 6:
                return Y(V) / 3600;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                return Y(V) / 43200;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                return Y(V) / 86400;
            default:
                j$.nio.file.j.b(temporalUnit, "Unsupported unit: ");
                return 0L;
        }
    }
}
