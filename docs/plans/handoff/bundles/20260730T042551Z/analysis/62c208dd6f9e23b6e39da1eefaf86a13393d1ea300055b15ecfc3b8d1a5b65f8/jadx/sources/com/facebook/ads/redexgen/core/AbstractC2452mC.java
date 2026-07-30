package com.facebook.ads.redexgen.core;

/* renamed from: com.facebook.ads.redexgen.X.mC, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public abstract class AbstractC2452mC implements C2I {
    public C2238ie A00;

    public final void A00(C2238ie c2238ie) {
        this.A00 = c2238ie;
    }

    @Override // com.facebook.ads.redexgen.core.C2I
    public final void AEA(C2496mv c2496mv) {
        if (this.A00 != null && this.A00.A16() != null) {
            this.A00.A16().AC6();
        }
    }

    @Override // com.facebook.ads.redexgen.core.C2I
    public final void AEC(C2496mv c2496mv) {
    }

    @Override // com.facebook.ads.redexgen.core.C2I
    public final void AEE(C2496mv c2496mv, C1091Ag c1091Ag) {
    }
}
