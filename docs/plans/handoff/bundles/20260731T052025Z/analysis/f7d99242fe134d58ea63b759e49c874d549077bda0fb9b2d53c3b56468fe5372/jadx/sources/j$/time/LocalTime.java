package j$.time;

import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.text.BasicTextKt;
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
import java.io.DataInput;
import java.io.DataOutput;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public final class LocalTime implements Temporal, j$.time.temporal.k, Comparable<LocalTime>, Serializable {
    public static final LocalTime MAX;
    public static final LocalTime MIN;
    public static final LocalTime e;
    public static final LocalTime[] f = new LocalTime[24];
    private static final long serialVersionUID = 6414437269572265201L;
    public final byte a;
    public final byte b;
    public final byte c;
    public final int d;

    static {
        int i = 0;
        while (true) {
            LocalTime[] localTimeArr = f;
            if (i >= localTimeArr.length) {
                LocalTime localTime = localTimeArr[0];
                e = localTime;
                LocalTime localTime2 = localTimeArr[12];
                MIN = localTime;
                MAX = new LocalTime(23, 59, 59, 999999999);
                return;
            }
            localTimeArr[i] = new LocalTime(i, 0, 0, 0);
            i++;
        }
    }

    public LocalTime(int i, int i2, int i3, int i4) {
        this.a = (byte) i;
        this.b = (byte) i2;
        this.c = (byte) i3;
        this.d = i4;
    }

    public static LocalTime U(int i, int i2, int i3, int i4) {
        return ((i2 | i3) | i4) == 0 ? f[i] : new LocalTime(i, i2, i3, i4);
    }

    public static LocalTime V(TemporalAccessor temporalAccessor) {
        Objects.requireNonNull(temporalAccessor, "temporal");
        LocalTime localTime = (LocalTime) temporalAccessor.L(j$.time.temporal.n.g);
        if (localTime != null) {
            return localTime;
        }
        j$.nio.file.j.g("Unable to obtain LocalTime from TemporalAccessor: ", temporalAccessor, " of type ", temporalAccessor.getClass().getName());
        return null;
    }

    public static LocalTime X(long j) {
        ChronoField.NANO_OF_DAY.L(j);
        int i = (int) (j / 3600000000000L);
        long j2 = j - (i * 3600000000000L);
        int i2 = (int) (j2 / 60000000000L);
        long j3 = j2 - (i2 * 60000000000L);
        int i3 = (int) (j3 / 1000000000);
        return U(i, i2, i3, (int) (j3 - (i3 * 1000000000)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v4, types: [int] */
    public static LocalTime d0(DataInput dataInput) {
        int readInt;
        int i;
        int readByte = dataInput.readByte();
        byte b = 0;
        if (readByte < 0) {
            readByte = ~readByte;
            i = 0;
            readInt = 0;
        } else {
            byte readByte2 = dataInput.readByte();
            if (readByte2 < 0) {
                ?? r5 = ~readByte2;
                readInt = 0;
                b = r5;
                i = 0;
            } else {
                byte readByte3 = dataInput.readByte();
                if (readByte3 < 0) {
                    i = ~readByte3;
                    readInt = 0;
                    b = readByte2;
                } else {
                    readInt = dataInput.readInt();
                    b = readByte2;
                    i = readByte3;
                }
            }
        }
        return of(readByte, b, i, readInt);
    }

    public static LocalTime of(int i, int i2, int i3, int i4) {
        ChronoField.HOUR_OF_DAY.L(i);
        ChronoField.MINUTE_OF_HOUR.L(i2);
        ChronoField.SECOND_OF_MINUTE.L(i3);
        ChronoField.NANO_OF_SECOND.L(i4);
        return U(i, i2, i3, i4);
    }

    public static LocalTime parse(CharSequence charSequence) {
        DateTimeFormatter dateTimeFormatter = DateTimeFormatter.h;
        Objects.requireNonNull(dateTimeFormatter, "formatter");
        return (LocalTime) dateTimeFormatter.parse(charSequence, new j$.desugar.sun.nio.fs.m(3));
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new p((byte) 4, this);
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
        return temporalField instanceof ChronoField ? temporalField == ChronoField.NANO_OF_DAY ? e0() : temporalField == ChronoField.MICRO_OF_DAY ? e0() / 1000 : W(temporalField) : temporalField.F(this);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final Object L(TemporalQuery temporalQuery) {
        if (temporalQuery == j$.time.temporal.n.b || temporalQuery == j$.time.temporal.n.a || temporalQuery == j$.time.temporal.n.e || temporalQuery == j$.time.temporal.n.d) {
            return null;
        }
        if (temporalQuery == j$.time.temporal.n.g) {
            return this;
        }
        if (temporalQuery == j$.time.temporal.n.f) {
            return null;
        }
        return temporalQuery == j$.time.temporal.n.c ? ChronoUnit.NANOS : temporalQuery.queryFrom(this);
    }

    public final int W(TemporalField temporalField) {
        switch (g.a[((ChronoField) temporalField).ordinal()]) {
            case 1:
                return this.d;
            case 2:
                throw new j$.time.temporal.o("Invalid field 'NanoOfDay' for get() method, use getLong() instead");
            case 3:
                return this.d / 1000;
            case 4:
                throw new j$.time.temporal.o("Invalid field 'MicroOfDay' for get() method, use getLong() instead");
            case 5:
                return this.d / 1000000;
            case 6:
                return (int) (e0() / 1000000);
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                return this.c;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                return f0();
            case 9:
                return this.b;
            case 10:
                return (this.a * 60) + this.b;
            case 11:
                return this.a % 12;
            case BasicTextKt.ShiftMeta /* 12 */:
                int i = this.a % 12;
                if (i % 12 == 0) {
                    return 12;
                }
                return i;
            case 13:
                return this.a;
            case 14:
                byte b = this.a;
                if (b == 0) {
                    return 24;
                }
                return b;
            case OffsetKt.Horizontal /* 15 */:
                return this.a / 12;
            default:
                throw new j$.time.temporal.o(b.a("Unsupported field: ", temporalField));
        }
    }

    @Override // j$.time.temporal.Temporal
    /* renamed from: Y, reason: merged with bridge method [inline-methods] */
    public final LocalTime c(long j, TemporalUnit temporalUnit) {
        if (!(temporalUnit instanceof ChronoUnit)) {
            return (LocalTime) temporalUnit.m(this, j);
        }
        switch (g.b[((ChronoUnit) temporalUnit).ordinal()]) {
            case 1:
                return b0(j);
            case 2:
                return b0((j % 86400000000L) * 1000);
            case 3:
                return b0((j % 86400000) * 1000000);
            case 4:
                return c0(j);
            case 5:
                return a0(j);
            case 6:
                return Z(j);
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                return Z((j % 2) * 12);
            default:
                j$.nio.file.j.b(temporalUnit, "Unsupported unit: ");
                return null;
        }
    }

    public final LocalTime Z(long j) {
        return j == 0 ? this : U(((((int) (j % 24)) + this.a) + 24) % 24, this.b, this.c, this.d);
    }

    public final LocalTime a0(long j) {
        if (j != 0) {
            int i = (this.a * 60) + this.b;
            int i2 = ((((int) (j % 1440)) + i) + 1440) % 1440;
            if (i != i2) {
                return U(i2 / 60, i2 % 60, this.c, this.d);
            }
        }
        return this;
    }

    public final LocalTime b0(long j) {
        if (j != 0) {
            long e0 = e0();
            long j2 = (((j % 86400000000000L) + e0) + 86400000000000L) % 86400000000000L;
            if (e0 != j2) {
                return U((int) (j2 / 3600000000000L), (int) ((j2 / 60000000000L) % 60), (int) ((j2 / 1000000000) % 60), (int) (j2 % 1000000000));
            }
        }
        return this;
    }

    public final LocalTime c0(long j) {
        if (j != 0) {
            int i = (this.b * 60) + (this.a * 3600) + this.c;
            int i2 = ((((int) (j % 86400)) + i) + 86400) % 86400;
            if (i != i2) {
                return U(i2 / 3600, (i2 / 60) % 60, i2 % 60, this.d);
            }
        }
        return this;
    }

    @Override // java.lang.Comparable
    public int compareTo(LocalTime localTime) {
        int compare = Integer.compare(this.a, localTime.a);
        return (compare == 0 && (compare = Integer.compare(this.b, localTime.b)) == 0 && (compare = Integer.compare(this.c, localTime.c)) == 0) ? Integer.compare(this.d, localTime.d) : compare;
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final boolean d(TemporalField temporalField) {
        return temporalField instanceof ChronoField ? ((ChronoField) temporalField).U() : temporalField != null && temporalField.k(this);
    }

    public final long e0() {
        return (this.c * 1000000000) + (this.b * 60000000000L) + (this.a * 3600000000000L) + this.d;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof LocalTime) {
            LocalTime localTime = (LocalTime) obj;
            if (this.a == localTime.a && this.b == localTime.b && this.c == localTime.c && this.d == localTime.d) {
                return true;
            }
        }
        return false;
    }

    public final int f0() {
        return (this.b * 60) + (this.a * 3600) + this.c;
    }

    @Override // j$.time.temporal.Temporal
    /* renamed from: g0, reason: merged with bridge method [inline-methods] */
    public final LocalTime b(long j, TemporalField temporalField) {
        if (!(temporalField instanceof ChronoField)) {
            return (LocalTime) temporalField.J(this, j);
        }
        ChronoField chronoField = (ChronoField) temporalField;
        chronoField.L(j);
        switch (g.a[chronoField.ordinal()]) {
            case 1:
                return h0((int) j);
            case 2:
                return X(j);
            case 3:
                return h0(((int) j) * 1000);
            case 4:
                return X(j * 1000);
            case 5:
                return h0(((int) j) * 1000000);
            case 6:
                return X(j * 1000000);
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                int i = (int) j;
                if (this.c != i) {
                    ChronoField.SECOND_OF_MINUTE.L(i);
                    return U(this.a, this.b, i, this.d);
                }
                return this;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                return c0(j - f0());
            case 9:
                int i2 = (int) j;
                if (this.b != i2) {
                    ChronoField.MINUTE_OF_HOUR.L(i2);
                    return U(this.a, i2, this.c, this.d);
                }
                return this;
            case 10:
                return a0(j - ((this.a * 60) + this.b));
            case 11:
                return Z(j - (this.a % 12));
            case BasicTextKt.ShiftMeta /* 12 */:
                if (j == 12) {
                    j = 0;
                }
                return Z(j - (this.a % 12));
            case 13:
                int i3 = (int) j;
                if (this.a != i3) {
                    ChronoField.HOUR_OF_DAY.L(i3);
                    return U(i3, this.b, this.c, this.d);
                }
                return this;
            case 14:
                if (j == 24) {
                    j = 0;
                }
                int i4 = (int) j;
                if (this.a != i4) {
                    ChronoField.HOUR_OF_DAY.L(i4);
                    return U(i4, this.b, this.c, this.d);
                }
                return this;
            case OffsetKt.Horizontal /* 15 */:
                return Z((j - (this.a / 12)) * 12);
            default:
                throw new j$.time.temporal.o(b.a("Unsupported field: ", temporalField));
        }
    }

    public int getHour() {
        return this.a;
    }

    public int getMinute() {
        return this.b;
    }

    public int getNano() {
        return this.d;
    }

    public int getSecond() {
        return this.c;
    }

    public final LocalTime h0(int i) {
        if (this.d == i) {
            return this;
        }
        ChronoField.NANO_OF_SECOND.L(i);
        return U(this.a, this.b, this.c, i);
    }

    public int hashCode() {
        long e0 = e0();
        return (int) (e0 ^ (e0 >>> 32));
    }

    public final void i0(DataOutput dataOutput) {
        if (this.d != 0) {
            dataOutput.writeByte(this.a);
            dataOutput.writeByte(this.b);
            dataOutput.writeByte(this.c);
            dataOutput.writeInt(this.d);
            return;
        }
        if (this.c != 0) {
            dataOutput.writeByte(this.a);
            dataOutput.writeByte(this.b);
            dataOutput.writeByte(~this.c);
            return;
        }
        byte b = this.b;
        byte b2 = this.a;
        if (b == 0) {
            dataOutput.writeByte(~b2);
        } else {
            dataOutput.writeByte(b2);
            dataOutput.writeByte(~this.b);
        }
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final int k(TemporalField temporalField) {
        return temporalField instanceof ChronoField ? W(temporalField) : j$.time.temporal.n.a(this, temporalField);
    }

    @Override // j$.time.temporal.Temporal
    public final Temporal m(LocalDate localDate) {
        localDate.getClass();
        return (LocalTime) j$.com.android.tools.r8.a.a(localDate, this);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final j$.time.temporal.p n(TemporalField temporalField) {
        return j$.time.temporal.n.d(this, temporalField);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(18);
        byte b = this.a;
        byte b2 = this.b;
        byte b3 = this.c;
        int i = this.d;
        sb.append(b < 10 ? "0" : "");
        sb.append((int) b);
        sb.append(b2 < 10 ? ":0" : ":");
        sb.append((int) b2);
        if (b3 > 0 || i > 0) {
            sb.append(b3 < 10 ? ":0" : ":");
            sb.append((int) b3);
            if (i > 0) {
                sb.append('.');
                if (i % 1000000 == 0) {
                    sb.append(Integer.toString((i / 1000000) + 1000).substring(1));
                } else if (i % 1000 == 0) {
                    sb.append(Integer.toString((i / 1000) + 1000000).substring(1));
                } else {
                    sb.append(Integer.toString(i + 1000000000).substring(1));
                }
            }
        }
        return sb.toString();
    }

    @Override // j$.time.temporal.k
    public final Temporal u(Temporal temporal) {
        return temporal.b(e0(), ChronoField.NANO_OF_DAY);
    }

    @Override // j$.time.temporal.Temporal
    public final long until(Temporal temporal, TemporalUnit temporalUnit) {
        LocalTime V = V(temporal);
        if (!(temporalUnit instanceof ChronoUnit)) {
            return temporalUnit.k(this, V);
        }
        long e0 = V.e0() - e0();
        switch (g.b[((ChronoUnit) temporalUnit).ordinal()]) {
            case 1:
                return e0;
            case 2:
                return e0 / 1000;
            case 3:
                return e0 / 1000000;
            case 4:
                return e0 / 1000000000;
            case 5:
                return e0 / 60000000000L;
            case 6:
                return e0 / 3600000000000L;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                return e0 / 43200000000000L;
            default:
                j$.nio.file.j.b(temporalUnit, "Unsupported unit: ");
                return 0L;
        }
    }
}
