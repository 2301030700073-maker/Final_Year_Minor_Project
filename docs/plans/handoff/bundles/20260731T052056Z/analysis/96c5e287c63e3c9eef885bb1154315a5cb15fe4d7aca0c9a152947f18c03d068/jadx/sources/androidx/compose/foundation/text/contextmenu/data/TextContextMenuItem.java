package androidx.compose.foundation.text.contextmenu.data;

import androidx.compose.animation.core.Animation;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TextContextMenuItem extends TextContextMenuComponent {
    public final String label;
    public final int leadingIcon;
    public final Function1 onClick;

    public TextContextMenuItem(Object obj, String str, int i, Function1 function1) {
        super(obj);
        this.label = str;
        this.leadingIcon = i;
        this.onClick = function1;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("TextContextMenuItem(key=");
        sb.append(this.key);
        sb.append(", label=\"");
        sb.append(this.label);
        sb.append("\", leadingIcon=");
        return Animation.CC.m(sb, this.leadingIcon, ')');
    }
}
