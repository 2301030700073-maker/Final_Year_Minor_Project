package androidx.compose.material3;

import androidx.compose.animation.core.Animation;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import kotlin.ULong;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ChipColors {
    public final long containerColor;
    public final long disabledContainerColor;
    public final long disabledLabelColor;
    public final long disabledLeadingIconContentColor;
    public final long disabledTrailingIconContentColor;
    public final long labelColor;
    public final long leadingIconContentColor;
    public final long trailingIconContentColor;

    public ChipColors(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8) {
        this.containerColor = j;
        this.labelColor = j2;
        this.leadingIconContentColor = j3;
        this.trailingIconContentColor = j4;
        this.disabledContainerColor = j5;
        this.disabledLabelColor = j6;
        this.disabledLeadingIconContentColor = j7;
        this.disabledTrailingIconContentColor = j8;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof ChipColors)) {
            return false;
        }
        ChipColors chipColors = (ChipColors) obj;
        long j = chipColors.containerColor;
        int i = Color.$r8$clinit;
        return ULong.m820equalsimpl0(this.containerColor, j) && ULong.m820equalsimpl0(this.labelColor, chipColors.labelColor) && ULong.m820equalsimpl0(this.leadingIconContentColor, chipColors.leadingIconContentColor) && ULong.m820equalsimpl0(this.trailingIconContentColor, chipColors.trailingIconContentColor) && ULong.m820equalsimpl0(this.disabledContainerColor, chipColors.disabledContainerColor) && ULong.m820equalsimpl0(this.disabledLabelColor, chipColors.disabledLabelColor) && ULong.m820equalsimpl0(this.disabledLeadingIconContentColor, chipColors.disabledLeadingIconContentColor) && ULong.m820equalsimpl0(this.disabledTrailingIconContentColor, chipColors.disabledTrailingIconContentColor);
    }

    public final int hashCode() {
        int i = Color.$r8$clinit;
        return Modifier.CC.m(this.disabledTrailingIconContentColor) + Animation.CC.m(Animation.CC.m(Animation.CC.m(Animation.CC.m(Animation.CC.m(Animation.CC.m(Modifier.CC.m(this.containerColor) * 31, 31, this.labelColor), 31, this.leadingIconContentColor), 31, this.trailingIconContentColor), 31, this.disabledContainerColor), 31, this.disabledLabelColor), 31, this.disabledLeadingIconContentColor);
    }
}
