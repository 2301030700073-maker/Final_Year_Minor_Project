package androidx.camera.core.imagecapture;

import android.util.Size;
import androidx.camera.core.SurfaceRequest;
import androidx.camera.core.processing.Edge;
import java.util.ArrayList;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AutoValue_CaptureNode_In {
    public final Edge errorEdge;
    public final int inputFormat;
    public final SurfaceRequest.AnonymousClass2 mPostviewSurface = null;
    public SurfaceRequest.AnonymousClass2 mSecondarySurface;
    public SurfaceRequest.AnonymousClass2 mSurface;
    public final ArrayList outputFormats;
    public final Edge requestEdge;
    public final Size size;
    public final boolean virtualCamera;

    public AutoValue_CaptureNode_In(Size size, int i, ArrayList arrayList, boolean z, Edge edge, Edge edge2) {
        if (size == null) {
            Regex$$ExternalSyntheticBUOutline0.m("Null size");
            throw null;
        }
        this.size = size;
        this.inputFormat = i;
        this.outputFormats = arrayList;
        this.virtualCamera = z;
        this.requestEdge = edge;
        this.errorEdge = edge2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AutoValue_CaptureNode_In) {
            AutoValue_CaptureNode_In autoValue_CaptureNode_In = (AutoValue_CaptureNode_In) obj;
            return this.size.equals(autoValue_CaptureNode_In.size) && this.inputFormat == autoValue_CaptureNode_In.inputFormat && this.outputFormats.equals(autoValue_CaptureNode_In.outputFormats) && this.virtualCamera == autoValue_CaptureNode_In.virtualCamera && this.requestEdge == autoValue_CaptureNode_In.requestEdge && this.errorEdge == autoValue_CaptureNode_In.errorEdge;
        }
        return false;
    }

    public final int hashCode() {
        return this.errorEdge.hashCode() ^ ((((((((((this.size.hashCode() ^ 1000003) * 1000003) ^ this.inputFormat) * 1000003) ^ this.outputFormats.hashCode()) * 1000003) ^ (this.virtualCamera ? 1231 : 1237)) * 583896283) ^ this.requestEdge.hashCode()) * 1000003);
    }

    public final String toString() {
        return "In{size=" + this.size + ", inputFormat=" + this.inputFormat + ", outputFormats=" + this.outputFormats + ", virtualCamera=" + this.virtualCamera + ", imageReaderProxyProvider=null, postviewSettings=null, requestEdge=" + this.requestEdge + ", errorEdge=" + this.errorEdge + "}";
    }
}
