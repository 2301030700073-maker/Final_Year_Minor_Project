package com.facebook.ads.redexgen.core;

import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.mn, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2488mn extends BY {
    public static byte[] A01;
    public final /* synthetic */ C2487mm A00;

    static {
        A04();
    }

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 14);
        }
        return new String(copyOfRange);
    }

    public static void A04() {
        A01 = new byte[]{-107, -116, -95, -116, -98, -114, -99, -108, -101, -97, 101};
    }

    public C2488mn(C2487mm c2487mm) {
        this.A00 = c2487mm;
    }

    @Override // com.facebook.ads.redexgen.core.BY
    public final void A05() {
        C2322k1 c2322k1;
        F1 f1;
        C2489mo c2489mo;
        c2322k1 = this.A00.A03;
        c2322k1.A0F().AK1();
        f1 = this.A00.A05;
        StringBuilder append = new StringBuilder().append(A01(0, 11, 29));
        c2489mo = this.A00.A00;
        f1.loadUrl(append.append(c2489mo.A03()).toString());
    }
}
