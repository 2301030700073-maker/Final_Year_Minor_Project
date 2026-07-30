package com.facebook.ads.redexgen.core;

/* renamed from: com.facebook.ads.redexgen.X.eL, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1978eL implements CG {
    public final /* synthetic */ int A00;
    public final /* synthetic */ BY A01;
    public final /* synthetic */ AbstractC1970eD A02;

    public C1978eL(AbstractC1970eD abstractC1970eD, int i, BY by) {
        this.A02 = abstractC1970eD;
        this.A00 = i;
        this.A01 = by;
    }

    @Override // com.facebook.ads.redexgen.core.CG
    public final void ACi() {
        this.A01.run();
    }

    @Override // com.facebook.ads.redexgen.core.CG
    public final void AEg(float f) {
        this.A02.A08.setProgress(100.0f * (1.0f - (f / this.A00)));
    }
}
