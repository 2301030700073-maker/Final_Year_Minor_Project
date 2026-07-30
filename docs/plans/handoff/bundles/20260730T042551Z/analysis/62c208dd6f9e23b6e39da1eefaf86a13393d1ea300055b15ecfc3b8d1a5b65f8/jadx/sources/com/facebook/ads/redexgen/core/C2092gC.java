package com.facebook.ads.redexgen.core;

/* renamed from: com.facebook.ads.redexgen.X.gC, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2092gC implements CG {
    public final /* synthetic */ LS A00;

    public C2092gC(LS ls) {
        this.A00 = ls;
    }

    @Override // com.facebook.ads.redexgen.core.CG
    public final void ACi() {
        DQ dq;
        DQ dq2;
        this.A00.A0B = false;
        dq = this.A00.A06;
        if (dq != null) {
            dq2 = this.A00.A06;
            dq2.setToolbarActionMode(this.A00.getCloseButtonStyle());
        }
    }

    @Override // com.facebook.ads.redexgen.core.CG
    public final void AEg(float f) {
        DQ dq;
        DQ dq2;
        dq = this.A00.A06;
        if (dq != null) {
            dq2 = this.A00.A06;
            dq2.setProgressImmediate(100.0f * (1.0f - (f / this.A00.getAdInfo().A0I().A00())));
        }
    }
}
