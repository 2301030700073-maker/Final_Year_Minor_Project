package com.facebook.ads.redexgen.core;

/* renamed from: com.facebook.ads.redexgen.X.bc, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1810bc extends C9K<KX> {
    public final /* synthetic */ C1809bb A00;

    public C1810bc(C1809bb c1809bb) {
        this.A00 = c1809bb;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.core.C9K
    /* renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final void A03(KX kx) {
        C1855cL c1855cL;
        C1855cL c1855cL2;
        C1855cL c1855cL3;
        String A02;
        c1855cL = this.A00.A00;
        if (c1855cL == null) {
            return;
        }
        C1809bb c1809bb = this.A00;
        C1809bb c1809bb2 = this.A00;
        c1855cL2 = this.A00.A00;
        int duration = c1855cL2.getDuration();
        c1855cL3 = this.A00.A00;
        A02 = c1809bb2.A02(duration - c1855cL3.getCurrentPositionInMillis());
        c1809bb.setText(A02);
    }

    @Override // com.facebook.ads.redexgen.core.C9K
    public final Class<KX> A01() {
        return KX.class;
    }
}
