package c.b.a.c.f;

import java.util.Arrays;

/* loaded from: classes.dex */
public final class L extends A implements Cloneable {

    /* renamed from: c, reason: collision with root package name */
    public long f3032c = 0;

    /* renamed from: d, reason: collision with root package name */
    public long f3033d = 0;
    public long e = 0;
    public String f = "";
    public int g = 0;
    public int h = 0;
    public boolean i = false;
    public M[] j;
    public byte[] k;
    public I l;
    public byte[] m;
    public String n;
    public String o;
    public J p;
    public String q;
    public long r;
    public K s;
    public byte[] t;
    public String u;
    public int v;
    public int[] w;
    public long x;
    public N y;
    public boolean z;

    public L() {
        if (M.e == null) {
            synchronized (E.f3021a) {
                if (M.e == null) {
                    M.e = new M[0];
                }
            }
        }
        this.j = M.e;
        byte[] bArr = H.e;
        this.k = bArr;
        this.l = null;
        this.m = bArr;
        this.n = "";
        this.o = "";
        this.p = null;
        this.q = "";
        this.r = 180000L;
        this.s = null;
        this.t = bArr;
        this.u = "";
        this.v = 0;
        this.w = H.f3024a;
        this.x = 0L;
        this.y = null;
        this.z = false;
        this.f3013b = null;
        this.f3022a = -1;
    }

    @Override // c.b.a.c.f.A, c.b.a.c.f.F
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ F clone() {
        return (L) clone();
    }

    @Override // c.b.a.c.f.A, c.b.a.c.f.F
    public final int b() {
        int[] iArr;
        byte[] bArr = H.e;
        super.b();
        long j = this.f3032c;
        int i = 0;
        int s = j != 0 ? z.s(1, j) + 0 : 0;
        M[] mArr = this.j;
        if (mArr != null && mArr.length > 0) {
            int i2 = 0;
            while (true) {
                M[] mArr2 = this.j;
                if (i2 >= mArr2.length) {
                    break;
                }
                M m = mArr2[i2];
                if (m != null) {
                    s += z.k(3, m);
                }
                i2++;
            }
        }
        if (!Arrays.equals(this.k, bArr)) {
            s += z.m(4, this.k);
        }
        if (!Arrays.equals(this.m, bArr)) {
            s += z.m(6, this.m);
        }
        J j2 = this.p;
        if (j2 != null) {
            s += z.k(7, j2);
        }
        String str = this.n;
        if (str != null && !str.equals("")) {
            s += z.l(8, this.n);
        }
        String str2 = this.o;
        if (str2 != null && !str2.equals("")) {
            s += z.l(13, this.o);
        }
        String str3 = this.q;
        if (str3 != null && !str3.equals("")) {
            s += z.l(14, this.q);
        }
        long j3 = this.r;
        if (j3 != 180000) {
            s += z.n((j3 >> 63) ^ (j3 << 1)) + z.j(15);
        }
        K k = this.s;
        if (k != null) {
            s += z.k(16, k);
        }
        long j4 = this.f3033d;
        if (j4 != 0) {
            s += z.s(17, j4);
        }
        if (!Arrays.equals(this.t, bArr)) {
            s += z.m(18, this.t);
        }
        int[] iArr2 = this.w;
        if (iArr2 != null && iArr2.length > 0) {
            int i3 = 0;
            while (true) {
                iArr = this.w;
                if (i >= iArr.length) {
                    break;
                }
                i3 += z.a(iArr[i]);
                i++;
            }
            s = s + i3 + (iArr.length * 2);
        }
        N n = this.y;
        if (n != null) {
            s += z.k(23, n);
        }
        String str4 = this.u;
        return (str4 == null || str4.equals("")) ? s : s + z.l(24, this.u);
    }

    @Override // c.b.a.c.f.A, c.b.a.c.f.F
    public final Object clone() {
        try {
            L l = (L) super.clone();
            M[] mArr = this.j;
            if (mArr != null && mArr.length > 0) {
                l.j = new M[mArr.length];
                int i = 0;
                while (true) {
                    M[] mArr2 = this.j;
                    if (i >= mArr2.length) {
                        break;
                    }
                    if (mArr2[i] != null) {
                        l.j[i] = (M) mArr2[i].clone();
                    }
                    i++;
                }
            }
            J j = this.p;
            if (j != null) {
                l.p = (J) j.clone();
            }
            K k = this.s;
            if (k != null) {
                l.s = (K) k.clone();
            }
            int[] iArr = this.w;
            if (iArr != null && iArr.length > 0) {
                l.w = (int[]) iArr.clone();
            }
            N n = this.y;
            if (n != null) {
                l.y = (N) n.clone();
            }
            return l;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    @Override // c.b.a.c.f.A, c.b.a.c.f.F
    public final void e(z zVar) {
        byte[] bArr = H.e;
        long j = this.f3032c;
        if (j != 0) {
            zVar.o(1, j);
        }
        M[] mArr = this.j;
        int i = 0;
        if (mArr != null && mArr.length > 0) {
            int i2 = 0;
            while (true) {
                M[] mArr2 = this.j;
                if (i2 >= mArr2.length) {
                    break;
                }
                M m = mArr2[i2];
                if (m != null) {
                    zVar.e(3, m);
                }
                i2++;
            }
        }
        if (!Arrays.equals(this.k, bArr)) {
            zVar.g(4, this.k);
        }
        if (!Arrays.equals(this.m, bArr)) {
            zVar.g(6, this.m);
        }
        J j2 = this.p;
        if (j2 != null) {
            zVar.e(7, j2);
        }
        String str = this.n;
        if (str != null && !str.equals("")) {
            zVar.f(8, this.n);
        }
        String str2 = this.o;
        if (str2 != null && !str2.equals("")) {
            zVar.f(13, this.o);
        }
        String str3 = this.q;
        if (str3 != null && !str3.equals("")) {
            zVar.f(14, this.q);
        }
        long j3 = this.r;
        if (j3 != 180000) {
            zVar.p(120);
            zVar.h((j3 >> 63) ^ (j3 << 1));
        }
        K k = this.s;
        if (k != null) {
            zVar.e(16, k);
        }
        long j4 = this.f3033d;
        if (j4 != 0) {
            zVar.o(17, j4);
        }
        if (!Arrays.equals(this.t, bArr)) {
            zVar.g(18, this.t);
        }
        int[] iArr = this.w;
        if (iArr != null && iArr.length > 0) {
            while (true) {
                int[] iArr2 = this.w;
                if (i >= iArr2.length) {
                    break;
                }
                zVar.d(20, iArr2[i]);
                i++;
            }
        }
        N n = this.y;
        if (n != null) {
            zVar.e(23, n);
        }
        String str4 = this.u;
        if (str4 != null && !str4.equals("")) {
            zVar.f(24, this.u);
        }
        super.e(zVar);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof L)) {
            return false;
        }
        L l = (L) obj;
        if (this.f3032c != l.f3032c || this.f3033d != l.f3033d || !E.f(this.j, l.j) || !Arrays.equals(this.k, l.k) || !Arrays.equals(this.m, l.m)) {
            return false;
        }
        String str = this.n;
        if (str == null) {
            if (l.n != null) {
                return false;
            }
        } else if (!str.equals(l.n)) {
            return false;
        }
        String str2 = this.o;
        if (str2 == null) {
            if (l.o != null) {
                return false;
            }
        } else if (!str2.equals(l.o)) {
            return false;
        }
        J j = this.p;
        if (j == null) {
            if (l.p != null) {
                return false;
            }
        } else if (!j.equals(l.p)) {
            return false;
        }
        String str3 = this.q;
        if (str3 == null) {
            if (l.q != null) {
                return false;
            }
        } else if (!str3.equals(l.q)) {
            return false;
        }
        if (this.r != l.r) {
            return false;
        }
        K k = this.s;
        if (k == null) {
            if (l.s != null) {
                return false;
            }
        } else if (!k.equals(l.s)) {
            return false;
        }
        if (!Arrays.equals(this.t, l.t)) {
            return false;
        }
        String str4 = this.u;
        if (str4 == null) {
            if (l.u != null) {
                return false;
            }
        } else if (!str4.equals(l.u)) {
            return false;
        }
        if (!E.d(this.w, l.w)) {
            return false;
        }
        N n = this.y;
        if (n == null) {
            if (l.y != null) {
                return false;
            }
        } else if (!n.equals(l.y)) {
            return false;
        }
        C c2 = this.f3013b;
        if (c2 != null && !c2.a()) {
            return this.f3013b.equals(l.f3013b);
        }
        C c3 = l.f3013b;
        return c3 == null || c3.a();
    }

    @Override // c.b.a.c.f.A
    /* renamed from: f */
    public final /* bridge */ /* synthetic */ A clone() {
        return (L) clone();
    }

    public final int hashCode() {
        int hashCode = (L.class.getName().hashCode() + 527) * 31;
        long j = this.f3032c;
        int i = (hashCode + ((int) (j ^ (j >>> 32)))) * 31;
        long j2 = this.f3033d;
        int i2 = (i + ((int) (j2 ^ (j2 >>> 32)))) * 31;
        int i3 = (int) 0;
        int i4 = 0;
        int hashCode2 = (Arrays.hashCode(this.m) + ((((Arrays.hashCode(this.k) + ((((((((((((i2 + i3) * 31) + 0) * 31) + 0) * 31) + 0) * 31) + 1237) * 31) + E.a(this.j)) * 31)) * 31) + 0) * 31)) * 31;
        String str = this.n;
        int hashCode3 = (hashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.o;
        int hashCode4 = hashCode3 + (str2 == null ? 0 : str2.hashCode());
        J j3 = this.p;
        int hashCode5 = ((hashCode4 * 31) + (j3 == null ? 0 : j3.hashCode())) * 31;
        String str3 = this.q;
        int hashCode6 = (hashCode5 + (str3 == null ? 0 : str3.hashCode())) * 31;
        long j4 = this.r;
        K k = this.s;
        int hashCode7 = (Arrays.hashCode(this.t) + ((((hashCode6 + ((int) (j4 ^ (j4 >>> 32)))) * 31) + (k == null ? 0 : k.hashCode())) * 31)) * 31;
        String str4 = this.u;
        int hashCode8 = (((hashCode7 + (str4 == null ? 0 : str4.hashCode())) * 31) + 0) * 31;
        int[] iArr = this.w;
        int hashCode9 = ((hashCode8 + ((iArr == null || iArr.length == 0) ? 0 : Arrays.hashCode(iArr))) * 31) + i3;
        N n = this.y;
        int hashCode10 = ((((hashCode9 * 31) + (n == null ? 0 : n.hashCode())) * 31) + 1237) * 31;
        C c2 = this.f3013b;
        if (c2 != null && !c2.a()) {
            i4 = this.f3013b.hashCode();
        }
        return hashCode10 + i4;
    }
}
