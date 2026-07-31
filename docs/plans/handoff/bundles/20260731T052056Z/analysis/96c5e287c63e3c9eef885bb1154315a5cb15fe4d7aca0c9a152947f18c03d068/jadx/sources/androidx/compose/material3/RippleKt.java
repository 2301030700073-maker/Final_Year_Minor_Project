package androidx.compose.material3;

import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.unit.Dp;
import androidx.work.Worker$$ExternalSyntheticLambda1;
import kotlin.ULong;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class RippleKt {
    public static final RippleNodeFactory DefaultBoundedRipple;
    public static final RippleNodeFactory DefaultUnboundedRipple;
    public static final StaticProvidableCompositionLocal LocalRippleConfiguration = new StaticProvidableCompositionLocal(1, new Worker$$ExternalSyntheticLambda1(3));

    static {
        long j = Color.Unspecified;
        DefaultBoundedRipple = new RippleNodeFactory(Float.NaN, j, true);
        DefaultUnboundedRipple = new RippleNodeFactory(Float.NaN, j, false);
    }

    /* renamed from: ripple-H2RKhps$default, reason: not valid java name */
    public static RippleNodeFactory m294rippleH2RKhps$default(float f, int i, boolean z) {
        if ((i & 1) != 0) {
            z = true;
        }
        if ((i & 2) != 0) {
            f = Float.NaN;
        }
        long j = Color.Unspecified;
        return (Dp.m693equalsimpl0(f, Float.NaN) && ULong.m820equalsimpl0(j, j)) ? z ? DefaultBoundedRipple : DefaultUnboundedRipple : new RippleNodeFactory(f, j, z);
    }
}
