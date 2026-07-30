package com.facebook.ads.redexgen.core;

/* renamed from: com.facebook.ads.redexgen.X.cR, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1861cR extends BY {
    public final /* synthetic */ C1860cQ A00;

    public C1861cR(C1860cQ c1860cQ) {
        this.A00 = c1860cQ;
    }

    @Override // com.facebook.ads.redexgen.core.BY
    public final void A05() {
        ID id;
        C1855cL c1855cL;
        AbstractC1831bx abstractC1831bx;
        AbstractC1837c3 abstractC1837c3;
        id = this.A00.A02;
        id.A06();
        c1855cL = this.A00.A03;
        C9J<C9K, C9I> eventBus = c1855cL.getEventBus();
        abstractC1831bx = this.A00.A05;
        abstractC1837c3 = this.A00.A04;
        eventBus.A04(abstractC1831bx, abstractC1837c3);
    }
}
