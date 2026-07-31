package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.TraversableNode;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class InsetsConsumingModifierNode extends Modifier.Node implements TraversableNode {
    public WindowInsets ancestorConsumedInsets;
    public WindowInsets consumedInsets;

    public InsetsConsumingModifierNode() {
        FixedIntInsets fixedIntInsets = OffsetKt.EmptyWindowInsets;
        this.ancestorConsumedInsets = fixedIntInsets;
        this.consumedInsets = fixedIntInsets;
    }

    public abstract WindowInsets calculateInsets(WindowInsets windowInsets);

    @Override // androidx.compose.ui.node.TraversableNode
    public final Object getTraverseKey() {
        return "androidx.compose.foundation.layout.ConsumedInsetsProvider";
    }

    public void insetsInvalidated() {
        this.consumedInsets = calculateInsets(this.ancestorConsumedInsets);
        HitTestResultKt.traverseDescendants(this, "androidx.compose.foundation.layout.ConsumedInsetsProvider", new InsetsConsumingModifierNode$$ExternalSyntheticLambda0(this, 0));
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void onAttach() {
        HitTestResultKt.traverseAncestors(this, "androidx.compose.foundation.layout.ConsumedInsetsProvider", new InsetsConsumingModifierNode$$ExternalSyntheticLambda0(this, 1));
        insetsInvalidated();
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void onDetach() {
        this.consumedInsets = this.ancestorConsumedInsets;
        HitTestResultKt.traverseDescendants(this, "androidx.compose.foundation.layout.ConsumedInsetsProvider", new InsetsConsumingModifierNode$$ExternalSyntheticLambda0(this, 0));
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void onReset() {
        this.ancestorConsumedInsets = OffsetKt.EmptyWindowInsets;
    }
}
