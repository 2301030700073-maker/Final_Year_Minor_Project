package androidx.compose.foundation.text.selection;

import androidx.camera.core.impl.Config;
import androidx.compose.ui.graphics.Color;
import kotlin.ULong;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
        return Color.m482equalsimpl0(this.handleColor, textSelectionColors.handleColor) && Color.m482equalsimpl0(this.backgroundColor, textSelectionColors.backgroundColor);
    }

    public final int hashCode() {
        int i = Color.$r8$clinit;
        return ULong.m980hashCodeimpl(this.backgroundColor) + (ULong.m980hashCodeimpl(this.handleColor) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("SelectionColors(selectionHandleColor=");
        Config.CC.m(this.handleColor, sb, ", selectionBackgroundColor=");
        sb.append((Object) Color.m488toStringimpl(this.backgroundColor));
        sb.append(')');
        return sb.toString();
    }
}
