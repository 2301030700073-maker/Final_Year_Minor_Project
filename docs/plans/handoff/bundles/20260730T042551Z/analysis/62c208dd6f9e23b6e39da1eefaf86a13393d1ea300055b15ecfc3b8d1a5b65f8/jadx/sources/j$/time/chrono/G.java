package j$.time.chrono;

import j$.time.ZoneOffset;
import java.io.Externalizable;
import java.io.InvalidClassException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.StreamCorruptedException;

/* loaded from: classes2.dex */
final class G implements Externalizable {
    private static final long serialVersionUID = -6103370247208168577L;
    private byte a;
    private Object b;

    public G() {
    }

    G(byte b, Object obj) {
        this.a = b;
        this.b = obj;
    }

    private Object readResolve() {
        return this.b;
    }

    @Override // java.io.Externalizable
    public final void readExternal(ObjectInput objectInput) {
        Object j;
        byte readByte = objectInput.readByte();
        this.a = readByte;
        switch (readByte) {
            case 1:
                int i = AbstractC2961a.c;
                j = AbstractC2961a.j(objectInput.readUTF());
                break;
            case 2:
                j = ((InterfaceC2963c) objectInput.readObject()).x((j$.time.l) objectInput.readObject());
                break;
            case 3:
                j = ((InterfaceC2966f) objectInput.readObject()).l((ZoneOffset) objectInput.readObject()).q((j$.time.y) objectInput.readObject());
                break;
            case 4:
                j$.time.i iVar = z.d;
                int readInt = objectInput.readInt();
                byte readByte2 = objectInput.readByte();
                byte readByte3 = objectInput.readByte();
                x.d.getClass();
                j = new z(j$.time.i.O(readInt, readByte2, readByte3));
                break;
            case 5:
                A a = A.d;
                j = A.t(objectInput.readByte());
                break;
            case 6:
                q qVar = (q) objectInput.readObject();
                int readInt2 = objectInput.readInt();
                byte readByte4 = objectInput.readByte();
                byte readByte5 = objectInput.readByte();
                qVar.getClass();
                j = s.L(qVar, readInt2, readByte4, readByte5);
                break;
            case 7:
                int readInt3 = objectInput.readInt();
                byte readByte6 = objectInput.readByte();
                byte readByte7 = objectInput.readByte();
                C.d.getClass();
                j = new E(j$.time.i.O(readInt3 + 1911, readByte6, readByte7));
                break;
            case 8:
                int readInt4 = objectInput.readInt();
                byte readByte8 = objectInput.readByte();
                byte readByte9 = objectInput.readByte();
                I.d.getClass();
                j = new K(j$.time.i.O(readInt4 - 543, readByte8, readByte9));
                break;
            case 9:
                int i2 = C2969i.e;
                j = new C2969i(AbstractC2961a.j(objectInput.readUTF()), objectInput.readInt(), objectInput.readInt(), objectInput.readInt());
                break;
            default:
                throw new StreamCorruptedException("Unknown serialized type");
        }
        this.b = j;
    }

    @Override // java.io.Externalizable
    public final void writeExternal(ObjectOutput objectOutput) {
        byte b = this.a;
        Object obj = this.b;
        objectOutput.writeByte(b);
        switch (b) {
            case 1:
                objectOutput.writeUTF(((AbstractC2961a) obj).h());
                return;
            case 2:
                ((C2968h) obj).writeExternal(objectOutput);
                return;
            case 3:
                ((m) obj).writeExternal(objectOutput);
                return;
            case 4:
                z zVar = (z) obj;
                zVar.getClass();
                objectOutput.writeInt(j$.time.temporal.q.a(zVar, j$.time.temporal.a.YEAR));
                objectOutput.writeByte(j$.time.temporal.q.a(zVar, j$.time.temporal.a.MONTH_OF_YEAR));
                objectOutput.writeByte(j$.time.temporal.q.a(zVar, j$.time.temporal.a.DAY_OF_MONTH));
                return;
            case 5:
                ((A) obj).E(objectOutput);
                return;
            case 6:
                ((s) obj).writeExternal(objectOutput);
                return;
            case 7:
                E e = (E) obj;
                e.getClass();
                objectOutput.writeInt(j$.time.temporal.q.a(e, j$.time.temporal.a.YEAR));
                objectOutput.writeByte(j$.time.temporal.q.a(e, j$.time.temporal.a.MONTH_OF_YEAR));
                objectOutput.writeByte(j$.time.temporal.q.a(e, j$.time.temporal.a.DAY_OF_MONTH));
                return;
            case 8:
                K k = (K) obj;
                k.getClass();
                objectOutput.writeInt(j$.time.temporal.q.a(k, j$.time.temporal.a.YEAR));
                objectOutput.writeByte(j$.time.temporal.q.a(k, j$.time.temporal.a.MONTH_OF_YEAR));
                objectOutput.writeByte(j$.time.temporal.q.a(k, j$.time.temporal.a.DAY_OF_MONTH));
                return;
            case 9:
                ((C2969i) obj).a(objectOutput);
                return;
            default:
                throw new InvalidClassException("Unknown serialized type");
        }
    }
}
