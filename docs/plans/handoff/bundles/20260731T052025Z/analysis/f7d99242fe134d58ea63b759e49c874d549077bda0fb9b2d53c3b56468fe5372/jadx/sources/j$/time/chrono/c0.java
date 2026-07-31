package j$.time.chrono;

import androidx.datastore.preferences.PreferencesProto$Value;
import j$.time.LocalDate;
import j$.time.LocalTime;
import j$.time.ZoneId;
import j$.time.ZoneOffset;
import j$.time.temporal.ChronoField;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.Externalizable;
import java.io.InvalidClassException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.StreamCorruptedException;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public final class c0 implements Externalizable {
    private static final long serialVersionUID = -6103370247208168577L;
    public byte a;
    public Object b;

    public c0(byte b, Object obj) {
        this.a = b;
        this.b = obj;
    }

    private Object readResolve() {
        return this.b;
    }

    @Override // java.io.Externalizable
    public final void readExternal(ObjectInput objectInput) {
        Object U;
        byte readByte = objectInput.readByte();
        this.a = readByte;
        switch (readByte) {
            case 1:
                ConcurrentHashMap concurrentHashMap = a.a;
                U = j$.com.android.tools.r8.a.U(objectInput.readUTF());
                break;
            case 2:
                U = ((ChronoLocalDate) objectInput.readObject()).K((LocalTime) objectInput.readObject());
                break;
            case 3:
                U = ((ChronoLocalDateTime) objectInput.readObject()).G((ZoneOffset) objectInput.readObject()).D((ZoneId) objectInput.readObject());
                break;
            case 4:
                LocalDate localDate = v.d;
                int readInt = objectInput.readInt();
                byte readByte2 = objectInput.readByte();
                byte readByte3 = objectInput.readByte();
                t.c.getClass();
                U = new v(LocalDate.of(readInt, readByte2, readByte3));
                break;
            case 5:
                w wVar = w.d;
                U = w.j(objectInput.readByte());
                break;
            case 6:
                m mVar = (m) objectInput.readObject();
                int readInt2 = objectInput.readInt();
                byte readByte4 = objectInput.readByte();
                byte readByte5 = objectInput.readByte();
                mVar.getClass();
                U = new o(mVar, readInt2, readByte4, readByte5);
                break;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                int readInt3 = objectInput.readInt();
                byte readByte6 = objectInput.readByte();
                byte readByte7 = objectInput.readByte();
                y.c.getClass();
                U = new a0(LocalDate.of(readInt3 + 1911, readByte6, readByte7));
                break;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                int readInt4 = objectInput.readInt();
                byte readByte8 = objectInput.readByte();
                byte readByte9 = objectInput.readByte();
                e0.c.getClass();
                U = new g0(LocalDate.of(readInt4 - 543, readByte8, readByte9));
                break;
            case 9:
                int i = f.e;
                U = new f(j$.com.android.tools.r8.a.U(objectInput.readUTF()), objectInput.readInt(), objectInput.readInt(), objectInput.readInt());
                break;
            default:
                throw new StreamCorruptedException("Unknown serialized type");
        }
        this.b = U;
    }

    @Override // java.io.Externalizable
    public final void writeExternal(ObjectOutput objectOutput) {
        byte b = this.a;
        Object obj = this.b;
        objectOutput.writeByte(b);
        switch (b) {
            case 1:
                objectOutput.writeUTF(((a) obj).i());
                return;
            case 2:
                e eVar = (e) obj;
                objectOutput.writeObject(eVar.a);
                objectOutput.writeObject(eVar.b);
                return;
            case 3:
                i iVar = (i) obj;
                objectOutput.writeObject(iVar.a);
                objectOutput.writeObject(iVar.b);
                objectOutput.writeObject(iVar.c);
                return;
            case 4:
                v vVar = (v) obj;
                vVar.getClass();
                objectOutput.writeInt(j$.time.temporal.n.a(vVar, ChronoField.YEAR));
                objectOutput.writeByte(j$.time.temporal.n.a(vVar, ChronoField.MONTH_OF_YEAR));
                objectOutput.writeByte(j$.time.temporal.n.a(vVar, ChronoField.DAY_OF_MONTH));
                return;
            case 5:
                objectOutput.writeByte(((w) obj).a);
                return;
            case 6:
                o oVar = (o) obj;
                objectOutput.writeObject(oVar.a);
                objectOutput.writeInt(j$.time.temporal.n.a(oVar, ChronoField.YEAR));
                objectOutput.writeByte(j$.time.temporal.n.a(oVar, ChronoField.MONTH_OF_YEAR));
                objectOutput.writeByte(j$.time.temporal.n.a(oVar, ChronoField.DAY_OF_MONTH));
                return;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                a0 a0Var = (a0) obj;
                a0Var.getClass();
                objectOutput.writeInt(j$.time.temporal.n.a(a0Var, ChronoField.YEAR));
                objectOutput.writeByte(j$.time.temporal.n.a(a0Var, ChronoField.MONTH_OF_YEAR));
                objectOutput.writeByte(j$.time.temporal.n.a(a0Var, ChronoField.DAY_OF_MONTH));
                return;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                g0 g0Var = (g0) obj;
                g0Var.getClass();
                objectOutput.writeInt(j$.time.temporal.n.a(g0Var, ChronoField.YEAR));
                objectOutput.writeByte(j$.time.temporal.n.a(g0Var, ChronoField.MONTH_OF_YEAR));
                objectOutput.writeByte(j$.time.temporal.n.a(g0Var, ChronoField.DAY_OF_MONTH));
                return;
            case 9:
                f fVar = (f) obj;
                objectOutput.writeUTF(fVar.a.i());
                objectOutput.writeInt(fVar.b);
                objectOutput.writeInt(fVar.c);
                objectOutput.writeInt(fVar.d);
                return;
            default:
                throw new InvalidClassException("Unknown serialized type");
        }
    }

    public c0() {
    }
}
