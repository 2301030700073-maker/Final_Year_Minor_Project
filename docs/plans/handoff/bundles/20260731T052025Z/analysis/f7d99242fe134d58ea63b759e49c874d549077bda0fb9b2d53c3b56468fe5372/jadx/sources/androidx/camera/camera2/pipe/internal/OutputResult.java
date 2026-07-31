package androidx.camera.camera2.pipe.internal;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class OutputResult {
    public final Object result;

    public final boolean equals(Object obj) {
        if (obj instanceof OutputResult) {
            return Intrinsics.areEqual(this.result, ((OutputResult) obj).result);
        }
        return false;
    }

    public final int hashCode() {
        Object obj = this.result;
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    public final String toString() {
        return "OutputResult(result=" + this.result + ')';
    }
}
