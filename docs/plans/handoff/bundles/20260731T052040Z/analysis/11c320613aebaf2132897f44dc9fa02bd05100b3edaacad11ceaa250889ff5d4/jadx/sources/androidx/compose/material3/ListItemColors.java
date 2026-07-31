package androidx.compose.material3;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import kotlin.ULong;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ListItemColors {
    public final long containerColor;
    public final long contentColor;
    public final long disabledContainerColor;
    public final long disabledContentColor;
    public final long disabledLeadingContentColor;
    public final long disabledOverlineContentColor;
    public final long disabledSupportingContentColor;
    public final long disabledTrailingContentColor;
    public final long draggedContainerColor;
    public final long draggedContentColor;
    public final long draggedLeadingContentColor;
    public final long draggedOverlineContentColor;
    public final long draggedSupportingContentColor;
    public final long draggedTrailingContentColor;
    public final long leadingContentColor;
    public final long overlineContentColor;
    public final long selectedContainerColor;
    public final long selectedContentColor;
    public final long selectedLeadingContentColor;
    public final long selectedOverlineContentColor;
    public final long selectedSupportingContentColor;
    public final long selectedTrailingContentColor;
    public final long supportingContentColor;
    public final long trailingContentColor;

    public ListItemColors(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, long j23, long j24) {
        this.containerColor = j;
        this.contentColor = j2;
        this.leadingContentColor = j3;
        this.trailingContentColor = j4;
        this.overlineContentColor = j5;
        this.supportingContentColor = j6;
        this.disabledContainerColor = j7;
        this.disabledContentColor = j8;
        this.disabledLeadingContentColor = j9;
        this.disabledTrailingContentColor = j10;
        this.disabledOverlineContentColor = j11;
        this.disabledSupportingContentColor = j12;
        this.selectedContainerColor = j13;
        this.selectedContentColor = j14;
        this.selectedLeadingContentColor = j15;
        this.selectedTrailingContentColor = j16;
        this.selectedOverlineContentColor = j17;
        this.selectedSupportingContentColor = j18;
        this.draggedContainerColor = j19;
        this.draggedContentColor = j20;
        this.draggedLeadingContentColor = j21;
        this.draggedTrailingContentColor = j22;
        this.draggedOverlineContentColor = j23;
        this.draggedSupportingContentColor = j24;
    }

    /* renamed from: containerColor-XeAY9LY, reason: not valid java name */
    public final long m142containerColorXeAY9LY(boolean z, boolean z2, boolean z3) {
        return !z ? this.disabledContainerColor : z3 ? this.draggedContainerColor : z2 ? this.selectedContainerColor : this.containerColor;
    }

    /* renamed from: contentColor-XeAY9LY, reason: not valid java name */
    public final long m143contentColorXeAY9LY(boolean z, boolean z2, boolean z3) {
        return !z ? this.disabledContentColor : z3 ? this.draggedContentColor : z2 ? this.selectedContentColor : this.contentColor;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof ListItemColors)) {
            return false;
        }
        ListItemColors listItemColors = (ListItemColors) obj;
        return Color.m244equalsimpl0(this.containerColor, listItemColors.containerColor) && Color.m244equalsimpl0(this.contentColor, listItemColors.contentColor) && Color.m244equalsimpl0(this.leadingContentColor, listItemColors.leadingContentColor) && Color.m244equalsimpl0(this.trailingContentColor, listItemColors.trailingContentColor) && Color.m244equalsimpl0(this.overlineContentColor, listItemColors.overlineContentColor) && Color.m244equalsimpl0(this.supportingContentColor, listItemColors.supportingContentColor) && Color.m244equalsimpl0(this.disabledContainerColor, listItemColors.disabledContainerColor) && Color.m244equalsimpl0(this.disabledContentColor, listItemColors.disabledContentColor) && Color.m244equalsimpl0(this.disabledLeadingContentColor, listItemColors.disabledLeadingContentColor) && Color.m244equalsimpl0(this.disabledTrailingContentColor, listItemColors.disabledTrailingContentColor) && Color.m244equalsimpl0(this.disabledOverlineContentColor, listItemColors.disabledOverlineContentColor) && Color.m244equalsimpl0(this.disabledSupportingContentColor, listItemColors.disabledSupportingContentColor) && Color.m244equalsimpl0(this.selectedContainerColor, listItemColors.selectedContainerColor) && Color.m244equalsimpl0(this.selectedContentColor, listItemColors.selectedContentColor) && Color.m244equalsimpl0(this.selectedLeadingContentColor, listItemColors.selectedLeadingContentColor) && Color.m244equalsimpl0(this.selectedTrailingContentColor, listItemColors.selectedTrailingContentColor) && Color.m244equalsimpl0(this.selectedOverlineContentColor, listItemColors.selectedOverlineContentColor) && Color.m244equalsimpl0(this.selectedSupportingContentColor, listItemColors.selectedSupportingContentColor) && Color.m244equalsimpl0(this.draggedContainerColor, listItemColors.draggedContainerColor) && Color.m244equalsimpl0(this.draggedContentColor, listItemColors.draggedContentColor) && Color.m244equalsimpl0(this.draggedLeadingContentColor, listItemColors.draggedLeadingContentColor) && Color.m244equalsimpl0(this.draggedTrailingContentColor, listItemColors.draggedTrailingContentColor) && Color.m244equalsimpl0(this.draggedOverlineContentColor, listItemColors.draggedOverlineContentColor) && Color.m244equalsimpl0(this.draggedSupportingContentColor, listItemColors.draggedSupportingContentColor);
    }

    public final int hashCode() {
        int i = Color.$r8$clinit;
        return ULong.m658hashCodeimpl(this.draggedSupportingContentColor) + Modifier.CC.m(Modifier.CC.m(Modifier.CC.m(Modifier.CC.m(Modifier.CC.m(Modifier.CC.m(Modifier.CC.m(Modifier.CC.m(Modifier.CC.m(Modifier.CC.m(Modifier.CC.m(Modifier.CC.m(Modifier.CC.m(Modifier.CC.m(Modifier.CC.m(Modifier.CC.m(Modifier.CC.m(Modifier.CC.m(Modifier.CC.m(Modifier.CC.m(Modifier.CC.m(Modifier.CC.m(ULong.m658hashCodeimpl(this.containerColor) * 31, this.contentColor, 31), this.leadingContentColor, 31), this.trailingContentColor, 31), this.overlineContentColor, 31), this.supportingContentColor, 31), this.disabledContainerColor, 31), this.disabledContentColor, 31), this.disabledLeadingContentColor, 31), this.disabledTrailingContentColor, 31), this.disabledOverlineContentColor, 31), this.disabledSupportingContentColor, 31), this.selectedContainerColor, 31), this.selectedContentColor, 31), this.selectedLeadingContentColor, 31), this.selectedTrailingContentColor, 31), this.selectedOverlineContentColor, 31), this.selectedSupportingContentColor, 31), this.draggedContainerColor, 31), this.draggedContentColor, 31), this.draggedLeadingContentColor, 31), this.draggedTrailingContentColor, 31), this.draggedOverlineContentColor, 31);
    }

    /* renamed from: leadingContentColor-XeAY9LY, reason: not valid java name */
    public final long m144leadingContentColorXeAY9LY(boolean z, boolean z2, boolean z3) {
        return !z ? this.disabledLeadingContentColor : z3 ? this.draggedLeadingContentColor : z2 ? this.selectedLeadingContentColor : this.leadingContentColor;
    }

    /* renamed from: overlineContentColor-XeAY9LY, reason: not valid java name */
    public final long m145overlineContentColorXeAY9LY(boolean z, boolean z2, boolean z3) {
        return !z ? this.disabledOverlineContentColor : z3 ? this.draggedOverlineContentColor : z2 ? this.selectedOverlineContentColor : this.overlineContentColor;
    }

    /* renamed from: supportingContentColor-XeAY9LY, reason: not valid java name */
    public final long m146supportingContentColorXeAY9LY(boolean z, boolean z2, boolean z3) {
        return !z ? this.disabledSupportingContentColor : z3 ? this.draggedSupportingContentColor : z2 ? this.selectedSupportingContentColor : this.supportingContentColor;
    }

    /* renamed from: trailingContentColor-XeAY9LY, reason: not valid java name */
    public final long m147trailingContentColorXeAY9LY(boolean z, boolean z2, boolean z3) {
        return !z ? this.disabledTrailingContentColor : z3 ? this.draggedTrailingContentColor : z2 ? this.selectedTrailingContentColor : this.trailingContentColor;
    }
}
