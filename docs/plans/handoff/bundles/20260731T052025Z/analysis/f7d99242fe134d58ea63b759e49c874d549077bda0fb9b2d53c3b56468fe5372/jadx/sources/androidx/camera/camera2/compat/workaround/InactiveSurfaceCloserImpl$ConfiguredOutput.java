package androidx.camera.camera2.compat.workaround;

import androidx.camera.camera2.pipe.StreamId;
import androidx.camera.camera2.pipe.graph.CameraGraphImpl;
import androidx.camera.core.impl.DeferrableSurface;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class InactiveSurfaceCloserImpl$ConfiguredOutput {
    public final DeferrableSurface deferrableSurface;
    public final CameraGraphImpl graph;
    public final int streamId;

    public InactiveSurfaceCloserImpl$ConfiguredOutput(int i, DeferrableSurface deferrableSurface, CameraGraphImpl cameraGraphImpl) {
        deferrableSurface.getClass();
        this.streamId = i;
        this.deferrableSurface = deferrableSurface;
        this.graph = cameraGraphImpl;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof InactiveSurfaceCloserImpl$ConfiguredOutput) {
            InactiveSurfaceCloserImpl$ConfiguredOutput inactiveSurfaceCloserImpl$ConfiguredOutput = (InactiveSurfaceCloserImpl$ConfiguredOutput) obj;
            return this.streamId == inactiveSurfaceCloserImpl$ConfiguredOutput.streamId && Intrinsics.areEqual(this.deferrableSurface, inactiveSurfaceCloserImpl$ConfiguredOutput.deferrableSurface) && this.graph == inactiveSurfaceCloserImpl$ConfiguredOutput.graph;
        }
        return false;
    }

    public final int hashCode() {
        return this.graph.hashCode() + ((this.deferrableSurface.hashCode() + (this.streamId * 31)) * 31);
    }

    public final String toString() {
        return "ConfiguredOutput(streamId=" + ((Object) StreamId.m46toStringimpl(this.streamId)) + ", deferrableSurface=" + this.deferrableSurface + ", graph=" + this.graph + ')';
    }
}
