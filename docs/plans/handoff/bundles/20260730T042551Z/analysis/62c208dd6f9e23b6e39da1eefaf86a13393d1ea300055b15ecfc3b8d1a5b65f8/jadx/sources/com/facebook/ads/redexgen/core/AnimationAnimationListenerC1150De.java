package com.facebook.ads.redexgen.core;

import android.os.Handler;
import android.view.animation.Animation;

/* renamed from: com.facebook.ads.redexgen.X.De, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class AnimationAnimationListenerC1150De implements Animation.AnimationListener {
    public final /* synthetic */ C09886e A00;
    public final /* synthetic */ AbstractC2184hh A01;
    public final /* synthetic */ AbstractC2184hh A02;

    public AnimationAnimationListenerC1150De(AbstractC2184hh abstractC2184hh, AbstractC2184hh abstractC2184hh2, C09886e c09886e) {
        this.A01 = abstractC2184hh;
        this.A02 = abstractC2184hh2;
        this.A00 = c09886e;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationEnd(Animation animation) {
        this.A01.A04 = false;
        D3.A0F(this.A02);
        new Handler().postDelayed(new C2187hl(this), 200L);
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationStart(Animation animation) {
    }
}
