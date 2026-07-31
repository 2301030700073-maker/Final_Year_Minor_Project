package androidx.compose.foundation;

import android.view.ViewConfiguration;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class EdgeEffectCompat_androidKt {
    public static final double DecelMinusOne;
    public static final double DecelerationRate;
    public static final float PlatformFlingScrollFriction = ViewConfiguration.getScrollFriction();

    static {
        double log = Math.log(0.78d) / Math.log(0.9d);
        DecelerationRate = log;
        DecelMinusOne = log - 1.0d;
    }
}
