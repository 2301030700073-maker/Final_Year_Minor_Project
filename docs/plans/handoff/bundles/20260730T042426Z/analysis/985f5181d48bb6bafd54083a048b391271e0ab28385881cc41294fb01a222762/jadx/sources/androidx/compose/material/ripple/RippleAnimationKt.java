package androidx.compose.material.ripple;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;

/* compiled from: RippleAnimation.kt */
/* loaded from: classes.dex */
public abstract class RippleAnimationKt {
    private static final float BoundedRippleExtraRadius = Dp.m2424constructorimpl(10);

    /* renamed from: getRippleStartRadius-uvyYCjk, reason: not valid java name */
    public static final float m590getRippleStartRadiusuvyYCjk(long j) {
        return Math.max(Size.m1204getWidthimpl(j), Size.m1202getHeightimpl(j)) * 0.3f;
    }

    /* renamed from: getRippleEndRadius-cSwnlzA, reason: not valid java name */
    public static final float m589getRippleEndRadiuscSwnlzA(Density density, boolean z, long j) {
        float m1165getDistanceimpl = Offset.m1165getDistanceimpl(OffsetKt.Offset(Size.m1204getWidthimpl(j), Size.m1202getHeightimpl(j))) / 2.0f;
        return z ? m1165getDistanceimpl + density.mo213toPx0680j_4(BoundedRippleExtraRadius) : m1165getDistanceimpl;
    }
}
