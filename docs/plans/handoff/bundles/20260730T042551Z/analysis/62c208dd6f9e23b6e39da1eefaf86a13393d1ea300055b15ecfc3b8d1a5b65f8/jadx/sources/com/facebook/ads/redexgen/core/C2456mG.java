package com.facebook.ads.redexgen.core;

import com.facebook.ads.internal.protocol.AdErrorType;

/* renamed from: com.facebook.ads.redexgen.X.mG, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2456mG extends BY {
    public final /* synthetic */ C2504n3 A00;
    public final /* synthetic */ AnonymousClass38 A01;
    public final /* synthetic */ C1389Mr A02;

    public C2456mG(C1389Mr c1389Mr, AnonymousClass38 anonymousClass38, C2504n3 c2504n3) {
        this.A02 = c1389Mr;
        this.A01 = anonymousClass38;
        this.A00 = c2504n3;
    }

    @Override // com.facebook.ads.redexgen.core.BY
    public final void A05() {
        this.A02.A0T(this.A01);
        this.A02.A0Q(this.A00);
        this.A02.A00 = null;
        C1091Ag A00 = C1091Ag.A00(AdErrorType.INTERSTITIAL_AD_TIMEOUT);
        this.A02.A0B.A0F().A5W(A00.A03().getErrorCode(), A00.A04());
        this.A02.A07.A0G(A00);
    }
}
