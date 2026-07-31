package androidx.camera.camera2.pipe;

import androidx.compose.ui.unit.IntOffsetKt;
import java.util.List;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AeMode {
    public static final List values = IntOffsetKt.listOf((Object[]) new AeMode[]{new AeMode(0), new AeMode(1), new AeMode(2), new AeMode(3), new AeMode(4), new AeMode(5), new AeMode(6)});
    public final int value;

    public /* synthetic */ AeMode(int i) {
        this.value = i;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof AeMode) {
            return this.value == ((AeMode) obj).value;
        }
        return false;
    }

    public final int hashCode() {
        return this.value;
    }

    public final String toString() {
        return CameraDevices$CC.m("AeMode(value=", this.value, ')');
    }
}
