package com.android.launcher3.anim;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.util.Property;

/* loaded from: classes.dex */
public class PropertyResetListener extends AnimatorListenerAdapter {
    public Property mPropertyToReset;
    public Object mResetToValue;

    public PropertyResetListener(Property property, Object obj) {
        this.mPropertyToReset = property;
        this.mResetToValue = obj;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.mPropertyToReset.set(((ObjectAnimator) animator).getTarget(), this.mResetToValue);
    }
}
