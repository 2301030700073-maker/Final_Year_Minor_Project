package com.facebook.ads.redexgen.core;

/* renamed from: com.facebook.ads.redexgen.X.mf, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2480mf implements FA {
    public final /* synthetic */ int A00;
    public final /* synthetic */ AbstractC2479me A01;
    public final /* synthetic */ C2238ie A02;

    public C2480mf(AbstractC2479me abstractC2479me, int i, C2238ie c2238ie) {
        this.A01 = abstractC2479me;
        this.A00 = i;
        this.A02 = c2238ie;
    }

    @Override // com.facebook.ads.redexgen.core.FA
    public final void ADM(boolean z) {
        JK jk;
        if (this.A00 == 0) {
            C2238ie c2238ie = this.A02;
            jk = this.A01.A04;
            c2238ie.A1c(jk);
        }
        this.A02.A1f(z, true);
    }
}
