package androidx.compose.material3;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.ui.unit.Dp;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ButtonElevation {
    public final float hoveredElevation;

    public ButtonElevation(float f) {
        this.hoveredElevation = f;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof ButtonElevation)) {
            return false;
        }
        return Dp.m745equalsimpl0(0.0f, 0.0f) && Dp.m745equalsimpl0(0.0f, 0.0f) && Dp.m745equalsimpl0(0.0f, 0.0f) && Dp.m745equalsimpl0(this.hoveredElevation, ((ButtonElevation) obj).hoveredElevation) && Dp.m745equalsimpl0(0.0f, 0.0f);
    }

    public final int hashCode() {
        return Float.floatToIntBits(0.0f) + CameraDevices$CC.m(CameraDevices$CC.m(CameraDevices$CC.m(Float.floatToIntBits(0.0f) * 31, 0.0f, 31), 0.0f, 31), this.hoveredElevation, 31);
    }
}
