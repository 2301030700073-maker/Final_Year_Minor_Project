package com.facebook.ads.redexgen.core;

import android.animation.ValueAnimator;

/* loaded from: assets/audience_network.dex */
public class HA implements ValueAnimator.AnimatorUpdateListener {
    public final /* synthetic */ C1345Kr A00;

    public HA(C1345Kr c1345Kr) {
        this.A00 = c1345Kr;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        C1855cL c1855cL;
        C1855cL c1855cL2;
        Integer num = (Integer) valueAnimator.getAnimatedValue();
        c1855cL = this.A00.A0a;
        c1855cL.getLayoutParams().height = num.intValue();
        c1855cL2 = this.A00.A0a;
        c1855cL2.requestLayout();
    }
}
