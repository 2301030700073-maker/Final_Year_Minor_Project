package androidx.compose.ui.node;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.ui.unit.Dp;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DpTouchBoundsExpansion {
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof DpTouchBoundsExpansion) && Dp.m745equalsimpl0(10.0f, 10.0f) && Dp.m745equalsimpl0(40.0f, 40.0f) && Dp.m745equalsimpl0(10.0f, 10.0f) && Dp.m745equalsimpl0(40.0f, 40.0f);
    }

    public final int hashCode() {
        return ((Float.floatToIntBits(40.0f) + CameraDevices$CC.m(CameraDevices$CC.m(Float.floatToIntBits(10.0f) * 31, 40.0f, 31), 10.0f, 31)) * 31) + 1231;
    }

    public final String toString() {
        return "DpTouchBoundsExpansion(start=" + ((Object) Dp.m746toStringimpl(10.0f)) + ", top=" + ((Object) Dp.m746toStringimpl(40.0f)) + ", end=" + ((Object) Dp.m746toStringimpl(10.0f)) + ", bottom=" + ((Object) Dp.m746toStringimpl(40.0f)) + ", isLayoutDirectionAware=true)";
    }
}
