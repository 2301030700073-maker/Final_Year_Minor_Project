package j$.time.chrono;

import j$.time.temporal.ChronoField;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.Temporal;
import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public final class f implements j$.time.temporal.m, Serializable {
    public static final /* synthetic */ int e = 0;
    private static final long serialVersionUID = 57387258289L;
    public final j a;
    public final int b;
    public final int c;
    public final int d;

    static {
        j$.com.android.tools.r8.a.E(new Object[]{ChronoUnit.YEARS, ChronoUnit.MONTHS, ChronoUnit.DAYS});
    }

    public f(j jVar, int i, int i2, int i3) {
        Objects.requireNonNull(jVar, "chrono");
        this.a = jVar;
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
        if (obj instanceof f) {
            f fVar = (f) obj;
            if (this.b == fVar.b && this.c == fVar.c && this.d == fVar.d && this.a.equals(fVar.a)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.a.hashCode() ^ (Integer.rotateLeft(this.d, 16) + (Integer.rotateLeft(this.c, 8) + this.b));
    }

    @Override // j$.time.temporal.m
    public final Temporal k(Temporal temporal) {
        Objects.requireNonNull(temporal, "temporal");
        j jVar = (j) temporal.L(j$.time.temporal.n.b);
        if (jVar != null && !this.a.equals(jVar)) {
            j$.nio.file.j.g("Chronology mismatch, expected: ", this.a.i(), ", actual: ", jVar.i());
            return null;
        }
        if (this.c == 0) {
            int i = this.b;
            if (i != 0) {
                temporal = temporal.c(i, ChronoUnit.YEARS);
            }
        } else {
            j$.time.temporal.p x = this.a.x(ChronoField.MONTH_OF_YEAR);
            long j = (x.a == x.b && x.c == x.d && x.d()) ? (x.d - x.a) + 1 : -1L;
            int i2 = this.b;
            if (j > 0) {
                temporal = temporal.c((i2 * j) + this.c, ChronoUnit.MONTHS);
            } else {
                if (i2 != 0) {
                    temporal = temporal.c(i2, ChronoUnit.YEARS);
                }
                temporal = temporal.c(this.c, ChronoUnit.MONTHS);
            }
        }
        int i3 = this.d;
        return i3 != 0 ? temporal.c(i3, ChronoUnit.DAYS) : temporal;
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
        return new c0((byte) 9, this);
    }
}
