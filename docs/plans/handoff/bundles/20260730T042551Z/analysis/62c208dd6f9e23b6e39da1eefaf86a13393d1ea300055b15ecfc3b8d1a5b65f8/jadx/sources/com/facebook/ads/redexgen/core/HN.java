package com.facebook.ads.redexgen.core;

import android.view.View;
import java.util.Arrays;

/* loaded from: assets/audience_network.dex */
public class HN implements View.OnClickListener {
    public static byte[] A01;
    public final /* synthetic */ C1337Kj A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 41);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{89, 84, 80, 85, 84, 67};
    }

    public HN(C1337Kj c1337Kj) {
        this.A00 = c1337Kj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        AbstractC1217Ft abstractC1217Ft;
        AbstractC1217Ft abstractC1217Ft2;
        if (BQ.A02(this)) {
            return;
        }
        try {
            abstractC1217Ft = this.A00.A03;
            if (abstractC1217Ft == null) {
                return;
            }
            abstractC1217Ft2 = this.A00.A03;
            abstractC1217Ft2.A18(A00(0, 6, 24));
        } catch (Throwable th) {
            BQ.A00(th, this);
        }
    }
}
