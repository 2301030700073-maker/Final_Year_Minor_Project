package androidx.compose.foundation.contextmenu;

import androidx.camera.core.impl.Config;
import androidx.compose.ui.graphics.Color;
import kotlin.ULong;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
        return Color.m482equalsimpl0(this.backgroundColor, contextMenuColors.backgroundColor) && Color.m482equalsimpl0(this.textColor, contextMenuColors.textColor) && Color.m482equalsimpl0(this.iconColor, contextMenuColors.iconColor) && Color.m482equalsimpl0(this.disabledTextColor, contextMenuColors.disabledTextColor) && Color.m482equalsimpl0(this.disabledIconColor, contextMenuColors.disabledIconColor);
    }

    public final int hashCode() {
        int i = Color.$r8$clinit;
        return ULong.m980hashCodeimpl(this.disabledIconColor) + Config.CC.m(Config.CC.m(Config.CC.m(ULong.m980hashCodeimpl(this.backgroundColor) * 31, 31, this.textColor), 31, this.iconColor), 31, this.disabledTextColor);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ContextMenuColors(backgroundColor=");
        Config.CC.m(this.backgroundColor, sb, ", textColor=");
        Config.CC.m(this.textColor, sb, ", iconColor=");
        Config.CC.m(this.iconColor, sb, ", disabledTextColor=");
        Config.CC.m(this.disabledTextColor, sb, ", disabledIconColor=");
        sb.append((Object) Color.m488toStringimpl(this.disabledIconColor));
        sb.append(')');
        return sb.toString();
    }
}
