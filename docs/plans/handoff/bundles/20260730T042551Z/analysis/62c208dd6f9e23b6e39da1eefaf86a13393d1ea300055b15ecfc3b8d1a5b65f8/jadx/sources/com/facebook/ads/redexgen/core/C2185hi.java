package com.facebook.ads.redexgen.core;

/* renamed from: com.facebook.ads.redexgen.X.hi, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2185hi implements CG {
    public final /* synthetic */ int A00;
    public final /* synthetic */ AbstractC2184hh A01;

    public C2185hi(AbstractC2184hh abstractC2184hh, int i) {
        this.A01 = abstractC2184hh;
        this.A00 = i;
    }

    @Override // com.facebook.ads.redexgen.core.CG
    public final void ACi() {
        DR dr;
        this.A01.A03 = false;
        this.A01.A0V();
        this.A01.A0E.setToolbarActionMode(this.A01.getCloseButtonStyle());
        if (this.A01.A07 && this.A01.A06 != null) {
            this.A01.A06.A05();
            dr = this.A01.A09;
            dr.A4Z(new C2158hH().A6b());
        }
    }

    @Override // com.facebook.ads.redexgen.core.CG
    public final void AEg(float f) {
        this.A01.A0E.setProgress(100.0f * (1.0f - (f / this.A00)));
    }
}
