package androidx.compose.foundation.text.selection;

import androidx.collection.LongObjectMapKt;
import androidx.collection.MutableLongIntMap;
import androidx.collection.MutableLongObjectMap;
import androidx.compose.animation.core.Animation;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.text.selection.Selection;
import androidx.navigation.NavController$$ExternalSyntheticLambda3;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import java.util.ArrayList;
import java.util.NoSuchElementException;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class MultiSelectionLayout implements SelectionLayout {
    public final int endSlot;
    public final ArrayList infoList;
    public final boolean isStartHandle;
    public final Selection previousSelection;
    public final MutableLongIntMap selectableIdToInfoListIndex;
    public final int startSlot;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[CrossStatus.values().length];
            try {
                iArr[CrossStatus.COLLAPSED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[CrossStatus.NOT_CROSSED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[CrossStatus.CROSSED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public MultiSelectionLayout(MutableLongIntMap mutableLongIntMap, ArrayList arrayList, int i, int i2, boolean z, Selection selection) {
        this.selectableIdToInfoListIndex = mutableLongIntMap;
        this.infoList = arrayList;
        this.startSlot = i;
        this.endSlot = i2;
        this.isStartHandle = z;
        this.previousSelection = selection;
        if (arrayList.size() > 1) {
            return;
        }
        InlineClassHelperKt.throwIllegalStateException("MultiSelectionLayout requires an infoList size greater than 1, was " + arrayList.size() + '.');
    }

    public static void createAndPutSubSelection(MutableLongObjectMap mutableLongObjectMap, Selection selection, SelectableInfo selectableInfo, int i, int i2) {
        Selection selection2;
        if (selection.handlesCrossed) {
            selection2 = new Selection(selectableInfo.anchorForOffset(i2), selectableInfo.anchorForOffset(i), i2 > i);
        } else {
            selection2 = new Selection(selectableInfo.anchorForOffset(i), selectableInfo.anchorForOffset(i2), i > i2);
        }
        if (i > i2) {
            InlineClassHelperKt.throwIllegalStateException("minOffset should be less than or equal to maxOffset: " + selection2);
        }
        long j = selectableInfo.selectableId;
        int findAbsoluteInsertIndex = mutableLongObjectMap.findAbsoluteInsertIndex(j);
        Object[] objArr = mutableLongObjectMap.values;
        Object obj = objArr[findAbsoluteInsertIndex];
        mutableLongObjectMap.keys[findAbsoluteInsertIndex] = j;
        objArr[findAbsoluteInsertIndex] = selection2;
    }

    @Override // androidx.compose.foundation.text.selection.SelectionLayout
    public final MutableLongObjectMap createSubSelections(Selection selection) {
        Selection.AnchorInfo anchorInfo = selection.start;
        boolean z = selection.handlesCrossed;
        long j = anchorInfo.selectableId;
        int i = anchorInfo.offset;
        Selection.AnchorInfo anchorInfo2 = selection.end;
        long j2 = anchorInfo2.selectableId;
        int i2 = anchorInfo2.offset;
        if (j != j2) {
            MutableLongObjectMap mutableLongObjectMap = LongObjectMapKt.EmptyLongObjectMap;
            MutableLongObjectMap mutableLongObjectMap2 = new MutableLongObjectMap();
            createAndPutSubSelection(mutableLongObjectMap2, selection, getFirstInfo(), (z ? anchorInfo2 : anchorInfo).offset, getFirstInfo().textLayoutResult.layoutInput.text.text.length());
            forEachMiddleInfo(new NavController$$ExternalSyntheticLambda3(this, mutableLongObjectMap2, selection, 7));
            if (!z) {
                anchorInfo = anchorInfo2;
            }
            createAndPutSubSelection(mutableLongObjectMap2, selection, getCrossStatus() == CrossStatus.CROSSED ? getStartInfo() : getEndInfo(), 0, anchorInfo.offset);
            return mutableLongObjectMap2;
        }
        if ((!z || i < i2) && (z || i > i2)) {
            InlineClassHelperKt.throwIllegalStateException("unexpectedly miss-crossed selection: " + selection);
        }
        long j3 = anchorInfo.selectableId;
        MutableLongObjectMap mutableLongObjectMap3 = LongObjectMapKt.EmptyLongObjectMap;
        MutableLongObjectMap mutableLongObjectMap4 = new MutableLongObjectMap();
        mutableLongObjectMap4.set(j3, selection);
        return mutableLongObjectMap4;
    }

    @Override // androidx.compose.foundation.text.selection.SelectionLayout
    public final void forEachMiddleInfo(Function1 function1) {
        int infoListIndexBySelectableId = getInfoListIndexBySelectableId(getFirstInfo().selectableId);
        int infoListIndexBySelectableId2 = getInfoListIndexBySelectableId((getCrossStatus() == CrossStatus.CROSSED ? getStartInfo() : getEndInfo()).selectableId);
        int i = infoListIndexBySelectableId + 1;
        if (i >= infoListIndexBySelectableId2) {
            return;
        }
        while (i < infoListIndexBySelectableId2) {
            function1.invoke(this.infoList.get(i));
            i++;
        }
    }

    @Override // androidx.compose.foundation.text.selection.SelectionLayout
    public final CrossStatus getCrossStatus() {
        int i = this.startSlot;
        int i2 = this.endSlot;
        if (i < i2) {
            return CrossStatus.NOT_CROSSED;
        }
        if (i > i2) {
            return CrossStatus.CROSSED;
        }
        return ((SelectableInfo) this.infoList.get(i / 2)).getRawCrossStatus();
    }

    @Override // androidx.compose.foundation.text.selection.SelectionLayout
    public final SelectableInfo getCurrentInfo() {
        return this.isStartHandle ? getStartInfo() : getEndInfo();
    }

    @Override // androidx.compose.foundation.text.selection.SelectionLayout
    public final SelectableInfo getEndInfo() {
        return (SelectableInfo) this.infoList.get(startOrEndSlotToIndex(this.endSlot, false));
    }

    @Override // androidx.compose.foundation.text.selection.SelectionLayout
    public final int getEndSlot() {
        return this.endSlot;
    }

    @Override // androidx.compose.foundation.text.selection.SelectionLayout
    public final SelectableInfo getFirstInfo() {
        return getCrossStatus() == CrossStatus.CROSSED ? getEndInfo() : getStartInfo();
    }

    public final int getInfoListIndexBySelectableId(long j) {
        try {
            return this.selectableIdToInfoListIndex.get(j);
        } catch (NoSuchElementException e) {
            throw new IllegalStateException(Animation.CC.m("Invalid selectableId: ", j), e);
        }
    }

    @Override // androidx.compose.foundation.text.selection.SelectionLayout
    public final Selection getPreviousSelection() {
        return this.previousSelection;
    }

    @Override // androidx.compose.foundation.text.selection.SelectionLayout
    public final int getSize() {
        return this.infoList.size();
    }

    @Override // androidx.compose.foundation.text.selection.SelectionLayout
    public final SelectableInfo getStartInfo() {
        return (SelectableInfo) this.infoList.get(startOrEndSlotToIndex(this.startSlot, true));
    }

    @Override // androidx.compose.foundation.text.selection.SelectionLayout
    public final int getStartSlot() {
        return this.startSlot;
    }

    @Override // androidx.compose.foundation.text.selection.SelectionLayout
    public final boolean isStartHandle() {
        return this.isStartHandle;
    }

    @Override // androidx.compose.foundation.text.selection.SelectionLayout
    public final boolean shouldRecomputeSelection(SelectionLayout selectionLayout) {
        if (this.previousSelection != null && selectionLayout != null && (selectionLayout instanceof MultiSelectionLayout)) {
            MultiSelectionLayout multiSelectionLayout = (MultiSelectionLayout) selectionLayout;
            ArrayList arrayList = multiSelectionLayout.infoList;
            if (this.isStartHandle == multiSelectionLayout.isStartHandle && this.startSlot == multiSelectionLayout.startSlot && this.endSlot == multiSelectionLayout.endSlot) {
                ArrayList arrayList2 = this.infoList;
                if (arrayList2.size() == arrayList.size()) {
                    int size = arrayList2.size();
                    for (int i = 0; i < size; i++) {
                        SelectableInfo selectableInfo = (SelectableInfo) arrayList2.get(i);
                        SelectableInfo selectableInfo2 = (SelectableInfo) arrayList.get(i);
                        if (selectableInfo.selectableId != selectableInfo2.selectableId || selectableInfo.rawStartHandleOffset != selectableInfo2.rawStartHandleOffset || selectableInfo.rawEndHandleOffset != selectableInfo2.rawEndHandleOffset) {
                            return true;
                        }
                    }
                    return false;
                }
            }
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int startOrEndSlotToIndex(int i, boolean z) {
        int i2 = WhenMappings.$EnumSwitchMapping$0[getCrossStatus().ordinal()];
        int i3 = z;
        if (i2 != 1) {
            if (i2 != 2) {
                if (i2 != 3) {
                    ContextsKt$$ExternalSyntheticBUOutline0.m();
                    return 0;
                }
                if (z != 0) {
                    i3 = 0;
                }
            }
            return (i - (i3 ^ 1)) / 2;
        }
        i3 = 1;
        return (i - (i3 ^ 1)) / 2;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("MultiSelectionLayout(isStartHandle=");
        sb.append(this.isStartHandle);
        sb.append(", startPosition=");
        boolean z = true;
        sb.append((this.startSlot + 1) / 2.0f);
        sb.append(", endPosition=");
        sb.append((this.endSlot + 1) / 2.0f);
        sb.append(", crossed=");
        sb.append(getCrossStatus());
        sb.append(", infos=");
        StringBuilder sb2 = new StringBuilder("[\n\t");
        ArrayList arrayList = this.infoList;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            SelectableInfo selectableInfo = (SelectableInfo) arrayList.get(i);
            if (z) {
                z = false;
            } else {
                sb2.append(",\n\t");
            }
            StringBuilder sb3 = new StringBuilder();
            i++;
            sb3.append(i);
            sb3.append(" -> ");
            sb3.append(selectableInfo);
            sb2.append(sb3.toString());
        }
        sb2.append("\n]");
        sb.append(sb2.toString());
        sb.append(')');
        return sb.toString();
    }
}
