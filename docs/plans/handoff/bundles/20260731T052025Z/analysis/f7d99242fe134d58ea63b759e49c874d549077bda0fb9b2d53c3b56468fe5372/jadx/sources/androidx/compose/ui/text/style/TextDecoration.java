package androidx.compose.ui.text.style;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.ui.util.ListUtilsKt;
import java.util.ArrayList;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class TextDecoration {
    public final int mask;
    public static final TextDecoration None = new TextDecoration(0);
    public static final TextDecoration Underline = new TextDecoration(1);
    public static final TextDecoration LineThrough = new TextDecoration(2);

    public TextDecoration(int i) {
        this.mask = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TextDecoration) {
            return this.mask == ((TextDecoration) obj).mask;
        }
        return false;
    }

    public final int hashCode() {
        return this.mask;
    }

    public final String toString() {
        int i = this.mask;
        if (i == 0) {
            return "TextDecoration.None";
        }
        ArrayList arrayList = new ArrayList();
        if ((i & 1) != 0) {
            arrayList.add("Underline");
        }
        if ((i & 2) != 0) {
            arrayList.add("LineThrough");
        }
        if (arrayList.size() != 1) {
            return CameraDevices$CC.m(new StringBuilder("TextDecoration["), ListUtilsKt.fastJoinToString$default(arrayList, ", ", null, 62), ']');
        }
        return "TextDecoration." + ((String) arrayList.get(0));
    }
}
