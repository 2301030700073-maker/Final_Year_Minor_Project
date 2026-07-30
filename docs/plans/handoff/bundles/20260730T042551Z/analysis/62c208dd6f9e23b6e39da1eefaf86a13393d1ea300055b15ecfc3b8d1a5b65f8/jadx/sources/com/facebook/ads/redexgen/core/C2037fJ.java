package com.facebook.ads.redexgen.core;

import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.fJ, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2037fJ extends BY {
    public static byte[] A01;
    public final /* synthetic */ C1233Gj A00;

    static {
        A04();
    }

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 114);
        }
        return new String(copyOfRange);
    }

    public static void A04() {
        A01 = new byte[]{87, 104, 101, 100, 110, 33, 118, 96, 114, 33, 111, 100, 119, 100, 115, 33, 113, 115, 100, 113, 96, 115, 100, 101};
    }

    public C2037fJ(C1233Gj c1233Gj) {
        this.A00 = c1233Gj;
    }

    @Override // com.facebook.ads.redexgen.core.BY
    public final void A05() {
        boolean z;
        z = this.A00.A03;
        if (!z) {
            this.A00.A0I(A01(0, 24, 115));
        }
    }
}
