package com.google.android.material.snackbar;

import android.animation.ValueAnimator;

/* renamed from: com.google.android.material.snackbar.if, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cif implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ BaseTransientBottomBar f11513do;

    public Cif(BaseTransientBottomBar baseTransientBottomBar) {
        this.f11513do = baseTransientBottomBar;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        BaseTransientBottomBar baseTransientBottomBar = this.f11513do;
        baseTransientBottomBar.f11464do.setScaleX(floatValue);
        baseTransientBottomBar.f11464do.setScaleY(floatValue);
    }
}
