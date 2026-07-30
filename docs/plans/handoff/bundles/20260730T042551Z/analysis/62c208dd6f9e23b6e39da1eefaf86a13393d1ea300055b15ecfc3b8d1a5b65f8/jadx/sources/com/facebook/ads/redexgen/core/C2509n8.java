package com.facebook.ads.redexgen.core;

import com.facebook.ads.internal.protocol.AdErrorType;

/* renamed from: com.facebook.ads.redexgen.X.n8, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2509n8 implements C7I {
    public final /* synthetic */ int A00;
    public final /* synthetic */ N5 A01;
    public final /* synthetic */ N5 A02;
    public final /* synthetic */ C10558u A03;

    public C2509n8(N5 n5, int i, C10558u c10558u, N5 n52) {
        this.A01 = n5;
        this.A00 = i;
        this.A03 = c10558u;
        this.A02 = n52;
    }

    @Override // com.facebook.ads.redexgen.core.C7I
    public final void ACF() {
        this.A01.A0C(this.A00, this.A03);
    }

    @Override // com.facebook.ads.redexgen.core.C7I
    public final void ACG() {
        C2B c2b;
        c2b = this.A01.A00;
        c2b.ADc(this.A02, C1091Ag.A00(AdErrorType.NO_FILL));
    }
}
