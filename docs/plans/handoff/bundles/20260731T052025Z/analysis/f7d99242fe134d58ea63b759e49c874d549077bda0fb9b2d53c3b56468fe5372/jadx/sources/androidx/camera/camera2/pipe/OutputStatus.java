package androidx.camera.camera2.pipe;

import androidx.compose.foundation.text.BasicTextKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class OutputStatus {
    public final int value;

    public final boolean equals(Object obj) {
        if (obj instanceof OutputStatus) {
            return this.value == ((OutputStatus) obj).value;
        }
        return false;
    }

    public final int hashCode() {
        return this.value;
    }

    public final String toString() {
        int i = this.value;
        if (i == 0) {
            return "PENDING";
        }
        if (i == 1) {
            return "AVAILABLE";
        }
        if (i == 2) {
            return "UNAVAILABLE";
        }
        switch (i) {
            case 10:
                return "ERROR_OUTPUT_FAILED";
            case 11:
                return "ERROR_OUTPUT_ABORTED";
            case BasicTextKt.ShiftMeta /* 12 */:
                return "ERROR_OUTPUT_MISSING";
            case 13:
                return "ERROR_OUTPUT_DROPPED";
            default:
                return CameraDevices$CC.m("OutputStatus(value=", i, ')');
        }
    }
}
