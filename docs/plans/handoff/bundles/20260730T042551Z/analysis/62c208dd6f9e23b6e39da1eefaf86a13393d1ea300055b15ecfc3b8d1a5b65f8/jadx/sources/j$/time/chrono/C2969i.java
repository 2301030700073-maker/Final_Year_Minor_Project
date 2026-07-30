package j$.time.chrono;

import j$.time.AbstractC2959a;
import j$.util.Objects;
import java.io.DataOutput;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* renamed from: j$.time.chrono.i, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C2969i implements Serializable {
    public static final /* synthetic */ int e = 0;
    private static final long serialVersionUID = 57387258289L;
    private final n a;
    final int b;
    final int c;
    final int d;

    static {
        AbstractC2959a.f(new Object[]{j$.time.temporal.b.YEARS, j$.time.temporal.b.MONTHS, j$.time.temporal.b.DAYS});
    }

    C2969i(n nVar, int i, int i2, int i3) {
        Objects.requireNonNull(nVar, "chrono");
        this.a = nVar;
        this.b = i;
        this.c = i2;
        this.d = i3;
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    final void a(DataOutput dataOutput) {
        dataOutput.writeUTF(this.a.h());
        dataOutput.writeInt(this.b);
        dataOutput.writeInt(this.c);
        dataOutput.writeInt(this.d);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C2969i)) {
            return false;
        }
        C2969i c2969i = (C2969i) obj;
        if (this.b == c2969i.b && this.c == c2969i.c && this.d == c2969i.d) {
            if (((AbstractC2961a) this.a).equals(c2969i.a)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((AbstractC2961a) this.a).hashCode() ^ (Integer.rotateLeft(this.d, 16) + (Integer.rotateLeft(this.c, 8) + this.b));
    }

    public final String toString() {
        int i = this.d;
        int i2 = this.c;
        int i3 = this.b;
        boolean z = i3 == 0 && i2 == 0 && i == 0;
        n nVar = this.a;
        if (z) {
            return ((AbstractC2961a) nVar).h() + " P0D";
        }
        StringBuilder sb = new StringBuilder();
        sb.append(((AbstractC2961a) nVar).h());
        sb.append(" P");
        if (i3 != 0) {
            sb.append(i3);
            sb.append('Y');
        }
        if (i2 != 0) {
            sb.append(i2);
            sb.append('M');
        }
        if (i != 0) {
            sb.append(i);
            sb.append('D');
        }
        return sb.toString();
    }

    protected Object writeReplace() {
        return new G((byte) 9, this);
    }
}
