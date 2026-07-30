package com.android.launcher3.anim;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.util.FloatProperty;
import android.util.IntProperty;
import android.util.Property;
import android.view.View;
import com.android.quickstep.fallback.RecentsState;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public class PendingAnimation implements PropertySetter {
    public final long mDuration;
    public ValueAnimator mProgressAnimator;
    public final ArrayList mEndListeners = new ArrayList();
    public final ArrayList mAnimHolders = new ArrayList();
    public final AnimatorSet mAnim = new AnimatorSet();

    public class EndState {
        public boolean isSuccess;
        public int logAction;

        public EndState(boolean z, int i) {
            this.isSuccess = z;
            this.logAction = i;
        }
    }

    public PendingAnimation(long j) {
        this.mDuration = j;
    }

    public void add(Animator animator) {
        SpringProperty springProperty = SpringProperty.DEFAULT;
        this.mAnim.play(animator.setDuration(this.mDuration));
        AnimatorPlaybackController.addAnimationHoldersRecur(animator, this.mDuration, springProperty, this.mAnimHolders);
    }

    public void addFloat(Object obj, FloatProperty floatProperty, float f, float f2, TimeInterpolator timeInterpolator) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(obj, floatProperty, f, f2);
        ofFloat.setInterpolator(timeInterpolator);
        add(ofFloat);
    }

    public void addOnFrameCallback(final Runnable runnable) {
        if (this.mProgressAnimator == null) {
            this.mProgressAnimator = ValueAnimator.ofFloat(RecentsState.NO_OFFSET, 1.0f);
        }
        this.mProgressAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: c.a.a.E0.n
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                runnable.run();
            }
        });
    }

    public AnimatorSet buildAnim() {
        ValueAnimator valueAnimator = this.mProgressAnimator;
        if (valueAnimator != null) {
            add(valueAnimator);
            this.mProgressAnimator = null;
        }
        if (this.mAnimHolders.isEmpty()) {
            add(ValueAnimator.ofFloat(RecentsState.NO_OFFSET, 1.0f).setDuration(this.mDuration));
        }
        return this.mAnim;
    }

    public AnimatorPlaybackController createPlaybackController() {
        return new AnimatorPlaybackController(buildAnim(), this.mDuration, this.mAnimHolders);
    }

    public void finish(boolean z, int i) {
        Iterator it = this.mEndListeners.iterator();
        while (it.hasNext()) {
            ((Consumer) it.next()).accept(new EndState(z, i));
        }
        this.mEndListeners.clear();
    }

    @Override // com.android.launcher3.anim.PropertySetter
    public void setFloat(Object obj, FloatProperty floatProperty, float f, TimeInterpolator timeInterpolator) {
        if (((Float) floatProperty.get(obj)).floatValue() == f) {
            return;
        }
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(obj, floatProperty, f);
        ofFloat.setDuration(this.mDuration).setInterpolator(timeInterpolator);
        add(ofFloat);
    }

    @Override // com.android.launcher3.anim.PropertySetter
    public void setInt(Object obj, IntProperty intProperty, int i, TimeInterpolator timeInterpolator) {
        if (((Integer) intProperty.get(obj)).intValue() == i) {
            return;
        }
        ObjectAnimator ofInt = ObjectAnimator.ofInt(obj, intProperty, i);
        ofInt.setInterpolator(timeInterpolator);
        add(ofInt);
    }

    @Override // com.android.launcher3.anim.PropertySetter
    public void setViewAlpha(View view, float f, TimeInterpolator timeInterpolator) {
        if (view == null || view.getAlpha() == f) {
            return;
        }
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, (Property<View, Float>) View.ALPHA, f);
        ofFloat.addListener(new AlphaUpdateListener(view));
        ofFloat.setInterpolator(timeInterpolator);
        add(ofFloat);
    }
}
