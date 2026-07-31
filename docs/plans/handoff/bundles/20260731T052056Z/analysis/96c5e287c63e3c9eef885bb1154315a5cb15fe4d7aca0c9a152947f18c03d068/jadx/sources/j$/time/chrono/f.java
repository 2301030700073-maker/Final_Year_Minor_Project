package j$.time.chrono;

import j$.time.temporal.ChronoUnit;
import j$.time.temporal.Temporal;
import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes2.dex */
public final class f implements j$.time.temporal.m, Serializable {
    public static final /* synthetic */ int e = 0;
    private static final long serialVersionUID = 57387258289L;
    public final a a;
    public final int b;
    public final int c;
    public final int d;

    static {
        j$.time.a.Q(new Object[]{ChronoUnit.YEARS, ChronoUnit.MONTHS, ChronoUnit.DAYS});
    }

    public f(a aVar, int i, int i2, int i3) {
        Objects.requireNonNull(aVar, "chrono");
        this.a = aVar;
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
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return this.b == fVar.b && this.c == fVar.c && this.d == fVar.d && this.a.equals(fVar.a);
    }

    @Override // j$.time.temporal.m
    public final Temporal f(Temporal temporal) {
        Objects.requireNonNull(temporal, "temporal");
        a aVar = (a) temporal.i(j$.time.temporal.o.b);
        if (aVar != null && !this.a.equals(aVar)) {
            j$.time.h.g("Chronology mismatch, expected: ", this.a.getId(), ", actual: ", aVar.getId());
            return null;
        }
        if (this.c == 0) {
            int i = this.b;
            if (i != 0) {
                temporal = temporal.b(i, ChronoUnit.YEARS);
            }
        } else {
            j$.time.temporal.q x = this.a.x(j$.time.temporal.a.MONTH_OF_YEAR);
            long j = (x.a == x.b && x.c == x.d && x.d()) ? (x.d - x.a) + 1 : -1L;
            int i2 = this.b;
            if (j > 0) {
                temporal = temporal.b((i2 * j) + this.c, ChronoUnit.MONTHS);
            } else {
                if (i2 != 0) {
                    temporal = temporal.b(i2, ChronoUnit.YEARS);
                }
                temporal = temporal.b(this.c, ChronoUnit.MONTHS);
            }
        }
        int i3 = this.d;
        return i3 != 0 ? temporal.b(i3, ChronoUnit.DAYS) : temporal;
    }

    public final int hashCode() {
        return this.a.hashCode() ^ (Integer.rotateLeft(this.d, 16) + (Integer.rotateLeft(this.c, 8) + this.b));
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
        return new b0((byte) 9, this);
    }
}
