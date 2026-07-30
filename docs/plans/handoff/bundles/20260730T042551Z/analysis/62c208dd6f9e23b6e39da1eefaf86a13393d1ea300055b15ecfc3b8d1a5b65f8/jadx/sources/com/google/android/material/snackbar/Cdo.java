package com.google.android.material.snackbar;

import android.animation.ValueAnimator;

/* renamed from: com.google.android.material.snackbar.do, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cdo implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ BaseTransientBottomBar f11501do;

    public Cdo(BaseTransientBottomBar baseTransientBottomBar) {
        this.f11501do = baseTransientBottomBar;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.f11501do.f11464do.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }
}
