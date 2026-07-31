package androidx.compose.material3;

import androidx.compose.animation.core.Animation;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import kotlin.ULong;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class MenuItemColors {
    public final long disabledLeadingIconColor;
    public final long disabledTextColor;
    public final long disabledTrailingIconColor;
    public final long leadingIconColor;
    public final long textColor;
    public final long trailingIconColor;

    public MenuItemColors(long j, long j2, long j3, long j4, long j5, long j6) {
        this.textColor = j;
        this.leadingIconColor = j2;
        this.trailingIconColor = j3;
        this.disabledTextColor = j4;
        this.disabledLeadingIconColor = j5;
        this.disabledTrailingIconColor = j6;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof MenuItemColors)) {
            return false;
        }
        MenuItemColors menuItemColors = (MenuItemColors) obj;
        long j = menuItemColors.textColor;
        int i = Color.$r8$clinit;
        return ULong.m820equalsimpl0(this.textColor, j) && ULong.m820equalsimpl0(this.leadingIconColor, menuItemColors.leadingIconColor) && ULong.m820equalsimpl0(this.trailingIconColor, menuItemColors.trailingIconColor) && ULong.m820equalsimpl0(this.disabledTextColor, menuItemColors.disabledTextColor) && ULong.m820equalsimpl0(this.disabledLeadingIconColor, menuItemColors.disabledLeadingIconColor) && ULong.m820equalsimpl0(this.disabledTrailingIconColor, menuItemColors.disabledTrailingIconColor);
    }

    public final int hashCode() {
        int i = Color.$r8$clinit;
        return Modifier.CC.m(this.disabledTrailingIconColor) + Animation.CC.m(Animation.CC.m(Animation.CC.m(Animation.CC.m(Modifier.CC.m(this.textColor) * 31, 31, this.leadingIconColor), 31, this.trailingIconColor), 31, this.disabledTextColor), 31, this.disabledLeadingIconColor);
    }
}
