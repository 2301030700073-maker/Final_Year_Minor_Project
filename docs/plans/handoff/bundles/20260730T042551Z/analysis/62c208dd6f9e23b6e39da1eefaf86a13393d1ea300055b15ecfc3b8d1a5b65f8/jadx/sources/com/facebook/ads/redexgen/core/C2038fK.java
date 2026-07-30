package com.facebook.ads.redexgen.core;

import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.fK, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2038fK extends BY {
    public static byte[] A01;
    public final /* synthetic */ C1233Gj A00;

    static {
        A04();
    }

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 19);
        }
        return new String(copyOfRange);
    }

    public static void A04() {
        A01 = new byte[]{-87, -68, -73, -72, -62, 115, -63, -72, -55, -72, -59, 115, -58, -57, -76, -59, -57, -72, -73, 115, -61, -65, -76, -52, -68, -63, -70};
    }

    public C2038fK(C1233Gj c1233Gj) {
        this.A00 = c1233Gj;
    }

    @Override // com.facebook.ads.redexgen.core.BY
    public final void A05() {
        boolean z;
        z = this.A00.A04;
        if (!z) {
            this.A00.A0I(A01(0, 27, 64));
        }
    }
}
