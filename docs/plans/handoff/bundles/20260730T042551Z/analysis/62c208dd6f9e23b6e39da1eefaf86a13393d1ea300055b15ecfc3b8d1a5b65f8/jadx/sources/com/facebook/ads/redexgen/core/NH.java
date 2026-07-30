package com.facebook.ads.redexgen.core;

import java.util.Arrays;

/* loaded from: assets/audience_network.dex */
public class NH extends AbstractC2524nN<EnumC08601d> {
    public static byte[] A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 44);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A00 = new byte[]{-56, -49, -58, -58};
    }

    public NH(String str) {
        super(str);
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC2524nN
    /* renamed from: A05, reason: merged with bridge method [inline-methods] */
    public final C08681l A04(EnumC08601d enumC08601d) {
        return new C08681l(this, enumC08601d == null ? A00(0, 4, 46) : A00(0, 0, 18) + enumC08601d.A03());
    }
}
