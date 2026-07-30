package com.facebook.ads.redexgen.core;

import android.animation.ValueAnimator;
import android.view.View;

/* loaded from: assets/audience_network.dex */
public class GH implements ValueAnimator.AnimatorUpdateListener {
    public final /* synthetic */ C2074fu A00;

    public GH(C2074fu c2074fu) {
        this.A00 = c2074fu;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        View view;
        View view2;
        Integer num = (Integer) valueAnimator.getAnimatedValue();
        view = this.A00.A0A;
        view.getLayoutParams().height = num.intValue();
        view2 = this.A00.A0A;
        view2.requestLayout();
    }
}
