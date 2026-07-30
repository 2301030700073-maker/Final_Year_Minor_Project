package com.facebook.ads.redexgen.core;

/* renamed from: com.facebook.ads.redexgen.X.gV, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2110gV extends BY {
    public final /* synthetic */ FW A00;

    public C2110gV(FW fw) {
        this.A00 = fw;
    }

    @Override // com.facebook.ads.redexgen.core.BY
    public final void A05() {
        Runnable runnable;
        int i;
        if (this.A00.isPressed()) {
            FW fw = this.A00;
            i = this.A00.A08;
            fw.postDelayed(this, i);
        } else {
            this.A00.setPressed(true);
            FW fw2 = this.A00;
            runnable = this.A00.A0A;
            fw2.postOnAnimationDelayed(runnable, 250L);
        }
    }
}
