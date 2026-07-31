package androidx.compose.runtime;

import androidx.camera.camera2.pipe.CameraDevices$CC;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class OpaqueKey {
    public final String key;

    public OpaqueKey(String str) {
        this.key = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof OpaqueKey) && this.key.equals(((OpaqueKey) obj).key);
    }

    public final int hashCode() {
        return this.key.hashCode();
    }

    public final String toString() {
        return CameraDevices$CC.m(new StringBuilder("OpaqueKey(key="), this.key, ')');
    }
}
