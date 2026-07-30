package com.facebook.ads.redexgen.core;

import android.view.View;
import java.util.Arrays;

/* loaded from: assets/audience_network.dex */
public class G0 implements View.OnClickListener {
    public static byte[] A01;
    public final /* synthetic */ LS A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 93);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{-5, -18, -23, -22, -12};
    }

    public G0(LS ls) {
        this.A00 = ls;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (BQ.A02(this)) {
            return;
        }
        try {
            this.A00.getCtaButton().A0A(A00(0, 5, 40));
        } catch (Throwable th) {
            BQ.A00(th, this);
        }
    }
}
