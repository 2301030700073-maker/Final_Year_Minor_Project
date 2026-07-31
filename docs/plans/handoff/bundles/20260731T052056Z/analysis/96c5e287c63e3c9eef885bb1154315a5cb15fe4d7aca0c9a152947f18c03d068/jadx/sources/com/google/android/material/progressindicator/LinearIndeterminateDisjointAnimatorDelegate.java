package com.google.android.material.progressindicator;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.view.animation.Interpolator;
import androidx.appcompat.view.menu.BaseMenuWrapper;
import androidx.recyclerview.widget.RecyclerView;
import androidx.transition.ViewUtils;
import androidx.vectordrawable.graphics.drawable.AndroidResources;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat$AnimationCallback;
import com.google.android.material.checkbox.MaterialCheckBox;
import com.google.android.material.progressindicator.DrawingDelegate;
import java.util.ArrayList;
import java.util.Iterator;
import org.wikipedia.R;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LinearIndeterminateDisjointAnimatorDelegate extends BaseMenuWrapper {
    public float animationFraction;
    public ObjectAnimator animator;
    public Animatable2Compat$AnimationCallback animatorCompleteCallback;
    public final LinearProgressIndicatorSpec baseSpec;
    public ObjectAnimator completeEndAnimator;
    public boolean dirtyColors;
    public int indicatorColorIndex;
    public final Interpolator[] interpolatorArray;
    public static final int[] DURATION_TO_MOVE_SEGMENT_ENDS = {533, 567, 850, 750};
    public static final int[] DELAY_TO_MOVE_SEGMENT_ENDS = {1267, 1000, 333, 0};
    public static final ViewUtils.AnonymousClass1 ANIMATION_FRACTION = new ViewUtils.AnonymousClass1(Float.class, "animationFraction", 15);

    public LinearIndeterminateDisjointAnimatorDelegate(Context context, LinearProgressIndicatorSpec linearProgressIndicatorSpec) {
        super(2);
        this.indicatorColorIndex = 0;
        this.animatorCompleteCallback = null;
        this.baseSpec = linearProgressIndicatorSpec;
        this.interpolatorArray = new Interpolator[]{AndroidResources.loadInterpolator(context, R.anim.linear_indeterminate_line1_head_interpolator), AndroidResources.loadInterpolator(context, R.anim.linear_indeterminate_line1_tail_interpolator), AndroidResources.loadInterpolator(context, R.anim.linear_indeterminate_line2_head_interpolator), AndroidResources.loadInterpolator(context, R.anim.linear_indeterminate_line2_tail_interpolator)};
    }

    @Override // androidx.appcompat.view.menu.BaseMenuWrapper
    public final void cancelAnimatorImmediately() {
        ObjectAnimator objectAnimator = this.animator;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
    }

    @Override // androidx.appcompat.view.menu.BaseMenuWrapper
    public final void invalidateSpecValues() {
        maybeInitializeAnimators$1();
        ObjectAnimator objectAnimator = this.animator;
        LinearProgressIndicatorSpec linearProgressIndicatorSpec = this.baseSpec;
        objectAnimator.setDuration((long) (linearProgressIndicatorSpec.indeterminateAnimatorDurationScale * 1800.0f));
        this.completeEndAnimator.setDuration((long) (linearProgressIndicatorSpec.indeterminateAnimatorDurationScale * 1800.0f));
        resetPropertiesForNewStart();
    }

    public final void maybeInitializeAnimators$1() {
        ObjectAnimator objectAnimator = this.animator;
        final int i = 0;
        LinearProgressIndicatorSpec linearProgressIndicatorSpec = this.baseSpec;
        ViewUtils.AnonymousClass1 anonymousClass1 = ANIMATION_FRACTION;
        if (objectAnimator == null) {
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, anonymousClass1, RecyclerView.DECELERATION_RATE, 1.0f);
            this.animator = ofFloat;
            ofFloat.setDuration((long) (linearProgressIndicatorSpec.indeterminateAnimatorDurationScale * 1800.0f));
            this.animator.setInterpolator(null);
            this.animator.setRepeatCount(-1);
            this.animator.addListener(new AnimatorListenerAdapter(this) { // from class: com.google.android.material.progressindicator.LinearIndeterminateDisjointAnimatorDelegate.1
                public final /* synthetic */ LinearIndeterminateDisjointAnimatorDelegate this$0;

                {
                    this.this$0 = this;
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    switch (i) {
                        case 1:
                            super.onAnimationEnd(animator);
                            LinearIndeterminateDisjointAnimatorDelegate linearIndeterminateDisjointAnimatorDelegate = this.this$0;
                            linearIndeterminateDisjointAnimatorDelegate.cancelAnimatorImmediately();
                            Animatable2Compat$AnimationCallback animatable2Compat$AnimationCallback = linearIndeterminateDisjointAnimatorDelegate.animatorCompleteCallback;
                            if (animatable2Compat$AnimationCallback != null) {
                                animatable2Compat$AnimationCallback.onAnimationEnd((IndeterminateDrawable) linearIndeterminateDisjointAnimatorDelegate.mContext);
                                break;
                            }
                            break;
                        default:
                            super.onAnimationEnd(animator);
                            break;
                    }
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationRepeat(Animator animator) {
                    switch (i) {
                        case 0:
                            super.onAnimationRepeat(animator);
                            LinearIndeterminateDisjointAnimatorDelegate linearIndeterminateDisjointAnimatorDelegate = this.this$0;
                            linearIndeterminateDisjointAnimatorDelegate.indicatorColorIndex = (linearIndeterminateDisjointAnimatorDelegate.indicatorColorIndex + 1) % linearIndeterminateDisjointAnimatorDelegate.baseSpec.indicatorColors.length;
                            linearIndeterminateDisjointAnimatorDelegate.dirtyColors = true;
                            break;
                        default:
                            super.onAnimationRepeat(animator);
                            break;
                    }
                }
            });
        }
        if (this.completeEndAnimator == null) {
            final int i2 = 1;
            ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this, anonymousClass1, 1.0f);
            this.completeEndAnimator = ofFloat2;
            ofFloat2.setDuration((long) (linearProgressIndicatorSpec.indeterminateAnimatorDurationScale * 1800.0f));
            this.completeEndAnimator.setInterpolator(null);
            this.completeEndAnimator.addListener(new AnimatorListenerAdapter(this) { // from class: com.google.android.material.progressindicator.LinearIndeterminateDisjointAnimatorDelegate.1
                public final /* synthetic */ LinearIndeterminateDisjointAnimatorDelegate this$0;

                {
                    this.this$0 = this;
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    switch (i2) {
                        case 1:
                            super.onAnimationEnd(animator);
                            LinearIndeterminateDisjointAnimatorDelegate linearIndeterminateDisjointAnimatorDelegate = this.this$0;
                            linearIndeterminateDisjointAnimatorDelegate.cancelAnimatorImmediately();
                            Animatable2Compat$AnimationCallback animatable2Compat$AnimationCallback = linearIndeterminateDisjointAnimatorDelegate.animatorCompleteCallback;
                            if (animatable2Compat$AnimationCallback != null) {
                                animatable2Compat$AnimationCallback.onAnimationEnd((IndeterminateDrawable) linearIndeterminateDisjointAnimatorDelegate.mContext);
                                break;
                            }
                            break;
                        default:
                            super.onAnimationEnd(animator);
                            break;
                    }
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationRepeat(Animator animator) {
                    switch (i2) {
                        case 0:
                            super.onAnimationRepeat(animator);
                            LinearIndeterminateDisjointAnimatorDelegate linearIndeterminateDisjointAnimatorDelegate = this.this$0;
                            linearIndeterminateDisjointAnimatorDelegate.indicatorColorIndex = (linearIndeterminateDisjointAnimatorDelegate.indicatorColorIndex + 1) % linearIndeterminateDisjointAnimatorDelegate.baseSpec.indicatorColors.length;
                            linearIndeterminateDisjointAnimatorDelegate.dirtyColors = true;
                            break;
                        default:
                            super.onAnimationRepeat(animator);
                            break;
                    }
                }
            });
        }
    }

    @Override // androidx.appcompat.view.menu.BaseMenuWrapper
    public final void registerAnimatorsCompleteCallback(MaterialCheckBox.AnonymousClass1 anonymousClass1) {
        this.animatorCompleteCallback = anonymousClass1;
    }

    @Override // androidx.appcompat.view.menu.BaseMenuWrapper
    public final void requestCancelAnimatorAfterCurrentCycle() {
        ObjectAnimator objectAnimator = this.completeEndAnimator;
        if (objectAnimator == null || objectAnimator.isRunning()) {
            return;
        }
        cancelAnimatorImmediately();
        if (((IndeterminateDrawable) this.mContext).isVisible()) {
            this.completeEndAnimator.setFloatValues(this.animationFraction, 1.0f);
            this.completeEndAnimator.setDuration((long) ((1.0f - this.animationFraction) * 1800.0f));
            this.completeEndAnimator.start();
        }
    }

    public final void resetPropertiesForNewStart() {
        this.indicatorColorIndex = 0;
        Iterator it = ((ArrayList) this.mMenuItems).iterator();
        while (it.hasNext()) {
            ((DrawingDelegate.ActiveIndicator) it.next()).color = this.baseSpec.indicatorColors[0];
        }
    }

    @Override // androidx.appcompat.view.menu.BaseMenuWrapper
    public final void startAnimator() {
        maybeInitializeAnimators$1();
        resetPropertiesForNewStart();
        this.animator.start();
    }

    @Override // androidx.appcompat.view.menu.BaseMenuWrapper
    public final void unregisterAnimatorsCompleteCallback() {
        this.animatorCompleteCallback = null;
    }
}
