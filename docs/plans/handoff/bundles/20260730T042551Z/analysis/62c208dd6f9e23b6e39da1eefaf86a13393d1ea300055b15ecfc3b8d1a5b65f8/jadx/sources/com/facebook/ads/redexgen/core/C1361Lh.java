package com.facebook.ads.redexgen.core;

import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.Lh, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1361Lh extends AbstractC1829bv {
    public static byte[] A01;
    public final /* synthetic */ C2160hJ A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 58);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{115, 108, 97, 96, 106, 76, 107, 113, 96, 119, 118, 113, 108, 113, 100, 105, 64, 115, 96, 107, 113};
    }

    public C1361Lh(C2160hJ c2160hJ) {
        this.A00 = c2160hJ;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.core.C9K
    /* renamed from: A02, reason: merged with bridge method [inline-methods] */
    public final void A03(C1830bw c1830bw) {
        DR dr;
        dr = this.A00.A06;
        dr.A4a(A00(0, 21, 63), c1830bw);
    }
}
