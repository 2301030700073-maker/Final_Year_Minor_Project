package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.camera2.pipe.graph.GraphProcessorImpl;
import java.util.List;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class RequestOpen extends CameraRequest {
    public final GraphProcessorImpl graphListener;
    public final Camera2CameraController$$ExternalSyntheticLambda2 isForegroundObserver;
    public final List sharedCameraIds;
    public final VirtualCameraState virtualCamera;

    public RequestOpen(VirtualCameraState virtualCameraState, List list, GraphProcessorImpl graphProcessorImpl, Camera2CameraController$$ExternalSyntheticLambda2 camera2CameraController$$ExternalSyntheticLambda2) {
        this.virtualCamera = virtualCameraState;
        this.sharedCameraIds = list;
        this.graphListener = graphProcessorImpl;
        this.isForegroundObserver = camera2CameraController$$ExternalSyntheticLambda2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof RequestOpen) {
            RequestOpen requestOpen = (RequestOpen) obj;
            return this.virtualCamera == requestOpen.virtualCamera && this.sharedCameraIds.equals(requestOpen.sharedCameraIds) && this.graphListener == requestOpen.graphListener && this.isForegroundObserver == requestOpen.isForegroundObserver;
        }
        return false;
    }

    public final int hashCode() {
        return this.isForegroundObserver.hashCode() + ((((this.graphListener.hashCode() + CameraDevices$CC.m(this.sharedCameraIds, this.virtualCamera.hashCode() * 31, 31)) * 31) + 1237) * 31);
    }

    public final String toString() {
        return "RequestOpen(virtualCamera=" + this.virtualCamera + ", sharedCameraIds=" + this.sharedCameraIds + ", graphListener=" + this.graphListener + ", isPrewarm=false, isForegroundObserver=" + this.isForegroundObserver + ')';
    }
}
