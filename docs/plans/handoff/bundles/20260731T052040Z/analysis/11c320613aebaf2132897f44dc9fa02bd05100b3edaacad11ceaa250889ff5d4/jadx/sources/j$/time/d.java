package j$.time;

import com.google.android.exoplayer2.C;
import j$.time.temporal.ChronoUnit;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.math.BigInteger;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class d implements j$.time.temporal.o, Comparable, Serializable {
    public static final d c = new d(0, 0);
    private static final long serialVersionUID = 3078945930695997490L;
    public final long a;
    public final int b;

    static {
        BigInteger.valueOf(C.NANOS_PER_SECOND);
    }

    public d(long j, int i) {
        this.a = j;
        this.b = i;
    }

    public static d n(long j, int i) {
        return (((long) i) | j) == 0 ? c : new d(j, i);
    }

    public static d o(long j) {
        long j2 = j / C.NANOS_PER_SECOND;
        int i = (int) (j % C.NANOS_PER_SECOND);
        if (i < 0) {
            i = (int) (i + C.NANOS_PER_SECOND);
            j2--;
        }
        return n(j2, i);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new q((byte) 1, this);
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        d dVar = (d) obj;
        int compare = Long.compare(this.a, dVar.a);
        return compare != 0 ? compare : this.b - dVar.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof d) {
            d dVar = (d) obj;
            if (this.a == dVar.a && this.b == dVar.b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        long j = this.a;
        return (this.b * 51) + ((int) (j ^ (j >>> 32)));
    }

    @Override // j$.time.temporal.o
    public final j$.time.temporal.l k(j$.time.temporal.l lVar) {
        long j = this.a;
        if (j != 0) {
            lVar = lVar.d(j, ChronoUnit.SECONDS);
        }
        int i = this.b;
        return i != 0 ? lVar.d(i, ChronoUnit.NANOS) : lVar;
    }

    public final String toString() {
        if (this == c) {
            return "PT0S";
        }
        long j = this.a;
        if (j < 0 && this.b > 0) {
            j++;
        }
        long j2 = j / 3600;
        int i = (int) ((j % 3600) / 60);
        int i2 = (int) (j % 60);
        StringBuilder sb = new StringBuilder(24);
        sb.append("PT");
        if (j2 != 0) {
            sb.append(j2);
            sb.append('H');
        }
        if (i != 0) {
            sb.append(i);
            sb.append('M');
        }
        if (i2 == 0 && this.b == 0 && sb.length() > 2) {
            return sb.toString();
        }
        if (this.a >= 0 || this.b <= 0) {
            sb.append(i2);
        } else if (i2 == 0) {
            sb.append("-0");
        } else {
            sb.append(i2);
        }
        if (this.b > 0) {
            int length = sb.length();
            long j3 = this.a;
            int i3 = this.b;
            if (j3 < 0) {
                sb.append(2000000000 - i3);
            } else {
                sb.append(i3 + C.NANOS_PER_SECOND);
            }
            while (sb.charAt(sb.length() - 1) == '0') {
                sb.setLength(sb.length() - 1);
            }
            sb.setCharAt(length, '.');
        }
        sb.append('S');
        return sb.toString();
    }
}
