package com.facebook.ads.redexgen.core;

import com.facebook.ads.AdListener;

/* renamed from: com.facebook.ads.redexgen.X.kf, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2362kf extends BL {
    public final /* synthetic */ C2361ke A00;

    public C2362kf(C2361ke c2361ke) {
        this.A00 = c2361ke;
    }

    @Override // com.facebook.ads.redexgen.core.BL
    public final void A01() {
        C09876d c09876d;
        C09876d c09876d2;
        C09876d c09876d3;
        c09876d = this.A00.A01;
        if (c09876d.A06() != null) {
            c09876d2 = this.A00.A01;
            AdListener A06 = c09876d2.A06();
            c09876d3 = this.A00.A01;
            A06.onLoggingImpression(c09876d3.A07());
        }
    }
}
