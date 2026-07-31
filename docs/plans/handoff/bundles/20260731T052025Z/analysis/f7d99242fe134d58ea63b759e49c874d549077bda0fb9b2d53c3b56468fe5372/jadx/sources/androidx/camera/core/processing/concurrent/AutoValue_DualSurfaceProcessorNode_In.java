package androidx.camera.core.processing.concurrent;

import androidx.camera.core.processing.SurfaceEdge;
import java.util.ArrayList;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AutoValue_DualSurfaceProcessorNode_In {
    public final ArrayList outConfigs;
    public final SurfaceEdge primarySurfaceEdge;
    public final SurfaceEdge secondarySurfaceEdge;

    public AutoValue_DualSurfaceProcessorNode_In(SurfaceEdge surfaceEdge, SurfaceEdge surfaceEdge2, ArrayList arrayList) {
        if (surfaceEdge == null) {
            Regex$$ExternalSyntheticBUOutline0.m("Null primarySurfaceEdge");
            throw null;
        }
        this.primarySurfaceEdge = surfaceEdge;
        if (surfaceEdge2 == null) {
            Regex$$ExternalSyntheticBUOutline0.m("Null secondarySurfaceEdge");
            throw null;
        }
        this.secondarySurfaceEdge = surfaceEdge2;
        this.outConfigs = arrayList;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AutoValue_DualSurfaceProcessorNode_In)) {
            return false;
        }
        AutoValue_DualSurfaceProcessorNode_In autoValue_DualSurfaceProcessorNode_In = (AutoValue_DualSurfaceProcessorNode_In) obj;
        return this.primarySurfaceEdge.equals(autoValue_DualSurfaceProcessorNode_In.primarySurfaceEdge) && this.secondarySurfaceEdge.equals(autoValue_DualSurfaceProcessorNode_In.secondarySurfaceEdge) && this.outConfigs.equals(autoValue_DualSurfaceProcessorNode_In.outConfigs);
    }

    public final int hashCode() {
        return this.outConfigs.hashCode() ^ ((((this.primarySurfaceEdge.hashCode() ^ 1000003) * 1000003) ^ this.secondarySurfaceEdge.hashCode()) * 1000003);
    }

    public final String toString() {
        return "In{primarySurfaceEdge=" + this.primarySurfaceEdge + ", secondarySurfaceEdge=" + this.secondarySurfaceEdge + ", outConfigs=" + this.outConfigs + "}";
    }
}
