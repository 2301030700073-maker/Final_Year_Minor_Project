package com.facebook.ads.redexgen.core;

/* loaded from: assets/audience_network.dex */
public class KM extends AbstractC1829bv {
    public final /* synthetic */ C1805bX A00;

    public KM(C1805bX c1805bX) {
        this.A00 = c1805bX;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.core.C9K
    /* renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final void A03(C1830bw c1830bw) {
        boolean z;
        EnumC1281If enumC1281If;
        boolean z2;
        z = this.A00.A03;
        if (!z) {
            return;
        }
        enumC1281If = this.A00.A02;
        if (enumC1281If != EnumC1281If.A02) {
            z2 = this.A00.A09;
            if (!z2) {
                this.A00.A06(0, 8);
                return;
            }
        }
        this.A00.A02 = null;
        this.A00.A05();
    }
}
