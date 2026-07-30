package com.facebook.ads.redexgen.core;

import android.R;

/* renamed from: com.facebook.ads.redexgen.X.hl, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2187hl extends BY {
    public final /* synthetic */ AnimationAnimationListenerC1150De A00;

    public C2187hl(AnimationAnimationListenerC1150De animationAnimationListenerC1150De) {
        this.A00 = animationAnimationListenerC1150De;
    }

    @Override // com.facebook.ads.redexgen.core.BY
    public final void A05() {
        this.A00.A00.finish(3);
        this.A00.A00.A05().overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
    }
}
