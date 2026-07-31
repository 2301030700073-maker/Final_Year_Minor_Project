package androidx.camera.lifecycle;

import androidx.camera.core.CameraIdentifier;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AutoValue_LifecycleCameraRepository_Key {
    public final CameraIdentifier cameraIdentifier;
    public final int lifecycleOwnerHash;

    public AutoValue_LifecycleCameraRepository_Key(int i, CameraIdentifier cameraIdentifier) {
        this.lifecycleOwnerHash = i;
        if (cameraIdentifier != null) {
            this.cameraIdentifier = cameraIdentifier;
        } else {
            Regex$$ExternalSyntheticBUOutline0.m("Null cameraIdentifier");
            throw null;
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AutoValue_LifecycleCameraRepository_Key) {
            AutoValue_LifecycleCameraRepository_Key autoValue_LifecycleCameraRepository_Key = (AutoValue_LifecycleCameraRepository_Key) obj;
            if (this.lifecycleOwnerHash == autoValue_LifecycleCameraRepository_Key.lifecycleOwnerHash && this.cameraIdentifier.equals(autoValue_LifecycleCameraRepository_Key.cameraIdentifier)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.cameraIdentifier.hashCode() ^ ((this.lifecycleOwnerHash ^ 1000003) * 1000003);
    }

    public final String toString() {
        return "Key{lifecycleOwnerHash=" + this.lifecycleOwnerHash + ", cameraIdentifier=" + this.cameraIdentifier + "}";
    }
}
