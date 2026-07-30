package com.android.launcher3;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.util.Property;

/* loaded from: classes.dex */
public class InterruptibleInOutAnimator {
    public static final Property VALUE = new Property(Float.TYPE, "value") { // from class: com.android.launcher3.InterruptibleInOutAnimator.1
        @Override // android.util.Property
        public Object get(Object obj) {
            return Float.valueOf(((InterruptibleInOutAnimator) obj).mValue);
        }

        @Override // android.util.Property
        public void set(Object obj, Object obj2) {
            ((InterruptibleInOutAnimator) obj).mValue = ((Float) obj2).floatValue();
        }
    };
    public ValueAnimator mAnimator;
    public int mDirection;
    public long mOriginalDuration;
    public float mOriginalFromValue;
    public float mOriginalToValue;
    public float mValue;
    public boolean mFirstRun = true;
    public Object mTag = null;

    public InterruptibleInOutAnimator(long j, float f, float f2) {
        ObjectAnimator duration = ObjectAnimator.ofFloat(this, (Property<InterruptibleInOutAnimator, Float>) VALUE, f, f2).setDuration(j);
        this.mAnimator = duration;
        this.mOriginalDuration = j;
        this.mOriginalFromValue = f;
        this.mOriginalToValue = f2;
        duration.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.InterruptibleInOutAnimator.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                InterruptibleInOutAnimator.this.mDirection = 0;
            }
        });
    }

    public final void animate(int i) {
        long currentPlayTime = this.mAnimator.getCurrentPlayTime();
        float f = i == 1 ? this.mOriginalToValue : this.mOriginalFromValue;
        float f2 = this.mFirstRun ? this.mOriginalFromValue : this.mValue;
        this.mAnimator.cancel();
        long j = this.mOriginalDuration;
        this.mAnimator.setDuration(Math.max(0L, Math.min(j - currentPlayTime, j)));
        this.mAnimator.setFloatValues(f2, f);
        this.mAnimator.start();
        this.mFirstRun = false;
    }
}
