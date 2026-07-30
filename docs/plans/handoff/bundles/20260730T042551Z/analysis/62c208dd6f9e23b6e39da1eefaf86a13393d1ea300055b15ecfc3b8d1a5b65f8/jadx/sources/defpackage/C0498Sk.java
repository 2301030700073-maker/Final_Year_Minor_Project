package defpackage;

/* renamed from: Sk, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0498Sk {

    /* renamed from: do, reason: not valid java name */
    public final C0476Rk f3549do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final int[] f3550do;

    public C0498Sk(C0476Rk c0476Rk, int[] iArr) {
        if (iArr.length == 0) {
            throw new IllegalArgumentException();
        }
        this.f3549do = c0476Rk;
        int length = iArr.length;
        if (length <= 1 || iArr[0] != 0) {
            this.f3550do = iArr;
            return;
        }
        int i = 1;
        while (i < length && iArr[i] == 0) {
            i++;
        }
        if (i == length) {
            this.f3550do = new int[]{0};
            return;
        }
        int i2 = length - i;
        int[] iArr2 = new int[i2];
        this.f3550do = iArr2;
        System.arraycopy(iArr, i, iArr2, 0, i2);
    }

    /* renamed from: do, reason: not valid java name */
    public final C0498Sk m2186do(C0498Sk c0498Sk) {
        C0476Rk c0476Rk = c0498Sk.f3549do;
        C0476Rk c0476Rk2 = this.f3549do;
        if (!c0476Rk2.equals(c0476Rk)) {
            throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
        }
        if (m2188if()) {
            return c0498Sk;
        }
        if (c0498Sk.m2188if()) {
            return this;
        }
        int[] iArr = this.f3550do;
        int length = iArr.length;
        int[] iArr2 = c0498Sk.f3550do;
        if (length <= iArr2.length) {
            iArr = iArr2;
            iArr2 = iArr;
        }
        int[] iArr3 = new int[iArr.length];
        int length2 = iArr.length - iArr2.length;
        System.arraycopy(iArr, 0, iArr3, 0, length2);
        for (int i = length2; i < iArr.length; i++) {
            iArr3[i] = iArr2[i - length2] ^ iArr[i];
        }
        return new C0498Sk(c0476Rk2, iArr3);
    }

    /* renamed from: for, reason: not valid java name */
    public final C0498Sk m2187for(int i, int i2) {
        if (i < 0) {
            throw new IllegalArgumentException();
        }
        C0476Rk c0476Rk = this.f3549do;
        if (i2 == 0) {
            return c0476Rk.f3231do;
        }
        int[] iArr = this.f3550do;
        int length = iArr.length;
        int[] iArr2 = new int[i + length];
        for (int i3 = 0; i3 < length; i3++) {
            iArr2[i3] = c0476Rk.m2069do(iArr[i3], i2);
        }
        return new C0498Sk(c0476Rk, iArr2);
    }

    /* renamed from: if, reason: not valid java name */
    public final boolean m2188if() {
        return this.f3550do[0] == 0;
    }

    public final String toString() {
        int[] iArr = this.f3550do;
        StringBuilder sb = new StringBuilder((iArr.length - 1) * 8);
        int length = iArr.length;
        while (true) {
            length--;
            if (length < 0) {
                return sb.toString();
            }
            int i = iArr[(iArr.length - 1) - length];
            if (i != 0) {
                if (i < 0) {
                    sb.append(" - ");
                    i = -i;
                } else if (sb.length() > 0) {
                    sb.append(" + ");
                }
                if (length == 0 || i != 1) {
                    C0476Rk c0476Rk = this.f3549do;
                    if (i == 0) {
                        c0476Rk.getClass();
                        throw new IllegalArgumentException();
                    }
                    int i2 = c0476Rk.f3235if[i];
                    if (i2 == 0) {
                        sb.append('1');
                    } else if (i2 == 1) {
                        sb.append('a');
                    } else {
                        sb.append("a^");
                        sb.append(i2);
                    }
                }
                if (length != 0) {
                    if (length == 1) {
                        sb.append('x');
                    } else {
                        sb.append("x^");
                        sb.append(length);
                    }
                }
            }
        }
    }
}
