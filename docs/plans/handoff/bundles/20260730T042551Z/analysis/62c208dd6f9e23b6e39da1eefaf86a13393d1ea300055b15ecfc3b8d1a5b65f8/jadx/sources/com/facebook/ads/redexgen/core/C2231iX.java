package com.facebook.ads.redexgen.core;

import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.iX, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2231iX extends BY {
    public static byte[] A01;
    public final /* synthetic */ B9 A00;

    static {
        A04();
    }

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 41);
        }
        return new String(copyOfRange);
    }

    public static void A04() {
        A01 = new byte[]{-81, -78, -90, -92, -81, -94, -73, -85, -75, -78, -73, -73, -81, -88};
    }

    public C2231iX(B9 b9) {
        this.A00 = b9;
    }

    @Override // com.facebook.ads.redexgen.core.BY
    public final void A05() {
        C2322k1 c2322k1;
        c2322k1 = this.A00.A05;
        c2322k1.A08().A9t(A01(0, 14, 26));
    }
}
