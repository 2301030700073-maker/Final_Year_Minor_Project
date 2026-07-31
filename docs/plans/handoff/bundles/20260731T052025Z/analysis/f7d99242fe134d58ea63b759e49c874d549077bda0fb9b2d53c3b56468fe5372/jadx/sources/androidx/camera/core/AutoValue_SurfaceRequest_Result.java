package androidx.camera.core;

import android.view.Surface;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AutoValue_SurfaceRequest_Result {
    public final int resultCode;
    public final Surface surface;

    public AutoValue_SurfaceRequest_Result(int i, Surface surface) {
        this.resultCode = i;
        if (surface != null) {
            this.surface = surface;
        } else {
            Regex$$ExternalSyntheticBUOutline0.m("Null surface");
            throw null;
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AutoValue_SurfaceRequest_Result)) {
            return false;
        }
        AutoValue_SurfaceRequest_Result autoValue_SurfaceRequest_Result = (AutoValue_SurfaceRequest_Result) obj;
        return this.resultCode == autoValue_SurfaceRequest_Result.resultCode && this.surface.equals(autoValue_SurfaceRequest_Result.surface);
    }

    public final int hashCode() {
        return this.surface.hashCode() ^ ((this.resultCode ^ 1000003) * 1000003);
    }

    public final String toString() {
        return "Result{resultCode=" + this.resultCode + ", surface=" + this.surface + "}";
    }
}
