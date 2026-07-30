package com.android.launcher3.anim;

import android.content.Context;
import android.graphics.Path;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.view.animation.OvershootInterpolator;
import android.view.animation.PathInterpolator;
import c.a.a.E0.h;
import c.a.a.E0.k;
import com.android.launcher3.Utilities;
import com.android.launcher3.anim.Interpolators;
import com.android.launcher3.util.DefaultDisplay;
import com.android.quickstep.fallback.RecentsState;

/* loaded from: classes.dex */
public class Interpolators {
    public static final Interpolator EXAGGERATED_EASE;
    public static final Interpolator OVERSHOOT_1_2;
    public static final Interpolator OVERSHOOT_1_7;
    public static final Interpolator SCROLL;
    public static final Interpolator SCROLL_CUBIC;
    public static final Interpolator TOUCH_RESPONSE_INTERPOLATOR;
    public static final Interpolator ZOOM_IN;
    public static final Interpolator ZOOM_OUT;
    public static final Interpolator LINEAR = new LinearInterpolator();
    public static final Interpolator ACCEL = new AccelerateInterpolator();
    public static final Interpolator ACCEL_0_75 = new AccelerateInterpolator(0.75f);
    public static final Interpolator ACCEL_1_5 = new AccelerateInterpolator(1.5f);
    public static final Interpolator ACCEL_2 = new AccelerateInterpolator(2.0f);
    public static final Interpolator DEACCEL = new DecelerateInterpolator();
    public static final Interpolator DEACCEL_1_5 = new DecelerateInterpolator(1.5f);
    public static final Interpolator DEACCEL_1_7 = new DecelerateInterpolator(1.7f);
    public static final Interpolator DEACCEL_2 = new DecelerateInterpolator(2.0f);
    public static final Interpolator DEACCEL_2_5 = new DecelerateInterpolator(2.5f);
    public static final Interpolator DEACCEL_3 = new DecelerateInterpolator(3.0f);
    public static final Interpolator DEACCEL_5 = new DecelerateInterpolator(5.0f);
    public static final Interpolator ACCEL_DEACCEL = new AccelerateDecelerateInterpolator();
    public static final Interpolator FAST_OUT_SLOW_IN = new PathInterpolator(0.4f, RecentsState.NO_OFFSET, 0.2f, 1.0f);
    public static final Interpolator AGGRESSIVE_EASE = new PathInterpolator(0.2f, RecentsState.NO_OFFSET, RecentsState.NO_OFFSET, 1.0f);
    public static final Interpolator AGGRESSIVE_EASE_IN_OUT = new PathInterpolator(0.6f, RecentsState.NO_OFFSET, 0.4f, 1.0f);
    public static final Interpolator INSTANT = new Interpolator() { // from class: c.a.a.E0.l
        @Override // android.animation.TimeInterpolator
        public final float getInterpolation(float f) {
            Interpolators.c(f);
            return 1.0f;
        }
    };
    public static final Interpolator FINAL_FRAME = new Interpolator() { // from class: c.a.a.E0.j
        @Override // android.animation.TimeInterpolator
        public final float getInterpolation(float f) {
            return Interpolators.d(f);
        }
    };

    public class OvershootParams {
        public long duration;
        public float end;
        public Interpolator interpolator;
        public float start;

        public OvershootParams(float f, float f2, float f3, float f4, int i, Context context) {
            float abs = Math.abs(f4);
            this.start = f;
            this.end = Utilities.boundToRange((((0.9f * abs) * DefaultDisplay.getSingleFrameMs(context)) / i) / 2.0f, 0.02f, 0.15f) + f2;
            this.duration = (long) (abs / ((abs * abs) / ((((int) (r8 * r7)) - ((int) (f * r7))) * 2)));
            long max = Math.max(200L, ((long) Math.sqrt(((int) ((r8 - f3) * r7)) / r3)) * 4);
            long j = this.duration;
            final float f5 = j / (j + max);
            this.duration = j + max;
            final Interpolator clampToProgress = Interpolators.clampToProgress(Interpolators.DEACCEL, RecentsState.NO_OFFSET, f5);
            Interpolator interpolator = Interpolators.ACCEL_DEACCEL;
            float f6 = this.start;
            final Interpolator clampToProgress2 = Interpolators.clampToProgress(new h(interpolator, 1.0f, (f3 - f6) / (this.end - f6)), f5, 1.0f);
            this.interpolator = new Interpolator() { // from class: c.a.a.E0.i
                @Override // android.animation.TimeInterpolator
                public final float getInterpolation(float f7) {
                    return f7 <= f5 ? clampToProgress.getInterpolation(f7) : clampToProgress2.getInterpolation(f7);
                }
            };
        }
    }

    static {
        Path path = new Path();
        path.moveTo(RecentsState.NO_OFFSET, RecentsState.NO_OFFSET);
        path.cubicTo(0.05f, RecentsState.NO_OFFSET, 0.133333f, 0.08f, 0.166666f, 0.4f);
        path.cubicTo(0.225f, 0.94f, 0.5f, 1.0f, 1.0f, 1.0f);
        EXAGGERATED_EASE = new PathInterpolator(path);
        OVERSHOOT_1_2 = new OvershootInterpolator(1.2f);
        OVERSHOOT_1_7 = new OvershootInterpolator(1.7f);
        TOUCH_RESPONSE_INTERPOLATOR = new PathInterpolator(0.3f, RecentsState.NO_OFFSET, 0.1f, 1.0f);
        ZOOM_IN = new Interpolator() { // from class: com.android.launcher3.anim.Interpolators.1
            @Override // android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                return Interpolators.DEACCEL_3.getInterpolation(1.0f - Interpolators.ZOOM_OUT.getInterpolation(1.0f - f));
            }
        };
        ZOOM_OUT = new Interpolator() { // from class: com.android.launcher3.anim.Interpolators.2
            @Override // android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                return (1.0f - (0.35f / (f + 0.35f))) / 0.7407408f;
            }
        };
        SCROLL = new Interpolator() { // from class: com.android.launcher3.anim.Interpolators.3
            @Override // android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                float f2 = f - 1.0f;
                return (f2 * f2 * f2 * f2 * f2) + 1.0f;
            }
        };
        SCROLL_CUBIC = new Interpolator() { // from class: com.android.launcher3.anim.Interpolators.4
            @Override // android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                float f2 = f - 1.0f;
                return (f2 * f2 * f2) + 1.0f;
            }
        };
    }

    public static /* synthetic */ float a(float f, float f2, Interpolator interpolator, float f3) {
        if (f3 < f) {
            return RecentsState.NO_OFFSET;
        }
        if (f3 > f2) {
            return 1.0f;
        }
        return interpolator.getInterpolation((f3 - f) / (f2 - f));
    }

    public static /* synthetic */ float c(float f) {
        return 1.0f;
    }

    public static Interpolator clampToProgress(Interpolator interpolator, float f, float f2) {
        if (f2 > f) {
            return new k(f, f2, interpolator);
        }
        throw new IllegalArgumentException(String.format("lowerBound (%f) must be less than upperBound (%f)", Float.valueOf(f), Float.valueOf(f2)));
    }

    public static /* synthetic */ float d(float f) {
        if (f < 1.0f) {
            return RecentsState.NO_OFFSET;
        }
        return 1.0f;
    }

    public static Interpolator scrollInterpolatorForVelocity(float f) {
        return Math.abs(f) > 10.0f ? SCROLL : SCROLL_CUBIC;
    }
}
