package com.facebook.ads.redexgen.core;

import android.view.View;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.util.Arrays;

/* loaded from: assets/audience_network.dex */
public class H6 implements View.OnClickListener {
    public static byte[] A01;
    public final /* synthetic */ C1345Kr A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 76);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{20, 23, 23, 24, 39, 20, 28, 31, 38};
    }

    public H6(C1345Kr c1345Kr) {
        this.A00 = c1345Kr;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        boolean z;
        GT gt;
        if (BQ.A02(this)) {
            return;
        }
        try {
            z = this.A00.A0K;
            if (z) {
                return;
            }
            gt = this.A00.A0H;
            gt.A03(A00(0, 9, FacebookMediationAdapter.ERROR_REQUIRES_ACTIVITY_CONTEXT));
        } catch (Throwable th) {
            BQ.A00(th, this);
        }
    }
}
