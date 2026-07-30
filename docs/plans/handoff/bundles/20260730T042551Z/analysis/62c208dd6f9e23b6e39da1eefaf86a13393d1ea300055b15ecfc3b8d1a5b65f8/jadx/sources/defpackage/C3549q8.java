package defpackage;

import java.util.EnumMap;

/* renamed from: q8, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3549q8 extends AbstractC3134j6 {
    /* renamed from: import, reason: not valid java name */
    public static void m7854import(int i, int[] iArr) {
        for (int i2 = 0; i2 < 9; i2++) {
            int i3 = 1;
            if (((1 << (8 - i2)) & i) == 0) {
                i3 = 0;
            }
            iArr[i2] = i3;
        }
    }

    /* renamed from: throw, reason: not valid java name */
    public static void m7855throw(boolean[] zArr, int i, int[] iArr) {
        int length = iArr.length;
        int i2 = 0;
        while (i2 < length) {
            int i3 = i + 1;
            zArr[i] = iArr[i2] != 0;
            i2++;
            i = i3;
        }
    }

    /* renamed from: while, reason: not valid java name */
    public static int m7856while(int i, String str) {
        int i2 = 0;
        int i3 = 1;
        for (int length = str.length() - 1; length >= 0; length--) {
            i2 += "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*".indexOf(str.charAt(length)) * i3;
            i3++;
            if (i3 > i) {
                i3 = 1;
            }
        }
        return i2 % 47;
    }

    @Override // defpackage.AbstractC3134j6, defpackage.InterfaceC3328mN
    /* renamed from: new */
    public final C3899w5 mo270new(String str, K4 k4, EnumMap enumMap) {
        if (k4 == K4.CODE_93) {
            return super.mo270new(str, k4, enumMap);
        }
        throw new IllegalArgumentException("Can only encode CODE_93, but got ".concat(String.valueOf(k4)));
    }

    @Override // defpackage.AbstractC3134j6
    /* renamed from: try */
    public final boolean[] mo2288try(String str) {
        int length = str.length();
        if (length > 80) {
            throw new IllegalArgumentException("Requested contents should be less than 80 digits long, but got ".concat(String.valueOf(length)));
        }
        int[] iArr = new int[9];
        int length2 = ((str.length() + 2 + 2) * 9) + 1;
        m7854import(C3490p8.f14889do[47], iArr);
        boolean[] zArr = new boolean[length2];
        m7855throw(zArr, 0, iArr);
        int i = 9;
        for (int i2 = 0; i2 < length; i2++) {
            m7854import(C3490p8.f14889do["0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*".indexOf(str.charAt(i2))], iArr);
            m7855throw(zArr, i, iArr);
            i += 9;
        }
        int m7856while = m7856while(20, str);
        int[] iArr2 = C3490p8.f14889do;
        m7854import(iArr2[m7856while], iArr);
        m7855throw(zArr, i, iArr);
        int i3 = i + 9;
        m7854import(iArr2[m7856while(15, str + "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*".charAt(m7856while))], iArr);
        m7855throw(zArr, i3, iArr);
        int i4 = i3 + 9;
        m7854import(iArr2[47], iArr);
        m7855throw(zArr, i4, iArr);
        zArr[i4 + 9] = true;
        return zArr;
    }
}
