package androidx.compose.material3;

import androidx.compose.animation.core.Animation;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import kotlin.ULong;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SelectableChipColors {
    public final long containerColor;
    public final long disabledContainerColor;
    public final long disabledLabelColor;
    public final long disabledLeadingIconColor;
    public final long disabledSelectedContainerColor;
    public final long disabledTrailingIconColor;
    public final long labelColor;
    public final long leadingIconColor;
    public final long selectedContainerColor;
    public final long selectedLabelColor;
    public final long selectedLeadingIconColor;
    public final long selectedTrailingIconColor;
    public final long trailingIconColor;

    public SelectableChipColors(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13) {
        this.containerColor = j;
        this.labelColor = j2;
        this.leadingIconColor = j3;
        this.trailingIconColor = j4;
        this.disabledContainerColor = j5;
        this.disabledLabelColor = j6;
        this.disabledLeadingIconColor = j7;
        this.disabledTrailingIconColor = j8;
        this.selectedContainerColor = j9;
        this.disabledSelectedContainerColor = j10;
        this.selectedLabelColor = j11;
        this.selectedLeadingIconColor = j12;
        this.selectedTrailingIconColor = j13;
    }

    /* renamed from: copy-daRQuJA, reason: not valid java name */
    public final SelectableChipColors m296copydaRQuJA(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13) {
        long j14;
        long j15;
        long j16;
        long j17;
        long j18;
        long j19;
        long j20;
        long j21;
        long j22;
        long j23;
        long j24;
        long j25;
        long j26;
        long j27;
        long j28 = j != 16 ? j : this.containerColor;
        long j29 = j2 != 16 ? j2 : this.labelColor;
        long j30 = j3 != 16 ? j3 : this.leadingIconColor;
        long j31 = j4 != 16 ? j4 : this.trailingIconColor;
        long j32 = j5 != 16 ? j5 : this.disabledContainerColor;
        long j33 = j6 != 16 ? j6 : this.disabledLabelColor;
        if (j7 != 16) {
            j14 = 16;
            j15 = j7;
        } else {
            j14 = 16;
            j15 = this.disabledLeadingIconColor;
        }
        if (j8 != j14) {
            j16 = j15;
            j17 = j8;
        } else {
            j16 = j15;
            j17 = this.disabledTrailingIconColor;
        }
        if (j9 != j14) {
            j18 = j17;
            j19 = j9;
        } else {
            j18 = j17;
            j19 = this.selectedContainerColor;
        }
        if (j10 != j14) {
            j20 = j19;
            j21 = j10;
        } else {
            j20 = j19;
            j21 = this.disabledSelectedContainerColor;
        }
        if (j11 != j14) {
            j22 = j21;
            j23 = j11;
        } else {
            j22 = j21;
            j23 = this.selectedLabelColor;
        }
        if (j12 != j14) {
            j24 = j23;
            j25 = j12;
        } else {
            j24 = j23;
            j25 = this.selectedLeadingIconColor;
        }
        if (j13 != j14) {
            j26 = j25;
            j27 = j13;
        } else {
            j26 = j25;
            j27 = this.selectedTrailingIconColor;
        }
        return new SelectableChipColors(j28, j29, j30, j31, j32, j33, j16, j18, j20, j22, j24, j26, j27);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof SelectableChipColors)) {
            return false;
        }
        SelectableChipColors selectableChipColors = (SelectableChipColors) obj;
        long j = selectableChipColors.containerColor;
        int i = Color.$r8$clinit;
        return ULong.m820equalsimpl0(this.containerColor, j) && ULong.m820equalsimpl0(this.labelColor, selectableChipColors.labelColor) && ULong.m820equalsimpl0(this.leadingIconColor, selectableChipColors.leadingIconColor) && ULong.m820equalsimpl0(this.trailingIconColor, selectableChipColors.trailingIconColor) && ULong.m820equalsimpl0(this.disabledContainerColor, selectableChipColors.disabledContainerColor) && ULong.m820equalsimpl0(this.disabledLabelColor, selectableChipColors.disabledLabelColor) && ULong.m820equalsimpl0(this.disabledLeadingIconColor, selectableChipColors.disabledLeadingIconColor) && ULong.m820equalsimpl0(this.disabledTrailingIconColor, selectableChipColors.disabledTrailingIconColor) && ULong.m820equalsimpl0(this.selectedContainerColor, selectableChipColors.selectedContainerColor) && ULong.m820equalsimpl0(this.disabledSelectedContainerColor, selectableChipColors.disabledSelectedContainerColor) && ULong.m820equalsimpl0(this.selectedLabelColor, selectableChipColors.selectedLabelColor) && ULong.m820equalsimpl0(this.selectedLeadingIconColor, selectableChipColors.selectedLeadingIconColor) && ULong.m820equalsimpl0(this.selectedTrailingIconColor, selectableChipColors.selectedTrailingIconColor);
    }

    public final int hashCode() {
        int i = Color.$r8$clinit;
        return Modifier.CC.m(this.selectedTrailingIconColor) + Animation.CC.m(Animation.CC.m(Animation.CC.m(Animation.CC.m(Animation.CC.m(Animation.CC.m(Animation.CC.m(Animation.CC.m(Animation.CC.m(Animation.CC.m(Animation.CC.m(Modifier.CC.m(this.containerColor) * 31, 31, this.labelColor), 31, this.leadingIconColor), 31, this.trailingIconColor), 31, this.disabledContainerColor), 31, this.disabledLabelColor), 31, this.disabledLeadingIconColor), 31, this.disabledTrailingIconColor), 31, this.selectedContainerColor), 31, this.disabledSelectedContainerColor), 31, this.selectedLabelColor), 31, this.selectedLeadingIconColor);
    }
}
