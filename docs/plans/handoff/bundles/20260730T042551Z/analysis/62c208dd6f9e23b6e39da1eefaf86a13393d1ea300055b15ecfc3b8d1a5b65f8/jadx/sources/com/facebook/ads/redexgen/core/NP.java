package com.facebook.ads.redexgen.core;

import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.io.File;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: assets/audience_network.dex */
public final class NP extends AbstractC2538nc {
    public static byte[] A01;
    public final long A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 38);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{-31, -11, 12, -76, 7, -3, 14, -7, -76, 1, 9, 7, 8, -76, -10, -7, -76, 4, 3, 7, -3, 8, -3, 10, -7, -76, 2, 9, 1, -10, -7, 6, -75};
    }

    public NP(long j) {
        if (j > 0) {
            this.A00 = j;
            return;
        }
        throw new IllegalArgumentException(A00(0, 33, FacebookMediationAdapter.ERROR_FAILED_TO_PRESENT_AD));
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC2538nc
    public final boolean A08(File file, long j, int i) {
        return j <= this.A00;
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC2538nc, com.facebook.ads.redexgen.core.C1O
    public final /* bridge */ /* synthetic */ void AJW(File file) throws IOException {
        super.AJW(file);
    }
}
