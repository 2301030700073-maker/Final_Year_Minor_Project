package com.facebook.ads.redexgen.core;

import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.Lf, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1359Lf extends AbstractC1837c3 {
    public static byte[] A01;
    public static String[] A02 = {"cVYzzU3WDwilAiB6lBwH", "ltb11yKnDLf", "qD1l7ddw57WScFbFlpW6gLQQ4LJZYMm4", "7tmDLtuP1dSUokfmYRKMMhnjp75BOUEQ", "O1T", "OUAaXGhWo5xW6BfvCbr", "NPW6PnCzVK8iTd9b27h5", "ykk8Miz3Z2gvnB5Rb4Sxgn912BIo"};
    public final /* synthetic */ C2160hJ A00;

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            int i5 = copyOfRange[i4] ^ i3;
            if (A02[2].charAt(8) != '5') {
                throw new RuntimeException();
            }
            A02[5] = "7KI0j9KfVtSFY3dF";
            copyOfRange[i4] = (byte) (i5 ^ 70);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{3, 28, 17, 16, 26, 60, 27, 1, 16, 7, 6, 1, 28, 1, 20, 25, 48, 3, 16, 27, 1};
    }

    static {
        A01();
    }

    public C1359Lf(C2160hJ c2160hJ) {
        this.A00 = c2160hJ;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.core.C9K
    /* renamed from: A02, reason: merged with bridge method [inline-methods] */
    public final void A03(C1328Ka c1328Ka) {
        DR dr;
        dr = this.A00.A06;
        dr.A4a(A00(0, 21, 51), c1328Ka);
    }
}
