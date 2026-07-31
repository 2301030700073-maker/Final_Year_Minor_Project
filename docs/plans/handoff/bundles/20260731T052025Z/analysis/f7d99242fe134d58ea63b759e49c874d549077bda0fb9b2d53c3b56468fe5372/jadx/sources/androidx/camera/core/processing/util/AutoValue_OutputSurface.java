package androidx.camera.core.processing.util;

import android.opengl.EGLSurface;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AutoValue_OutputSurface {
    public final EGLSurface eglSurface;
    public final int height;
    public final int width;

    public AutoValue_OutputSurface(EGLSurface eGLSurface, int i, int i2) {
        if (eGLSurface == null) {
            Regex$$ExternalSyntheticBUOutline0.m("Null eglSurface");
            throw null;
        }
        this.eglSurface = eGLSurface;
        this.width = i;
        this.height = i2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AutoValue_OutputSurface) {
            AutoValue_OutputSurface autoValue_OutputSurface = (AutoValue_OutputSurface) obj;
            if (this.eglSurface.equals(autoValue_OutputSurface.eglSurface) && this.width == autoValue_OutputSurface.width && this.height == autoValue_OutputSurface.height) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.height ^ ((((this.eglSurface.hashCode() ^ 1000003) * 1000003) ^ this.width) * 1000003);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("OutputSurface{eglSurface=");
        sb.append(this.eglSurface);
        sb.append(", width=");
        sb.append(this.width);
        sb.append(", height=");
        return CameraDevices$CC.m(sb, this.height, "}");
    }
}
