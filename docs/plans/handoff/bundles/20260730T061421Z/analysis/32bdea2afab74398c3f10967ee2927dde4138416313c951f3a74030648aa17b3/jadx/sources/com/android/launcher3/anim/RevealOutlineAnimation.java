package com.android.launcher3.anim;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.graphics.Outline;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewOutlineProvider;
import com.android.launcher3.anim.RevealOutlineAnimation;
import com.android.launcher3.anim.RoundedRectRevealOutlineProvider;
import com.android.quickstep.fallback.RecentsState;
import java.util.Objects;

/* loaded from: classes.dex */
public abstract class RevealOutlineAnimation extends ViewOutlineProvider {
    public Rect mOutline = new Rect();
    public float mOutlineRadius;

    public ValueAnimator createRevealAnimator(final View view, boolean z) {
        ValueAnimator ofFloat = z ? ValueAnimator.ofFloat(1.0f, RecentsState.NO_OFFSET) : ValueAnimator.ofFloat(RecentsState.NO_OFFSET, 1.0f);
        final float elevation = view.getElevation();
        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.anim.RevealOutlineAnimation.1
            public boolean mIsClippedToOutline;
            public ViewOutlineProvider mOldOutlineProvider;

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                view.setOutlineProvider(this.mOldOutlineProvider);
                view.setClipToOutline(this.mIsClippedToOutline);
                if (RevealOutlineAnimation.this.shouldRemoveElevationDuringAnimation()) {
                    view.setTranslationZ(RecentsState.NO_OFFSET);
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                this.mIsClippedToOutline = view.getClipToOutline();
                this.mOldOutlineProvider = view.getOutlineProvider();
                view.setOutlineProvider(RevealOutlineAnimation.this);
                view.setClipToOutline(true);
                if (RevealOutlineAnimation.this.shouldRemoveElevationDuringAnimation()) {
                    view.setTranslationZ(-elevation);
                }
            }
        });
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: c.a.a.E0.o
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                RevealOutlineAnimation revealOutlineAnimation = RevealOutlineAnimation.this;
                View view2 = view;
                Objects.requireNonNull(revealOutlineAnimation);
                float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                RoundedRectRevealOutlineProvider roundedRectRevealOutlineProvider = (RoundedRectRevealOutlineProvider) revealOutlineAnimation;
                float f = 1.0f - floatValue;
                roundedRectRevealOutlineProvider.mOutlineRadius = (roundedRectRevealOutlineProvider.mEndRadius * floatValue) + (roundedRectRevealOutlineProvider.mStartRadius * f);
                Rect rect = roundedRectRevealOutlineProvider.mOutline;
                Rect rect2 = roundedRectRevealOutlineProvider.mStartRect;
                Rect rect3 = roundedRectRevealOutlineProvider.mEndRect;
                rect.left = (int) ((rect3.left * floatValue) + (rect2.left * f));
                rect.top = (int) ((rect3.top * floatValue) + (rect2.top * f));
                rect.right = (int) ((rect3.right * floatValue) + (rect2.right * f));
                rect.bottom = (int) ((floatValue * rect3.bottom) + (f * rect2.bottom));
                view2.invalidateOutline();
            }
        });
        return ofFloat;
    }

    @Override // android.view.ViewOutlineProvider
    public void getOutline(View view, Outline outline) {
        outline.setRoundRect(this.mOutline, this.mOutlineRadius);
    }

    public abstract boolean shouldRemoveElevationDuringAnimation();
}
