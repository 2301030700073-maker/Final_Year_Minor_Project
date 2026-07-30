package com.facebook.ads.redexgen.core;

/* renamed from: com.facebook.ads.redexgen.X.Ku, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1348Ku extends AbstractC1826bs {
    public final /* synthetic */ C1345Kr A00;

    public C1348Ku(C1345Kr c1345Kr) {
        this.A00 = c1345Kr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.core.C9K
    /* renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final void A03(KX kx) {
        float f;
        C1855cL c1855cL;
        HI hi;
        this.A00.A0e(kx);
        f = this.A00.A01;
        c1855cL = this.A00.A0a;
        float duration = (f * c1855cL.getDuration()) + kx.A00();
        hi = this.A00.A0Y;
        hi.ADB(duration);
    }
}
