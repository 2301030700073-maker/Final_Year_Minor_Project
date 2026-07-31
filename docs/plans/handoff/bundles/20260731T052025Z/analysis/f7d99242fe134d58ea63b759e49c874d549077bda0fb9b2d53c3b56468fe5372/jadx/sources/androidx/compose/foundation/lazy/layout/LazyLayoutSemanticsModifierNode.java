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

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
        SemanticsPropertiesKt.setTraversalGroup(semanticsPropertyReceiver);
        semanticsPropertyReceiver.set(SemanticsProperties.IndexForKey, this.indexForKeyMapping);
        Orientation orientation = this.orientation;
        ScrollAxisRange scrollAxisRange = this.scrollAxisRange;
        if (orientation == Orientation.Vertical) {
            if (scrollAxisRange == null) {
                Intrinsics.throwUninitializedPropertyAccessException("scrollAxisRange");
                throw null;
            }
            SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.VerticalScrollAxisRange;
            KProperty kProperty = SemanticsPropertiesKt.$$delegatedProperties[13];
            semanticsPropertyReceiver.set(semanticsPropertyKey, scrollAxisRange);
        } else {
            if (scrollAxisRange == null) {
                Intrinsics.throwUninitializedPropertyAccessException("scrollAxisRange");
                throw null;
            }
            SemanticsPropertyKey semanticsPropertyKey2 = SemanticsProperties.HorizontalScrollAxisRange;
            KProperty kProperty2 = SemanticsPropertiesKt.$$delegatedProperties[12];
            semanticsPropertyReceiver.set(semanticsPropertyKey2, scrollAxisRange);
        }
        LazyLayoutSemanticsModifierNode$$ExternalSyntheticLambda0 lazyLayoutSemanticsModifierNode$$ExternalSyntheticLambda0 = this.scrollToIndexAction;
        if (lazyLayoutSemanticsModifierNode$$ExternalSyntheticLambda0 != null) {
            semanticsPropertyReceiver.set(SemanticsActions.ScrollToIndex, new AccessibilityAction(null, lazyLayoutSemanticsModifierNode$$ExternalSyntheticLambda0));
        }
        semanticsPropertyReceiver.set(SemanticsActions.GetScrollViewportLength, new AccessibilityAction(null, new NodeChainKt$fillVector$1(25, new LazyLayoutSemanticsModifierNode$$ExternalSyntheticLambda1(this, 2))));
        CollectionInfo collectionInfo = this.state.collectionInfo();
        SemanticsPropertyKey semanticsPropertyKey3 = SemanticsProperties.CollectionInfo;
        KProperty kProperty3 = SemanticsPropertiesKt.$$delegatedProperties[24];
        semanticsPropertyReceiver.set(semanticsPropertyKey3, collectionInfo);
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final boolean getShouldAutoInvalidate() {
        return false;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final /* synthetic */ boolean getShouldClearDescendantSemantics() {
        return false;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final /* synthetic */ boolean getShouldMergeDescendantSemantics() {
        return false;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final /* synthetic */ boolean isImportantForBounds() {
        return true;
    }

    public final void updateCachedSemanticsValues() {
        this.scrollAxisRange = new ScrollAxisRange(new LazyLayoutSemanticsModifierNode$$ExternalSyntheticLambda1(this, 0), new LazyLayoutSemanticsModifierNode$$ExternalSyntheticLambda1(this, 1));
        this.scrollToIndexAction = this.userScrollEnabled ? new LazyLayoutSemanticsModifierNode$$ExternalSyntheticLambda0(this, 1) : null;
    }
}
