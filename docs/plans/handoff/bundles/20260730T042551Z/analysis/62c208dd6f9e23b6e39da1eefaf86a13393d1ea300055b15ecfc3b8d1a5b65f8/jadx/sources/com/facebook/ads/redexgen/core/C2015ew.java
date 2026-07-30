package com.facebook.ads.redexgen.core;

import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.ew, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2015ew extends BY {
    public static byte[] A01;
    public final /* synthetic */ L1 A00;

    static {
        A04();
    }

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 23);
        }
        return new String(copyOfRange);
    }

    public static void A04() {
        A01 = new byte[]{-56, -37, -42, -41, -31, -110, -23, -45, -27, -110, -32, -41, -24, -41, -28, -110, -30, -28, -41, -30, -45, -28, -41, -42};
    }

    public C2015ew(L1 l1) {
        this.A00 = l1;
    }

    @Override // com.facebook.ads.redexgen.core.BY
    public final void A05() {
        boolean z;
        HI hi;
        z = this.A00.A07;
        if (!z) {
            hi = this.A00.A0F;
            hi.AFY(A01(0, 24, 91));
        }
    }
}
