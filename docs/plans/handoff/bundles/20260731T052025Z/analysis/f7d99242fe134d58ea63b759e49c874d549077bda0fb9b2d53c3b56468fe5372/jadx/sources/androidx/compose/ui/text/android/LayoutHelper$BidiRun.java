package androidx.compose.ui.text.android;

import androidx.camera.camera2.pipe.CameraDevices$CC;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LayoutHelper$BidiRun {
    public final int end;
    public final boolean isRtl;
    public final int start;

    public LayoutHelper$BidiRun(int i, int i2, boolean z) {
        this.start = i;
        this.end = i2;
        this.isRtl = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LayoutHelper$BidiRun)) {
            return false;
        }
        LayoutHelper$BidiRun layoutHelper$BidiRun = (LayoutHelper$BidiRun) obj;
        return this.start == layoutHelper$BidiRun.start && this.end == layoutHelper$BidiRun.end && this.isRtl == layoutHelper$BidiRun.isRtl;
    }

    public final int hashCode() {
        return (((this.start * 31) + this.end) * 31) + (this.isRtl ? 1231 : 1237);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("BidiRun(start=");
        sb.append(this.start);
        sb.append(", end=");
        sb.append(this.end);
        sb.append(", isRtl=");
        return CameraDevices$CC.m(sb, this.isRtl, ')');
    }
}
