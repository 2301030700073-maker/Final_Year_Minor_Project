package com.android.launcher3.anim;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewGroup;

/* loaded from: classes.dex */
public class AlphaUpdateListener extends AnimationSuccessListener implements ValueAnimator.AnimatorUpdateListener {
    public View mView;

    public AlphaUpdateListener(View view) {
        this.mView = view;
    }

    public static void updateVisibility(View view) {
        if (view.getAlpha() < 0.01f && view.getVisibility() != 4) {
            view.setVisibility(4);
            return;
        }
        if (view.getAlpha() <= 0.01f || view.getVisibility() == 0) {
            return;
        }
        if (!(view instanceof ViewGroup)) {
            view.setVisibility(0);
            return;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int descendantFocusability = viewGroup.getDescendantFocusability();
        viewGroup.setDescendantFocusability(393216);
        viewGroup.setVisibility(0);
        viewGroup.setDescendantFocusability(descendantFocusability);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        this.mView.setVisibility(0);
    }

    @Override // com.android.launcher3.anim.AnimationSuccessListener
    public void onAnimationSuccess(Animator animator) {
        updateVisibility(this.mView);
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        updateVisibility(this.mView);
    }
}
