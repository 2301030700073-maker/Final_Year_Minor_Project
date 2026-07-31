package androidx.camera.camera2.config;

import androidx.camera.camera2.adapter.GraphStateToCameraStateAdapter;
import androidx.camera.camera2.adapter.SessionConfigAdapter;
import kotlin.Lazy;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class UseCaseCameraConfig {
    public final Function1 cameraGraphFactory;
    public final GraphStateToCameraStateAdapter graphStateToCameraStateAdapter;
    public final Lazy lazyCreationResult;
    public final SessionConfigAdapter sessionConfigAdapter;

    public UseCaseCameraConfig(Function1 function1, GraphStateToCameraStateAdapter graphStateToCameraStateAdapter, SessionConfigAdapter sessionConfigAdapter, Lazy lazy) {
        function1.getClass();
        this.cameraGraphFactory = function1;
        this.graphStateToCameraStateAdapter = graphStateToCameraStateAdapter;
        this.sessionConfigAdapter = sessionConfigAdapter;
        this.lazyCreationResult = lazy;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!UseCaseCameraConfig.class.equals(obj != null ? obj.getClass() : null)) {
            return false;
        }
        obj.getClass();
        UseCaseCameraConfig useCaseCameraConfig = (UseCaseCameraConfig) obj;
        return this.sessionConfigAdapter == useCaseCameraConfig.sessionConfigAdapter && this.graphStateToCameraStateAdapter == useCaseCameraConfig.graphStateToCameraStateAdapter;
    }

    public final int hashCode() {
        return (this.graphStateToCameraStateAdapter.hashCode() + (this.sessionConfigAdapter.hashCode() * 31)) * 31;
    }

    public final String toString() {
        return "UseCaseCameraConfig(cameraGraphFactory=" + this.cameraGraphFactory + ", graphStateToCameraStateAdapter=" + this.graphStateToCameraStateAdapter + ", sessionConfigAdapter=" + this.sessionConfigAdapter + ", sessionProcessor=null, lazyCreationResult=" + this.lazyCreationResult + ')';
    }
}
