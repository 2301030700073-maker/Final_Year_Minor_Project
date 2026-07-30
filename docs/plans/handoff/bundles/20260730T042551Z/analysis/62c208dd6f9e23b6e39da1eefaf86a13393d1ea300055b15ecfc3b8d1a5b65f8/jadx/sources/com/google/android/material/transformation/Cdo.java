package com.google.android.material.transformation;

import android.animation.ValueAnimator;
import android.view.View;

/* renamed from: com.google.android.material.transformation.do, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cdo implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ View f11794do;

    public Cdo(View view) {
        this.f11794do = view;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.f11794do.invalidate();
    }
}
