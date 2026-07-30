package com.facebook.ads.redexgen.core;

import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.fI, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2036fI extends BY {
    public static byte[] A02;
    public final /* synthetic */ C1233Gj A00;
    public final /* synthetic */ KX A01;

    static {
        A04();
    }

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 40);
        }
        return new String(copyOfRange);
    }

    public static void A04() {
        A02 = new byte[]{-103, -52, -67, -67, -68, -55, -64, -59, -66, 119, -64, -59, -69, -68, -67, -64, -59, -64, -53, -68, -61, -48};
    }

    public C2036fI(C1233Gj c1233Gj, KX kx) {
        this.A00 = c1233Gj;
        this.A01 = kx;
    }

    @Override // com.facebook.ads.redexgen.core.BY
    public final void A05() {
        C1855cL c1855cL;
        C1855cL c1855cL2;
        c1855cL = this.A00.A0D;
        if (c1855cL.getState() == JI.A02) {
            c1855cL2 = this.A00.A0D;
            if (c1855cL2.getCurrentPositionInMillis() == this.A01.A00()) {
                this.A00.A0I(A01(0, 22, 47));
            }
        }
    }
}
