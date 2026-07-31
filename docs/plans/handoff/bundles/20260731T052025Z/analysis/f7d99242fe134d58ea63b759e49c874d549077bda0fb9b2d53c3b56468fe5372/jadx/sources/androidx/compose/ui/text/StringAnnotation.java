package androidx.compose.ui.text;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.ui.text.AnnotatedString;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class StringAnnotation implements AnnotatedString.Annotation {
    public final String value;

    public /* synthetic */ StringAnnotation(String str) {
        this.value = str;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof StringAnnotation) {
            return this.value.equals(((StringAnnotation) obj).value);
        }
        return false;
    }

    public final int hashCode() {
        return this.value.hashCode();
    }

    public final String toString() {
        return CameraDevices$CC.m(')', "StringAnnotation(value=", this.value);
    }
}
