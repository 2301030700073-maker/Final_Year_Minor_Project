package com.google.android.material.animation;

import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import androidx.compose.ui.Modifier;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class AnimationUtils {
    public static final LinearInterpolator LINEAR_INTERPOLATOR = new LinearInterpolator();
    public static final FastOutSlowInInterpolator FAST_OUT_SLOW_IN_INTERPOLATOR = new FastOutSlowInInterpolator(0);
    public static final FastOutSlowInInterpolator FAST_OUT_LINEAR_IN_INTERPOLATOR = new FastOutSlowInInterpolator(1);
    public static final FastOutSlowInInterpolator LINEAR_OUT_SLOW_IN_INTERPOLATOR = new FastOutSlowInInterpolator(FastOutSlowInInterpolator.VALUES$2);
    public static final DecelerateInterpolator DECELERATE_INTERPOLATOR = new DecelerateInterpolator();

    public static float lerp(float f, float f2, float f3, float f4, float f5) {
        return f5 <= f3 ? f : f5 >= f4 ? f2 : lerp(f, f2, (f5 - f3) / (f4 - f3));
    }

    public static int lerp(float f, int i, int i2) {
        return Math.round(f * (i2 - i)) + i;
    }

    public static float lerp(float f, float f2, float f3) {
        return Modifier.CC.m(f2, f, f3, f);
    }
}
