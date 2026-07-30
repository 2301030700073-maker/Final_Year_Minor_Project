package com.facebook.ads.redexgen.core;

/* renamed from: com.facebook.ads.redexgen.X.kR, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2348kR extends BL {
    public final /* synthetic */ C2345kO A00;
    public final /* synthetic */ C1091Ag A01;

    public C2348kR(C2345kO c2345kO, C1091Ag c1091Ag) {
        this.A00 = c2345kO;
        this.A01 = c1091Ag;
    }

    @Override // com.facebook.ads.redexgen.core.BL
    public final void A01() {
        AnonymousClass72 anonymousClass72;
        AnonymousClass72 anonymousClass722;
        anonymousClass72 = this.A00.A00;
        if (anonymousClass72.A00() != null) {
            anonymousClass722 = this.A00.A00;
            anonymousClass722.A00().onAdError(C8.A00(this.A01));
        }
    }
}
