package androidx.compose.foundation.text.contextmenu.data;

import android.view.textclassifier.TextClassification;
import androidx.camera.camera2.pipe.CameraDevices$CC;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class TextContextMenuTextClassificationItem extends TextContextMenuComponent {
    public final int index;
    public final TextClassification textClassification;

    public TextContextMenuTextClassificationItem(Object obj, TextClassification textClassification, int i) {
        super(obj);
        this.textClassification = textClassification;
        this.index = i;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("TextContextMenuRemoteActionItem(key=");
        sb.append(this.key);
        sb.append(", textClassification=");
        sb.append(this.textClassification);
        sb.append(", index=");
        return CameraDevices$CC.m(sb, this.index, ')');
    }
}
