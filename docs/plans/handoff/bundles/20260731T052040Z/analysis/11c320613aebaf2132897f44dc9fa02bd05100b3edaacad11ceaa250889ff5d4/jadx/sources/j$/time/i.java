package j$.time;

import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.PlaybackException;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.TemporalAccessor;
import j$.time.temporal.TemporalUnit;
import j$.util.Objects;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class i implements j$.time.temporal.l, j$.time.temporal.m, Comparable, Serializable {
    public static final i e;
    public static final i f;
    public static final i g;
    public static final i[] h = new i[24];
    private static final long serialVersionUID = 6414437269572265201L;
    public final byte a;
    public final byte b;
    public final byte c;
    public final int d;

    static {
        int i = 0;
        while (true) {
            i[] iVarArr = h;
            if (i >= iVarArr.length) {
                i iVar = iVarArr[0];
                g = iVar;
                i iVar2 = iVarArr[12];
                e = iVar;
                f = new i(23, 59, 59, 999999999);
                return;
            }
            iVarArr[i] = new i(i, 0, 0, 0);
            i++;
        }
    }

    public i(int i, int i2, int i3, int i4) {
        this.a = (byte) i;
        this.b = (byte) i2;
        this.c = (byte) i3;
        this.d = i4;
    }

    public static i a0(int i, int i2, int i3, int i4) {
        return ((i2 | i3) | i4) == 0 ? h[i] : new i(i, i2, i3, i4);
    }

    public static i b0(TemporalAccessor temporalAccessor) {
        Objects.requireNonNull(temporalAccessor, "temporal");
        i iVar = (i) temporalAccessor.F(j$.time.temporal.q.g);
        if (iVar != null) {
            return iVar;
        }
        j$.nio.file.m.g("Unable to obtain LocalTime from TemporalAccessor: ", temporalAccessor, " of type ", temporalAccessor.getClass().getName());
        return null;
    }

    public static i d0(int i, int i2, int i3, int i4) {
        j$.time.temporal.a.HOUR_OF_DAY.M(i);
        j$.time.temporal.a.MINUTE_OF_HOUR.M(i2);
        j$.time.temporal.a.SECOND_OF_MINUTE.M(i3);
        j$.time.temporal.a.NANO_OF_SECOND.M(i4);
        return a0(i, i2, i3, i4);
    }

    public static i e0(long j) {
        j$.time.temporal.a.NANO_OF_DAY.M(j);
        int i = (int) (j / 3600000000000L);
        long j2 = j - (i * 3600000000000L);
        int i2 = (int) (j2 / 60000000000L);
        long j3 = j2 - (i2 * 60000000000L);
        int i3 = (int) (j3 / C.NANOS_PER_SECOND);
        return a0(i, i2, i3, (int) (j3 - (i3 * C.NANOS_PER_SECOND)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v4, types: [int] */
    public static i k0(DataInput dataInput) {
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
        return d0(readByte, b, i, readInt);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new q((byte) 4, this);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final Object F(j$.desugar.sun.nio.fs.m mVar) {
        if (mVar == j$.time.temporal.q.b || mVar == j$.time.temporal.q.a || mVar == j$.time.temporal.q.e || mVar == j$.time.temporal.q.d) {
            return null;
        }
        if (mVar == j$.time.temporal.q.g) {
            return this;
        }
        if (mVar == j$.time.temporal.q.f) {
            return null;
        }
        return mVar == j$.time.temporal.q.c ? ChronoUnit.NANOS : mVar.g(this);
    }

    @Override // j$.time.temporal.l
    /* renamed from: H */
    public final j$.time.temporal.l z(long j, ChronoUnit chronoUnit) {
        long j2;
        if (j == Long.MIN_VALUE) {
            this = d(Long.MAX_VALUE, chronoUnit);
            j2 = 1;
        } else {
            j2 = -j;
        }
        return this.d(j2, chronoUnit);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final long M(j$.time.temporal.p pVar) {
        return pVar instanceof j$.time.temporal.a ? pVar == j$.time.temporal.a.NANO_OF_DAY ? l0() : pVar == j$.time.temporal.a.MICRO_OF_DAY ? l0() / 1000 : c0(pVar) : pVar.F(this);
    }

    @Override // java.lang.Comparable
    /* renamed from: Z, reason: merged with bridge method [inline-methods] */
    public final int compareTo(i iVar) {
        int compare = Integer.compare(this.a, iVar.a);
        return (compare == 0 && (compare = Integer.compare(this.b, iVar.b)) == 0 && (compare = Integer.compare(this.c, iVar.c)) == 0) ? Integer.compare(this.d, iVar.d) : compare;
    }

    public final int c0(j$.time.temporal.p pVar) {
        switch (h.a[((j$.time.temporal.a) pVar).ordinal()]) {
            case 1:
                return this.d;
            case 2:
                throw new j$.time.temporal.r("Invalid field 'NanoOfDay' for get() method, use getLong() instead");
            case 3:
                return this.d / 1000;
            case 4:
                throw new j$.time.temporal.r("Invalid field 'MicroOfDay' for get() method, use getLong() instead");
            case 5:
                return this.d / PlaybackException.CUSTOM_ERROR_CODE_BASE;
            case 6:
                return (int) (l0() / 1000000);
            case 7:
                return this.c;
            case 8:
                return m0();
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
            case 13:
                return this.a;
            case 14:
                byte b = this.a;
                if (b == 0) {
                    return 24;
                }
                return b;
            case 15:
                return this.a / 12;
            default:
                throw new j$.time.temporal.r(b.a("Unsupported field: ", pVar));
        }
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final boolean e(j$.time.temporal.p pVar) {
        return pVar instanceof j$.time.temporal.a ? ((j$.time.temporal.a) pVar).Z() : pVar != null && pVar.k(this);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof i) {
            i iVar = (i) obj;
            if (this.a == iVar.a && this.b == iVar.b && this.c == iVar.c && this.d == iVar.d) {
                return true;
            }
        }
        return false;
    }

    @Override // j$.time.temporal.l
    /* renamed from: f0, reason: merged with bridge method [inline-methods] */
    public final i d(long j, TemporalUnit temporalUnit) {
        if (!(temporalUnit instanceof ChronoUnit)) {
            return (i) temporalUnit.k(this, j);
        }
        switch (h.b[((ChronoUnit) temporalUnit).ordinal()]) {
            case 1:
                return i0(j);
            case 2:
                return i0((j % 86400000000L) * 1000);
            case 3:
                return i0((j % 86400000) * 1000000);
            case 4:
                return j0(j);
            case 5:
                return h0(j);
            case 6:
                return g0(j);
            case 7:
                return g0((j % 2) * 12);
            default:
                j$.nio.file.m.b(temporalUnit, "Unsupported unit: ");
                return null;
        }
    }

    public final i g0(long j) {
        return j == 0 ? this : a0(((((int) (j % 24)) + this.a) + 24) % 24, this.b, this.c, this.d);
    }

    public final i h0(long j) {
        if (j != 0) {
            int i = (this.a * 60) + this.b;
            int i2 = ((((int) (j % 1440)) + i) + 1440) % 1440;
            if (i != i2) {
                return a0(i2 / 60, i2 % 60, this.c, this.d);
            }
        }
        return this;
    }

    public final int hashCode() {
        long l0 = l0();
        return (int) (l0 ^ (l0 >>> 32));
    }

    public final i i0(long j) {
        if (j != 0) {
            long l0 = l0();
            long j2 = (((j % 86400000000000L) + l0) + 86400000000000L) % 86400000000000L;
            if (l0 != j2) {
                return a0((int) (j2 / 3600000000000L), (int) ((j2 / 60000000000L) % 60), (int) ((j2 / C.NANOS_PER_SECOND) % 60), (int) (j2 % C.NANOS_PER_SECOND));
            }
        }
        return this;
    }

    public final i j0(long j) {
        if (j != 0) {
            int i = (this.b * 60) + (this.a * 3600) + this.c;
            int i2 = ((((int) (j % 86400)) + i) + 86400) % 86400;
            if (i != i2) {
                return a0(i2 / 3600, (i2 / 60) % 60, i2 % 60, this.d);
            }
        }
        return this;
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final int k(j$.time.temporal.p pVar) {
        return pVar instanceof j$.time.temporal.a ? c0(pVar) : j$.time.temporal.q.a(this, pVar);
    }

    public final long l0() {
        return (this.c * C.NANOS_PER_SECOND) + (this.b * 60000000000L) + (this.a * 3600000000000L) + this.d;
    }

    public final int m0() {
        return (this.b * 60) + (this.a * 3600) + this.c;
    }

    @Override // j$.time.temporal.l
    public final j$.time.temporal.l n(LocalDate localDate) {
        return (i) j$.com.android.tools.r8.a.a(localDate, this);
    }

    @Override // j$.time.temporal.l
    /* renamed from: n0, reason: merged with bridge method [inline-methods] */
    public final i c(long j, j$.time.temporal.p pVar) {
        if (!(pVar instanceof j$.time.temporal.a)) {
            return (i) pVar.H(this, j);
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) pVar;
        aVar.M(j);
        switch (h.a[aVar.ordinal()]) {
            case 1:
                return o0((int) j);
            case 2:
                return e0(j);
            case 3:
                return o0(((int) j) * 1000);
            case 4:
                return e0(j * 1000);
            case 5:
                return o0(((int) j) * PlaybackException.CUSTOM_ERROR_CODE_BASE);
            case 6:
                return e0(j * 1000000);
            case 7:
                int i = (int) j;
                if (this.c != i) {
                    j$.time.temporal.a.SECOND_OF_MINUTE.M(i);
                    return a0(this.a, this.b, i, this.d);
                }
                return this;
            case 8:
                return j0(j - m0());
            case 9:
                int i2 = (int) j;
                if (this.b != i2) {
                    j$.time.temporal.a.MINUTE_OF_HOUR.M(i2);
                    return a0(this.a, i2, this.c, this.d);
                }
                return this;
            case 10:
                return h0(j - ((this.a * 60) + this.b));
            case 11:
                return g0(j - (this.a % 12));
            case 12:
                if (j == 12) {
                    j = 0;
                }
                return g0(j - (this.a % 12));
            case 13:
                int i3 = (int) j;
                if (this.a != i3) {
                    j$.time.temporal.a.HOUR_OF_DAY.M(i3);
                    return a0(i3, this.b, this.c, this.d);
                }
                return this;
            case 14:
                if (j == 24) {
                    j = 0;
                }
                int i4 = (int) j;
                if (this.a != i4) {
                    j$.time.temporal.a.HOUR_OF_DAY.M(i4);
                    return a0(i4, this.b, this.c, this.d);
                }
                return this;
            case 15:
                return g0((j - (this.a / 12)) * 12);
            default:
                throw new j$.time.temporal.r(b.a("Unsupported field: ", pVar));
        }
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final j$.time.temporal.s o(j$.time.temporal.p pVar) {
        return j$.time.temporal.q.d(this, pVar);
    }

    public final i o0(int i) {
        if (this.d == i) {
            return this;
        }
        j$.time.temporal.a.NANO_OF_SECOND.M(i);
        return a0(this.a, this.b, this.c, i);
    }

    public final void p0(DataOutput dataOutput) {
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
                if (i % PlaybackException.CUSTOM_ERROR_CODE_BASE == 0) {
                    sb.append(Integer.toString((i / PlaybackException.CUSTOM_ERROR_CODE_BASE) + 1000).substring(1));
                } else if (i % 1000 == 0) {
                    sb.append(Integer.toString((i / 1000) + PlaybackException.CUSTOM_ERROR_CODE_BASE).substring(1));
                } else {
                    sb.append(Integer.toString(i + 1000000000).substring(1));
                }
            }
        }
        return sb.toString();
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.l u(j$.time.temporal.l lVar) {
        return lVar.c(l0(), j$.time.temporal.a.NANO_OF_DAY);
    }
}
