package androidx.compose.material3;

import androidx.camera.core.impl.Config;
import androidx.compose.ui.graphics.Color;
import kotlin.ULong;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
        return Color.m482equalsimpl0(this.textColor, menuItemColors.textColor) && Color.m482equalsimpl0(this.leadingIconColor, menuItemColors.leadingIconColor) && Color.m482equalsimpl0(this.trailingIconColor, menuItemColors.trailingIconColor) && Color.m482equalsimpl0(this.disabledTextColor, menuItemColors.disabledTextColor) && Color.m482equalsimpl0(this.disabledLeadingIconColor, menuItemColors.disabledLeadingIconColor) && Color.m482equalsimpl0(this.disabledTrailingIconColor, menuItemColors.disabledTrailingIconColor);
    }

    public final int hashCode() {
        int i = Color.$r8$clinit;
        return ULong.m980hashCodeimpl(this.disabledTrailingIconColor) + Config.CC.m(Config.CC.m(Config.CC.m(Config.CC.m(ULong.m980hashCodeimpl(this.textColor) * 31, 31, this.leadingIconColor), 31, this.trailingIconColor), 31, this.disabledTextColor), 31, this.disabledLeadingIconColor);
    }
}
