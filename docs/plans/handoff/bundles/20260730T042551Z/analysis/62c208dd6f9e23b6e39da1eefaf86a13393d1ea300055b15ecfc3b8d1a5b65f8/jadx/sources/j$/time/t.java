package j$.time;

import java.io.Externalizable;
import java.io.InvalidClassException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.Serializable;
import java.io.StreamCorruptedException;

/* loaded from: classes2.dex */
final class t implements Externalizable {
    private static final long serialVersionUID = -7683839454370182990L;
    private byte a;
    private Object b;

    public t() {
    }

    t(byte b, Object obj) {
        this.a = b;
        this.b = obj;
    }

    static Serializable a(ObjectInput objectInput) {
        return b(objectInput.readByte(), objectInput);
    }

    private static Serializable b(byte b, ObjectInput objectInput) {
        switch (b) {
            case 1:
                Duration duration = Duration.c;
                return Duration.v(objectInput.readLong(), objectInput.readInt());
            case 2:
                Instant instant = Instant.c;
                return Instant.I(objectInput.readLong(), objectInput.readInt());
            case 3:
                i iVar = i.d;
                return i.O(objectInput.readInt(), objectInput.readByte(), objectInput.readByte());
            case 4:
                return l.S(objectInput);
            case 5:
                LocalDateTime localDateTime = LocalDateTime.c;
                i iVar2 = i.d;
                return LocalDateTime.L(i.O(objectInput.readInt(), objectInput.readByte(), objectInput.readByte()), l.S(objectInput));
            case 6:
                return B.H(objectInput);
            case 7:
                int i = z.c;
                return y.E(objectInput.readUTF());
            case 8:
                return ZoneOffset.O(objectInput);
            case 9:
                return r.F(objectInput);
            case 10:
                return OffsetDateTime.G(objectInput);
            case 11:
                int i2 = v.b;
                return v.D(objectInput.readInt());
            case 12:
                return x.G(objectInput);
            case 13:
                return p.D(objectInput);
            case 14:
                return s.a(objectInput);
            default:
                throw new StreamCorruptedException("Unknown serialized type");
        }
    }

    private Object readResolve() {
        return this.b;
    }

    @Override // java.io.Externalizable
    public final void readExternal(ObjectInput objectInput) {
        byte readByte = objectInput.readByte();
        this.a = readByte;
        this.b = b(readByte, objectInput);
    }

    @Override // java.io.Externalizable
    public final void writeExternal(ObjectOutput objectOutput) {
        byte b = this.a;
        Object obj = this.b;
        objectOutput.writeByte(b);
        switch (b) {
            case 1:
                ((Duration) obj).y(objectOutput);
                return;
            case 2:
                ((Instant) obj).M(objectOutput);
                return;
            case 3:
                ((i) obj).a0(objectOutput);
                return;
            case 4:
                ((l) obj).X(objectOutput);
                return;
            case 5:
                ((LocalDateTime) obj).U(objectOutput);
                return;
            case 6:
                ((B) obj).L(objectOutput);
                return;
            case 7:
                ((z) obj).J(objectOutput);
                return;
            case 8:
                ((ZoneOffset) obj).P(objectOutput);
                return;
            case 9:
                ((r) obj).writeExternal(objectOutput);
                return;
            case 10:
                ((OffsetDateTime) obj).writeExternal(objectOutput);
                return;
            case 11:
                ((v) obj).H(objectOutput);
                return;
            case 12:
                ((x) obj).J(objectOutput);
                return;
            case 13:
                ((p) obj).E(objectOutput);
                return;
            case 14:
                ((s) obj).b(objectOutput);
                return;
            default:
                throw new InvalidClassException("Unknown serialized type");
        }
    }
}
