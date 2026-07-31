package j$.time;

import j$.time.temporal.ChronoUnit;
import j$.time.temporal.Temporal;
import j$.time.temporal.TemporalAccessor;
import j$.time.temporal.TemporalAdjuster;
import j$.time.temporal.TemporalUnit;
import j$.util.Objects;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes2.dex */
public final class LocalTime implements Temporal, TemporalAdjuster, Comparable<LocalTime>, Serializable {
    public static final LocalTime MIDNIGHT;
    public static final LocalTime e;
    public static final LocalTime f;
    public static final LocalTime[] g = new LocalTime[24];
    private static final long serialVersionUID = 6414437269572265201L;
    public final byte a;
    public final byte b;
    public final byte c;
    public final int d;

    static {
        int i = 0;
        while (true) {
            LocalTime[] localTimeArr = g;
            if (i >= localTimeArr.length) {
                LocalTime localTime = localTimeArr[0];
                MIDNIGHT = localTime;
                LocalTime localTime2 = localTimeArr[12];
                e = localTime;
                f = new LocalTime(23, 59, 59, 999999999);
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

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v4, types: [int] */
    public static LocalTime F(DataInput dataInput) {
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
        return y(readByte, b, i, readInt);
    }

    public static LocalTime ofSecondOfDay(long j) {
        j$.time.temporal.a.SECOND_OF_DAY.o(j);
        int i = (int) (j / 3600);
        long j2 = j - (i * 3600);
        return v(i, (int) (j2 / 60), (int) (j2 - (r1 * 60)), 0);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    public static LocalTime v(int i, int i2, int i3, int i4) {
        return ((i2 | i3) | i4) == 0 ? g[i] : new LocalTime(i, i2, i3, i4);
    }

    public static LocalTime w(TemporalAccessor temporalAccessor) {
        Objects.requireNonNull(temporalAccessor, "temporal");
        LocalTime localTime = (LocalTime) temporalAccessor.i(j$.time.temporal.o.g);
        if (localTime != null) {
            return localTime;
        }
        h.g("Unable to obtain LocalTime from TemporalAccessor: ", temporalAccessor, " of type ", temporalAccessor.getClass().getName());
        return null;
    }

    private Object writeReplace() {
        return new r((byte) 4, this);
    }

    public static LocalTime y(int i, int i2, int i3, int i4) {
        j$.time.temporal.a.HOUR_OF_DAY.o(i);
        j$.time.temporal.a.MINUTE_OF_HOUR.o(i2);
        j$.time.temporal.a.SECOND_OF_MINUTE.o(i3);
        j$.time.temporal.a.NANO_OF_SECOND.o(i4);
        return v(i, i2, i3, i4);
    }

    public static LocalTime z(long j) {
        j$.time.temporal.a.NANO_OF_DAY.o(j);
        int i = (int) (j / 3600000000000L);
        long j2 = j - (i * 3600000000000L);
        int i2 = (int) (j2 / 60000000000L);
        long j3 = j2 - (i2 * 60000000000L);
        int i3 = (int) (j3 / 1000000000);
        return v(i, i2, i3, (int) (j3 - (i3 * 1000000000)));
    }

    @Override // j$.time.temporal.Temporal
    /* renamed from: A, reason: merged with bridge method [inline-methods] */
    public final LocalTime b(long j, TemporalUnit temporalUnit) {
        if (!(temporalUnit instanceof ChronoUnit)) {
            return (LocalTime) temporalUnit.f(this, j);
        }
        switch (j.b[((ChronoUnit) temporalUnit).ordinal()]) {
            case 1:
                return D(j);
            case 2:
                return D((j % 86400000000L) * 1000);
            case 3:
                return D((j % 86400000) * 1000000);
            case 4:
                return E(j);
            case 5:
                return C(j);
            case 6:
                return B(j);
            case 7:
                return B((j % 2) * 12);
            default:
                h.b(temporalUnit, "Unsupported unit: ");
                return null;
        }
    }

    public final LocalTime B(long j) {
        return j == 0 ? this : v(((((int) (j % 24)) + this.a) + 24) % 24, this.b, this.c, this.d);
    }

    public final LocalTime C(long j) {
        if (j != 0) {
            int i = (this.a * 60) + this.b;
            int i2 = ((((int) (j % 1440)) + i) + 1440) % 1440;
            if (i != i2) {
                return v(i2 / 60, i2 % 60, this.c, this.d);
            }
        }
        return this;
    }

    public final LocalTime D(long j) {
        if (j != 0) {
            long G = G();
            long j2 = (((j % 86400000000000L) + G) + 86400000000000L) % 86400000000000L;
            if (G != j2) {
                return v((int) (j2 / 3600000000000L), (int) ((j2 / 60000000000L) % 60), (int) ((j2 / 1000000000) % 60), (int) (j2 % 1000000000));
            }
        }
        return this;
    }

    public final LocalTime E(long j) {
        if (j != 0) {
            int i = (this.b * 60) + (this.a * 3600) + this.c;
            int i2 = ((((int) (j % 86400)) + i) + 86400) % 86400;
            if (i != i2) {
                return v(i2 / 3600, (i2 / 60) % 60, i2 % 60, this.d);
            }
        }
        return this;
    }

    public final long G() {
        return (this.c * 1000000000) + (this.b * 60000000000L) + (this.a * 3600000000000L) + this.d;
    }

    @Override // j$.time.temporal.Temporal
    /* renamed from: H, reason: merged with bridge method [inline-methods] */
    public final LocalTime a(long j, j$.time.temporal.n nVar) {
        if (!(nVar instanceof j$.time.temporal.a)) {
            return (LocalTime) nVar.k(this, j);
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) nVar;
        aVar.o(j);
        switch (j.a[aVar.ordinal()]) {
            case 1:
                return I((int) j);
            case 2:
                return z(j);
            case 3:
                return I(((int) j) * 1000);
            case 4:
                return z(j * 1000);
            case 5:
                return I(((int) j) * 1000000);
            case 6:
                return z(j * 1000000);
            case 7:
                int i = (int) j;
                if (this.c != i) {
                    j$.time.temporal.a.SECOND_OF_MINUTE.o(i);
                    return v(this.a, this.b, i, this.d);
                }
                return this;
            case 8:
                return E(j - toSecondOfDay());
            case 9:
                int i2 = (int) j;
                if (this.b != i2) {
                    j$.time.temporal.a.MINUTE_OF_HOUR.o(i2);
                    return v(this.a, i2, this.c, this.d);
                }
                return this;
            case 10:
                return C(j - ((this.a * 60) + this.b));
            case 11:
                return B(j - (this.a % 12));
            case 12:
                if (j == 12) {
                    j = 0;
                }
                return B(j - (this.a % 12));
            case IMAGE_VALUE:
                int i3 = (int) j;
                if (this.a != i3) {
                    j$.time.temporal.a.HOUR_OF_DAY.o(i3);
                    return v(i3, this.b, this.c, this.d);
                }
                return this;
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                if (j == 24) {
                    j = 0;
                }
                int i4 = (int) j;
                if (this.a != i4) {
                    j$.time.temporal.a.HOUR_OF_DAY.o(i4);
                    return v(i4, this.b, this.c, this.d);
                }
                return this;
            case 15:
                return B((j - (this.a / 12)) * 12);
            default:
                throw new j$.time.temporal.p(d.a("Unsupported field: ", nVar));
        }
    }

    public final LocalTime I(int i) {
        if (this.d == i) {
            return this;
        }
        j$.time.temporal.a.NANO_OF_SECOND.o(i);
        return v(this.a, this.b, this.c, i);
    }

    public final void J(DataOutput dataOutput) {
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
    public final boolean c(j$.time.temporal.n nVar) {
        return nVar instanceof j$.time.temporal.a ? ((j$.time.temporal.a) nVar).q() : nVar != null && nVar.f(this);
    }

    @Override // j$.time.temporal.Temporal
    public final long d(Temporal temporal, TemporalUnit temporalUnit) {
        LocalTime w = w(temporal);
        if (!(temporalUnit instanceof ChronoUnit)) {
            return temporalUnit.between(this, w);
        }
        long G = w.G() - G();
        switch (j.b[((ChronoUnit) temporalUnit).ordinal()]) {
            case 1:
                return G;
            case 2:
                return G / 1000;
            case 3:
                return G / 1000000;
            case 4:
                return G / 1000000000;
            case 5:
                return G / 60000000000L;
            case 6:
                return G / 3600000000000L;
            case 7:
                return G / 43200000000000L;
            default:
                h.b(temporalUnit, "Unsupported unit: ");
                return 0L;
        }
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

    @Override // j$.time.temporal.TemporalAccessor
    public final int f(j$.time.temporal.n nVar) {
        return nVar instanceof j$.time.temporal.a ? x(nVar) : j$.time.temporal.o.a(this, nVar);
    }

    @Override // j$.time.temporal.Temporal
    /* renamed from: g */
    public final Temporal n(LocalDate localDate) {
        localDate.getClass();
        return (LocalTime) a.a(localDate, this);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final j$.time.temporal.q h(j$.time.temporal.n nVar) {
        return j$.time.temporal.o.d(this, nVar);
    }

    public final int hashCode() {
        long G = G();
        return (int) (G ^ (G >>> 32));
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final Object i(f fVar) {
        if (fVar == j$.time.temporal.o.b || fVar == j$.time.temporal.o.a || fVar == j$.time.temporal.o.e || fVar == j$.time.temporal.o.d) {
            return null;
        }
        if (fVar == j$.time.temporal.o.g) {
            return this;
        }
        if (fVar == j$.time.temporal.o.f) {
            return null;
        }
        return fVar == j$.time.temporal.o.c ? ChronoUnit.NANOS : fVar.e(this);
    }

    @Override // j$.time.temporal.TemporalAdjuster
    public final Temporal k(Temporal temporal) {
        return temporal.a(G(), j$.time.temporal.a.NANO_OF_DAY);
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

    @Override // j$.time.temporal.TemporalAccessor
    public final long q(j$.time.temporal.n nVar) {
        return nVar instanceof j$.time.temporal.a ? nVar == j$.time.temporal.a.NANO_OF_DAY ? G() : nVar == j$.time.temporal.a.MICRO_OF_DAY ? G() / 1000 : x(nVar) : nVar.i(this);
    }

    public int toSecondOfDay() {
        return (this.b * 60) + (this.a * 3600) + this.c;
    }

    public final String toString() {
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

    public LocalTime truncatedTo(TemporalUnit temporalUnit) {
        if (temporalUnit == ChronoUnit.NANOS) {
            return this;
        }
        Duration duration = temporalUnit.getDuration();
        if (duration.getSeconds() > 86400) {
            throw new j$.time.temporal.p("Unit is too large to be used for truncation");
        }
        long j = duration.a;
        long j2 = duration.b;
        if (j < 0) {
            j++;
            j2 -= 1000000000;
        }
        long P = a.P(a.U(j, 1000000000L), j2);
        if (86400000000000L % P == 0) {
            return z((G() / P) * P);
        }
        throw new j$.time.temporal.p("Unit must divide into a standard day without remainder");
    }

    @Override // java.lang.Comparable
    /* renamed from: u, reason: merged with bridge method [inline-methods] */
    public final int compareTo(LocalTime localTime) {
        int compare = Integer.compare(this.a, localTime.a);
        return (compare == 0 && (compare = Integer.compare(this.b, localTime.b)) == 0 && (compare = Integer.compare(this.c, localTime.c)) == 0) ? Integer.compare(this.d, localTime.d) : compare;
    }

    public final int x(j$.time.temporal.n nVar) {
        switch (j.a[((j$.time.temporal.a) nVar).ordinal()]) {
            case 1:
                return this.d;
            case 2:
                throw new j$.time.temporal.p("Invalid field 'NanoOfDay' for get() method, use getLong() instead");
            case 3:
                return this.d / 1000;
            case 4:
                throw new j$.time.temporal.p("Invalid field 'MicroOfDay' for get() method, use getLong() instead");
            case 5:
                return this.d / 1000000;
            case 6:
                return (int) (G() / 1000000);
            case 7:
                return this.c;
            case 8:
                return toSecondOfDay();
            case 9:
                return this.b;
            case 10:
                return (this.a * 60) + this.b;
            case 11:
                return this.a % 12;
            case 12:
                int i = this.a % 12;
                if (i % 12 == 0) {
                    return 12;
                }
                return i;
            case IMAGE_VALUE:
                return this.a;
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                byte b = this.a;
                if (b == 0) {
                    return 24;
                }
                return b;
            case 15:
                return this.a / 12;
            default:
                throw new j$.time.temporal.p(d.a("Unsupported field: ", nVar));
        }
    }
}
