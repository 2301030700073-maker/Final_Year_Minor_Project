package c.b.a.c.f;

import java.util.Arrays;

/* loaded from: classes.dex */
public final class J extends A implements Cloneable {

    /* renamed from: c, reason: collision with root package name */
    public String[] f3028c;

    /* renamed from: d, reason: collision with root package name */
    public String[] f3029d;
    public int[] e;
    public long[] f;
    public long[] g;

    public J() {
        String[] strArr = H.f3026c;
        this.f3028c = strArr;
        this.f3029d = strArr;
        this.e = H.f3024a;
        long[] jArr = H.f3025b;
        this.f = jArr;
        this.g = jArr;
        this.f3013b = null;
        this.f3022a = -1;
    }

    @Override // c.b.a.c.f.A, c.b.a.c.f.F
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ F clone() {
        return (J) clone();
    }

    @Override // c.b.a.c.f.A, c.b.a.c.f.F
    public final int b() {
        int i;
        long[] jArr;
        int[] iArr;
        super.b();
        String[] strArr = this.f3028c;
        int i2 = 0;
        if (strArr == null || strArr.length <= 0) {
            i = 0;
        } else {
            int i3 = 0;
            int i4 = 0;
            int i5 = 0;
            while (true) {
                String[] strArr2 = this.f3028c;
                if (i3 >= strArr2.length) {
                    break;
                }
                String str = strArr2[i3];
                if (str != null) {
                    i5++;
                    i4 += z.c(str);
                }
                i3++;
            }
            i = (i5 * 1) + i4 + 0;
        }
        String[] strArr3 = this.f3029d;
        if (strArr3 != null && strArr3.length > 0) {
            int i6 = 0;
            int i7 = 0;
            int i8 = 0;
            while (true) {
                String[] strArr4 = this.f3029d;
                if (i6 >= strArr4.length) {
                    break;
                }
                String str2 = strArr4[i6];
                if (str2 != null) {
                    i8++;
                    i7 += z.c(str2);
                }
                i6++;
            }
            i = i + i7 + (i8 * 1);
        }
        int[] iArr2 = this.e;
        if (iArr2 != null && iArr2.length > 0) {
            int i9 = 0;
            int i10 = 0;
            while (true) {
                iArr = this.e;
                if (i9 >= iArr.length) {
                    break;
                }
                i10 += z.a(iArr[i9]);
                i9++;
            }
            i = i + i10 + (iArr.length * 1);
        }
        long[] jArr2 = this.f;
        if (jArr2 != null && jArr2.length > 0) {
            int i11 = 0;
            int i12 = 0;
            while (true) {
                jArr = this.f;
                if (i11 >= jArr.length) {
                    break;
                }
                i12 += z.n(jArr[i11]);
                i11++;
            }
            i = i + i12 + (jArr.length * 1);
        }
        long[] jArr3 = this.g;
        if (jArr3 == null || jArr3.length <= 0) {
            return i;
        }
        int i13 = 0;
        while (true) {
            long[] jArr4 = this.g;
            if (i2 >= jArr4.length) {
                return i + i13 + (jArr4.length * 1);
            }
            i13 += z.n(jArr4[i2]);
            i2++;
        }
    }

    @Override // c.b.a.c.f.A, c.b.a.c.f.F
    public final Object clone() {
        try {
            J j = (J) super.clone();
            String[] strArr = this.f3028c;
            if (strArr != null && strArr.length > 0) {
                j.f3028c = (String[]) strArr.clone();
            }
            String[] strArr2 = this.f3029d;
            if (strArr2 != null && strArr2.length > 0) {
                j.f3029d = (String[]) strArr2.clone();
            }
            int[] iArr = this.e;
            if (iArr != null && iArr.length > 0) {
                j.e = (int[]) iArr.clone();
            }
            long[] jArr = this.f;
            if (jArr != null && jArr.length > 0) {
                j.f = (long[]) jArr.clone();
            }
            long[] jArr2 = this.g;
            if (jArr2 != null && jArr2.length > 0) {
                j.g = (long[]) jArr2.clone();
            }
            return j;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    @Override // c.b.a.c.f.A, c.b.a.c.f.F
    public final void e(z zVar) {
        String[] strArr = this.f3028c;
        int i = 0;
        if (strArr != null && strArr.length > 0) {
            int i2 = 0;
            while (true) {
                String[] strArr2 = this.f3028c;
                if (i2 >= strArr2.length) {
                    break;
                }
                String str = strArr2[i2];
                if (str != null) {
                    zVar.f(1, str);
                }
                i2++;
            }
        }
        String[] strArr3 = this.f3029d;
        if (strArr3 != null && strArr3.length > 0) {
            int i3 = 0;
            while (true) {
                String[] strArr4 = this.f3029d;
                if (i3 >= strArr4.length) {
                    break;
                }
                String str2 = strArr4[i3];
                if (str2 != null) {
                    zVar.f(2, str2);
                }
                i3++;
            }
        }
        int[] iArr = this.e;
        if (iArr != null && iArr.length > 0) {
            int i4 = 0;
            while (true) {
                int[] iArr2 = this.e;
                if (i4 >= iArr2.length) {
                    break;
                }
                zVar.d(3, iArr2[i4]);
                i4++;
            }
        }
        long[] jArr = this.f;
        if (jArr != null && jArr.length > 0) {
            int i5 = 0;
            while (true) {
                long[] jArr2 = this.f;
                if (i5 >= jArr2.length) {
                    break;
                }
                zVar.o(4, jArr2[i5]);
                i5++;
            }
        }
        long[] jArr3 = this.g;
        if (jArr3 != null && jArr3.length > 0) {
            while (true) {
                long[] jArr4 = this.g;
                if (i >= jArr4.length) {
                    break;
                }
                zVar.o(5, jArr4[i]);
                i++;
            }
        }
        super.e(zVar);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof J)) {
            return false;
        }
        J j = (J) obj;
        if (!E.f(this.f3028c, j.f3028c) || !E.f(this.f3029d, j.f3029d) || !E.d(this.e, j.e) || !E.e(this.f, j.f) || !E.e(this.g, j.g)) {
            return false;
        }
        C c2 = this.f3013b;
        if (c2 != null && !c2.a()) {
            return this.f3013b.equals(j.f3013b);
        }
        C c3 = j.f3013b;
        return c3 == null || c3.a();
    }

    @Override // c.b.a.c.f.A
    /* renamed from: f */
    public final /* bridge */ /* synthetic */ A clone() {
        return (J) clone();
    }

    public final int hashCode() {
        int hashCode = (((((J.class.getName().hashCode() + 527) * 31) + E.a(this.f3028c)) * 31) + E.a(this.f3029d)) * 31;
        int[] iArr = this.e;
        int i = 0;
        int hashCode2 = (hashCode + ((iArr == null || iArr.length == 0) ? 0 : Arrays.hashCode(iArr))) * 31;
        long[] jArr = this.f;
        int hashCode3 = (hashCode2 + ((jArr == null || jArr.length == 0) ? 0 : Arrays.hashCode(jArr))) * 31;
        long[] jArr2 = this.g;
        int hashCode4 = (hashCode3 + ((jArr2 == null || jArr2.length == 0) ? 0 : Arrays.hashCode(jArr2))) * 31;
        C c2 = this.f3013b;
        if (c2 != null && !c2.a()) {
            i = this.f3013b.hashCode();
        }
        return hashCode4 + i;
    }
}
