package com.facebook.ads.redexgen.core;

import com.facebook.ads.sync.SyncModifiableBundle;
import java.util.Arrays;
import java.util.Map;

/* renamed from: com.facebook.ads.redexgen.X.Fj, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1207Fj extends AbstractC1727aC {
    public static byte[] A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 102);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A00 = new byte[]{48, 34, 49, 15, 34, 46, 50, 38, 47, 34, 48, 16, 54, 43, 32};
    }

    public C1207Fj(HX hx) {
        super(hx, K0.A04);
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC1727aC, com.facebook.ads.redexgen.core.K8
    public final void A43(Map<InterfaceC1318Jq, KD> map, Map<SyncModifiableBundle, K0> map2) {
        throw new NullPointerException(A00(0, 15, 87));
    }
}
