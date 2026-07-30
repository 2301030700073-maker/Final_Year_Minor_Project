package defpackage;

import java.util.EnumMap;

/* renamed from: aJ, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0684aJ extends YI {
    @Override // defpackage.AbstractC3134j6, defpackage.InterfaceC3328mN
    /* renamed from: new */
    public final C3899w5 mo270new(String str, K4 k4, EnumMap enumMap) {
        if (k4 == K4.UPC_E) {
            return super.mo270new(str, k4, enumMap);
        }
        throw new IllegalArgumentException("Can only encode UPC_E, but got ".concat(String.valueOf(k4)));
    }

    @Override // defpackage.AbstractC3134j6
    /* renamed from: try */
    public final boolean[] mo2288try(String str) {
        int length = str.length();
        if (length == 7) {
            try {
                str = str + XI.m2824new(ZI.m2985try(str));
            } catch (C3876vj e) {
                throw new IllegalArgumentException(e);
            }
        } else {
            if (length != 8) {
                throw new IllegalArgumentException("Requested contents should be 8 digits long, but got ".concat(String.valueOf(length)));
            }
            try {
                if (!XI.m2823for(str)) {
                    throw new IllegalArgumentException("Contents do not pass checksum");
                }
            } catch (C3876vj unused) {
                throw new IllegalArgumentException("Illegal contents");
            }
        }
        int digit = Character.digit(str.charAt(0), 10);
        if (digit != 0 && digit != 1) {
            throw new IllegalArgumentException("Number system must be 0 or 1");
        }
        int i = ZI.f4797for[digit][Character.digit(str.charAt(7), 10)];
        boolean[] zArr = new boolean[51];
        int m7035do = AbstractC3134j6.m7035do(zArr, 0, XI.f4494do, true) + 0;
        for (int i2 = 1; i2 <= 6; i2++) {
            int digit2 = Character.digit(str.charAt(i2), 10);
            if (((i >> (6 - i2)) & 1) == 1) {
                digit2 += 10;
            }
            m7035do += AbstractC3134j6.m7035do(zArr, m7035do, XI.f4498if[digit2], false);
        }
        AbstractC3134j6.m7035do(zArr, m7035do, XI.f4496for, false);
        return zArr;
    }
}
