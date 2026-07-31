package androidx.compose.ui.autofill;

import androidx.camera.camera2.pipe.CameraDevices$CC;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AndroidContentDataType {
    public final int androidAutofillType;

    public final boolean equals(Object obj) {
        if (obj instanceof AndroidContentDataType) {
            return this.androidAutofillType == ((AndroidContentDataType) obj).androidAutofillType;
        }
        return false;
    }

    public final int hashCode() {
        return this.androidAutofillType;
    }

    public final String toString() {
        return CameraDevices$CC.m("AndroidContentDataType(androidAutofillType=", this.androidAutofillType, ')');
    }
}
