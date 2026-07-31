package com.google.android.material.animation;

import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class AnimationUtils {
    public static final LinearInterpolator LINEAR_INTERPOLATOR = new LinearInterpolator();
    public static final FastOutSlowInInterpolator FAST_OUT_SLOW_IN_INTERPOLATOR = new FastOutSlowInInterpolator(0);
    public static final FastOutSlowInInterpolator FAST_OUT_LINEAR_IN_INTERPOLATOR = new FastOutSlowInInterpolator(1);
    public static final FastOutSlowInInterpolator LINEAR_OUT_SLOW_IN_INTERPOLATOR = new FastOutSlowInInterpolator(2);
    public static final DecelerateInterpolator DECELERATE_INTERPOLATOR = new DecelerateInterpolator();

    public static float lerp(float f, float f2, float f3, float f4, float f5) {
        return f5 <= f3 ? f : f5 >= f4 ? f2 : lerp(f, f2, (f5 - f3) / (f4 - f3));
    }

    public static int lerp(int i, float f, int i2) {
        return Math.round(f * (i2 - i)) + i;
    }

    public static float lerp(float f, float f2, float f3) {
        return CameraDevices$CC.m(f2, f, f3, f);
    }
}
