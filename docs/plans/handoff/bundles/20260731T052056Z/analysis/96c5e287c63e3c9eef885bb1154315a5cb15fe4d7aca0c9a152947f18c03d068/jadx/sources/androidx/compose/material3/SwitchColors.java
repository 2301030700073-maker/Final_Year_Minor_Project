package androidx.compose.material3;

import androidx.compose.animation.core.Animation;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import kotlin.ULong;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SwitchColors {
    public final long checkedBorderColor;
    public final long checkedIconColor;
    public final long checkedThumbColor;
    public final long checkedTrackColor;
    public final long disabledCheckedBorderColor;
    public final long disabledCheckedIconColor;
    public final long disabledCheckedThumbColor;
    public final long disabledCheckedTrackColor;
    public final long disabledUncheckedBorderColor;
    public final long disabledUncheckedIconColor;
    public final long disabledUncheckedThumbColor;
    public final long disabledUncheckedTrackColor;
    public final long uncheckedBorderColor;
    public final long uncheckedIconColor;
    public final long uncheckedThumbColor;
    public final long uncheckedTrackColor;

    public SwitchColors(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, long j14, long j15, long j16) {
        this.checkedThumbColor = j;
        this.checkedTrackColor = j2;
        this.checkedBorderColor = j3;
        this.checkedIconColor = j4;
        this.uncheckedThumbColor = j5;
        this.uncheckedTrackColor = j6;
        this.uncheckedBorderColor = j7;
        this.uncheckedIconColor = j8;
        this.disabledCheckedThumbColor = j9;
        this.disabledCheckedTrackColor = j10;
        this.disabledCheckedBorderColor = j11;
        this.disabledCheckedIconColor = j12;
        this.disabledUncheckedThumbColor = j13;
        this.disabledUncheckedTrackColor = j14;
        this.disabledUncheckedBorderColor = j15;
        this.disabledUncheckedIconColor = j16;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof SwitchColors)) {
            return false;
        }
        SwitchColors switchColors = (SwitchColors) obj;
        long j = switchColors.checkedThumbColor;
        int i = Color.$r8$clinit;
        return ULong.m820equalsimpl0(this.checkedThumbColor, j) && ULong.m820equalsimpl0(this.checkedTrackColor, switchColors.checkedTrackColor) && ULong.m820equalsimpl0(this.checkedBorderColor, switchColors.checkedBorderColor) && ULong.m820equalsimpl0(this.checkedIconColor, switchColors.checkedIconColor) && ULong.m820equalsimpl0(this.uncheckedThumbColor, switchColors.uncheckedThumbColor) && ULong.m820equalsimpl0(this.uncheckedTrackColor, switchColors.uncheckedTrackColor) && ULong.m820equalsimpl0(this.uncheckedBorderColor, switchColors.uncheckedBorderColor) && ULong.m820equalsimpl0(this.uncheckedIconColor, switchColors.uncheckedIconColor) && ULong.m820equalsimpl0(this.disabledCheckedThumbColor, switchColors.disabledCheckedThumbColor) && ULong.m820equalsimpl0(this.disabledCheckedTrackColor, switchColors.disabledCheckedTrackColor) && ULong.m820equalsimpl0(this.disabledCheckedBorderColor, switchColors.disabledCheckedBorderColor) && ULong.m820equalsimpl0(this.disabledCheckedIconColor, switchColors.disabledCheckedIconColor) && ULong.m820equalsimpl0(this.disabledUncheckedThumbColor, switchColors.disabledUncheckedThumbColor) && ULong.m820equalsimpl0(this.disabledUncheckedTrackColor, switchColors.disabledUncheckedTrackColor) && ULong.m820equalsimpl0(this.disabledUncheckedBorderColor, switchColors.disabledUncheckedBorderColor) && ULong.m820equalsimpl0(this.disabledUncheckedIconColor, switchColors.disabledUncheckedIconColor);
    }

    public final int hashCode() {
        int i = Color.$r8$clinit;
        return Modifier.CC.m(this.disabledUncheckedIconColor) + Animation.CC.m(Animation.CC.m(Animation.CC.m(Animation.CC.m(Animation.CC.m(Animation.CC.m(Animation.CC.m(Animation.CC.m(Animation.CC.m(Animation.CC.m(Animation.CC.m(Animation.CC.m(Animation.CC.m(Animation.CC.m(Modifier.CC.m(this.checkedThumbColor) * 31, 31, this.checkedTrackColor), 31, this.checkedBorderColor), 31, this.checkedIconColor), 31, this.uncheckedThumbColor), 31, this.uncheckedTrackColor), 31, this.uncheckedBorderColor), 31, this.uncheckedIconColor), 31, this.disabledCheckedThumbColor), 31, this.disabledCheckedTrackColor), 31, this.disabledCheckedBorderColor), 31, this.disabledCheckedIconColor), 31, this.disabledUncheckedThumbColor), 31, this.disabledUncheckedTrackColor), 31, this.disabledUncheckedBorderColor);
    }
}
