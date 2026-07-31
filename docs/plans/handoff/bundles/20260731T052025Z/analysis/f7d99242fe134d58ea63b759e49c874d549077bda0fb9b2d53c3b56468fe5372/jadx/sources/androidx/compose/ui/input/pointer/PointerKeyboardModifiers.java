package androidx.compose.ui.input.pointer;

import androidx.camera.camera2.pipe.CameraDevices$CC;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class PointerKeyboardModifiers {
    public final int packedValue;

    public /* synthetic */ PointerKeyboardModifiers(int i) {
        this.packedValue = i;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof PointerKeyboardModifiers) {
            return this.packedValue == ((PointerKeyboardModifiers) obj).packedValue;
        }
        return false;
    }

    public final int hashCode() {
        return this.packedValue;
    }

    public final String toString() {
        return CameraDevices$CC.m("PointerKeyboardModifiers(packedValue=", this.packedValue, ')');
    }
}
