package androidx.camera.camera2.adapter;

import androidx.camera.camera2.pipe.graph.CameraGraphImpl;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class GraphStateToCameraStateAdapter {
    public CameraGraphImpl cameraGraph;
    public final CameraStateAdapter cameraStateAdapter;

    public GraphStateToCameraStateAdapter(CameraStateAdapter cameraStateAdapter) {
        cameraStateAdapter.getClass();
        this.cameraStateAdapter = cameraStateAdapter;
    }

    public final CameraGraphImpl getCameraGraph() {
        CameraGraphImpl cameraGraphImpl = this.cameraGraph;
        if (cameraGraphImpl != null) {
            return cameraGraphImpl;
        }
        Intrinsics.throwUninitializedPropertyAccessException("cameraGraph");
        throw null;
    }
}
