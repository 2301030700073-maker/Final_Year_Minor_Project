package com.facebook.ads.redexgen.core;

import android.view.View;
import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.Gc, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class ViewOnClickListenerC1226Gc implements View.OnClickListener {
    public static byte[] A01;
    public final /* synthetic */ LK A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 59);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{36, 23, 18, 19, 29};
    }

    public ViewOnClickListenerC1226Gc(LK lk) {
        this.A00 = lk;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (BQ.A02(this)) {
            return;
        }
        try {
            this.A00.getCtaButton().A0A(A00(0, 5, 115));
        } catch (Throwable th) {
            BQ.A00(th, this);
        }
    }
}
