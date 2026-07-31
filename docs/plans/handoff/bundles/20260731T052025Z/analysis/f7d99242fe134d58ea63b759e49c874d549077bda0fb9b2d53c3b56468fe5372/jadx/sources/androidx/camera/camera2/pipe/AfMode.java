package androidx.camera.camera2.pipe;

import androidx.compose.ui.unit.IntOffsetKt;
import java.util.List;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AfMode {
    public static final List values = IntOffsetKt.listOf((Object[]) new AfMode[]{new AfMode(0), new AfMode(1), new AfMode(2), new AfMode(3), new AfMode(4), new AfMode(5)});
    public final int value;

    public /* synthetic */ AfMode(int i) {
        this.value = i;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof AfMode) {
            return this.value == ((AfMode) obj).value;
        }
        return false;
    }

    public final int hashCode() {
        return this.value;
    }

    public final String toString() {
        return CameraDevices$CC.m("AfMode(value=", this.value, ')');
    }
}
