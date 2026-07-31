package androidx.compose.foundation.text.contextmenu.data;

import android.view.textclassifier.TextClassification;
import androidx.compose.animation.core.Animation;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
        return Animation.CC.m(sb, this.index, ')');
    }
}
