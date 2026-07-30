package com.facebook.ads.redexgen.core;

import com.google.android.gms.ads.RequestConfiguration;

/* renamed from: com.facebook.ads.redexgen.X.eo, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2007eo implements CG {
    public static String[] A01 = {RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "vSeS2rx23zUd4am5Wdo", "UtlZDzt7", "dNEruPHPdkyj182N7GwirLXq8Db2eecB", "b1VGcsOgsecYYY6uN1zNid8VodysKnsR", "yg", "RqC1uxvv784HDfNbZXUq5U9jCsQW0kUg", "5jFX4DLWV5nBObgEbVC73yk5ncCVY3Kv"};
    public final /* synthetic */ L1 A00;

    public C2007eo(L1 l1) {
        this.A00 = l1;
    }

    @Override // com.facebook.ads.redexgen.core.CG
    public final void ACi() {
        HI hi;
        int i;
        HI hi2;
        hi = this.A00.A0F;
        i = this.A00.A0A;
        hi.ACr(i);
        hi2 = this.A00.A0F;
        hi2.ACS();
    }

    @Override // com.facebook.ads.redexgen.core.CG
    public final void AEg(float f) {
        int i;
        boolean z;
        C1855cL c1855cL;
        int duration;
        boolean z2;
        int i2;
        HI hi;
        i = this.A00.A0A;
        float f2 = i - f;
        z = this.A00.A0V;
        if (z) {
            duration = 0;
        } else {
            c1855cL = this.A00.A0I;
            duration = c1855cL.getDuration();
        }
        float f3 = f2 + duration;
        L1 l1 = this.A00;
        if (A01[4].charAt(2) != 'V') {
            throw new RuntimeException();
        }
        A01[7] = "iUY2DHYRiluzyO05ci2O9gzQrrq6c2GK";
        z2 = l1.A0V;
        if (!z2) {
            i2 = this.A00.A09;
        } else {
            L1 l12 = this.A00;
            String[] strArr = A01;
            if (strArr[5].length() != strArr[1].length()) {
                A01[4] = "jZVNpY3PkhFJgbxs6TiKD4bRtw9FJmgD";
                i2 = l12.A0A;
            } else {
                throw new RuntimeException();
            }
        }
        float seenTime = i2;
        float f4 = f3 / seenTime;
        hi = this.A00.A0F;
        hi.AJi(f4);
    }
}
