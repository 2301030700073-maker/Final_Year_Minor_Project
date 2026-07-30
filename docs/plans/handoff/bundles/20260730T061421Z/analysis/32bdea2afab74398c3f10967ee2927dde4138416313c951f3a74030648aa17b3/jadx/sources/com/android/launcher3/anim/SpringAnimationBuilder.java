package com.android.launcher3.anim;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.util.FloatProperty;
import com.android.launcher3.anim.SpringAnimationBuilder;
import com.android.launcher3.util.DefaultDisplay;
import com.android.quickstep.fallback.RecentsState;
import java.util.Objects;

/* loaded from: classes.dex */
public class SpringAnimationBuilder {

    /* renamed from: a, reason: collision with root package name */
    public double f3234a;

    /* renamed from: b, reason: collision with root package name */
    public double f3235b;
    public double beta;
    public double gamma;
    public final Context mContext;
    public float mEndValue;
    public float mStartValue;
    public double mValueThreshold;
    public double mVelocityThreshold;
    public double va;
    public double vb;
    public float mVelocity = RecentsState.NO_OFFSET;
    public float mStiffness = 1500.0f;
    public float mDampingRatio = 0.5f;
    public float mMinVisibleChange = 1.0f;
    public float mDuration = RecentsState.NO_OFFSET;

    public SpringAnimationBuilder(Context context) {
        this.mContext = context;
    }

    public ValueAnimator build(final Object obj, final FloatProperty floatProperty) {
        computeParams();
        ValueAnimator ofFloat = ValueAnimator.ofFloat(RecentsState.NO_OFFSET, this.mDuration);
        ofFloat.setDuration((long) (this.mDuration * 1000.0d)).setInterpolator(Interpolators.LINEAR);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: c.a.a.E0.p
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                SpringAnimationBuilder springAnimationBuilder = SpringAnimationBuilder.this;
                FloatProperty floatProperty2 = floatProperty;
                Object obj2 = obj;
                Objects.requireNonNull(springAnimationBuilder);
                floatProperty2.set((FloatProperty) obj2, Float.valueOf(springAnimationBuilder.getInterpolatedValue(valueAnimator.getAnimatedFraction())));
            }
        });
        ofFloat.addListener(new AnimationSuccessListener() { // from class: com.android.launcher3.anim.SpringAnimationBuilder.1
            @Override // com.android.launcher3.anim.AnimationSuccessListener
            public void onAnimationSuccess(Animator animator) {
                floatProperty.set((FloatProperty) obj, Float.valueOf(SpringAnimationBuilder.this.mEndValue));
            }
        });
        return ofFloat;
    }

    public SpringAnimationBuilder computeParams() {
        int singleFrameMs = DefaultDisplay.getSingleFrameMs(this.mContext);
        double sqrt = Math.sqrt(this.mStiffness);
        float f = this.mDampingRatio;
        double sqrt2 = Math.sqrt(1.0f - (f * f)) * sqrt;
        double d2 = this.mDampingRatio * 2.0f * sqrt;
        this.beta = d2;
        this.gamma = sqrt2;
        double d3 = this.mStartValue - this.mEndValue;
        this.f3234a = d3;
        double d4 = 2.0d;
        double d5 = (this.mVelocity / sqrt2) + ((d2 * d3) / (sqrt2 * 2.0d));
        this.f3235b = d5;
        this.va = ((d3 * d2) / 2.0d) - (d5 * sqrt2);
        this.vb = ((d2 * d5) / 2.0d) + (sqrt2 * d3);
        double d6 = this.mMinVisibleChange * 0.65f;
        this.mValueThreshold = d6;
        double d7 = singleFrameMs;
        this.mVelocityThreshold = (d6 * 1000.0d) / d7;
        double atan2 = Math.atan2(-d3, d5);
        double d8 = this.gamma;
        double d9 = atan2 / d8;
        double d10 = 3.141592653589793d / d8;
        while (true) {
            if (d9 >= 0.0d) {
                if (Math.abs(cosSinV(d9) * exponentialComponent(d9)) < this.mVelocityThreshold) {
                    break;
                }
            }
            d9 += d10;
            d4 = 2.0d;
        }
        double max = Math.max(0.0d, d9 - (d10 / d4));
        double d11 = d7 / 2000.0d;
        while (d9 - max >= d11) {
            double d12 = (max + d9) / d4;
            double exponentialComponent = exponentialComponent(d12);
            boolean z = false;
            if (Math.abs(cosSinX(d12) * exponentialComponent) < this.mValueThreshold && Math.abs(cosSinV(d12) * exponentialComponent) < this.mVelocityThreshold) {
                z = true;
            }
            if (z) {
                d9 = d12;
            } else {
                max = d12;
            }
            d4 = 2.0d;
        }
        this.mDuration = (float) d9;
        return this;
    }

    public final double cosSinV(double d2) {
        double d3 = this.va;
        double d4 = this.vb;
        double d5 = d2 * this.gamma;
        return (Math.sin(d5) * d4) + (Math.cos(d5) * d3);
    }

    public final double cosSinX(double d2) {
        double d3 = this.f3234a;
        double d4 = this.f3235b;
        double d5 = d2 * this.gamma;
        return (Math.sin(d5) * d4) + (Math.cos(d5) * d3);
    }

    public final double exponentialComponent(double d2) {
        return Math.pow(2.718281828459045d, ((-this.beta) * d2) / 2.0d);
    }

    public float getInterpolatedValue(float f) {
        double d2 = this.mDuration * f;
        return ((float) (cosSinX(d2) * exponentialComponent(d2))) + this.mEndValue;
    }

    public SpringAnimationBuilder setDampingRatio(float f) {
        if (f <= RecentsState.NO_OFFSET || f >= 1.0f) {
            throw new IllegalArgumentException("Damping ratio must be between 0 and 1");
        }
        this.mDampingRatio = f;
        return this;
    }

    public SpringAnimationBuilder setMinimumVisibleChange(float f) {
        if (f <= RecentsState.NO_OFFSET) {
            throw new IllegalArgumentException("Minimum visible change must be positive.");
        }
        this.mMinVisibleChange = f;
        return this;
    }

    public SpringAnimationBuilder setStiffness(float f) {
        if (f <= RecentsState.NO_OFFSET) {
            throw new IllegalArgumentException("Spring stiffness constant must be positive.");
        }
        this.mStiffness = f;
        return this;
    }
}
