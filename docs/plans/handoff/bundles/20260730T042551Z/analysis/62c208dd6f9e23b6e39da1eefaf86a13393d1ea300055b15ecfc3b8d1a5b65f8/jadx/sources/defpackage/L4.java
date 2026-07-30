package defpackage;

import java.lang.reflect.Array;

/* loaded from: classes3.dex */
public final class L4 {

    /* renamed from: do, reason: not valid java name */
    public int f1922do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final M4[] f1923do;

    /* renamed from: for, reason: not valid java name */
    public final int f1924for;

    /* renamed from: if, reason: not valid java name */
    public final int f1925if;

    public L4(int i, int i2) {
        M4[] m4Arr = new M4[i];
        this.f1923do = m4Arr;
        int length = m4Arr.length;
        for (int i3 = 0; i3 < length; i3++) {
            this.f1923do[i3] = new M4(((i2 + 4) * 17) + 1);
        }
        this.f1924for = i2 * 17;
        this.f1925if = i;
        this.f1922do = -1;
    }

    /* renamed from: do, reason: not valid java name */
    public final M4 m1264do() {
        return this.f1923do[this.f1922do];
    }

    /* renamed from: if, reason: not valid java name */
    public final byte[][] m1265if(int i, int i2) {
        int i3 = this.f1925if;
        byte[][] bArr = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, i3 * i2, this.f1924for * i);
        int i4 = i3 * i2;
        for (int i5 = 0; i5 < i4; i5++) {
            int i6 = (i4 - i5) - 1;
            byte[] bArr2 = (byte[]) this.f1923do[i5 / i2].f2095do;
            int length = bArr2.length * i;
            byte[] bArr3 = new byte[length];
            for (int i7 = 0; i7 < length; i7++) {
                bArr3[i7] = bArr2[i7 / i];
            }
            bArr[i6] = bArr3;
        }
        return bArr;
    }
}
