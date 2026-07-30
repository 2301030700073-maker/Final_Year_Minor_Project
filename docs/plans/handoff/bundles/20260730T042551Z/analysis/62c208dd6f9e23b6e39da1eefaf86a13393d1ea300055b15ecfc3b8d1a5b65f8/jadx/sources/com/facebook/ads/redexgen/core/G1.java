package com.facebook.ads.redexgen.core;

import android.view.View;
import java.util.Arrays;

/* loaded from: assets/audience_network.dex */
public class G1 implements View.OnClickListener {
    public static byte[] A01;
    public final /* synthetic */ LS A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 25);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{95, 64, 77, 76, 70};
    }

    public G1(LS ls) {
        this.A00 = ls;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (BQ.A02(this)) {
            return;
        }
        try {
            this.A00.getCtaButton().A0A(A00(0, 5, 48));
        } catch (Throwable th) {
            BQ.A00(th, this);
        }
    }
}
