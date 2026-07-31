package androidx.compose.material.ripple;

import androidx.camera.camera2.pipe.CameraDevices$CC;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class RippleAlpha {
    public final boolean equals(Object obj) {
        return this == obj || (obj instanceof RippleAlpha);
    }

    public final int hashCode() {
        return Float.floatToIntBits(0.1f) + CameraDevices$CC.m(CameraDevices$CC.m(Float.floatToIntBits(0.16f) * 31, 0.1f, 31), 0.08f, 31);
    }

    public final String toString() {
        return "RippleAlpha(draggedAlpha=0.16, focusedAlpha=0.1, hoveredAlpha=0.08, pressedAlpha=0.1)";
    }
}
