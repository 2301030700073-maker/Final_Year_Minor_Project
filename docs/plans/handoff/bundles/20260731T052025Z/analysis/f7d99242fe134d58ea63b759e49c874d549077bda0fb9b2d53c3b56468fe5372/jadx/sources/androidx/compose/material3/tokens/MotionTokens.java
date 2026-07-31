package androidx.compose.material3.tokens;

import androidx.compose.animation.core.CubicBezierEasing;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class MotionTokens {
    public static final CubicBezierEasing EasingEmphasizedDecelerateCubicBezier;
    public static final CubicBezierEasing EasingStandardCubicBezier;

    static {
        new CubicBezierEasing(0.2f, 0.0f, 0.0f, 1.0f);
        new CubicBezierEasing(0.3f, 0.0f, 0.8f, 0.15f);
        EasingEmphasizedDecelerateCubicBezier = new CubicBezierEasing(0.05f, 0.7f, 0.1f, 1.0f);
        new CubicBezierEasing(0.4f, 0.0f, 0.2f, 1.0f);
        new CubicBezierEasing(0.4f, 0.0f, 1.0f, 1.0f);
        new CubicBezierEasing(0.0f, 0.0f, 0.2f, 1.0f);
        new CubicBezierEasing(0.0f, 0.0f, 1.0f, 1.0f);
        EasingStandardCubicBezier = new CubicBezierEasing(0.2f, 0.0f, 0.0f, 1.0f);
        new CubicBezierEasing(0.3f, 0.0f, 1.0f, 1.0f);
        new CubicBezierEasing(0.0f, 0.0f, 0.0f, 1.0f);
    }
}
