package com.facebook.ads.redexgen.core;

import com.facebook.ads.AdError;

/* renamed from: com.facebook.ads.redexgen.X.mS, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2467mS implements AnonymousClass33 {
    public final /* synthetic */ C09042v A00;

    public C2467mS(C09042v c09042v) {
        this.A00 = c09042v;
    }

    @Override // com.facebook.ads.redexgen.core.AnonymousClass33
    public final void AET(AdError adError) {
        InterfaceC09032u interfaceC09032u;
        interfaceC09032u = this.A00.A04;
        interfaceC09032u.AC8(AdError.CACHE_ERROR);
    }

    @Override // com.facebook.ads.redexgen.core.AnonymousClass33
    public final void AEU() {
        InterfaceC09032u interfaceC09032u;
        interfaceC09032u = this.A00.A04;
        interfaceC09032u.AC9();
    }
}
