package c.b.b;

import com.google.protobuf.ByteString;
import com.google.protobuf.InvalidProtocolBufferException;
import java.util.Arrays;
import java.util.Objects;

/* loaded from: classes.dex */
public final class N0 {
    public static final N0 f = new N0(0, new int[0], new Object[0], false);

    /* renamed from: a, reason: collision with root package name */
    public int f3137a;

    /* renamed from: b, reason: collision with root package name */
    public int[] f3138b;

    /* renamed from: c, reason: collision with root package name */
    public Object[] f3139c;

    /* renamed from: d, reason: collision with root package name */
    public int f3140d;
    public boolean e;

    public N0() {
        this(0, new int[8], new Object[8], true);
    }

    public static N0 b() {
        return new N0(0, new int[8], new Object[8], true);
    }

    public static void d(int i, Object obj, C0478t c0478t) {
        int i2 = i >>> 3;
        int i3 = i & 7;
        if (i3 == 0) {
            c0478t.h(i2, ((Long) obj).longValue());
            return;
        }
        if (i3 == 1) {
            c0478t.e(i2, ((Long) obj).longValue());
            return;
        }
        if (i3 == 2) {
            c0478t.b(i2, (ByteString) obj);
            return;
        }
        if (i3 != 3) {
            if (i3 != 5) {
                throw new RuntimeException(InvalidProtocolBufferException.c());
            }
            c0478t.d(i2, ((Integer) obj).intValue());
        } else {
            int i4 = i2 << 3;
            ((r) c0478t.f3212a).V(i4 | 3);
            ((N0) obj).e(c0478t);
            ((r) c0478t.f3212a).V(i4 | 4);
        }
    }

    public int a() {
        int J;
        int i = this.f3140d;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < this.f3137a; i3++) {
            int i4 = this.f3138b[i3];
            int i5 = i4 >>> 3;
            int i6 = i4 & 7;
            if (i6 == 0) {
                J = AbstractC0476s.J(i5, ((Long) this.f3139c[i3]).longValue());
            } else if (i6 == 1) {
                J = AbstractC0476s.k(i5, ((Long) this.f3139c[i3]).longValue());
            } else if (i6 == 2) {
                J = AbstractC0476s.d(i5, (ByteString) this.f3139c[i3]);
            } else if (i6 == 3) {
                i2 = ((N0) this.f3139c[i3]).a() + (AbstractC0476s.G(i5) * 2) + i2;
            } else {
                if (i6 != 5) {
                    throw new IllegalStateException(InvalidProtocolBufferException.c());
                }
                J = AbstractC0476s.i(i5, ((Integer) this.f3139c[i3]).intValue());
            }
            i2 = J + i2;
        }
        this.f3140d = i2;
        return i2;
    }

    public void c(int i, Object obj) {
        if (!this.e) {
            throw new UnsupportedOperationException();
        }
        int i2 = this.f3137a;
        if (i2 == this.f3138b.length) {
            int i3 = this.f3137a + (i2 < 4 ? 8 : i2 >> 1);
            this.f3138b = Arrays.copyOf(this.f3138b, i3);
            this.f3139c = Arrays.copyOf(this.f3139c, i3);
        }
        int[] iArr = this.f3138b;
        int i4 = this.f3137a;
        iArr[i4] = i;
        this.f3139c[i4] = obj;
        this.f3137a = i4 + 1;
    }

    public void e(C0478t c0478t) {
        if (this.f3137a == 0) {
            return;
        }
        Objects.requireNonNull(c0478t);
        for (int i = 0; i < this.f3137a; i++) {
            d(this.f3138b[i], this.f3139c[i], c0478t);
        }
    }

    public boolean equals(Object obj) {
        boolean z;
        boolean z2;
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof N0)) {
            return false;
        }
        N0 n0 = (N0) obj;
        int i = this.f3137a;
        if (i == n0.f3137a) {
            int[] iArr = this.f3138b;
            int[] iArr2 = n0.f3138b;
            int i2 = 0;
            while (true) {
                if (i2 >= i) {
                    z = true;
                    break;
                }
                if (iArr[i2] != iArr2[i2]) {
                    z = false;
                    break;
                }
                i2++;
            }
            if (z) {
                Object[] objArr = this.f3139c;
                Object[] objArr2 = n0.f3139c;
                int i3 = this.f3137a;
                int i4 = 0;
                while (true) {
                    if (i4 >= i3) {
                        z2 = true;
                        break;
                    }
                    if (!objArr[i4].equals(objArr2[i4])) {
                        z2 = false;
                        break;
                    }
                    i4++;
                }
                if (z2) {
                    return true;
                }
            }
        }
        return false;
    }

    public int hashCode() {
        int i = this.f3137a;
        int i2 = (527 + i) * 31;
        int[] iArr = this.f3138b;
        int i3 = 17;
        int i4 = 17;
        for (int i5 = 0; i5 < i; i5++) {
            i4 = (i4 * 31) + iArr[i5];
        }
        int i6 = (i2 + i4) * 31;
        Object[] objArr = this.f3139c;
        int i7 = this.f3137a;
        for (int i8 = 0; i8 < i7; i8++) {
            i3 = (i3 * 31) + objArr[i8].hashCode();
        }
        return i6 + i3;
    }

    public N0(int i, int[] iArr, Object[] objArr, boolean z) {
        this.f3140d = -1;
        this.f3137a = i;
        this.f3138b = iArr;
        this.f3139c = objArr;
        this.e = z;
    }
}
