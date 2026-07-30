package c.b.b;

import com.google.protobuf.InvalidProtocolBufferException;

/* renamed from: c.b.b.p, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0471p {

    /* renamed from: a, reason: collision with root package name */
    public int f3199a = 100;

    public AbstractC0471p(C0467n c0467n) {
    }

    public static int a(int i) {
        return (-(i & 1)) ^ (i >>> 1);
    }

    public static long b(long j) {
        return (-(j & 1)) ^ (j >>> 1);
    }

    public static AbstractC0471p c(byte[] bArr, int i, int i2, boolean z) {
        C0469o c0469o = new C0469o(bArr, i, i2, z, null);
        try {
            c0469o.e(i2);
            return c0469o;
        } catch (InvalidProtocolBufferException e) {
            throw new IllegalArgumentException(e);
        }
    }
}
