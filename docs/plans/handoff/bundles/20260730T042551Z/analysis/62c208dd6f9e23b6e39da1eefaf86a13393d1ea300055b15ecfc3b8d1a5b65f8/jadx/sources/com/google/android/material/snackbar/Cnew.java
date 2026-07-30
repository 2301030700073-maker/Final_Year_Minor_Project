package com.google.android.material.snackbar;

import android.animation.ValueAnimator;
import defpackage.C0166Dh;

/* renamed from: com.google.android.material.snackbar.new, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cnew implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ BaseTransientBottomBar f11514do;

    public Cnew(BaseTransientBottomBar baseTransientBottomBar) {
        this.f11514do = baseTransientBottomBar;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        C0166Dh c0166Dh = BaseTransientBottomBar.f11452do;
        this.f11514do.f11464do.setTranslationY(intValue);
    }
}
