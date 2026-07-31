package androidx.compose.foundation.lazy.layout;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.NodeChainKt$fillVector$1;
import androidx.compose.ui.node.SemanticsModifierNode;
import androidx.compose.ui.semantics.AccessibilityAction;
import androidx.compose.ui.semantics.CollectionInfo;
import androidx.compose.ui.semantics.ScrollAxisRange;
import androidx.compose.ui.semantics.SemanticsActions;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KProperty;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LazyLayoutSemanticsModifierNode extends Modifier.Node implements SemanticsModifierNode {
    public final LazyLayoutSemanticsModifierNode$$ExternalSyntheticLambda0 indexForKeyMapping = new LazyLayoutSemanticsModifierNode$$ExternalSyntheticLambda0(this, 0);
    public Function0 itemProviderLambda;
    public Orientation orientation;
    public ScrollAxisRange scrollAxisRange;
    public LazyLayoutSemanticsModifierNode$$ExternalSyntheticLambda0 scrollToIndexAction;
    public LazyLayoutSemanticState state;
    public boolean userScrollEnabled;

    public LazyLayoutSemanticsModifierNode(Function0 function0, LazyLayoutSemanticState lazyLayoutSemanticState, Orientation orientation, boolean z) {
        this.itemProviderLambda = function0;
        this.state = lazyLayoutSemanticState;
        this.orientation = orientation;
        this.userScrollEnabled = z;
        updateCachedSemanticsValues();
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final void applySemantics(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        KProperty[] kPropertyArr;
        SemanticsPropertiesKt.setTraversalGroup(semanticsPropertyReceiver);
        semanticsPropertyReceiver.set(SemanticsProperties.IndexForKey, this.indexForKeyMapping);
        Orientation orientation = this.orientation;
        Orientation orientation2 = Orientation.Vertical;
        ScrollAxisRange scrollAxisRange = this.scrollAxisRange;
        if (orientation == orientation2) {
            if (scrollAxisRange == null) {
                Intrinsics.throwUninitializedPropertyAccessException("scrollAxisRange");
                throw null;
            }
            SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.VerticalScrollAxisRange;
            kPropertyArr = SemanticsPropertiesKt.$$delegatedProperties;
            KProperty kProperty = kPropertyArr[13];
            semanticsPropertyReceiver.set(semanticsPropertyKey, scrollAxisRange);
        } else {
            if (scrollAxisRange == null) {
                Intrinsics.throwUninitializedPropertyAccessException("scrollAxisRange");
                throw null;
            }
            SemanticsPropertyKey semanticsPropertyKey2 = SemanticsProperties.HorizontalScrollAxisRange;
            kPropertyArr = SemanticsPropertiesKt.$$delegatedProperties;
            KProperty kProperty2 = kPropertyArr[12];
            semanticsPropertyReceiver.set(semanticsPropertyKey2, scrollAxisRange);
        }
        LazyLayoutSemanticsModifierNode$$ExternalSyntheticLambda0 lazyLayoutSemanticsModifierNode$$ExternalSyntheticLambda0 = this.scrollToIndexAction;
        if (lazyLayoutSemanticsModifierNode$$ExternalSyntheticLambda0 != null) {
            semanticsPropertyReceiver.set(SemanticsActions.ScrollToIndex, new AccessibilityAction(null, lazyLayoutSemanticsModifierNode$$ExternalSyntheticLambda0));
        }
        semanticsPropertyReceiver.set(SemanticsActions.GetScrollViewportLength, new AccessibilityAction(null, new NodeChainKt$fillVector$1(24, new LazyLayoutSemanticsModifierNode$$ExternalSyntheticLambda1(this, 2))));
        CollectionInfo collectionInfo = this.state.collectionInfo();
        SemanticsPropertyKey semanticsPropertyKey3 = SemanticsProperties.CollectionInfo;
        KProperty kProperty3 = kPropertyArr[24];
        semanticsPropertyReceiver.set(semanticsPropertyKey3, collectionInfo);
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final boolean getShouldAutoInvalidate() {
        return false;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final boolean getShouldClearDescendantSemantics() {
        return false;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final boolean getShouldMergeDescendantSemantics() {
        return false;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final boolean isImportantForBounds() {
        return true;
    }

    public final void updateCachedSemanticsValues() {
        this.scrollAxisRange = new ScrollAxisRange(new LazyLayoutSemanticsModifierNode$$ExternalSyntheticLambda1(this, 0), new LazyLayoutSemanticsModifierNode$$ExternalSyntheticLambda1(this, 1));
        this.scrollToIndexAction = this.userScrollEnabled ? new LazyLayoutSemanticsModifierNode$$ExternalSyntheticLambda0(this, 1) : null;
    }
}
