package com.facebook.ads.redexgen.core;

import java.util.Arrays;

/* loaded from: assets/audience_network.dex */
public class NF extends AbstractC2524nN<EnumC08741r> {
    public static byte[] A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 115);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A00 = new byte[]{83, 90, 81, 81};
    }

    public NF(String str) {
        super(str);
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC2524nN
    /* renamed from: A05, reason: merged with bridge method [inline-methods] */
    public final C08681l A04(EnumC08741r enumC08741r) {
        return new C08681l(this, enumC08741r == null ? A00(0, 4, 114) : enumC08741r.A03());
    }
}
