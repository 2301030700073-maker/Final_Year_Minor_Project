package androidx.compose.ui.input.indirect;

import androidx.camera.camera2.pipe.CameraDevices$CC;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class IndirectPointerEventPrimaryDirectionalMotionAxis {
    public final int value;

    public final boolean equals(Object obj) {
        if (obj instanceof IndirectPointerEventPrimaryDirectionalMotionAxis) {
            return this.value == ((IndirectPointerEventPrimaryDirectionalMotionAxis) obj).value;
        }
        return false;
    }

    public final int hashCode() {
        return this.value;
    }

    public final String toString() {
        return CameraDevices$CC.m("IndirectPointerEventPrimaryDirectionalMotionAxis(value=", this.value, ')');
    }
}
