package androidx.camera.camera2.adapter;

import androidx.camera.camera2.pipe.CameraDevices$CC;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ZoomValue {
    public final float maxZoomRatio;
    public final float minZoomRatio;

    public ZoomValue(float f, float f2) {
        this.minZoomRatio = f;
        this.maxZoomRatio = f2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ZoomValue)) {
            return false;
        }
        ZoomValue zoomValue = (ZoomValue) obj;
        return Float.compare(1.0f, 1.0f) == 0 && Float.compare(this.minZoomRatio, zoomValue.minZoomRatio) == 0 && Float.compare(this.maxZoomRatio, zoomValue.maxZoomRatio) == 0;
    }

    public final int hashCode() {
        return Float.floatToIntBits(this.maxZoomRatio) + CameraDevices$CC.m(Float.floatToIntBits(1.0f) * 31, this.minZoomRatio, 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ZoomValue(zoomRatio=1.0, minZoomRatio=");
        sb.append(this.minZoomRatio);
        sb.append(", maxZoomRatio=");
        return CameraDevices$CC.m(sb, this.maxZoomRatio, ')');
    }
}
