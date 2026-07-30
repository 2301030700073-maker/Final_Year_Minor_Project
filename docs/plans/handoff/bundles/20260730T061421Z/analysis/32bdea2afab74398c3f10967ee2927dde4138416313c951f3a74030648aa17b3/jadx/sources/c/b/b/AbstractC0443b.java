package c.b.b;

import com.google.protobuf.ByteString;
import java.io.IOException;

/* renamed from: c.b.b.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0443b implements InterfaceC0470o0 {
    public int memoizedHashCode = 0;

    public int getSerializedSize(A0 a0) {
        K k = (K) this;
        int i = k.memoizedSerializedSize;
        if (i != -1) {
            return i;
        }
        int f = a0.f(this);
        k.memoizedSerializedSize = f;
        return f;
    }

    public final String getSerializingExceptionMessage(String str) {
        StringBuilder f = c.a.c.a.a.f("Serializing ");
        f.append(getClass().getName());
        f.append(" to a ");
        f.append(str);
        f.append(" threw an IOException (should never happen).");
        return f.toString();
    }

    @Override // c.b.b.InterfaceC0470o0
    public ByteString toByteString() {
        try {
            C0463l m = ByteString.m(getSerializedSize());
            writeTo(m.f3194a);
            return m.a();
        } catch (IOException e) {
            throw new RuntimeException(this.getSerializingExceptionMessage("ByteString"), e);
        }
    }
}
