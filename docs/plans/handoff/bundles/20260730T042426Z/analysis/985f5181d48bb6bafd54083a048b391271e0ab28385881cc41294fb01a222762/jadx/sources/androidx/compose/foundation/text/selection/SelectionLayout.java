package androidx.compose.foundation.text.selection;

import kotlin.jvm.functions.Function1;

/* compiled from: SelectionLayout.kt */
/* loaded from: classes.dex */
public interface SelectionLayout {
    void forEachMiddleInfo(Function1 function1);

    CrossStatus getCrossStatus();

    SelectableInfo getCurrentInfo();

    SelectableInfo getEndInfo();

    int getEndSlot();

    SelectableInfo getFirstInfo();

    Selection getPreviousSelection();

    int getSize();

    SelectableInfo getStartInfo();

    int getStartSlot();

    boolean isStartHandle();

    boolean shouldRecomputeSelection(SelectionLayout selectionLayout);
}
