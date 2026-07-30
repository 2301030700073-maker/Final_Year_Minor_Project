package com.facebook.ads.redexgen.core;

import com.facebook.ads.AdListener;

/* renamed from: com.facebook.ads.redexgen.X.kg, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2363kg extends BL {
    public static String[] A01 = {"12g74Y80MldwuLH5Sc5BNMhqIci3y3n7", "gYGMtvDgCappq8Eqx1aX2vuQToh52UHd", "GlXHohOtVJhIOcbHhrFcSUyeAoJlZUN4", "CknPoCaYYZqOx1VHoQWkocTpfCeiqOL0", "IgiYYUSARpIlAyCBMTexeC9bH0PhGiJU", "Cia0Frm0699G8jcollxZnIfMYARIEex0", "Mzdi9MK983UUFZlepuPfFCQdgw1DK7MX", "jSW62lJNNGtUKopGO2HTdr7H5wR53AmM"};
    public final /* synthetic */ C2361ke A00;

    public C2363kg(C2361ke c2361ke) {
        this.A00 = c2361ke;
    }

    @Override // com.facebook.ads.redexgen.core.BL
    public final void A01() {
        C09876d c09876d;
        C09876d c09876d2;
        C09876d c09876d3;
        c09876d = this.A00.A01;
        if (c09876d.A06() != null) {
            c09876d2 = this.A00.A01;
            String[] strArr = A01;
            if (strArr[3].charAt(29) == strArr[0].charAt(29)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A01;
            strArr2[3] = "nnCrEA10h1A2hd08C5n1xIwFCKPiTwdC";
            strArr2[0] = "49SRRBhRmQihygS20ldMlh5Gkuzwxt90";
            AdListener A06 = c09876d2.A06();
            c09876d3 = this.A00.A01;
            A06.onAdClicked(c09876d3.A07());
        }
    }
}
