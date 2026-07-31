package androidx.camera.camera2.pipe;

import androidx.compose.ui.unit.IntOffsetKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FlashMode {
    public final int value;

    static {
        IntOffsetKt.listOf((Object[]) new FlashMode[]{new FlashMode(0), new FlashMode(1), new FlashMode(2)});
    }

    public /* synthetic */ FlashMode(int i) {
        this.value = i;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof FlashMode) {
            return this.value == ((FlashMode) obj).value;
        }
        return false;
    }

    public final int hashCode() {
        return this.value;
    }

    public final String toString() {
        return CameraDevices$CC.m("FlashMode(value=", this.value, ')');
    }
}
