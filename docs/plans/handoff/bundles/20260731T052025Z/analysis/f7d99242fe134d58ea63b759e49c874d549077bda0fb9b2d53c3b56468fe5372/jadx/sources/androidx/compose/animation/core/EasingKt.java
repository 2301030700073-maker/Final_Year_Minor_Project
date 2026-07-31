package androidx.compose.animation.core;

import androidx.camera.core.streamsharing.StreamSharing$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class EasingKt {
    public static final CubicBezierEasing FastOutSlowInEasing = new CubicBezierEasing(0.4f, 0.0f, 0.2f, 1.0f);
    public static final CubicBezierEasing LinearOutSlowInEasing = new CubicBezierEasing(0.0f, 0.0f, 0.2f, 1.0f);
    public static final CubicBezierEasing FastOutLinearInEasing = new CubicBezierEasing(0.4f, 0.0f, 1.0f, 1.0f);
    public static final StreamSharing$$ExternalSyntheticLambda0 LinearEasing = new StreamSharing$$ExternalSyntheticLambda0(5);
}
