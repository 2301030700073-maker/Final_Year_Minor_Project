package androidx.compose.material3;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class TextFieldLabelPosition$Attached {
    public final BiasAlignment.Horizontal expandedAlignment;
    public final BiasAlignment.Horizontal minimizedAlignment;

    public TextFieldLabelPosition$Attached() {
        BiasAlignment.Horizontal horizontal = Alignment.Companion.Start;
        this.minimizedAlignment = horizontal;
        this.expandedAlignment = horizontal;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TextFieldLabelPosition$Attached)) {
            return false;
        }
        TextFieldLabelPosition$Attached textFieldLabelPosition$Attached = (TextFieldLabelPosition$Attached) obj;
        return Intrinsics.areEqual(this.minimizedAlignment, textFieldLabelPosition$Attached.minimizedAlignment) && Intrinsics.areEqual(this.expandedAlignment, textFieldLabelPosition$Attached.expandedAlignment);
    }

    public final int hashCode() {
        return Float.floatToIntBits(this.expandedAlignment.bias) + CameraDevices$CC.m(38347, this.minimizedAlignment.bias, 31);
    }

    public final String toString() {
        return "Attached(alwaysMinimize=false, minimizedAlignment=" + this.minimizedAlignment + ", expandedAlignment=" + this.expandedAlignment + ')';
    }
}
