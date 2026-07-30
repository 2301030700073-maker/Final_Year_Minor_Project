package c.b.a.c.f;

import java.util.Arrays;

/* loaded from: classes.dex */
public final class K extends A implements Cloneable {

    /* renamed from: c, reason: collision with root package name */
    public byte[] f3030c = H.e;

    /* renamed from: d, reason: collision with root package name */
    public String f3031d = "";
    public byte[][] e = H.f3027d;
    public boolean f = false;

    public K() {
        this.f3013b = null;
        this.f3022a = -1;
    }

    @Override // c.b.a.c.f.A, c.b.a.c.f.F
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ F clone() {
        return (K) clone();
    }

    @Override // c.b.a.c.f.A, c.b.a.c.f.F
    public final int b() {
        byte[] bArr = H.e;
        super.b();
        int i = 0;
        int m = !Arrays.equals(bArr, bArr) ? z.m(1, bArr) + 0 : 0;
        byte[][] bArr2 = this.e;
        if (bArr2 == null || bArr2.length <= 0) {
            return m;
        }
        int i2 = 0;
        int i3 = 0;
        while (true) {
            byte[][] bArr3 = this.e;
            if (i >= bArr3.length) {
                return m + i2 + (i3 * 1);
            }
            byte[] bArr4 = bArr3[i];
            if (bArr4 != null) {
                i3++;
                i2 += z.q(bArr4.length) + bArr4.length;
            }
            i++;
        }
    }

    @Override // c.b.a.c.f.A, c.b.a.c.f.F
    public final Object clone() {
        try {
            K k = (K) super.clone();
            byte[][] bArr = this.e;
            if (bArr != null && bArr.length > 0) {
                k.e = (byte[][]) bArr.clone();
            }
            return k;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    @Override // c.b.a.c.f.A, c.b.a.c.f.F
    public final void e(z zVar) {
        byte[] bArr = H.e;
        if (!Arrays.equals(bArr, bArr)) {
            zVar.g(1, bArr);
        }
        byte[][] bArr2 = this.e;
        if (bArr2 != null && bArr2.length > 0) {
            int i = 0;
            while (true) {
                byte[][] bArr3 = this.e;
                if (i >= bArr3.length) {
                    break;
                }
                byte[] bArr4 = bArr3[i];
                if (bArr4 != null) {
                    zVar.g(2, bArr4);
                }
                i++;
            }
        }
        super.e(zVar);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof K)) {
            return false;
        }
        K k = (K) obj;
        byte[] bArr = H.e;
        byte[] bArr2 = k.f3030c;
        if (!Arrays.equals(bArr, bArr) || !E.g(this.e, k.e)) {
            return false;
        }
        C c2 = this.f3013b;
        if (c2 != null && !c2.a()) {
            return this.f3013b.equals(k.f3013b);
        }
        C c3 = k.f3013b;
        return c3 == null || c3.a();
    }

    @Override // c.b.a.c.f.A
    /* renamed from: f */
    public final /* bridge */ /* synthetic */ A clone() {
        return (K) clone();
    }

    public final int hashCode() {
        int hashCode = (Arrays.hashCode(H.e) + ((K.class.getName().hashCode() + 527) * 31)) * 31;
        int i = 0;
        int b2 = (((E.b(this.e) + ((hashCode + 0) * 31)) * 31) + 1237) * 31;
        C c2 = this.f3013b;
        if (c2 != null && !c2.a()) {
            i = this.f3013b.hashCode();
        }
        return b2 + i;
    }
}
