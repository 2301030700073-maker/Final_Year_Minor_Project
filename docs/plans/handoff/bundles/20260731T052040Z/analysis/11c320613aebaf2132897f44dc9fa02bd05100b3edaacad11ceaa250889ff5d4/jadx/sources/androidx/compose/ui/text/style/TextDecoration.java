package androidx.compose.ui.text.style;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.util.ListUtilsKt;
import java.util.ArrayList;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class TextDecoration {
    public static final TextDecoration None = new TextDecoration(0);
    public static final TextDecoration Underline = new TextDecoration(1);
    public final int mask;

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
            return Modifier.CC.m(new StringBuilder("TextDecoration["), ListUtilsKt.fastJoinToString$default(arrayList, ", ", null, 62), ']');
        }
        return "TextDecoration." + ((String) arrayList.get(0));
    }
}
