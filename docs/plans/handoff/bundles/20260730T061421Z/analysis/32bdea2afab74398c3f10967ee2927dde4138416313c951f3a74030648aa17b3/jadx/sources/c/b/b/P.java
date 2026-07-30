package c.b.b;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Objects;

/* loaded from: classes.dex */
public final class P {

    /* renamed from: a, reason: collision with root package name */
    public static final Charset f3141a = Charset.forName("UTF-8");

    /* renamed from: b, reason: collision with root package name */
    public static final byte[] f3142b;

    static {
        Charset.forName("ISO-8859-1");
        byte[] bArr = new byte[0];
        f3142b = bArr;
        ByteBuffer.wrap(bArr);
        byte[] bArr2 = f3142b;
        AbstractC0471p.c(bArr2, 0, bArr2.length, false);
    }

    public static Object a(Object obj) {
        if (obj != null) {
            return obj;
        }
        throw null;
    }

    public static Object b(Object obj, String str) {
        if (obj != null) {
            return obj;
        }
        throw new NullPointerException(str);
    }

    public static int c(boolean z) {
        return z ? 1231 : 1237;
    }

    public static int d(byte[] bArr) {
        int length = bArr.length;
        int i = length;
        for (int i2 = 0; i2 < 0 + length; i2++) {
            i = (i * 31) + bArr[i2];
        }
        if (i == 0) {
            return 1;
        }
        return i;
    }

    public static int e(long j) {
        return (int) (j ^ (j >>> 32));
    }

    public static Object f(Object obj, Object obj2) {
        InterfaceC0470o0 interfaceC0470o0 = (InterfaceC0470o0) obj2;
        AbstractC0441a abstractC0441a = (AbstractC0441a) ((InterfaceC0470o0) obj).toBuilder();
        Objects.requireNonNull(abstractC0441a);
        F f = (F) abstractC0441a;
        if (!f.defaultInstance.getClass().isInstance(interfaceC0470o0)) {
            throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
        }
        f.copyOnWrite();
        f.mergeFromInstance(f.instance, (K) ((AbstractC0443b) interfaceC0470o0));
        return f.buildPartial();
    }

    public static int g(int i, byte[] bArr, int i2, int i3) {
        for (int i4 = i2; i4 < i2 + i3; i4++) {
            i = (i * 31) + bArr[i4];
        }
        return i;
    }

    public static String h(byte[] bArr) {
        return new String(bArr, f3141a);
    }
}
