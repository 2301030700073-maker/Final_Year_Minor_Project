package com.facebook.ads.redexgen.core;

import android.view.View;
import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.Hx, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class ViewOnClickListenerC1273Hx implements View.OnClickListener {
    public static byte[] A01;
    public final /* synthetic */ C1275Hz A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 62);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{25, 22, 18, 21, 22, 35};
    }

    public ViewOnClickListenerC1273Hx(C1275Hz c1275Hz) {
        this.A00 = c1275Hz;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        ViewOnClickListenerC2111gW viewOnClickListenerC2111gW;
        ViewOnClickListenerC2111gW viewOnClickListenerC2111gW2;
        if (BQ.A02(this)) {
            return;
        }
        try {
            viewOnClickListenerC2111gW = this.A00.A0b;
            if (viewOnClickListenerC2111gW == null) {
                return;
            }
            viewOnClickListenerC2111gW2 = this.A00.A0b;
            viewOnClickListenerC2111gW2.A0A(A00(0, 6, 115));
        } catch (Throwable th) {
            BQ.A00(th, this);
        }
    }
}
