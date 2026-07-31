package j$.time.chrono;

import j$.time.temporal.ChronoUnit;
import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class h implements j$.time.temporal.o, Serializable {
    public static final /* synthetic */ int e = 0;
    private static final long serialVersionUID = 57387258289L;
    public final l a;
    public final int b;
    public final int c;
    public final int d;

    static {
        j$.com.android.tools.r8.a.G(new Object[]{ChronoUnit.YEARS, ChronoUnit.MONTHS, ChronoUnit.DAYS});
    }

    public h(l lVar, int i, int i2, int i3) {
        Objects.requireNonNull(lVar, "chrono");
        this.a = lVar;
        this.b = i;
        this.c = i2;
        this.d = i3;
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof h) {
            h hVar = (h) obj;
            if (this.b == hVar.b && this.c == hVar.c && this.d == hVar.d && this.a.equals(hVar.a)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.a.hashCode() ^ (Integer.rotateLeft(this.d, 16) + (Integer.rotateLeft(this.c, 8) + this.b));
    }

    @Override // j$.time.temporal.o
    public final j$.time.temporal.l k(j$.time.temporal.l lVar) {
        Objects.requireNonNull(lVar, "temporal");
        l lVar2 = (l) lVar.F(j$.time.temporal.q.b);
        if (lVar2 != null && !this.a.equals(lVar2)) {
            j$.nio.file.m.g("Chronology mismatch, expected: ", this.a.i(), ", actual: ", lVar2.i());
            return null;
        }
        if (this.c == 0) {
            int i = this.b;
            if (i != 0) {
                lVar = lVar.d(i, ChronoUnit.YEARS);
            }
        } else {
            j$.time.temporal.s y = this.a.y(j$.time.temporal.a.MONTH_OF_YEAR);
            long j = (y.a == y.b && y.c == y.d && y.d()) ? (y.d - y.a) + 1 : -1L;
            int i2 = this.b;
            if (j > 0) {
                lVar = lVar.d((i2 * j) + this.c, ChronoUnit.MONTHS);
            } else {
                if (i2 != 0) {
                    lVar = lVar.d(i2, ChronoUnit.YEARS);
                }
                lVar = lVar.d(this.c, ChronoUnit.MONTHS);
            }
        }
        int i3 = this.d;
        return i3 != 0 ? lVar.d(i3, ChronoUnit.DAYS) : lVar;
    }

    public final String toString() {
        if (this.b == 0 && this.c == 0 && this.d == 0) {
            return this.a.toString() + " P0D";
        }
        StringBuilder sb = new StringBuilder();
        sb.append(this.a.toString());
        sb.append(" P");
        int i = this.b;
        if (i != 0) {
            sb.append(i);
            sb.append('Y');
        }
        int i2 = this.c;
        if (i2 != 0) {
            sb.append(i2);
            sb.append('M');
        }
        int i3 = this.d;
        if (i3 != 0) {
            sb.append(i3);
            sb.append('D');
        }
        return sb.toString();
    }

    public Object writeReplace() {
        return new e0((byte) 9, this);
    }
}
