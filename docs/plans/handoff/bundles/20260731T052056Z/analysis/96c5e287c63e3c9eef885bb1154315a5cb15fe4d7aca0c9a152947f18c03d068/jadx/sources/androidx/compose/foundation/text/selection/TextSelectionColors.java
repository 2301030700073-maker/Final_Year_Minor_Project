package androidx.compose.foundation.text.selection;

import androidx.compose.animation.core.Animation;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import kotlin.ULong;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TextSelectionColors {
    public final long backgroundColor;
    public final long handleColor;

    public TextSelectionColors(long j, long j2) {
        this.handleColor = j;
        this.backgroundColor = j2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TextSelectionColors)) {
            return false;
        }
        TextSelectionColors textSelectionColors = (TextSelectionColors) obj;
        long j = textSelectionColors.handleColor;
        int i = Color.$r8$clinit;
        return ULong.m820equalsimpl0(this.handleColor, j) && ULong.m820equalsimpl0(this.backgroundColor, textSelectionColors.backgroundColor);
    }

    public final int hashCode() {
        int i = Color.$r8$clinit;
        return Modifier.CC.m(this.backgroundColor) + (Modifier.CC.m(this.handleColor) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("SelectionColors(selectionHandleColor=");
        Animation.CC.m(this.handleColor, sb, ", selectionBackgroundColor=");
        sb.append((Object) Color.m434toStringimpl(this.backgroundColor));
        sb.append(')');
        return sb.toString();
    }
}
