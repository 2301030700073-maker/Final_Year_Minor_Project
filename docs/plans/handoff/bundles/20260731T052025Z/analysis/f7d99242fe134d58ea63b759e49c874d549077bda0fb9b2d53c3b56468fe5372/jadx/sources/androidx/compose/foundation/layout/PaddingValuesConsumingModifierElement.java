package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
final class PaddingValuesConsumingModifierElement extends ModifierNodeElement {
    public final PaddingValues paddingValues;

    public PaddingValuesConsumingModifierElement(PaddingValues paddingValues) {
        this.paddingValues = paddingValues;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node create() {
        PaddingValuesConsumingModifierNode paddingValuesConsumingModifierNode = new PaddingValuesConsumingModifierNode();
        paddingValuesConsumingModifierNode.paddingValues = this.paddingValues;
        return paddingValuesConsumingModifierNode;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof PaddingValuesConsumingModifierElement) {
            return Intrinsics.areEqual(((PaddingValuesConsumingModifierElement) obj).paddingValues, this.paddingValues);
        }
        return false;
    }

    public final int hashCode() {
        return this.paddingValues.hashCode();
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void update(Modifier.Node node) {
        PaddingValuesConsumingModifierNode paddingValuesConsumingModifierNode = (PaddingValuesConsumingModifierNode) node;
        PaddingValues paddingValues = paddingValuesConsumingModifierNode.paddingValues;
        PaddingValues paddingValues2 = this.paddingValues;
        if (Intrinsics.areEqual(paddingValues2, paddingValues)) {
            return;
        }
        paddingValuesConsumingModifierNode.paddingValues = paddingValues2;
        paddingValuesConsumingModifierNode.insetsInvalidated();
    }
}
