package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.CameraDevices$CC;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class InputConfigData {
    public final int format;
    public final int height;
    public final int width;

    public InputConfigData(int i, int i2, int i3) {
        this.width = i;
        this.height = i2;
        this.format = i3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof InputConfigData)) {
            return false;
        }
        InputConfigData inputConfigData = (InputConfigData) obj;
        return this.width == inputConfigData.width && this.height == inputConfigData.height && this.format == inputConfigData.format;
    }

    public final int hashCode() {
        return (((this.width * 31) + this.height) * 31) + this.format;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("InputConfigData(width=");
        sb.append(this.width);
        sb.append(", height=");
        sb.append(this.height);
        sb.append(", format=");
        return CameraDevices$CC.m(sb, this.format, ')');
    }
}
