package androidx.camera.core.impl;

import androidx.camera.camera2.pipe.CameraDevices$CC;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CameraValidatorImpl$ValidationCriteria {
    public final boolean checkBack;
    public final boolean checkFront;

    public CameraValidatorImpl$ValidationCriteria(boolean z, boolean z2) {
        this.checkBack = z;
        this.checkFront = z2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CameraValidatorImpl$ValidationCriteria)) {
            return false;
        }
        CameraValidatorImpl$ValidationCriteria cameraValidatorImpl$ValidationCriteria = (CameraValidatorImpl$ValidationCriteria) obj;
        return this.checkBack == cameraValidatorImpl$ValidationCriteria.checkBack && this.checkFront == cameraValidatorImpl$ValidationCriteria.checkFront;
    }

    public final int hashCode() {
        return ((this.checkBack ? 1231 : 1237) * 31) + (this.checkFront ? 1231 : 1237);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ValidationCriteria(checkBack=");
        sb.append(this.checkBack);
        sb.append(", checkFront=");
        return CameraDevices$CC.m(sb, this.checkFront, ')');
    }
}
