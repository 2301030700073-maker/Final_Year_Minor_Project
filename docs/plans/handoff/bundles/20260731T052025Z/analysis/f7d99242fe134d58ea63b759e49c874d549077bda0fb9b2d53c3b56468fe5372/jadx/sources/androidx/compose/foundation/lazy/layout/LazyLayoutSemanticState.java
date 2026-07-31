package androidx.compose.foundation.lazy.layout;

import androidx.compose.ui.semantics.CollectionInfo;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface LazyLayoutSemanticState {
    CollectionInfo collectionInfo();

    int getContentPadding();

    float getMaxScrollOffset();

    float getScrollOffset();

    int getViewport();

    Object scrollToItem(int i, LazyLayoutSemanticsModifierNode$updateCachedSemanticsValues$3$2 lazyLayoutSemanticsModifierNode$updateCachedSemanticsValues$3$2);
}
