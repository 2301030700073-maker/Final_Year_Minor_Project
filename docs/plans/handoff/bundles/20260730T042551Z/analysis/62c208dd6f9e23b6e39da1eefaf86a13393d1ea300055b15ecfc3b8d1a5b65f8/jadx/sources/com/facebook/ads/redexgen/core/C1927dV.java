package com.facebook.ads.redexgen.core;

/* renamed from: com.facebook.ads.redexgen.X.dV, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1927dV implements HT {
    public final /* synthetic */ C1337Kj A00;

    public C1927dV(C1337Kj c1337Kj) {
        this.A00 = c1337Kj;
    }

    @Override // com.facebook.ads.redexgen.core.HT
    public final void A9b() {
        AbstractC1217Ft abstractC1217Ft;
        AbstractC1217Ft abstractC1217Ft2;
        abstractC1217Ft = this.A00.A03;
        if (abstractC1217Ft instanceof LS) {
            abstractC1217Ft2 = this.A00.A03;
            ((LS) abstractC1217Ft2).A1F();
            AF.A02(AE.A0e, null, ((AbstractC1970eD) this.A00).A02.A1g(), ((AbstractC1970eD) this.A00).A04.A0A());
        }
    }

    @Override // com.facebook.ads.redexgen.core.HT
    public final void AJ5() {
        AbstractC1217Ft abstractC1217Ft;
        AbstractC1217Ft abstractC1217Ft2;
        C1329Kb c1329Kb;
        abstractC1217Ft = this.A00.A03;
        if (abstractC1217Ft instanceof LS) {
            abstractC1217Ft2 = this.A00.A03;
            c1329Kb = this.A00.A0M;
            ((LS) abstractC1217Ft2).A1H(c1329Kb);
            AF.A02(AE.A0e, null, ((AbstractC1970eD) this.A00).A02.A1g(), ((AbstractC1970eD) this.A00).A04.A0A());
        }
        this.A00.A0g();
    }

    @Override // com.facebook.ads.redexgen.core.HT
    public final void AJJ() {
        AbstractC1217Ft abstractC1217Ft;
        AbstractC1217Ft abstractC1217Ft2;
        this.A00.A0a();
        abstractC1217Ft = this.A00.A03;
        if (abstractC1217Ft instanceof LS) {
            abstractC1217Ft2 = this.A00.A03;
            ((LS) abstractC1217Ft2).getAdDetailsView().setVisibility(8);
        }
    }
}
