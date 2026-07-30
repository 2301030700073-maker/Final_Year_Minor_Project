package com.facebook.ads.redexgen.core;

/* renamed from: com.facebook.ads.redexgen.X.gM, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2102gM extends BY {
    public final /* synthetic */ FW A00;

    public C2102gM(FW fw) {
        this.A00 = fw;
    }

    @Override // com.facebook.ads.redexgen.core.BY
    public final void A05() {
        Runnable runnable;
        int i;
        this.A00.setPressed(false);
        FW fw = this.A00;
        runnable = this.A00.A09;
        i = this.A00.A08;
        fw.postOnAnimationDelayed(runnable, i);
    }
}
