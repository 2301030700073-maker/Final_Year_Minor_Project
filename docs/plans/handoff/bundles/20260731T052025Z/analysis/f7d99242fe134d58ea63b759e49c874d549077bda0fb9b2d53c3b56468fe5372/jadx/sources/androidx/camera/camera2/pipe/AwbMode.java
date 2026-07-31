package androidx.camera.camera2.pipe;

import androidx.compose.ui.unit.IntOffsetKt;
import java.util.List;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AwbMode {
    public static final List values = IntOffsetKt.listOf((Object[]) new AwbMode[]{new AwbMode(0), new AwbMode(1), new AwbMode(6), new AwbMode(5), new AwbMode(2), new AwbMode(3), new AwbMode(8), new AwbMode(7)});
    public final int value;

    public /* synthetic */ AwbMode(int i) {
        this.value = i;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof AwbMode) {
            return this.value == ((AwbMode) obj).value;
        }
        return false;
    }

    public final int hashCode() {
        return this.value;
    }

    public final String toString() {
        return CameraDevices$CC.m("AwbMode(value=", this.value, ')');
    }
}
