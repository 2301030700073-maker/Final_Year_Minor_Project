package j$.time.zone;

import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import j$.time.ZoneOffset;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.Externalizable;
import java.io.InvalidClassException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.StreamCorruptedException;
import java.util.TimeZone;

/* loaded from: classes2.dex */
final class a implements Externalizable {
    private static final long serialVersionUID = -8885321777449118786L;
    private byte a;
    private Object b;

    public a() {
    }

    a(byte b, Object obj) {
        this.a = b;
        this.b = obj;
    }

    static long a(DataInput dataInput) {
        if ((dataInput.readByte() & 255) == 255) {
            return dataInput.readLong();
        }
        return ((((r0 << 16) + ((dataInput.readByte() & 255) << 8)) + (dataInput.readByte() & 255)) * 900) - 4575744000L;
    }

    static ZoneOffset b(DataInput dataInput) {
        byte readByte = dataInput.readByte();
        return readByte == Byte.MAX_VALUE ? ZoneOffset.M(dataInput.readInt()) : ZoneOffset.M(readByte * 900);
    }

    static void c(long j, DataOutput dataOutput) {
        if (j < -4575744000L || j >= 10413792000L || j % 900 != 0) {
            dataOutput.writeByte(255);
            dataOutput.writeLong(j);
        } else {
            int i = (int) ((j + 4575744000L) / 900);
            dataOutput.writeByte((i >>> 16) & 255);
            dataOutput.writeByte((i >>> 8) & 255);
            dataOutput.writeByte(i & 255);
        }
    }

    static void d(ZoneOffset zoneOffset, DataOutput dataOutput) {
        int J = zoneOffset.J();
        int i = J % 900 == 0 ? J / 900 : ModuleDescriptor.MODULE_VERSION;
        dataOutput.writeByte(i);
        if (i == 127) {
            dataOutput.writeInt(J);
        }
    }

    private Object readResolve() {
        return this.b;
    }

    @Override // java.io.Externalizable
    public final void readExternal(ObjectInput objectInput) {
        Object k;
        byte readByte = objectInput.readByte();
        this.a = readByte;
        if (readByte == 1) {
            k = f.k(objectInput);
        } else if (readByte == 2) {
            long a = a(objectInput);
            ZoneOffset b = b(objectInput);
            ZoneOffset b2 = b(objectInput);
            if (b.equals(b2)) {
                throw new IllegalArgumentException("Offsets must not be equal");
            }
            k = new b(a, b, b2);
        } else if (readByte == 3) {
            k = e.b(objectInput);
        } else {
            if (readByte != 100) {
                throw new StreamCorruptedException("Unknown serialized type");
            }
            k = new f(TimeZone.getTimeZone(objectInput.readUTF()));
        }
        this.b = k;
    }

    @Override // java.io.Externalizable
    public final void writeExternal(ObjectOutput objectOutput) {
        byte b = this.a;
        Object obj = this.b;
        objectOutput.writeByte(b);
        if (b == 1) {
            ((f) obj).l(objectOutput);
            return;
        }
        if (b == 2) {
            ((b) obj).D(objectOutput);
        } else if (b == 3) {
            ((e) obj).c(objectOutput);
        } else {
            if (b != 100) {
                throw new InvalidClassException("Unknown serialized type");
            }
            ((f) obj).m(objectOutput);
        }
    }
}
