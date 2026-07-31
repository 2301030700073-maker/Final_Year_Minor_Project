package androidx.compose.ui.text;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.ui.text.AnnotatedString;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class VerbatimTtsAnnotation implements AnnotatedString.Annotation {
    public final String verbatim;

    public VerbatimTtsAnnotation(String str) {
        this.verbatim = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof VerbatimTtsAnnotation) {
            return this.verbatim.equals(((VerbatimTtsAnnotation) obj).verbatim);
        }
        return false;
    }

    public final int hashCode() {
        return this.verbatim.hashCode();
    }

    public final String toString() {
        return CameraDevices$CC.m(new StringBuilder("VerbatimTtsAnnotation(verbatim="), this.verbatim, ')');
    }
}
