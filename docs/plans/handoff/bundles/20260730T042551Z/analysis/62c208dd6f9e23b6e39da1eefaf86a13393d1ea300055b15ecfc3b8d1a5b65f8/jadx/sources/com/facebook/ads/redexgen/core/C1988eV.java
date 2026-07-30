package com.facebook.ads.redexgen.core;

import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.eV, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1988eV extends BY {
    public static byte[] A02;
    public final /* synthetic */ C1345Kr A00;
    public final /* synthetic */ KX A01;

    static {
        A04();
    }

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 118);
        }
        return new String(copyOfRange);
    }

    public static void A04() {
        A02 = new byte[]{98, 85, 70, 70, 69, 82, 73, 78, 71, 0, 73, 78, 68, 69, 70, 73, 78, 73, 84, 69, 76, 89};
    }

    public C1988eV(C1345Kr c1345Kr, KX kx) {
        this.A00 = c1345Kr;
        this.A01 = kx;
    }

    @Override // com.facebook.ads.redexgen.core.BY
    public final void A05() {
        C1855cL c1855cL;
        C1855cL c1855cL2;
        HI hi;
        c1855cL = this.A00.A0a;
        if (c1855cL.getState() == JI.A02) {
            c1855cL2 = this.A00.A0a;
            if (c1855cL2.getCurrentPositionInMillis() == this.A01.A00()) {
                hi = this.A00.A0Y;
                hi.AFY(A01(0, 22, 86));
            }
        }
    }
}
