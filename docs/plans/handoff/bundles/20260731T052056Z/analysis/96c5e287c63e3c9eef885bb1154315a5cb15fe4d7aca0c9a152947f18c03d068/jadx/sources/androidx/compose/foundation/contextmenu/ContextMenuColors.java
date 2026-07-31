package androidx.compose.foundation.contextmenu;

import androidx.compose.animation.core.Animation;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import kotlin.ULong;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ContextMenuColors {
    public final long backgroundColor;
    public final long disabledIconColor;
    public final long disabledTextColor;
    public final long iconColor;
    public final long textColor;

    public ContextMenuColors(long j, long j2, long j3, long j4, long j5) {
        this.backgroundColor = j;
        this.textColor = j2;
        this.iconColor = j3;
        this.disabledTextColor = j4;
        this.disabledIconColor = j5;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof ContextMenuColors)) {
            return false;
        }
        ContextMenuColors contextMenuColors = (ContextMenuColors) obj;
        long j = contextMenuColors.backgroundColor;
        int i = Color.$r8$clinit;
        return ULong.m820equalsimpl0(this.backgroundColor, j) && ULong.m820equalsimpl0(this.textColor, contextMenuColors.textColor) && ULong.m820equalsimpl0(this.iconColor, contextMenuColors.iconColor) && ULong.m820equalsimpl0(this.disabledTextColor, contextMenuColors.disabledTextColor) && ULong.m820equalsimpl0(this.disabledIconColor, contextMenuColors.disabledIconColor);
    }

    public final int hashCode() {
        int i = Color.$r8$clinit;
        return Modifier.CC.m(this.disabledIconColor) + Animation.CC.m(Animation.CC.m(Animation.CC.m(Modifier.CC.m(this.backgroundColor) * 31, 31, this.textColor), 31, this.iconColor), 31, this.disabledTextColor);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ContextMenuColors(backgroundColor=");
        Animation.CC.m(this.backgroundColor, sb, ", textColor=");
        Animation.CC.m(this.textColor, sb, ", iconColor=");
        Animation.CC.m(this.iconColor, sb, ", disabledTextColor=");
        Animation.CC.m(this.disabledTextColor, sb, ", disabledIconColor=");
        sb.append((Object) Color.m434toStringimpl(this.disabledIconColor));
        sb.append(')');
        return sb.toString();
    }
}
