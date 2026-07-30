package com.facebook.ads.redexgen.core;

import android.view.View;
import java.util.Arrays;

/* loaded from: assets/audience_network.dex */
public class HH implements View.OnClickListener {
    public static byte[] A01;
    public final /* synthetic */ C1956dz A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 66);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{126, 115, 119, 114, 115, 100};
    }

    public HH(C1956dz c1956dz) {
        this.A00 = c1956dz;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        AbstractC2025f6 abstractC2025f6;
        AbstractC2025f6 abstractC2025f62;
        if (BQ.A02(this)) {
            return;
        }
        try {
            abstractC2025f6 = this.A00.A04;
            if (abstractC2025f6 == null) {
                return;
            }
            abstractC2025f62 = this.A00.A04;
            abstractC2025f62.A1A(A00(0, 6, 84));
        } catch (Throwable th) {
            BQ.A00(th, this);
        }
    }
}
