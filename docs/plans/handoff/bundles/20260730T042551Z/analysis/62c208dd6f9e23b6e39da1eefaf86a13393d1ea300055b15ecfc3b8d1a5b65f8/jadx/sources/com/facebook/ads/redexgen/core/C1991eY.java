package com.facebook.ads.redexgen.core;

import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.eY, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1991eY extends BY {
    public static byte[] A01;
    public final /* synthetic */ C1345Kr A00;

    static {
        A04();
    }

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 122);
        }
        return new String(copyOfRange);
    }

    public static void A04() {
        A01 = new byte[]{-20, -1, -6, -5, 5, -74, 13, -9, 9, -74, 4, -5, 12, -5, 8, -74, 6, 8, -5, 6, -9, 8, -5, -6};
    }

    public C1991eY(C1345Kr c1345Kr) {
        this.A00 = c1345Kr;
    }

    @Override // com.facebook.ads.redexgen.core.BY
    public final void A05() {
        boolean z;
        HI hi;
        z = this.A00.A0T;
        if (!z) {
            hi = this.A00.A0Y;
            hi.AFY(A01(0, 24, 28));
        }
    }
}
