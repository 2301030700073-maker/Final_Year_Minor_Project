package androidx.compose.material3;

import androidx.compose.animation.core.Animation;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import kotlin.ULong;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof IconButtonColors)) {
            return false;
        }
        IconButtonColors iconButtonColors = (IconButtonColors) obj;
        long j = iconButtonColors.containerColor;
        int i = Color.$r8$clinit;
        return ULong.m820equalsimpl0(this.containerColor, j) && ULong.m820equalsimpl0(this.contentColor, iconButtonColors.contentColor) && ULong.m820equalsimpl0(this.disabledContainerColor, iconButtonColors.disabledContainerColor) && ULong.m820equalsimpl0(this.disabledContentColor, iconButtonColors.disabledContentColor);
    }

    public final int hashCode() {
        int i = Color.$r8$clinit;
        return Modifier.CC.m(this.disabledContentColor) + Animation.CC.m(Animation.CC.m(Modifier.CC.m(this.containerColor) * 31, 31, this.contentColor), 31, this.disabledContainerColor);
    }
}
