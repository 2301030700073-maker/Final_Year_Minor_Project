package com.android.quickstep;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.util.FloatProperty;
import com.android.quickstep.AnimatedFloat;

/* loaded from: classes.dex */
public class AnimatedFloat {
    public final Runnable mUpdateCallback;
    public ObjectAnimator mValueAnimator;
    public float value;
    public static final FloatProperty VALUE = new FloatProperty("value") { // from class: com.android.quickstep.AnimatedFloat.1
        @Override // android.util.Property
        public Float get(AnimatedFloat animatedFloat) {
            return Float.valueOf(animatedFloat.value);
        }

        @Override // android.util.FloatProperty
        public void setValue(AnimatedFloat animatedFloat, float f) {
            animatedFloat.updateValue(f);
        }
    };
    public static final Runnable NO_OP = new Runnable() { // from class: c.a.b.h
        @Override // java.lang.Runnable
        public final void run() {
            AnimatedFloat.a();
        }
    };

    public AnimatedFloat() {
        this(NO_OP);
    }

    public static /* synthetic */ void a() {
    }

    public ObjectAnimator animateToValue(float f, float f2) {
        cancelAnimation();
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, VALUE, f, f2);
        this.mValueAnimator = ofFloat;
        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.android.quickstep.AnimatedFloat.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (AnimatedFloat.this.mValueAnimator == animator) {
                    AnimatedFloat.this.mValueAnimator = null;
                }
            }
        });
        return this.mValueAnimator;
    }

    public void cancelAnimation() {
        ObjectAnimator objectAnimator = this.mValueAnimator;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
    }

    public void finishAnimation() {
        ObjectAnimator objectAnimator = this.mValueAnimator;
        if (objectAnimator == null || !objectAnimator.isRunning()) {
            return;
        }
        this.mValueAnimator.end();
    }

    public ObjectAnimator getCurrentAnimation() {
        return this.mValueAnimator;
    }

    public void updateValue(float f) {
        if (Float.compare(f, this.value) != 0) {
            this.value = f;
            this.mUpdateCallback.run();
        }
    }

    public AnimatedFloat(Runnable runnable) {
        this.mUpdateCallback = runnable;
    }
}
