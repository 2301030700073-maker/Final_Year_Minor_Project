package androidx.camera.core.impl;

import android.os.Handler;
import java.util.concurrent.Executor;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AutoValue_CameraThreadConfig {
    public final Executor cameraExecutor;
    public final Handler schedulerHandler;

    public AutoValue_CameraThreadConfig(Executor executor, Handler handler) {
        if (executor == null) {
            Regex$$ExternalSyntheticBUOutline0.m("Null cameraExecutor");
            throw null;
        }
        this.cameraExecutor = executor;
        if (handler != null) {
            this.schedulerHandler = handler;
        } else {
            Regex$$ExternalSyntheticBUOutline0.m("Null schedulerHandler");
            throw null;
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AutoValue_CameraThreadConfig) {
            AutoValue_CameraThreadConfig autoValue_CameraThreadConfig = (AutoValue_CameraThreadConfig) obj;
            if (this.cameraExecutor.equals(autoValue_CameraThreadConfig.cameraExecutor) && this.schedulerHandler.equals(autoValue_CameraThreadConfig.schedulerHandler)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.schedulerHandler.hashCode() ^ ((this.cameraExecutor.hashCode() ^ 1000003) * 1000003);
    }

    public final String toString() {
        return "CameraThreadConfig{cameraExecutor=" + this.cameraExecutor + ", schedulerHandler=" + this.schedulerHandler + "}";
    }
}
