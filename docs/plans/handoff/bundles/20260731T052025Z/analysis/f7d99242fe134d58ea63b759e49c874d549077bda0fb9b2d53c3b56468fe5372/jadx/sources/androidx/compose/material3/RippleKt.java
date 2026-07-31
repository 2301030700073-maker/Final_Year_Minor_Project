package androidx.compose.material3;

import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.unit.Dp;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class RippleKt {
    public static final RippleNodeFactory DefaultBoundedRipple;
    public static final RippleNodeFactory DefaultUnboundedRipple;
    public static final DynamicProvidableCompositionLocal LocalRippleConfiguration = new DynamicProvidableCompositionLocal(new TextKt$$ExternalSyntheticLambda4(6));

    static {
        long j = Color.Unspecified;
        DefaultBoundedRipple = new RippleNodeFactory(Float.NaN, j, true);
        DefaultUnboundedRipple = new RippleNodeFactory(Float.NaN, j, false);
    }

    /* renamed from: ripple-H2RKhps$default, reason: not valid java name */
    public static RippleNodeFactory m355rippleH2RKhps$default(boolean z, float f, int i) {
        if ((i & 1) != 0) {
            z = true;
        }
        if ((i & 2) != 0) {
            f = Float.NaN;
        }
        long j = Color.Unspecified;
        return (Dp.m745equalsimpl0(f, Float.NaN) && Color.m482equalsimpl0(j, j)) ? z ? DefaultBoundedRipple : DefaultUnboundedRipple : new RippleNodeFactory(f, j, z);
    }
}
