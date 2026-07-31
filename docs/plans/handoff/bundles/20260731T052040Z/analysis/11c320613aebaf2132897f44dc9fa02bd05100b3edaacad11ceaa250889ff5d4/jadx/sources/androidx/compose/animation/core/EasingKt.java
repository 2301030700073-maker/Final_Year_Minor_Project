package androidx.compose.animation.core;

import androidx.compose.foundation.layout.Arrangement$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class EasingKt {
    public static final CubicBezierEasing FastOutLinearInEasing;
    public static final CubicBezierEasing FastOutSlowInEasing = new CubicBezierEasing(0.4f, 0.2f, 1.0f);
    public static final Arrangement$$ExternalSyntheticLambda0 LinearEasing;

    static {
        new CubicBezierEasing(0.0f, 0.2f, 1.0f);
        FastOutLinearInEasing = new CubicBezierEasing(0.4f, 1.0f, 1.0f);
        LinearEasing = new Arrangement$$ExternalSyntheticLambda0();
    }
}
