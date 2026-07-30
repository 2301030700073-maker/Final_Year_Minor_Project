package defpackage;

import java.util.EnumMap;

/* renamed from: sf, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3695sf extends YI {
    @Override // defpackage.AbstractC3134j6, defpackage.InterfaceC3328mN
    /* renamed from: new */
    public final C3899w5 mo270new(String str, K4 k4, EnumMap enumMap) {
        if (k4 == K4.EAN_8) {
            return super.mo270new(str, k4, enumMap);
        }
        throw new IllegalArgumentException("Can only encode EAN_8, but got ".concat(String.valueOf(k4)));
    }

    @Override // defpackage.AbstractC3134j6
    /* renamed from: try */
    public final boolean[] mo2288try(String str) {
        int length = str.length();
        if (length == 7) {
            try {
                str = str + XI.m2824new(str);
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
        boolean[] zArr = new boolean[67];
        int m7035do = AbstractC3134j6.m7035do(zArr, 0, XI.f4494do, true) + 0;
        for (int i = 0; i <= 3; i++) {
            m7035do += AbstractC3134j6.m7035do(zArr, m7035do, XI.f4495do[Character.digit(str.charAt(i), 10)], false);
        }
        int m7035do2 = AbstractC3134j6.m7035do(zArr, m7035do, XI.f4497if, false) + m7035do;
        for (int i2 = 4; i2 <= 7; i2++) {
            m7035do2 += AbstractC3134j6.m7035do(zArr, m7035do2, XI.f4495do[Character.digit(str.charAt(i2), 10)], true);
        }
        AbstractC3134j6.m7035do(zArr, m7035do2, XI.f4494do, true);
        return zArr;
    }
}
