package androidx.compose.foundation.shape;

/* compiled from: RoundedCornerShape.kt */
/* loaded from: classes.dex */
public abstract class RoundedCornerShapeKt {
    private static final RoundedCornerShape CircleShape = RoundedCornerShape(50);

    public static final RoundedCornerShape getCircleShape() {
        return CircleShape;
    }

    public static final RoundedCornerShape RoundedCornerShape(CornerSize cornerSize) {
        return new RoundedCornerShape(cornerSize, cornerSize, cornerSize, cornerSize);
    }

    /* renamed from: RoundedCornerShape-0680j_4, reason: not valid java name */
    public static final RoundedCornerShape m376RoundedCornerShape0680j_4(float f) {
        return RoundedCornerShape(CornerSizeKt.m375CornerSize0680j_4(f));
    }

    public static final RoundedCornerShape RoundedCornerShape(int i) {
        return RoundedCornerShape(CornerSizeKt.CornerSize(i));
    }

    /* renamed from: RoundedCornerShape-a9UjIt4, reason: not valid java name */
    public static final RoundedCornerShape m377RoundedCornerShapea9UjIt4(float f, float f2, float f3, float f4) {
        return new RoundedCornerShape(CornerSizeKt.m375CornerSize0680j_4(f), CornerSizeKt.m375CornerSize0680j_4(f2), CornerSizeKt.m375CornerSize0680j_4(f3), CornerSizeKt.m375CornerSize0680j_4(f4));
    }
}
