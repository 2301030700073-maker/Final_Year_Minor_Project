package defpackage;

import java.util.EnumMap;

/* renamed from: rf, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3636rf extends YI {
    @Override // defpackage.AbstractC3134j6, defpackage.InterfaceC3328mN
    /* renamed from: new */
    public final C3899w5 mo270new(String str, K4 k4, EnumMap enumMap) {
        if (k4 == K4.EAN_13) {
            return super.mo270new(str, k4, enumMap);
        }
        throw new IllegalArgumentException("Can only encode EAN_13, but got ".concat(String.valueOf(k4)));
    }

    @Override // defpackage.AbstractC3134j6
    /* renamed from: try */
    public final boolean[] mo2288try(String str) {
        int length = str.length();
        if (length == 12) {
            try {
                str = str + XI.m2824new(str);
            } catch (C3876vj e) {
                throw new IllegalArgumentException(e);
            }
        } else {
            if (length != 13) {
                throw new IllegalArgumentException("Requested contents should be 12 or 13 digits long, but got ".concat(String.valueOf(length)));
            }
            try {
                if (!XI.m2823for(str)) {
                    throw new IllegalArgumentException("Contents do not pass checksum");
                }
            } catch (C3876vj unused) {
                throw new IllegalArgumentException("Illegal contents");
            }
        }
        int i = C3578qf.f15142new[Character.digit(str.charAt(0), 10)];
        boolean[] zArr = new boolean[95];
        int m7035do = AbstractC3134j6.m7035do(zArr, 0, XI.f4494do, true) + 0;
        for (int i2 = 1; i2 <= 6; i2++) {
            int digit = Character.digit(str.charAt(i2), 10);
            if (((i >> (6 - i2)) & 1) == 1) {
                digit += 10;
            }
            m7035do += AbstractC3134j6.m7035do(zArr, m7035do, XI.f4498if[digit], false);
        }
        int m7035do2 = AbstractC3134j6.m7035do(zArr, m7035do, XI.f4497if, false) + m7035do;
        for (int i3 = 7; i3 <= 12; i3++) {
            m7035do2 += AbstractC3134j6.m7035do(zArr, m7035do2, XI.f4495do[Character.digit(str.charAt(i3), 10)], true);
        }
        AbstractC3134j6.m7035do(zArr, m7035do2, XI.f4494do, true);
        return zArr;
    }
}
