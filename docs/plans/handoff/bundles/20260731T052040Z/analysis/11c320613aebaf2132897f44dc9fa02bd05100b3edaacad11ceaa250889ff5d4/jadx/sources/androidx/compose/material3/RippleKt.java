package androidx.compose.material3;

import androidx.activity.ImmLeaksCleaner$$ExternalSyntheticLambda0;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.unit.Dp;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class RippleKt {
    public static final RippleNodeFactory DefaultBoundedRipple;
    public static final DynamicProvidableCompositionLocal LocalRippleConfiguration = new DynamicProvidableCompositionLocal(new ImmLeaksCleaner$$ExternalSyntheticLambda0(18));

    static {
        long j = Color.Unspecified;
        DefaultBoundedRipple = new RippleNodeFactory(j, true);
        new RippleNodeFactory(j, false);
    }

    /* renamed from: ripple-H2RKhps$default, reason: not valid java name */
    public static RippleNodeFactory m156rippleH2RKhps$default(int i, long j) {
        if ((i & 4) != 0) {
            j = Color.Unspecified;
        }
        return (Dp.m443equalsimpl0(Float.NaN, Float.NaN) && Color.m244equalsimpl0(j, Color.Unspecified)) ? DefaultBoundedRipple : new RippleNodeFactory(j, true);
    }
}
