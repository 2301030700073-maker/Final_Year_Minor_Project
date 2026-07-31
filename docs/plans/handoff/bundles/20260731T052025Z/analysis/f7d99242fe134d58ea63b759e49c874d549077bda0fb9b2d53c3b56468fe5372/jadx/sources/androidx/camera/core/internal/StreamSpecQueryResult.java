package androidx.camera.core.internal;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class StreamSpecQueryResult {
    public final int maxSupportedFrameRate;
    public final Map streamSpecs;

    public StreamSpecQueryResult(int i, Map map) {
        map.getClass();
        this.streamSpecs = map;
        this.maxSupportedFrameRate = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof StreamSpecQueryResult)) {
            return false;
        }
        StreamSpecQueryResult streamSpecQueryResult = (StreamSpecQueryResult) obj;
        return Intrinsics.areEqual(this.streamSpecs, streamSpecQueryResult.streamSpecs) && this.maxSupportedFrameRate == streamSpecQueryResult.maxSupportedFrameRate;
    }

    public final int hashCode() {
        return (this.streamSpecs.hashCode() * 31) + this.maxSupportedFrameRate;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("StreamSpecQueryResult(streamSpecs=");
        sb.append(this.streamSpecs);
        sb.append(", maxSupportedFrameRate=");
        return CameraDevices$CC.m(sb, this.maxSupportedFrameRate, ')');
    }
}
