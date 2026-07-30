package c.b.b.a1;

import com.google.protobuf.nano.InvalidProtocolBufferNanoException;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes.dex */
public abstract class e {
    public volatile int cachedSize = -1;

    public static final e mergeFrom(e eVar, byte[] bArr) {
        try {
            a aVar = new a(bArr, 0, bArr.length);
            eVar.mergeFrom(aVar);
            aVar.a(0);
            return eVar;
        } catch (InvalidProtocolBufferNanoException e) {
            throw e;
        } catch (IOException unused) {
            throw new RuntimeException("Reading from a byte array threw an IOException (should never happen).");
        }
    }

    public static final byte[] toByteArray(e eVar) {
        int serializedSize = eVar.getSerializedSize();
        byte[] bArr = new byte[serializedSize];
        try {
            b bVar = new b(bArr, 0, serializedSize);
            eVar.writeTo(bVar);
            if (bVar.f3167a.remaining() == 0) {
                return bArr;
            }
            throw new IllegalStateException("Did not write as much data as expected.");
        } catch (IOException e) {
            throw new RuntimeException("Serializing to a byte array threw an IOException (should never happen).", e);
        }
    }

    public e clone() {
        return (e) super.clone();
    }

    public int computeSerializedSize() {
        return 0;
    }

    public int getSerializedSize() {
        int computeSerializedSize = computeSerializedSize();
        this.cachedSize = computeSerializedSize;
        return computeSerializedSize;
    }

    public abstract e mergeFrom(a aVar);

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        try {
            c.b.a.c.b.a.G(null, this, new StringBuffer(), stringBuffer);
            return stringBuffer.toString();
        } catch (IllegalAccessException e) {
            StringBuilder f = c.a.c.a.a.f("Error printing proto: ");
            f.append(e.getMessage());
            return f.toString();
        } catch (InvocationTargetException e2) {
            StringBuilder f2 = c.a.c.a.a.f("Error printing proto: ");
            f2.append(e2.getMessage());
            return f2.toString();
        }
    }

    public void writeTo(b bVar) {
    }

    /* renamed from: clone, reason: collision with other method in class */
    public Object mo0clone() {
        return (e) super.clone();
    }
}
