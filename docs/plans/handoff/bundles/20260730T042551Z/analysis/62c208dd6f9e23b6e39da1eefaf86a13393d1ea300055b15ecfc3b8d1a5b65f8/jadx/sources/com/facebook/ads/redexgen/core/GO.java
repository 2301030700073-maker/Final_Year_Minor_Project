package com.facebook.ads.redexgen.core;

import android.view.View;
import java.util.Arrays;

/* loaded from: assets/audience_network.dex */
public class GO implements View.OnClickListener {
    public static byte[] A01;
    public final /* synthetic */ C2074fu A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 65);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{-58, -63, -63, -66, -76, -77, -60};
    }

    public GO(C2074fu c2074fu) {
        this.A00 = c2074fu;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        boolean z;
        GT gt;
        if (BQ.A02(this)) {
            return;
        }
        try {
            z = this.A00.A0P;
            if (z) {
                return;
            }
            gt = this.A00.A0N;
            gt.A03(A00(0, 7, 17));
        } catch (Throwable th) {
            BQ.A00(th, this);
        }
    }
}
