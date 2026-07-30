package com.google.android.material.snackbar;

import android.animation.ValueAnimator;
import defpackage.C0166Dh;

/* renamed from: com.google.android.material.snackbar.for, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cfor implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ BaseTransientBottomBar f11503do;

    public Cfor(BaseTransientBottomBar baseTransientBottomBar, int i) {
        this.f11503do = baseTransientBottomBar;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        C0166Dh c0166Dh = BaseTransientBottomBar.f11452do;
        this.f11503do.f11464do.setTranslationY(intValue);
    }
}
