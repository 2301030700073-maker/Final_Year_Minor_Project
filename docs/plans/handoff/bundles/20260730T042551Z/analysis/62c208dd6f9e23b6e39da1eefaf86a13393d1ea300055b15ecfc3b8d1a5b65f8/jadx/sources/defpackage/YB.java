package defpackage;

import java.nio.charset.Charset;
import java.util.Arrays;

/* loaded from: classes3.dex */
public final class YB extends C3488p6 {

    /* renamed from: do, reason: not valid java name */
    public final transient int[] f4672do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final transient byte[][] f4673do;

    public YB(U5 u5, int i) {
        super(null);
        TJ.m2240do(u5.f3826do, 0L, i);
        VB vb = u5.f3827do;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (i3 < i) {
            int i5 = vb.f4053if;
            int i6 = vb.f4049do;
            if (i5 == i6) {
                throw new AssertionError("s.limit == s.pos");
            }
            i3 += i5 - i6;
            i4++;
            vb = vb.f4050do;
        }
        this.f4673do = new byte[i4][];
        this.f4672do = new int[i4 * 2];
        VB vb2 = u5.f3827do;
        int i7 = 0;
        while (i2 < i) {
            byte[][] bArr = this.f4673do;
            bArr[i7] = vb2.f4052do;
            int i8 = vb2.f4053if;
            int i9 = vb2.f4049do;
            int i10 = (i8 - i9) + i2;
            i2 = i10 > i ? i : i10;
            int[] iArr = this.f4672do;
            iArr[i7] = i2;
            iArr[bArr.length + i7] = i9;
            vb2.f4051do = true;
            i7++;
            vb2 = vb2.f4050do;
        }
    }

    private Object writeReplace() {
        return m2895default();
    }

    @Override // defpackage.C3488p6
    /* renamed from: break, reason: not valid java name */
    public final byte mo2893break(int i) {
        byte[][] bArr = this.f4673do;
        int length = bArr.length - 1;
        int[] iArr = this.f4672do;
        TJ.m2240do(iArr[length], i, 1L);
        int m2902switch = m2902switch(i);
        return bArr[m2902switch][(i - (m2902switch == 0 ? 0 : iArr[m2902switch - 1])) + iArr[bArr.length + m2902switch]];
    }

    @Override // defpackage.C3488p6
    /* renamed from: const, reason: not valid java name */
    public final String mo2894const() {
        return m2895default().mo2894const();
    }

    /* renamed from: default, reason: not valid java name */
    public final C3488p6 m2895default() {
        return new C3488p6(m2904throws());
    }

    @Override // defpackage.C3488p6
    /* renamed from: do, reason: not valid java name */
    public final String mo2896do() {
        return m2895default().mo2896do();
    }

    @Override // defpackage.C3488p6
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C3488p6) {
            C3488p6 c3488p6 = (C3488p6) obj;
            if (c3488p6.mo2897import() == mo2897import() && mo2905while(c3488p6, mo2897import())) {
                return true;
            }
        }
        return false;
    }

    @Override // defpackage.C3488p6
    public final int hashCode() {
        int i = this.f14883for;
        if (i != 0) {
            return i;
        }
        byte[][] bArr = this.f4673do;
        int length = bArr.length;
        int i2 = 0;
        int i3 = 0;
        int i4 = 1;
        while (i2 < length) {
            byte[] bArr2 = bArr[i2];
            int[] iArr = this.f4672do;
            int i5 = iArr[length + i2];
            int i6 = iArr[i2];
            int i7 = (i6 - i3) + i5;
            while (i5 < i7) {
                i4 = (i4 * 31) + bArr2[i5];
                i5++;
            }
            i2++;
            i3 = i6;
        }
        this.f14883for = i4;
        return i4;
    }

    @Override // defpackage.C3488p6
    /* renamed from: import, reason: not valid java name */
    public final int mo2897import() {
        return this.f4672do[this.f4673do.length - 1];
    }

    @Override // defpackage.C3488p6
    /* renamed from: native, reason: not valid java name */
    public final C3488p6 mo2898native() {
        return m2895default().mo2898native();
    }

    @Override // defpackage.C3488p6
    /* renamed from: public, reason: not valid java name */
    public final C3488p6 mo2899public() {
        return m2895default().mo2899public();
    }

    @Override // defpackage.C3488p6
    /* renamed from: return, reason: not valid java name */
    public final String mo2900return() {
        return m2895default().mo2900return();
    }

    @Override // defpackage.C3488p6
    /* renamed from: static, reason: not valid java name */
    public final void mo2901static(U5 u5) {
        byte[][] bArr = this.f4673do;
        int length = bArr.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int[] iArr = this.f4672do;
            int i3 = iArr[length + i];
            int i4 = iArr[i];
            VB vb = new VB(bArr[i], i3, (i3 + i4) - i2);
            VB vb2 = u5.f3827do;
            if (vb2 == null) {
                vb.f4054if = vb;
                vb.f4050do = vb;
                u5.f3827do = vb;
            } else {
                vb2.f4054if.m2549if(vb);
            }
            i++;
            i2 = i4;
        }
        u5.f3826do += i2;
    }

    /* renamed from: switch, reason: not valid java name */
    public final int m2902switch(int i) {
        int binarySearch = Arrays.binarySearch(this.f4672do, 0, this.f4673do.length, i + 1);
        return binarySearch >= 0 ? binarySearch : ~binarySearch;
    }

    @Override // defpackage.C3488p6
    /* renamed from: throw, reason: not valid java name */
    public final boolean mo2903throw(int i, byte[] bArr, int i2, int i3) {
        if (i < 0 || i > mo2897import() - i3 || i2 < 0 || i2 > bArr.length - i3) {
            return false;
        }
        int m2902switch = m2902switch(i);
        while (true) {
            boolean z = true;
            if (i3 <= 0) {
                return true;
            }
            int[] iArr = this.f4672do;
            int i4 = m2902switch == 0 ? 0 : iArr[m2902switch - 1];
            int min = Math.min(i3, ((iArr[m2902switch] - i4) + i4) - i);
            byte[][] bArr2 = this.f4673do;
            int i5 = (i - i4) + iArr[bArr2.length + m2902switch];
            byte[] bArr3 = bArr2[m2902switch];
            Charset charset = TJ.f3645do;
            int i6 = 0;
            while (true) {
                if (i6 >= min) {
                    break;
                }
                if (bArr3[i6 + i5] != bArr[i6 + i2]) {
                    z = false;
                    break;
                }
                i6++;
            }
            if (!z) {
                return false;
            }
            i += min;
            i2 += min;
            i3 -= min;
            m2902switch++;
        }
    }

    /* renamed from: throws, reason: not valid java name */
    public final byte[] m2904throws() {
        byte[][] bArr = this.f4673do;
        int length = bArr.length - 1;
        int[] iArr = this.f4672do;
        byte[] bArr2 = new byte[iArr[length]];
        int length2 = bArr.length;
        int i = 0;
        int i2 = 0;
        while (i < length2) {
            int i3 = iArr[length2 + i];
            int i4 = iArr[i];
            System.arraycopy(bArr[i], i3, bArr2, i2, i4 - i2);
            i++;
            i2 = i4;
        }
        return bArr2;
    }

    @Override // defpackage.C3488p6
    public final String toString() {
        return m2895default().toString();
    }

    @Override // defpackage.C3488p6
    /* renamed from: while, reason: not valid java name */
    public final boolean mo2905while(C3488p6 c3488p6, int i) {
        if (mo2897import() - i < 0) {
            return false;
        }
        int m2902switch = m2902switch(0);
        int i2 = 0;
        int i3 = 0;
        while (i > 0) {
            int[] iArr = this.f4672do;
            int i4 = m2902switch == 0 ? 0 : iArr[m2902switch - 1];
            int min = Math.min(i, ((iArr[m2902switch] - i4) + i4) - i2);
            byte[][] bArr = this.f4673do;
            if (!c3488p6.mo2903throw(i3, bArr[m2902switch], (i2 - i4) + iArr[bArr.length + m2902switch], min)) {
                return false;
            }
            i2 += min;
            i3 += min;
            i -= min;
            m2902switch++;
        }
        return true;
    }
}
