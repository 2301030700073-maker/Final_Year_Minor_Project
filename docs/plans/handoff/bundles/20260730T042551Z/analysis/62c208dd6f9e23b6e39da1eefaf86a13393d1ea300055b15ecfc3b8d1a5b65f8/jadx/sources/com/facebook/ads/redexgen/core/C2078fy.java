package com.facebook.ads.redexgen.core;

/* renamed from: com.facebook.ads.redexgen.X.fy, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2078fy extends BY {
    public final /* synthetic */ C2074fu A00;

    public C2078fy(C2074fu c2074fu) {
        this.A00 = c2074fu;
    }

    @Override // com.facebook.ads.redexgen.core.BY
    public final void A05() {
        boolean z;
        GT gt;
        z = this.A00.A0d;
        if (!z) {
            gt = this.A00.A0N;
            D3.A0D(1000, gt);
        }
        this.A00.postDelayed(this, 2000L);
    }
}
