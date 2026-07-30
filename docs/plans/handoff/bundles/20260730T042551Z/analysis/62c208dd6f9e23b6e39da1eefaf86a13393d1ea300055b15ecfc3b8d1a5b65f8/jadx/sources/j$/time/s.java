package j$.time;

import java.io.DataInput;
import java.io.DataOutput;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
public final class s implements Serializable {
    public static final s d = new s(0, 0, 0);
    private static final long serialVersionUID = -3587258372562876L;
    private final int a;
    private final int b;
    private final int c;

    static {
        Pattern.compile("([-+]?)P(?:([-+]?[0-9]+)Y)?(?:([-+]?[0-9]+)M)?(?:([-+]?[0-9]+)W)?(?:([-+]?[0-9]+)D)?", 2);
        AbstractC2959a.f(new Object[]{j$.time.temporal.b.YEARS, j$.time.temporal.b.MONTHS, j$.time.temporal.b.DAYS});
    }

    private s(int i, int i2, int i3) {
        this.a = i;
        this.b = i2;
        this.c = i3;
    }

    static s a(DataInput dataInput) {
        int readInt = dataInput.readInt();
        int readInt2 = dataInput.readInt();
        int readInt3 = dataInput.readInt();
        return ((readInt | readInt2) | readInt3) == 0 ? d : new s(readInt, readInt2, readInt3);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new t((byte) 14, this);
    }

    final void b(DataOutput dataOutput) {
        dataOutput.writeInt(this.a);
        dataOutput.writeInt(this.b);
        dataOutput.writeInt(this.c);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof s)) {
            return false;
        }
        s sVar = (s) obj;
        return this.a == sVar.a && this.b == sVar.b && this.c == sVar.c;
    }

    public final int hashCode() {
        return Integer.rotateLeft(this.c, 16) + Integer.rotateLeft(this.b, 8) + this.a;
    }

    public final String toString() {
        if (this == d) {
            return "P0D";
        }
        StringBuilder sb = new StringBuilder("P");
        int i = this.a;
        if (i != 0) {
            sb.append(i);
            sb.append('Y');
        }
        int i2 = this.b;
        if (i2 != 0) {
            sb.append(i2);
            sb.append('M');
        }
        int i3 = this.c;
        if (i3 != 0) {
            sb.append(i3);
            sb.append('D');
        }
        return sb.toString();
    }
}
