package androidx.compose.material3;

import androidx.camera.core.impl.Config;
import androidx.compose.ui.graphics.Color;
import kotlin.ULong;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class IconButtonColors {
    public final long containerColor;
    public final long contentColor;
    public final long disabledContainerColor;
    public final long disabledContentColor;

    public IconButtonColors(long j, long j2, long j3, long j4) {
        this.containerColor = j;
        this.contentColor = j2;
        this.disabledContainerColor = j3;
        this.disabledContentColor = j4;
    }

    /* renamed from: copy-jRlVdoo, reason: not valid java name */
    public final IconButtonColors m343copyjRlVdoo(long j, long j2, long j3, long j4) {
        return new IconButtonColors(j != 16 ? j : this.containerColor, j2 != 16 ? j2 : this.contentColor, j3 != 16 ? j3 : this.disabledContainerColor, j4 != 16 ? j4 : this.disabledContentColor);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof IconButtonColors)) {
            return false;
        }
        IconButtonColors iconButtonColors = (IconButtonColors) obj;
        return Color.m482equalsimpl0(this.containerColor, iconButtonColors.containerColor) && Color.m482equalsimpl0(this.contentColor, iconButtonColors.contentColor) && Color.m482equalsimpl0(this.disabledContainerColor, iconButtonColors.disabledContainerColor) && Color.m482equalsimpl0(this.disabledContentColor, iconButtonColors.disabledContentColor);
    }

    public final int hashCode() {
        int i = Color.$r8$clinit;
        return ULong.m980hashCodeimpl(this.disabledContentColor) + Config.CC.m(Config.CC.m(ULong.m980hashCodeimpl(this.containerColor) * 31, 31, this.contentColor), 31, this.disabledContainerColor);
    }
}
