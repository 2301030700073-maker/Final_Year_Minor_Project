package kotlinx.collections.immutable.internal;

import androidx.camera.camera2.pipe.CameraDevices$CC;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DeltaCounter {
    public int count;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof DeltaCounter) && this.count == ((DeltaCounter) obj).count;
    }

    public final int hashCode() {
        return this.count;
    }

    public final String toString() {
        return CameraDevices$CC.m(new StringBuilder("DeltaCounter(count="), this.count, ')');
    }
}
