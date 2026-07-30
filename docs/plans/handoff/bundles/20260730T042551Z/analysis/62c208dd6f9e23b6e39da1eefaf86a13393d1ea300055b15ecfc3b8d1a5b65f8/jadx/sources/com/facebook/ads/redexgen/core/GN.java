package com.facebook.ads.redexgen.core;

import android.view.View;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.util.Arrays;

/* loaded from: assets/audience_network.dex */
public class GN implements View.OnClickListener {
    public static byte[] A01;
    public final /* synthetic */ C2074fu A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 42);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{39, 34, 34, 35, 50, 39, 47, 42, 53};
    }

    public GN(C2074fu c2074fu) {
        this.A00 = c2074fu;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        boolean z;
        GT gt;
        if (BQ.A02(this)) {
            return;
        }
        try {
            z = this.A00.A0P;
            if (z) {
                return;
            }
            gt = this.A00.A0N;
            gt.A03(A00(0, 9, FacebookMediationAdapter.ERROR_MAPPING_NATIVE_ASSETS));
        } catch (Throwable th) {
            BQ.A00(th, this);
        }
    }
}
