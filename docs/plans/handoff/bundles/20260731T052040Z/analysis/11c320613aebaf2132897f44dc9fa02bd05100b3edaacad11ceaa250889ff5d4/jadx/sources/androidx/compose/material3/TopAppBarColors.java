package androidx.compose.material3;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import kotlin.ULong;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class TopAppBarColors {
    public final long actionIconContentColor;
    public final long containerColor;
    public final long navigationIconContentColor;
    public final long scrolledContainerColor;
    public final long subtitleContentColor;
    public final long titleContentColor;

    public TopAppBarColors(long j, long j2, long j3, long j4, long j5, long j6) {
        this.containerColor = j;
        this.scrolledContainerColor = j2;
        this.navigationIconContentColor = j3;
        this.titleContentColor = j4;
        this.actionIconContentColor = j5;
        this.subtitleContentColor = j6;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof TopAppBarColors)) {
            return false;
        }
        TopAppBarColors topAppBarColors = (TopAppBarColors) obj;
        return Color.m244equalsimpl0(this.containerColor, topAppBarColors.containerColor) && Color.m244equalsimpl0(this.scrolledContainerColor, topAppBarColors.scrolledContainerColor) && Color.m244equalsimpl0(this.navigationIconContentColor, topAppBarColors.navigationIconContentColor) && Color.m244equalsimpl0(this.titleContentColor, topAppBarColors.titleContentColor) && Color.m244equalsimpl0(this.actionIconContentColor, topAppBarColors.actionIconContentColor) && Color.m244equalsimpl0(this.subtitleContentColor, topAppBarColors.subtitleContentColor);
    }

    public final int hashCode() {
        int i = Color.$r8$clinit;
        return ULong.m658hashCodeimpl(this.subtitleContentColor) + Modifier.CC.m(Modifier.CC.m(Modifier.CC.m(Modifier.CC.m(ULong.m658hashCodeimpl(this.containerColor) * 31, this.scrolledContainerColor, 31), this.navigationIconContentColor, 31), this.titleContentColor, 31), this.actionIconContentColor, 31);
    }
}
