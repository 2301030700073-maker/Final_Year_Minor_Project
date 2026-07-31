package androidx.camera.camera2.pipe;

import androidx.camera.camera2.pipe.compat.AndroidFrameMetadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Result3A {
    public final AndroidFrameMetadata frameMetadata;
    public final int status;

    public Result3A(int i, AndroidFrameMetadata androidFrameMetadata) {
        this.status = i;
        this.frameMetadata = androidFrameMetadata;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Result3A)) {
            return false;
        }
        Result3A result3A = (Result3A) obj;
        return this.status == result3A.status && Intrinsics.areEqual(this.frameMetadata, result3A.frameMetadata);
    }

    public final int hashCode() {
        int i = this.status * 31;
        AndroidFrameMetadata androidFrameMetadata = this.frameMetadata;
        return i + (androidFrameMetadata == null ? 0 : androidFrameMetadata.hashCode());
    }

    public final String toString() {
        return "Result3A(status=" + ((Object) ("Status(value=" + this.status + ')')) + ", frameMetadata=" + this.frameMetadata + ')';
    }
}
