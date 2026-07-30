package c.b.a.c.f;

/* loaded from: classes.dex */
public final class C implements Cloneable {
    public static final D e = new D();

    /* renamed from: a, reason: collision with root package name */
    public boolean f3014a;

    /* renamed from: b, reason: collision with root package name */
    public int[] f3015b;

    /* renamed from: c, reason: collision with root package name */
    public D[] f3016c;

    /* renamed from: d, reason: collision with root package name */
    public int f3017d;

    public C() {
        this(10);
    }

    public final boolean a() {
        return this.f3017d == 0;
    }

    public final Object clone() {
        int i = this.f3017d;
        C c2 = new C(i);
        System.arraycopy(this.f3015b, 0, c2.f3015b, 0, i);
        for (int i2 = 0; i2 < i; i2++) {
            D[] dArr = this.f3016c;
            if (dArr[i2] != null) {
                c2.f3016c[i2] = dArr[i2].clone();
            }
        }
        c2.f3017d = i;
        return c2;
    }

    public final boolean equals(Object obj) {
        boolean z;
        boolean z2;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C)) {
            return false;
        }
        C c2 = (C) obj;
        int i = this.f3017d;
        if (i != c2.f3017d) {
            return false;
        }
        int[] iArr = this.f3015b;
        int[] iArr2 = c2.f3015b;
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
            D[] dArr = this.f3016c;
            D[] dArr2 = c2.f3016c;
            int i3 = this.f3017d;
            int i4 = 0;
            while (true) {
                if (i4 >= i3) {
                    z2 = true;
                    break;
                }
                if (!dArr[i4].equals(dArr2[i4])) {
                    z2 = false;
                    break;
                }
                i4++;
            }
            if (z2) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = 17;
        for (int i2 = 0; i2 < this.f3017d; i2++) {
            i = (((i * 31) + this.f3015b[i2]) * 31) + this.f3016c[i2].hashCode();
        }
        return i;
    }

    public C(int i) {
        this.f3014a = false;
        int i2 = i << 2;
        int i3 = 4;
        while (true) {
            if (i3 >= 32) {
                break;
            }
            int i4 = (1 << i3) - 12;
            if (i2 <= i4) {
                i2 = i4;
                break;
            }
            i3++;
        }
        int i5 = i2 / 4;
        this.f3015b = new int[i5];
        this.f3016c = new D[i5];
        this.f3017d = 0;
    }
}
