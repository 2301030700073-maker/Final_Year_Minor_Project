package com.heinrichreimersoftware.materialintro.view;

import android.animation.ValueAnimator;

/* renamed from: com.heinrichreimersoftware.materialintro.view.if, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cif implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ InkPageIndicator f12226do;

    public Cif(InkPageIndicator inkPageIndicator) {
        this.f12226do = inkPageIndicator;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        InkPageIndicator inkPageIndicator = this.f12226do;
        inkPageIndicator.f12173case = floatValue;
        inkPageIndicator.f12182do.m6379do(inkPageIndicator.f12173case);
        inkPageIndicator.postInvalidateOnAnimation();
    }
}
