package androidx.compose.ui.node;

import androidx.compose.animation.core.Animation;
import androidx.compose.ui.unit.Dp;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DpTouchBoundsExpansion {
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof DpTouchBoundsExpansion) && Dp.m693equalsimpl0(10.0f, 10.0f) && Dp.m693equalsimpl0(40.0f, 40.0f) && Dp.m693equalsimpl0(10.0f, 10.0f) && Dp.m693equalsimpl0(40.0f, 40.0f);
    }

    public final int hashCode() {
        return ((Float.floatToIntBits(40.0f) + Animation.CC.m(Animation.CC.m(Float.floatToIntBits(10.0f) * 31, 40.0f, 31), 10.0f, 31)) * 31) + 1231;
    }

    public final String toString() {
        return "DpTouchBoundsExpansion(start=" + ((Object) Dp.m694toStringimpl(10.0f)) + ", top=" + ((Object) Dp.m694toStringimpl(40.0f)) + ", end=" + ((Object) Dp.m694toStringimpl(10.0f)) + ", bottom=" + ((Object) Dp.m694toStringimpl(40.0f)) + ", isLayoutDirectionAware=true)";
    }
}
