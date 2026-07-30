package com.facebook.ads.redexgen.core;

import android.view.View;
import java.util.Arrays;

/* loaded from: assets/audience_network.dex */
public class HJ implements View.OnClickListener {
    public static byte[] A01;
    public final /* synthetic */ C1344Kq A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 122);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{39, 42, 46, 43, 42, 61};
    }

    public HJ(C1344Kq c1344Kq) {
        this.A00 = c1344Kq;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        AbstractC1217Ft abstractC1217Ft;
        AbstractC1217Ft abstractC1217Ft2;
        if (BQ.A02(this)) {
            return;
        }
        try {
            abstractC1217Ft = this.A00.A00;
            if (abstractC1217Ft == null) {
                return;
            }
            abstractC1217Ft2 = this.A00.A00;
            abstractC1217Ft2.A18(A00(0, 6, 53));
        } catch (Throwable th) {
            BQ.A00(th, this);
        }
    }
}
