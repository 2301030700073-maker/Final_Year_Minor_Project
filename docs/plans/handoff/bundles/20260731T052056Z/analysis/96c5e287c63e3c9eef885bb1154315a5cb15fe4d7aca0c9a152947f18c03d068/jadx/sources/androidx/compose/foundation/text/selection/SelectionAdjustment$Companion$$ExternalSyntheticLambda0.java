package androidx.compose.foundation.text.selection;

import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.foundation.text.selection.Selection;
import androidx.compose.material3.AppBarKt$$ExternalSyntheticLambda11;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$BooleanRef;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class SelectionAdjustment$Companion$$ExternalSyntheticLambda0 {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ SelectionAdjustment$Companion$$ExternalSyntheticLambda0(int i) {
        this.$r8$classId = i;
    }

    public final Selection adjust(SelectionLayout selectionLayout) {
        Selection.AnchorInfo updateSelectionBoundary;
        Selection.AnchorInfo anchorInfo;
        boolean z;
        boolean z2 = false;
        switch (this.$r8$classId) {
            case 0:
                return new Selection(selectionLayout.getStartInfo().anchorForOffset(selectionLayout.getStartInfo().rawStartHandleOffset), selectionLayout.getEndInfo().anchorForOffset(selectionLayout.getEndInfo().rawEndHandleOffset), selectionLayout.getCrossStatus() == CrossStatus.CROSSED);
            case 1:
                return SimpleLayoutKt.adjustToBoundaries(selectionLayout, SelectionAdjustment$Companion.INSTANCE$1);
            case 2:
                return SimpleLayoutKt.adjustToBoundaries(selectionLayout, SelectionAdjustment$Companion.INSTANCE);
            default:
                Selection previousSelection = selectionLayout.getPreviousSelection();
                if (previousSelection == null) {
                    return SimpleLayoutKt.adjustToBoundaries(selectionLayout, SelectionAdjustment$Companion.INSTANCE$1);
                }
                Selection.AnchorInfo anchorInfo2 = previousSelection.end;
                Selection.AnchorInfo anchorInfo3 = previousSelection.start;
                if (selectionLayout.isStartHandle()) {
                    anchorInfo = SimpleLayoutKt.updateSelectionBoundary(selectionLayout, selectionLayout.getStartInfo(), anchorInfo3);
                    updateSelectionBoundary = anchorInfo2;
                    anchorInfo2 = anchorInfo3;
                    anchorInfo3 = anchorInfo;
                } else {
                    updateSelectionBoundary = SimpleLayoutKt.updateSelectionBoundary(selectionLayout, selectionLayout.getEndInfo(), anchorInfo2);
                    anchorInfo = updateSelectionBoundary;
                }
                if (Intrinsics.areEqual(anchorInfo, anchorInfo2)) {
                    return previousSelection;
                }
                Selection selection = new Selection(anchorInfo3, updateSelectionBoundary, selectionLayout.getCrossStatus() == CrossStatus.CROSSED || (selectionLayout.getCrossStatus() == CrossStatus.COLLAPSED && anchorInfo3.offset > updateSelectionBoundary.offset));
                Selection.AnchorInfo anchorInfo4 = selection.start;
                long j = anchorInfo4.selectableId;
                Selection.AnchorInfo anchorInfo5 = selection.end;
                if (j == anchorInfo5.selectableId) {
                    if (anchorInfo4.offset == anchorInfo5.offset) {
                        z = true;
                    }
                    z = false;
                } else {
                    boolean z3 = selection.handlesCrossed;
                    if ((z3 ? anchorInfo4 : anchorInfo5).offset == 0) {
                        if (selectionLayout.getFirstInfo().textLayoutResult.layoutInput.text.text.length() == (z3 ? anchorInfo5 : anchorInfo4).offset) {
                            Ref$BooleanRef ref$BooleanRef = new Ref$BooleanRef();
                            ref$BooleanRef.element = true;
                            selectionLayout.forEachMiddleInfo(new AppBarKt$$ExternalSyntheticLambda11(28, ref$BooleanRef));
                            z = ref$BooleanRef.element;
                        }
                    }
                    z = false;
                }
                if (z) {
                    String str = selectionLayout.getCurrentInfo().textLayoutResult.layoutInput.text.text;
                    if (selectionLayout.getSize() <= 1 && selectionLayout.getPreviousSelection() != null && str.length() != 0) {
                        SelectableInfo currentInfo = selectionLayout.getCurrentInfo();
                        String str2 = currentInfo.textLayoutResult.layoutInput.text.text;
                        int i = currentInfo.rawStartHandleOffset;
                        int length = str2.length();
                        if (i == 0) {
                            int findFollowingBreak = BasicTextKt.findFollowingBreak(0, str2);
                            return selectionLayout.isStartHandle() ? Selection.copy$default(selection, SimpleLayoutKt.changeOffset(anchorInfo4, currentInfo, findFollowingBreak), null, true, 2) : Selection.copy$default(selection, null, SimpleLayoutKt.changeOffset(anchorInfo5, currentInfo, findFollowingBreak), false, 1);
                        }
                        if (i == length) {
                            int findPrecedingBreak = BasicTextKt.findPrecedingBreak(length, str2);
                            return selectionLayout.isStartHandle() ? Selection.copy$default(selection, SimpleLayoutKt.changeOffset(anchorInfo4, currentInfo, findPrecedingBreak), null, false, 2) : Selection.copy$default(selection, null, SimpleLayoutKt.changeOffset(anchorInfo5, currentInfo, findPrecedingBreak), true, 1);
                        }
                        Selection previousSelection2 = selectionLayout.getPreviousSelection();
                        if (previousSelection2 != null && previousSelection2.handlesCrossed) {
                            z2 = true;
                        }
                        int findPrecedingBreak2 = selectionLayout.isStartHandle() ^ z2 ? BasicTextKt.findPrecedingBreak(i, str2) : BasicTextKt.findFollowingBreak(i, str2);
                        return selectionLayout.isStartHandle() ? Selection.copy$default(selection, SimpleLayoutKt.changeOffset(anchorInfo4, currentInfo, findPrecedingBreak2), null, z2, 2) : Selection.copy$default(selection, null, SimpleLayoutKt.changeOffset(anchorInfo5, currentInfo, findPrecedingBreak2), z2, 1);
                    }
                }
                return selection;
        }
    }
}
