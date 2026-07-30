package com.google.android.material.appbar;

import android.animation.ValueAnimator;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.appbar.AppBarLayout;

/* renamed from: com.google.android.material.appbar.do, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cdo implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ CoordinatorLayout f10470do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ AppBarLayout.BaseBehavior f10471do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ AppBarLayout f10472do;

    public Cdo(CoordinatorLayout coordinatorLayout, AppBarLayout.BaseBehavior baseBehavior, AppBarLayout appBarLayout) {
        this.f10471do = baseBehavior;
        this.f10470do = coordinatorLayout;
        this.f10472do = appBarLayout;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        this.f10471do.m5656continue(this.f10470do, this.f10472do, intValue);
    }
}
