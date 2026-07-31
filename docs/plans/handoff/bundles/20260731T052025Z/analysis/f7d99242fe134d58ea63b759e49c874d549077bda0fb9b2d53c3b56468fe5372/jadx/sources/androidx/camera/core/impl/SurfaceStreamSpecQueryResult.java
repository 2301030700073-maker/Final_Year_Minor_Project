package androidx.camera.core.impl;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import java.util.LinkedHashMap;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SurfaceStreamSpecQueryResult {
    public final LinkedHashMap attachedSurfaceStreamSpecs;
    public final int maxSupportedFrameRate;
    public final LinkedHashMap useCaseStreamSpecs;

    public SurfaceStreamSpecQueryResult(LinkedHashMap linkedHashMap, LinkedHashMap linkedHashMap2, int i) {
        this.useCaseStreamSpecs = linkedHashMap;
        this.attachedSurfaceStreamSpecs = linkedHashMap2;
        this.maxSupportedFrameRate = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SurfaceStreamSpecQueryResult)) {
            return false;
        }
        SurfaceStreamSpecQueryResult surfaceStreamSpecQueryResult = (SurfaceStreamSpecQueryResult) obj;
        return this.useCaseStreamSpecs.equals(surfaceStreamSpecQueryResult.useCaseStreamSpecs) && this.attachedSurfaceStreamSpecs.equals(surfaceStreamSpecQueryResult.attachedSurfaceStreamSpecs) && this.maxSupportedFrameRate == surfaceStreamSpecQueryResult.maxSupportedFrameRate;
    }

    public final int hashCode() {
        return ((this.attachedSurfaceStreamSpecs.hashCode() + (this.useCaseStreamSpecs.hashCode() * 31)) * 31) + this.maxSupportedFrameRate;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("SurfaceStreamSpecQueryResult(useCaseStreamSpecs=");
        sb.append(this.useCaseStreamSpecs);
        sb.append(", attachedSurfaceStreamSpecs=");
        sb.append(this.attachedSurfaceStreamSpecs);
        sb.append(", maxSupportedFrameRate=");
        return CameraDevices$CC.m(sb, this.maxSupportedFrameRate, ')');
    }
}
