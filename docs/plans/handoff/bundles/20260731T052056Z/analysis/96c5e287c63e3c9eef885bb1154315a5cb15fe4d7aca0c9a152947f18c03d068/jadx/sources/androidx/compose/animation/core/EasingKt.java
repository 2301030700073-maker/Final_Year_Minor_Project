package androidx.compose.animation.core;

import androidx.recyclerview.widget.RecyclerView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class EasingKt {
    public static final CubicBezierEasing FastOutLinearInEasing;
    public static final CubicBezierEasing FastOutSlowInEasing = new CubicBezierEasing(0.4f, RecyclerView.DECELERATION_RATE, 0.2f, 1.0f);
    public static final EasingKt$$ExternalSyntheticLambda0 LinearEasing;

    static {
        new CubicBezierEasing(RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 0.2f, 1.0f);
        FastOutLinearInEasing = new CubicBezierEasing(0.4f, RecyclerView.DECELERATION_RATE, 1.0f, 1.0f);
        LinearEasing = new EasingKt$$ExternalSyntheticLambda0(0);
    }
}
