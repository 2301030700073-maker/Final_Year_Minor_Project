package androidx.compose.ui.input.pointer;

import androidx.camera.camera2.pipe.CameraDevices$CC;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AndroidPointerIconType implements PointerIcon {
    public final int type;

    public AndroidPointerIconType(int i) {
        this.type = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!AndroidPointerIconType.class.equals(obj != null ? obj.getClass() : null)) {
            return false;
        }
        obj.getClass();
        return this.type == ((AndroidPointerIconType) obj).type;
    }

    public final int hashCode() {
        return this.type;
    }

    public final String toString() {
        return CameraDevices$CC.m(new StringBuilder("AndroidPointerIcon(type="), this.type, ')');
    }
}
