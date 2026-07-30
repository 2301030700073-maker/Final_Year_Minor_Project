package com.facebook.ads.redexgen.core;

import android.view.View;
import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.Hf, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class ViewOnClickListenerC1255Hf implements View.OnClickListener {
    public static byte[] A01;
    public final /* synthetic */ C1336Ki A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 64);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{-22, -25, -29, -26, -25, -12};
    }

    public ViewOnClickListenerC1255Hf(C1336Ki c1336Ki) {
        this.A00 = c1336Ki;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (BQ.A02(this)) {
            return;
        }
        try {
            this.A00.A0J(A00(0, 6, 66));
        } catch (Throwable th) {
            BQ.A00(th, this);
        }
    }
}
