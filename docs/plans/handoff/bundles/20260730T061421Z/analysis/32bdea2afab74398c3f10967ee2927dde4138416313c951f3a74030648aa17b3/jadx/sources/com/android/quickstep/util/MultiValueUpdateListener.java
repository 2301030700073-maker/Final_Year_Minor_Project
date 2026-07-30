package com.android.quickstep.util;

import android.animation.ValueAnimator;
import android.view.animation.Interpolator;
import c.a.c.a.a;
import com.android.quickstep.fallback.RecentsState;
import java.util.ArrayList;

/* loaded from: classes.dex */
public abstract class MultiValueUpdateListener implements ValueAnimator.AnimatorUpdateListener {
    public final ArrayList mAllProperties = new ArrayList();

    public final class FloatProp {
        public final float mDelay;
        public final float mDuration;
        public final float mEnd;
        public final Interpolator mInterpolator;
        public final float mStart;
        public float value;

        public FloatProp(float f, float f2, float f3, float f4, Interpolator interpolator) {
            this.mStart = f;
            this.value = f;
            this.mEnd = f2;
            this.mDelay = f3;
            this.mDuration = f4;
            this.mInterpolator = interpolator;
            MultiValueUpdateListener.this.mAllProperties.add(this);
        }
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        float animatedFraction = valueAnimator.getAnimatedFraction();
        float duration = valueAnimator.getDuration() * animatedFraction;
        int size = this.mAllProperties.size();
        while (true) {
            size--;
            if (size < 0) {
                onUpdate(animatedFraction);
                return;
            }
            FloatProp floatProp = (FloatProp) this.mAllProperties.get(size);
            float interpolation = floatProp.mInterpolator.getInterpolation(Math.min(1.0f, Math.max(RecentsState.NO_OFFSET, duration - floatProp.mDelay) / floatProp.mDuration));
            floatProp.value = a.a(1.0f, interpolation, floatProp.mStart, floatProp.mEnd * interpolation);
        }
    }

    public abstract void onUpdate(float f);
}
