package com.facebook.ads.redexgen.core;

import android.view.animation.Animation;

/* renamed from: com.facebook.ads.redexgen.X.ds, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1949ds extends D2 {
    public final /* synthetic */ C1943dl A00;

    public C1949ds(C1943dl c1943dl) {
        this.A00 = c1943dl;
    }

    @Override // com.facebook.ads.redexgen.core.D2, android.view.animation.Animation.AnimationListener
    public final void onAnimationEnd(Animation animation) {
        D3.A0F(this.A00.A01);
        this.A00.A00.ADa();
    }
}
