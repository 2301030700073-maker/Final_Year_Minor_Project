package androidx.compose.material3;

import androidx.compose.animation.core.Animation;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import kotlin.ULong;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
        long j = topAppBarColors.containerColor;
        int i = Color.$r8$clinit;
        return ULong.m820equalsimpl0(this.containerColor, j) && ULong.m820equalsimpl0(this.scrolledContainerColor, topAppBarColors.scrolledContainerColor) && ULong.m820equalsimpl0(this.navigationIconContentColor, topAppBarColors.navigationIconContentColor) && ULong.m820equalsimpl0(this.titleContentColor, topAppBarColors.titleContentColor) && ULong.m820equalsimpl0(this.actionIconContentColor, topAppBarColors.actionIconContentColor) && ULong.m820equalsimpl0(this.subtitleContentColor, topAppBarColors.subtitleContentColor);
    }

    public final int hashCode() {
        int i = Color.$r8$clinit;
        return Modifier.CC.m(this.subtitleContentColor) + Animation.CC.m(Animation.CC.m(Animation.CC.m(Animation.CC.m(Modifier.CC.m(this.containerColor) * 31, 31, this.scrolledContainerColor), 31, this.navigationIconContentColor), 31, this.titleContentColor), 31, this.actionIconContentColor);
    }
}
