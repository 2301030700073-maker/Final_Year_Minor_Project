package androidx.compose.material.ripple;

import androidx.compose.animation.core.Animation;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class RippleAlpha {
    public final boolean equals(Object obj) {
        return this == obj || (obj instanceof RippleAlpha);
    }

    public final int hashCode() {
        return Float.floatToIntBits(0.1f) + Animation.CC.m(Animation.CC.m(Float.floatToIntBits(0.16f) * 31, 0.1f, 31), 0.08f, 31);
    }

    public final String toString() {
        return "RippleAlpha(draggedAlpha=0.16, focusedAlpha=0.1, hoveredAlpha=0.08, pressedAlpha=0.1)";
    }
}
