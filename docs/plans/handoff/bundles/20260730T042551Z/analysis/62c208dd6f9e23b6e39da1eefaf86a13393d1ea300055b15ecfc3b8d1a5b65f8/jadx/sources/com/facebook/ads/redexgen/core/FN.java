package com.facebook.ads.redexgen.core;

import android.animation.ObjectAnimator;
import java.util.Arrays;

/* loaded from: assets/audience_network.dex */
public class FN implements Runnable {
    public static byte[] A01;
    public final /* synthetic */ C1355Lb A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 45);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{12, 1, 29, 5, 12};
    }

    public FN(C1355Lb c1355Lb) {
        this.A00 = c1355Lb;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String A00 = A00(0, 5, 64);
        if (BQ.A02(this)) {
            return;
        }
        try {
            this.A00.A0O.A0F().AJm();
            ObjectAnimator.ofFloat(this.A00.A0L, A00, 1.0f, 0.0f).setDuration(100L).start();
            ObjectAnimator.ofFloat(this.A00.A0K, A00, 1.0f, 0.0f).setDuration(100L).start();
            ObjectAnimator duration = ObjectAnimator.ofFloat(((FH) this.A00).A09, A00, 1.0f, 0.0f).setDuration(100L);
            duration.addListener(new FM(this));
            duration.start();
        } catch (Throwable th) {
            BQ.A00(th, this);
        }
    }
}
