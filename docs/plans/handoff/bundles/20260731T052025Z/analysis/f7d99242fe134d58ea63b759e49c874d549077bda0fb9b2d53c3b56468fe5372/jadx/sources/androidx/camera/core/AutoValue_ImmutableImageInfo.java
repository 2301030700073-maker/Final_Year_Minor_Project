package androidx.camera.core;

import android.graphics.Matrix;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.core.impl.TagBundle;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AutoValue_ImmutableImageInfo implements ImageInfo {
    public final int flashState;
    public final int rotationDegrees;
    public final Matrix sensorToBufferTransformMatrix;
    public final TagBundle tagBundle;
    public final long timestamp;

    public AutoValue_ImmutableImageInfo(TagBundle tagBundle, long j, int i, Matrix matrix, int i2) {
        if (tagBundle == null) {
            Regex$$ExternalSyntheticBUOutline0.m("Null tagBundle");
            throw null;
        }
        this.tagBundle = tagBundle;
        this.timestamp = j;
        this.rotationDegrees = i;
        this.sensorToBufferTransformMatrix = matrix;
        this.flashState = i2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AutoValue_ImmutableImageInfo)) {
            return false;
        }
        AutoValue_ImmutableImageInfo autoValue_ImmutableImageInfo = (AutoValue_ImmutableImageInfo) obj;
        return this.tagBundle.equals(autoValue_ImmutableImageInfo.tagBundle) && this.timestamp == autoValue_ImmutableImageInfo.timestamp && this.rotationDegrees == autoValue_ImmutableImageInfo.rotationDegrees && this.sensorToBufferTransformMatrix.equals(autoValue_ImmutableImageInfo.sensorToBufferTransformMatrix) && this.flashState == autoValue_ImmutableImageInfo.flashState;
    }

    @Override // androidx.camera.core.ImageInfo
    public final int getFlashState() {
        return this.flashState;
    }

    @Override // androidx.camera.core.ImageInfo
    public final TagBundle getTagBundle() {
        return this.tagBundle;
    }

    @Override // androidx.camera.core.ImageInfo
    public final long getTimestamp() {
        return this.timestamp;
    }

    public final int hashCode() {
        int hashCode = (this.tagBundle.hashCode() ^ 1000003) * 1000003;
        long j = this.timestamp;
        return this.flashState ^ ((((((hashCode ^ ((int) (j ^ (j >>> 32)))) * 1000003) ^ this.rotationDegrees) * 1000003) ^ this.sensorToBufferTransformMatrix.hashCode()) * 1000003);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ImmutableImageInfo{tagBundle=");
        sb.append(this.tagBundle);
        sb.append(", timestamp=");
        sb.append(this.timestamp);
        sb.append(", rotationDegrees=");
        sb.append(this.rotationDegrees);
        sb.append(", sensorToBufferTransformMatrix=");
        sb.append(this.sensorToBufferTransformMatrix);
        sb.append(", flashState=");
        return CameraDevices$CC.m(sb, this.flashState, "}");
    }
}
