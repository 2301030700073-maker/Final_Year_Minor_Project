package defpackage;

import java.util.Arrays;

/* renamed from: v5, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3840v5 implements Cloneable {

    /* renamed from: do, reason: not valid java name */
    public int[] f16010do;

    /* renamed from: for, reason: not valid java name */
    public int f16011for;

    public C3840v5() {
        this.f16011for = 0;
        this.f16010do = new int[1];
    }

    public final Object clone() {
        return new C3840v5((int[]) this.f16010do.clone(), this.f16011for);
    }

    /* renamed from: do, reason: not valid java name */
    public final void m8425do(boolean z) {
        m8426for(this.f16011for + 1);
        if (z) {
            int[] iArr = this.f16010do;
            int i = this.f16011for;
            int i2 = i / 32;
            iArr[i2] = (1 << (i & 31)) | iArr[i2];
        }
        this.f16011for++;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C3840v5)) {
            return false;
        }
        C3840v5 c3840v5 = (C3840v5) obj;
        return this.f16011for == c3840v5.f16011for && Arrays.equals(this.f16010do, c3840v5.f16010do);
    }

    /* renamed from: for, reason: not valid java name */
    public final void m8426for(int i) {
        int[] iArr = this.f16010do;
        if (i > (iArr.length << 5)) {
            int[] iArr2 = new int[(i + 31) / 32];
            System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
            this.f16010do = iArr2;
        }
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f16010do) + (this.f16011for * 31);
    }

    /* renamed from: if, reason: not valid java name */
    public final void m8427if(int i, int i2) {
        if (i2 < 0 || i2 > 32) {
            throw new IllegalArgumentException("Num bits must be between 0 and 32");
        }
        m8426for(this.f16011for + i2);
        while (i2 > 0) {
            boolean z = true;
            if (((i >> (i2 - 1)) & 1) != 1) {
                z = false;
            }
            m8425do(z);
            i2--;
        }
    }

    /* renamed from: new, reason: not valid java name */
    public final boolean m8428new(int i) {
        return ((1 << (i & 31)) & this.f16010do[i / 32]) != 0;
    }

    public final String toString() {
        int i = this.f16011for;
        StringBuilder sb = new StringBuilder((i / 8) + i + 1);
        for (int i2 = 0; i2 < this.f16011for; i2++) {
            if ((i2 & 7) == 0) {
                sb.append(' ');
            }
            sb.append(m8428new(i2) ? 'X' : '.');
        }
        return sb.toString();
    }

    public C3840v5(int[] iArr, int i) {
        this.f16010do = iArr;
        this.f16011for = i;
    }
}
