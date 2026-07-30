package com.facebook.ads.redexgen.core;

/* renamed from: com.facebook.ads.redexgen.X.kQ, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2347kQ extends BL {
    public final /* synthetic */ C2346kP A00;

    public C2347kQ(C2346kP c2346kP) {
        this.A00 = c2346kP;
    }

    @Override // com.facebook.ads.redexgen.core.BL
    public final void A01() {
        AnonymousClass72 anonymousClass72;
        AnonymousClass72 anonymousClass722;
        anonymousClass72 = this.A00.A01.A00;
        if (anonymousClass72.A00() != null) {
            anonymousClass722 = this.A00.A01.A00;
            anonymousClass722.A00().onAdsLoaded();
        }
    }
}
