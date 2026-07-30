package com.facebook.ads.redexgen.core;

import android.view.View;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.util.Arrays;

/* loaded from: assets/audience_network.dex */
public class I6 implements View.OnClickListener {
    public static byte[] A01;
    public final /* synthetic */ C1872cc A00;

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
        A01 = new byte[]{56, 51, 57, 62, 60, 47, 57, 46};
    }

    public I6(C1872cc c1872cc) {
        this.A00 = c1872cc;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        ViewOnClickListenerC2111gW viewOnClickListenerC2111gW;
        ViewOnClickListenerC2111gW viewOnClickListenerC2111gW2;
        if (BQ.A02(this)) {
            return;
        }
        try {
            viewOnClickListenerC2111gW = this.A00.A02;
            if (viewOnClickListenerC2111gW == null) {
                return;
            }
            viewOnClickListenerC2111gW2 = this.A00.A02;
            viewOnClickListenerC2111gW2.A0A(A00(0, 8, FacebookMediationAdapter.ERROR_REQUIRES_ACTIVITY_CONTEXT));
        } catch (Throwable th) {
            BQ.A00(th, this);
        }
    }
}
