package androidx.compose.foundation.shape;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class RoundedCornerShapeKt {
    public static final RoundedCornerShape CircleShape;

    static {
        PercentCornerSize percentCornerSize = new PercentCornerSize(50.0f);
        CircleShape = new RoundedCornerShape(percentCornerSize, percentCornerSize, percentCornerSize, percentCornerSize);
    }

    /* renamed from: RoundedCornerShape-0680j_4, reason: not valid java name */
    public static final RoundedCornerShape m177RoundedCornerShape0680j_4(float f) {
        DpCornerSize dpCornerSize = new DpCornerSize(f);
        return new RoundedCornerShape(dpCornerSize, dpCornerSize, dpCornerSize, dpCornerSize);
    }
}
