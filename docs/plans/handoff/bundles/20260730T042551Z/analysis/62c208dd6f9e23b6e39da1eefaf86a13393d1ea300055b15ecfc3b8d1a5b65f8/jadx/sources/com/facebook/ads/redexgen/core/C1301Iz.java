package com.facebook.ads.redexgen.core;

import android.animation.ValueAnimator;
import android.view.View;

/* renamed from: com.facebook.ads.redexgen.X.Iz, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1301Iz implements ValueAnimator.AnimatorUpdateListener {
    public final /* synthetic */ View A00;
    public final /* synthetic */ C1767as A01;

    public C1301Iz(C1767as c1767as, View view) {
        this.A01 = c1767as;
        this.A00 = view;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        int value = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        this.A00.setTranslationY(value);
    }
}
