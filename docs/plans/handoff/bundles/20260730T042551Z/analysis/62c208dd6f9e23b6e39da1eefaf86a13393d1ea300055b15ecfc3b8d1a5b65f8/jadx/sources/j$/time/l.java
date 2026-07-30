package j$.time;

import com.facebook.appevents.AppEventsConstants;
import com.facebook.internal.security.CertificateUtil;
import com.google.android.gms.ads.RequestConfiguration;
import j$.time.chrono.AbstractC2962b;
import j$.util.Objects;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* loaded from: classes2.dex */
public final class l implements j$.time.temporal.m, j$.time.temporal.o, Comparable, Serializable {
    public static final l e;
    public static final l f;
    public static final l g;
    private static final l[] h = new l[24];
    private static final long serialVersionUID = 6414437269572265201L;
    private final byte a;
    private final byte b;
    private final byte c;
    private final int d;

    static {
        int i = 0;
        while (true) {
            l[] lVarArr = h;
            if (i >= lVarArr.length) {
                l lVar = lVarArr[0];
                g = lVar;
                l lVar2 = lVarArr[12];
                e = lVar;
                f = new l(23, 59, 59, 999999999);
                return;
            }
            lVarArr[i] = new l(i, 0, 0, 0);
            i++;
        }
    }

    private l(int i, int i2, int i3, int i4) {
        this.a = (byte) i;
        this.b = (byte) i2;
        this.c = (byte) i3;
        this.d = i4;
    }

    private static l E(int i, int i2, int i3, int i4) {
        return ((i2 | i3) | i4) == 0 ? h[i] : new l(i, i2, i3, i4);
    }

    public static l F(j$.time.temporal.n nVar) {
        Objects.requireNonNull(nVar, "temporal");
        l lVar = (l) nVar.y(j$.time.temporal.q.g());
        if (lVar != null) {
            return lVar;
        }
        throw new d("Unable to obtain LocalTime from TemporalAccessor: " + nVar + " of type " + nVar.getClass().getName());
    }

    private int G(j$.time.temporal.r rVar) {
        int i = k.a[((j$.time.temporal.a) rVar).ordinal()];
        byte b = this.b;
        int i2 = this.d;
        byte b2 = this.a;
        switch (i) {
            case 1:
                return i2;
            case 2:
                throw new j$.time.temporal.v("Invalid field 'NanoOfDay' for get() method, use getLong() instead");
            case 3:
                return i2 / 1000;
            case 4:
                throw new j$.time.temporal.v("Invalid field 'MicroOfDay' for get() method, use getLong() instead");
            case 5:
                return i2 / 1000000;
            case 6:
                return (int) (T() / 1000000);
            case 7:
                return this.c;
            case 8:
                return U();
            case 9:
                return b;
            case 10:
                return (b2 * 60) + b;
            case 11:
                return b2 % 12;
            case 12:
                int i3 = b2 % 12;
                if (i3 % 12 == 0) {
                    return 12;
                }
                return i3;
            case 13:
                return b2;
            case 14:
                if (b2 == 0) {
                    return 24;
                }
                return b2;
            case 15:
                return b2 / 12;
            default:
                throw new j$.time.temporal.v(e.a("Unsupported field: ", rVar));
        }
    }

    public static l K(int i) {
        j$.time.temporal.a.HOUR_OF_DAY.y(i);
        return h[i];
    }

    public static l L(long j) {
        j$.time.temporal.a.NANO_OF_DAY.y(j);
        int i = (int) (j / 3600000000000L);
        long j2 = j - (i * 3600000000000L);
        int i2 = (int) (j2 / 60000000000L);
        long j3 = j2 - (i2 * 60000000000L);
        int i3 = (int) (j3 / 1000000000);
        return E(i, i2, i3, (int) (j3 - (i3 * 1000000000)));
    }

    public static l M(long j) {
        j$.time.temporal.a.SECOND_OF_DAY.y(j);
        int i = (int) (j / 3600);
        long j2 = j - (i * 3600);
        return E(i, (int) (j2 / 60), (int) (j2 - (r0 * 60)), 0);
    }

    static l S(DataInput dataInput) {
        int readByte;
        int readInt;
        int i;
        int readByte2 = dataInput.readByte();
        int i2 = 0;
        if (readByte2 < 0) {
            readByte2 = ~readByte2;
            i = 0;
            readByte = 0;
        } else {
            readByte = dataInput.readByte();
            if (readByte < 0) {
                readByte = ~readByte;
                readInt = 0;
                j$.time.temporal.a.HOUR_OF_DAY.y(readByte2);
                j$.time.temporal.a.MINUTE_OF_HOUR.y(readByte);
                j$.time.temporal.a.SECOND_OF_MINUTE.y(i2);
                j$.time.temporal.a.NANO_OF_SECOND.y(readInt);
                return E(readByte2, readByte, i2, readInt);
            }
            int readByte3 = dataInput.readByte();
            if (readByte3 >= 0) {
                readInt = dataInput.readInt();
                i2 = readByte3;
                j$.time.temporal.a.HOUR_OF_DAY.y(readByte2);
                j$.time.temporal.a.MINUTE_OF_HOUR.y(readByte);
                j$.time.temporal.a.SECOND_OF_MINUTE.y(i2);
                j$.time.temporal.a.NANO_OF_SECOND.y(readInt);
                return E(readByte2, readByte, i2, readInt);
            }
            i = ~readByte3;
        }
        i2 = i;
        readInt = 0;
        j$.time.temporal.a.HOUR_OF_DAY.y(readByte2);
        j$.time.temporal.a.MINUTE_OF_HOUR.y(readByte);
        j$.time.temporal.a.SECOND_OF_MINUTE.y(i2);
        j$.time.temporal.a.NANO_OF_SECOND.y(readInt);
        return E(readByte2, readByte, i2, readInt);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new t((byte) 4, this);
    }

    @Override // java.lang.Comparable
    /* renamed from: D, reason: merged with bridge method [inline-methods] */
    public final int compareTo(l lVar) {
        int compare = Integer.compare(this.a, lVar.a);
        if (compare != 0) {
            return compare;
        }
        int compare2 = Integer.compare(this.b, lVar.b);
        if (compare2 != 0) {
            return compare2;
        }
        int compare3 = Integer.compare(this.c, lVar.c);
        return compare3 == 0 ? Integer.compare(this.d, lVar.d) : compare3;
    }

    public final int H() {
        return this.a;
    }

    public final int I() {
        return this.d;
    }

    public final int J() {
        return this.c;
    }

    @Override // j$.time.temporal.m
    /* renamed from: N, reason: merged with bridge method [inline-methods] */
    public final l d(long j, j$.time.temporal.u uVar) {
        if (!(uVar instanceof j$.time.temporal.b)) {
            return (l) uVar.i(this, j);
        }
        switch (k.b[((j$.time.temporal.b) uVar).ordinal()]) {
            case 1:
                return Q(j);
            case 2:
                return Q((j % 86400000000L) * 1000);
            case 3:
                return Q((j % 86400000) * 1000000);
            case 4:
                return R(j);
            case 5:
                return P(j);
            case 6:
                return O(j);
            case 7:
                return O((j % 2) * 12);
            default:
                throw new j$.time.temporal.v("Unsupported unit: " + uVar);
        }
    }

    public final l O(long j) {
        if (j == 0) {
            return this;
        }
        return E(((((int) (j % 24)) + this.a) + 24) % 24, this.b, this.c, this.d);
    }

    public final l P(long j) {
        if (j == 0) {
            return this;
        }
        int i = (this.a * 60) + this.b;
        int i2 = ((((int) (j % 1440)) + i) + 1440) % 1440;
        return i == i2 ? this : E(i2 / 60, i2 % 60, this.c, this.d);
    }

    public final l Q(long j) {
        if (j == 0) {
            return this;
        }
        long T = T();
        long j2 = (((j % 86400000000000L) + T) + 86400000000000L) % 86400000000000L;
        return T == j2 ? this : E((int) (j2 / 3600000000000L), (int) ((j2 / 60000000000L) % 60), (int) ((j2 / 1000000000) % 60), (int) (j2 % 1000000000));
    }

    public final l R(long j) {
        if (j == 0) {
            return this;
        }
        int i = (this.b * 60) + (this.a * 3600) + this.c;
        int i2 = ((((int) (j % 86400)) + i) + 86400) % 86400;
        return i == i2 ? this : E(i2 / 3600, (i2 / 60) % 60, i2 % 60, this.d);
    }

    public final long T() {
        return (this.c * 1000000000) + (this.b * 60000000000L) + (this.a * 3600000000000L) + this.d;
    }

    public final int U() {
        return (this.b * 60) + (this.a * 3600) + this.c;
    }

    @Override // j$.time.temporal.m
    /* renamed from: V, reason: merged with bridge method [inline-methods] */
    public final l c(long j, j$.time.temporal.r rVar) {
        if (!(rVar instanceof j$.time.temporal.a)) {
            return (l) rVar.r(this, j);
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) rVar;
        aVar.y(j);
        int i = k.a[aVar.ordinal()];
        byte b = this.b;
        byte b2 = this.c;
        int i2 = this.d;
        byte b3 = this.a;
        switch (i) {
            case 1:
                return W((int) j);
            case 2:
                return L(j);
            case 3:
                return W(((int) j) * 1000);
            case 4:
                return L(j * 1000);
            case 5:
                return W(((int) j) * 1000000);
            case 6:
                return L(j * 1000000);
            case 7:
                int i3 = (int) j;
                if (b2 == i3) {
                    return this;
                }
                j$.time.temporal.a.SECOND_OF_MINUTE.y(i3);
                return E(b3, b, i3, i2);
            case 8:
                return R(j - U());
            case 9:
                int i4 = (int) j;
                if (b == i4) {
                    return this;
                }
                j$.time.temporal.a.MINUTE_OF_HOUR.y(i4);
                return E(b3, i4, b2, i2);
            case 10:
                return P(j - ((b3 * 60) + b));
            case 11:
                return O(j - (b3 % 12));
            case 12:
                if (j == 12) {
                    j = 0;
                }
                return O(j - (b3 % 12));
            case 13:
                int i5 = (int) j;
                if (b3 == i5) {
                    return this;
                }
                j$.time.temporal.a.HOUR_OF_DAY.y(i5);
                return E(i5, b, b2, i2);
            case 14:
                if (j == 24) {
                    j = 0;
                }
                int i6 = (int) j;
                if (b3 == i6) {
                    return this;
                }
                j$.time.temporal.a.HOUR_OF_DAY.y(i6);
                return E(i6, b, b2, i2);
            case 15:
                return O((j - (b3 / 12)) * 12);
            default:
                throw new j$.time.temporal.v(e.a("Unsupported field: ", rVar));
        }
    }

    public final l W(int i) {
        if (this.d == i) {
            return this;
        }
        j$.time.temporal.a.NANO_OF_SECOND.y(i);
        return E(this.a, this.b, this.c, i);
    }

    final void X(DataOutput dataOutput) {
        int i;
        byte b = this.c;
        byte b2 = this.b;
        byte b3 = this.a;
        int i2 = this.d;
        if (i2 != 0) {
            dataOutput.writeByte(b3);
            dataOutput.writeByte(b2);
            dataOutput.writeByte(b);
            dataOutput.writeInt(i2);
            return;
        }
        if (b != 0) {
            dataOutput.writeByte(b3);
            dataOutput.writeByte(b2);
            i = ~b;
        } else if (b2 == 0) {
            i = ~b3;
        } else {
            dataOutput.writeByte(b3);
            i = ~b2;
        }
        dataOutput.writeByte(i);
    }

    @Override // j$.time.temporal.n
    public final boolean e(j$.time.temporal.r rVar) {
        return rVar instanceof j$.time.temporal.a ? rVar.isTimeBased() : rVar != null && rVar.i(this);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof l)) {
            return false;
        }
        l lVar = (l) obj;
        return this.a == lVar.a && this.b == lVar.b && this.c == lVar.c && this.d == lVar.d;
    }

    public final int hashCode() {
        long T = T();
        return (int) (T ^ (T >>> 32));
    }

    @Override // j$.time.temporal.n
    public final int i(j$.time.temporal.r rVar) {
        return rVar instanceof j$.time.temporal.a ? G(rVar) : j$.time.temporal.q.a(this, rVar);
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m j(i iVar) {
        boolean z = iVar instanceof l;
        j$.time.temporal.m mVar = iVar;
        if (!z) {
            mVar = AbstractC2962b.a(iVar, this);
        }
        return (l) mVar;
    }

    @Override // j$.time.temporal.n
    public final j$.time.temporal.w k(j$.time.temporal.r rVar) {
        return j$.time.temporal.q.d(this, rVar);
    }

    @Override // j$.time.temporal.o
    public final j$.time.temporal.m n(j$.time.temporal.m mVar) {
        return mVar.c(T(), j$.time.temporal.a.NANO_OF_DAY);
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m r(long j, j$.time.temporal.b bVar) {
        return j == Long.MIN_VALUE ? d(Long.MAX_VALUE, bVar).d(1L, bVar) : d(-j, bVar);
    }

    public final String toString() {
        int i;
        StringBuilder sb = new StringBuilder(18);
        byte b = this.a;
        sb.append(b < 10 ? AppEventsConstants.EVENT_PARAM_VALUE_NO : RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        sb.append((int) b);
        byte b2 = this.b;
        sb.append(b2 < 10 ? ":0" : CertificateUtil.DELIMITER);
        sb.append((int) b2);
        byte b3 = this.c;
        int i2 = this.d;
        if (b3 > 0 || i2 > 0) {
            sb.append(b3 >= 10 ? CertificateUtil.DELIMITER : ":0");
            sb.append((int) b3);
            if (i2 > 0) {
                sb.append('.');
                int i3 = 1000000;
                if (i2 % 1000000 == 0) {
                    i = (i2 / 1000000) + 1000;
                } else {
                    if (i2 % 1000 == 0) {
                        i2 /= 1000;
                    } else {
                        i3 = 1000000000;
                    }
                    i = i2 + i3;
                }
                sb.append(Integer.toString(i).substring(1));
            }
        }
        return sb.toString();
    }

    @Override // j$.time.temporal.n
    public final long v(j$.time.temporal.r rVar) {
        return rVar instanceof j$.time.temporal.a ? rVar == j$.time.temporal.a.NANO_OF_DAY ? T() : rVar == j$.time.temporal.a.MICRO_OF_DAY ? T() / 1000 : G(rVar) : rVar.n(this);
    }

    @Override // j$.time.temporal.n
    public final Object y(j$.time.temporal.t tVar) {
        if (tVar == j$.time.temporal.q.e() || tVar == j$.time.temporal.q.k() || tVar == j$.time.temporal.q.j() || tVar == j$.time.temporal.q.h()) {
            return null;
        }
        if (tVar == j$.time.temporal.q.g()) {
            return this;
        }
        if (tVar == j$.time.temporal.q.f()) {
            return null;
        }
        return tVar == j$.time.temporal.q.i() ? j$.time.temporal.b.NANOS : tVar.a(this);
    }
}
