package androidx.compose.material.ripple;

import androidx.compose.ui.Modifier;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class RippleAlpha {
    public final boolean equals(Object obj) {
        return this == obj || (obj instanceof RippleAlpha);
    }

    public final int hashCode() {
        return Float.floatToIntBits(0.1f) + Modifier.CC.m(0.08f, Modifier.CC.m(0.1f, Float.floatToIntBits(0.16f) * 31, 31), 31);
    }

    public final String toString() {
        return "RippleAlpha(draggedAlpha=0.16, focusedAlpha=0.1, hoveredAlpha=0.08, pressedAlpha=0.1)";
    }
}
