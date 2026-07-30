package com.facebook.ads.redexgen.core;

import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.dh, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1939dh extends BY {
    public static byte[] A01;
    public final /* synthetic */ C1337Kj A00;

    static {
        A04();
    }

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 95);
        }
        return new String(copyOfRange);
    }

    public static void A04() {
        A01 = new byte[]{-67, -48, -53, -52, -42, -121, -34, -56, -38, -121, -43, -52, -35, -52, -39, -121, -41, -39, -52, -41, -56, -39, -52, -53};
    }

    public C1939dh(C1337Kj c1337Kj) {
        this.A00 = c1337Kj;
    }

    @Override // com.facebook.ads.redexgen.core.BY
    public final void A05() {
        boolean z;
        z = this.A00.A0E;
        if (!z) {
            this.A00.A0Q(A01(0, 24, 8));
        }
    }
}
