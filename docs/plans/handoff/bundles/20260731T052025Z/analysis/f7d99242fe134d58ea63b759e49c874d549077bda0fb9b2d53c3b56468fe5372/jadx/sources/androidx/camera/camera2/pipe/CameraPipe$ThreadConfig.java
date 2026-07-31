package androidx.camera.camera2.pipe;

import androidx.camera.core.impl.utils.executor.SequentialExecutor;
import java.util.concurrent.Executor;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CameraPipe$ThreadConfig {
    public final Executor defaultCameraExecutor;

    public CameraPipe$ThreadConfig(SequentialExecutor sequentialExecutor, int i) {
        this.defaultCameraExecutor = (i & 8) != 0 ? null : sequentialExecutor;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof CameraPipe$ThreadConfig) && Intrinsics.areEqual(this.defaultCameraExecutor, ((CameraPipe$ThreadConfig) obj).defaultCameraExecutor);
    }

    public final int hashCode() {
        Executor executor = this.defaultCameraExecutor;
        return (executor == null ? 0 : executor.hashCode()) * 29791;
    }

    public final String toString() {
        return "ThreadConfig(defaultLightweightExecutor=null, defaultBackgroundExecutor=null, defaultBlockingExecutor=null, defaultCameraExecutor=" + this.defaultCameraExecutor + ", defaultCameraHandler=null, defaultCameraHandlerFn=null, testOnlyScope=null)";
    }
}
