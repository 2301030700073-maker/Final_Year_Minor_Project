package androidx.compose.foundation.lazy.layout;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.ModifierNodeElement;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
final class LazyLayoutSemanticsModifier extends ModifierNodeElement {
    public final Function0 itemProviderLambda;
    public final Orientation orientation;
    public final LazyLayoutSemanticState state;
    public final boolean userScrollEnabled;

    public LazyLayoutSemanticsModifier(Function0 function0, LazyLayoutSemanticState lazyLayoutSemanticState, Orientation orientation, boolean z) {
        this.itemProviderLambda = function0;
        this.state = lazyLayoutSemanticState;
        this.orientation = orientation;
        this.userScrollEnabled = z;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node create() {
        return new LazyLayoutSemanticsModifierNode(this.itemProviderLambda, this.state, this.orientation, this.userScrollEnabled);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LazyLayoutSemanticsModifier)) {
            return false;
        }
        LazyLayoutSemanticsModifier lazyLayoutSemanticsModifier = (LazyLayoutSemanticsModifier) obj;
        return this.itemProviderLambda == lazyLayoutSemanticsModifier.itemProviderLambda && Intrinsics.areEqual(this.state, lazyLayoutSemanticsModifier.state) && this.orientation == lazyLayoutSemanticsModifier.orientation && this.userScrollEnabled == lazyLayoutSemanticsModifier.userScrollEnabled;
    }

    public final int hashCode() {
        return ((((this.orientation.hashCode() + ((this.state.hashCode() + (this.itemProviderLambda.hashCode() * 31)) * 31)) * 31) + (this.userScrollEnabled ? 1231 : 1237)) * 31) + 1237;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void update(Modifier.Node node) {
        LazyLayoutSemanticsModifierNode lazyLayoutSemanticsModifierNode = (LazyLayoutSemanticsModifierNode) node;
        lazyLayoutSemanticsModifierNode.itemProviderLambda = this.itemProviderLambda;
        lazyLayoutSemanticsModifierNode.state = this.state;
        Orientation orientation = lazyLayoutSemanticsModifierNode.orientation;
        Orientation orientation2 = this.orientation;
        if (orientation != orientation2) {
            lazyLayoutSemanticsModifierNode.orientation = orientation2;
            HitTestResultKt.invalidateSemantics(lazyLayoutSemanticsModifierNode);
        }
        boolean z = lazyLayoutSemanticsModifierNode.userScrollEnabled;
        boolean z2 = this.userScrollEnabled;
        if (z == z2) {
            return;
        }
        lazyLayoutSemanticsModifierNode.userScrollEnabled = z2;
        lazyLayoutSemanticsModifierNode.updateCachedSemanticsValues();
        HitTestResultKt.invalidateSemantics(lazyLayoutSemanticsModifierNode);
    }
}
