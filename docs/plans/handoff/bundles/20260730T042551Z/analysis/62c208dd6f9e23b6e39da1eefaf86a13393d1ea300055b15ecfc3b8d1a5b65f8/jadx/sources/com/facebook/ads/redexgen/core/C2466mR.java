package com.facebook.ads.redexgen.core;

import com.facebook.ads.AdError;

/* renamed from: com.facebook.ads.redexgen.X.mR, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2466mR implements C7I {
    public final /* synthetic */ C09042v A00;

    public C2466mR(C09042v c09042v) {
        this.A00 = c09042v;
    }

    @Override // com.facebook.ads.redexgen.core.C7I
    public final void ACF() {
        InterfaceC09032u interfaceC09032u;
        interfaceC09032u = this.A00.A04;
        interfaceC09032u.AC9();
    }

    @Override // com.facebook.ads.redexgen.core.C7I
    public final void ACG() {
        InterfaceC09032u interfaceC09032u;
        interfaceC09032u = this.A00.A04;
        interfaceC09032u.AC8(AdError.CACHE_ERROR);
    }
}
