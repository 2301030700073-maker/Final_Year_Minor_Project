package com.facebook.ads.redexgen.core;

/* renamed from: com.facebook.ads.redexgen.X.Fq, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public abstract class AbstractC1214Fq {
    public static float A00(C2T c2t) {
        int height = c2t.A0F().A01();
        int width = c2t.A0F().A00();
        if (width > 0) {
            return height / width;
        }
        return -1.0f;
    }

    public static int A01(double d) {
        int availableWidth = (int) ((CO.A00().widthPixels - (AbstractC1217Ft.A07 * 2)) / d);
        return availableWidth;
    }

    public static int A02(int bottomMargin) {
        int ctaMargin = D3.A01(16);
        int ctaTextHeight = FW.A0D;
        int ctaSpacing = ctaTextHeight * 2;
        int ctaTextHeight2 = AbstractC1217Ft.A07;
        int ctaMargin2 = ctaMargin + ctaSpacing + (ctaTextHeight2 * 2);
        int ctaTextHeight3 = CO.A00().heightPixels;
        return (ctaTextHeight3 - bottomMargin) - ctaMargin2;
    }

    public static ViewOnClickListenerC1213Fp A03(ViewOnClickListenerC2111gW viewOnClickListenerC2111gW, String str) {
        return new ViewOnClickListenerC1213Fp(viewOnClickListenerC2111gW, str);
    }

    public static boolean A04(double d) {
        return d < 0.9d;
    }

    public static boolean A05(double d, int i) {
        return A02(i) < A01(d);
    }

    public static boolean A06(int i, int i2, double d) {
        return i == 2 || A05(d, i2);
    }
}
