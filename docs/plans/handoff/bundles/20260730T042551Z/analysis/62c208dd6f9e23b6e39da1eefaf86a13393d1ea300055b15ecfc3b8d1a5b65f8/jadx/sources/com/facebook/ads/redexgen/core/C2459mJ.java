package com.facebook.ads.redexgen.core;

/* renamed from: com.facebook.ads.redexgen.X.mJ, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2459mJ extends BY {
    public final /* synthetic */ AbstractC2458mI A00;
    public final /* synthetic */ C1091Ag A01;

    public C2459mJ(AbstractC2458mI abstractC2458mI, C1091Ag c1091Ag) {
        this.A00 = abstractC2458mI;
        this.A01 = c1091Ag;
    }

    @Override // com.facebook.ads.redexgen.core.BY
    public final void A05() {
        this.A00.A0B.A0F().A5W(this.A01.A03().getErrorCode(), this.A01.A04());
        if (this.A00.A07 != null) {
            this.A00.A07.A0G(this.A01);
        }
    }
}
