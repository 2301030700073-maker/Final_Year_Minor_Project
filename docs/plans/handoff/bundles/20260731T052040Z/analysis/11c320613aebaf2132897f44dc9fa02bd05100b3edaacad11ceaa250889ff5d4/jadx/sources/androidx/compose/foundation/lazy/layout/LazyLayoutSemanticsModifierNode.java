package androidx.compose.foundation.lazy.layout;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.SemanticsModifierNode;
import androidx.compose.ui.semantics.AccessibilityAction;
import androidx.compose.ui.semantics.CollectionInfo;
import androidx.compose.ui.semantics.ScrollAxisRange;
import androidx.compose.ui.semantics.SemanticsActions;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import java.util.List;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KProperty;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
        KProperty[] kPropertyArr = SemanticsPropertiesKt.$$delegatedProperties;
        SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.IsTraversalGroup;
        KProperty[] kPropertyArr2 = SemanticsPropertiesKt.$$delegatedProperties;
        KProperty kProperty = kPropertyArr2[6];
        semanticsPropertyReceiver.set(semanticsPropertyKey, Boolean.TRUE);
        semanticsPropertyReceiver.set(SemanticsProperties.IndexForKey, this.indexForKeyMapping);
        Orientation orientation = this.orientation;
        ScrollAxisRange scrollAxisRange = this.scrollAxisRange;
        if (orientation == Orientation.Vertical) {
            if (scrollAxisRange == null) {
                Intrinsics.throwUninitializedPropertyAccessException("scrollAxisRange");
                throw null;
            }
            SemanticsPropertyKey semanticsPropertyKey2 = SemanticsProperties.VerticalScrollAxisRange;
            KProperty kProperty2 = kPropertyArr2[13];
            semanticsPropertyReceiver.set(semanticsPropertyKey2, scrollAxisRange);
        } else {
            if (scrollAxisRange == null) {
                Intrinsics.throwUninitializedPropertyAccessException("scrollAxisRange");
                throw null;
            }
            SemanticsPropertyKey semanticsPropertyKey3 = SemanticsProperties.HorizontalScrollAxisRange;
            KProperty kProperty3 = kPropertyArr2[12];
            semanticsPropertyReceiver.set(semanticsPropertyKey3, scrollAxisRange);
        }
        LazyLayoutSemanticsModifierNode$$ExternalSyntheticLambda0 lazyLayoutSemanticsModifierNode$$ExternalSyntheticLambda0 = this.scrollToIndexAction;
        if (lazyLayoutSemanticsModifierNode$$ExternalSyntheticLambda0 != null) {
            semanticsPropertyReceiver.set(SemanticsActions.ScrollToIndex, new AccessibilityAction(null, lazyLayoutSemanticsModifierNode$$ExternalSyntheticLambda0));
        }
        final LazyLayoutSemanticsModifierNode$$ExternalSyntheticLambda1 lazyLayoutSemanticsModifierNode$$ExternalSyntheticLambda1 = new LazyLayoutSemanticsModifierNode$$ExternalSyntheticLambda1(this, 2);
        semanticsPropertyReceiver.set(SemanticsActions.GetScrollViewportLength, new AccessibilityAction(null, new Function1() { // from class: androidx.compose.ui.semantics.SemanticsPropertiesKt$getScrollViewportLength$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean z;
                List list = (List) obj;
                Float f = (Float) lazyLayoutSemanticsModifierNode$$ExternalSyntheticLambda1.invoke();
                if (f == null) {
                    z = false;
                } else {
                    list.add(f);
                    z = true;
                }
                return Boolean.valueOf(z);
            }
        }));
        CollectionInfo collectionInfo = this.state.collectionInfo();
        SemanticsPropertyKey semanticsPropertyKey4 = SemanticsProperties.CollectionInfo;
        KProperty kProperty4 = kPropertyArr2[24];
        semanticsPropertyReceiver.set(semanticsPropertyKey4, collectionInfo);
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
