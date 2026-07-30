package c.b.b;

import com.google.protobuf.ByteString;
import com.google.protobuf.Utf8$UnpairedSurrogateException;
import java.util.logging.Logger;

/* renamed from: c.b.b.s, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0476s extends AbstractC0453g {

    /* renamed from: b, reason: collision with root package name */
    public static final Logger f3209b = Logger.getLogger(AbstractC0476s.class.getName());

    /* renamed from: c, reason: collision with root package name */
    public static final boolean f3210c = U0.e;

    /* renamed from: a, reason: collision with root package name */
    public C0478t f3211a;

    public AbstractC0476s() {
    }

    public static int A(int i, int i2) {
        return B(i2) + G(i);
    }

    public static int B(int i) {
        return I(L(i));
    }

    public static int C(int i, long j) {
        return D(j) + G(i);
    }

    public static int D(long j) {
        return K(M(j));
    }

    public static int E(int i, String str) {
        return F(str) + G(i);
    }

    public static int F(String str) {
        int length;
        try {
            length = Y0.d(str);
        } catch (Utf8$UnpairedSurrogateException unused) {
            length = str.getBytes(P.f3141a).length;
        }
        return u(length);
    }

    public static int G(int i) {
        return I((i << 3) | 0);
    }

    public static int H(int i, int i2) {
        return I(i2) + G(i);
    }

    public static int I(int i) {
        if ((i & (-128)) == 0) {
            return 1;
        }
        if ((i & (-16384)) == 0) {
            return 2;
        }
        if (((-2097152) & i) == 0) {
            return 3;
        }
        return (i & (-268435456)) == 0 ? 4 : 5;
    }

    public static int J(int i, long j) {
        return K(j) + G(i);
    }

    public static int K(long j) {
        int i;
        if (((-128) & j) == 0) {
            return 1;
        }
        if (j < 0) {
            return 10;
        }
        if (((-34359738368L) & j) != 0) {
            i = 6;
            j >>>= 28;
        } else {
            i = 2;
        }
        if (((-2097152) & j) != 0) {
            i += 2;
            j >>>= 14;
        }
        return (j & (-16384)) != 0 ? i + 1 : i;
    }

    public static int L(int i) {
        return (i >> 31) ^ (i << 1);
    }

    public static long M(long j) {
        return (j >> 63) ^ (j << 1);
    }

    public static AbstractC0476s N(byte[] bArr) {
        return new r(bArr, 0, bArr.length);
    }

    public static int a(int i, boolean z) {
        return G(i) + 1;
    }

    public static int b() {
        return 1;
    }

    public static int c(byte[] bArr) {
        return u(bArr.length);
    }

    public static int d(int i, ByteString byteString) {
        return G(i) + u(byteString.size());
    }

    public static int e(ByteString byteString) {
        return u(byteString.size());
    }

    public static int f(int i, double d2) {
        return G(i) + 8;
    }

    public static int g() {
        return 8;
    }

    public static int h(int i, int i2) {
        return G(i) + r(i2);
    }

    public static int i(int i, int i2) {
        return G(i) + 4;
    }

    public static int j() {
        return 4;
    }

    public static int k(int i, long j) {
        return G(i) + 8;
    }

    public static int l() {
        return 8;
    }

    public static int m(int i, float f) {
        return G(i) + 4;
    }

    public static int n() {
        return 4;
    }

    @Deprecated
    public static int o(int i, InterfaceC0470o0 interfaceC0470o0, A0 a0) {
        return (G(i) * 2) + ((AbstractC0443b) interfaceC0470o0).getSerializedSize(a0);
    }

    @Deprecated
    public static int p(InterfaceC0470o0 interfaceC0470o0) {
        return interfaceC0470o0.getSerializedSize();
    }

    public static int q(int i, int i2) {
        return r(i2) + G(i);
    }

    public static int r(int i) {
        if (i >= 0) {
            return I(i);
        }
        return 10;
    }

    public static int s(int i, long j) {
        return G(i) + K(j);
    }

    public static int t(V v) {
        return u(v.f3158c != null ? v.f3158c.size() : v.f3157b != null ? v.f3157b.getSerializedSize() : 0);
    }

    public static int u(int i) {
        return I(i) + i;
    }

    public static int v(InterfaceC0470o0 interfaceC0470o0) {
        return u(interfaceC0470o0.getSerializedSize());
    }

    public static int w(int i, int i2) {
        return G(i) + 4;
    }

    public static int x() {
        return 4;
    }

    public static int y(int i, long j) {
        return G(i) + 8;
    }

    public static int z() {
        return 8;
    }

    public abstract int O();

    public abstract void P(byte b2);

    public final void Q(int i) {
        r rVar = (r) this;
        if (i >= 0) {
            rVar.V(i);
        } else {
            rVar.W(i);
        }
    }

    public abstract void R(int i);

    public abstract void S(long j);

    public abstract void T(int i, int i2);

    public abstract void U(int i);

    public abstract void V(int i);

    public abstract void W(long j);

    public AbstractC0476s(C0473q c0473q) {
    }
}
