package com.facebook.ads.redexgen.core;

import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.dP, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1921dP {
    public static byte[] A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 81);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A00 = new byte[]{-21, -34, -27, -34, -38, -20, -34, -35};
    }

    public static /* synthetic */ boolean A02(C1921dP c1921dP) {
        throw new NullPointerException(A00(0, 8, 40));
    }
}
