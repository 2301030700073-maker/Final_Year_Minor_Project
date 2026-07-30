package defpackage;

import java.util.Arrays;

/* renamed from: w5, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3899w5 implements Cloneable {

    /* renamed from: do, reason: not valid java name */
    public final int[] f16196do;

    /* renamed from: for, reason: not valid java name */
    public final int f16197for;

    /* renamed from: new, reason: not valid java name */
    public final int f16198new;

    /* renamed from: try, reason: not valid java name */
    public final int f16199try;

    public C3899w5(int i, int i2) {
        if (i <= 0 || i2 <= 0) {
            throw new IllegalArgumentException("Both dimensions must be greater than 0");
        }
        this.f16197for = i;
        this.f16198new = i2;
        int i3 = (i + 31) / 32;
        this.f16199try = i3;
        this.f16196do = new int[i3 * i2];
    }

    public final Object clone() {
        return new C3899w5((int[]) this.f16196do.clone(), this.f16197for, this.f16198new, this.f16199try);
    }

    /* renamed from: do, reason: not valid java name */
    public final boolean m8537do(int i, int i2) {
        return ((this.f16196do[(i / 32) + (i2 * this.f16199try)] >>> (i & 31)) & 1) != 0;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C3899w5)) {
            return false;
        }
        C3899w5 c3899w5 = (C3899w5) obj;
        return this.f16197for == c3899w5.f16197for && this.f16198new == c3899w5.f16198new && this.f16199try == c3899w5.f16199try && Arrays.equals(this.f16196do, c3899w5.f16196do);
    }

    /* renamed from: for, reason: not valid java name */
    public final void m8538for(int i, int i2, int i3, int i4) {
        if (i2 < 0 || i < 0) {
            throw new IllegalArgumentException("Left and top must be nonnegative");
        }
        if (i4 <= 0 || i3 <= 0) {
            throw new IllegalArgumentException("Height and width must be at least 1");
        }
        int i5 = i3 + i;
        int i6 = i4 + i2;
        if (i6 > this.f16198new || i5 > this.f16197for) {
            throw new IllegalArgumentException("The region must fit inside the matrix");
        }
        while (i2 < i6) {
            int i7 = this.f16199try * i2;
            for (int i8 = i; i8 < i5; i8++) {
                int i9 = (i8 / 32) + i7;
                int[] iArr = this.f16196do;
                iArr[i9] = iArr[i9] | (1 << (i8 & 31));
            }
            i2++;
        }
    }

    public final int hashCode() {
        int i = this.f16197for;
        return Arrays.hashCode(this.f16196do) + (((((((i * 31) + i) * 31) + this.f16198new) * 31) + this.f16199try) * 31);
    }

    /* renamed from: if, reason: not valid java name */
    public final void m8539if(int i, int i2) {
        int i3 = (i / 32) + (i2 * this.f16199try);
        int[] iArr = this.f16196do;
        iArr[i3] = (1 << (i & 31)) | iArr[i3];
    }

    public final String toString() {
        int i = this.f16197for;
        int i2 = this.f16198new;
        StringBuilder sb = new StringBuilder((i + 1) * i2);
        for (int i3 = 0; i3 < i2; i3++) {
            for (int i4 = 0; i4 < i; i4++) {
                sb.append(m8537do(i4, i3) ? "X " : "  ");
            }
            sb.append("\n");
        }
        return sb.toString();
    }

    public C3899w5(int[] iArr, int i, int i2, int i3) {
        this.f16197for = i;
        this.f16198new = i2;
        this.f16199try = i3;
        this.f16196do = iArr;
    }
}
