package androidx.compose.animation;

import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SizeAnimationModifierElement extends ModifierNodeElement {
    public final FiniteAnimationSpec animationSpec;

    public SizeAnimationModifierElement(FiniteAnimationSpec finiteAnimationSpec) {
        this.animationSpec = finiteAnimationSpec;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node create() {
        return new SizeAnimationModifierNode(this.animationSpec);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof SizeAnimationModifierElement) || !Intrinsics.areEqual(((SizeAnimationModifierElement) obj).animationSpec, this.animationSpec)) {
            return false;
        }
        BiasAlignment biasAlignment = Alignment.Companion.TopStart;
        return biasAlignment.equals(biasAlignment);
    }

    public final int hashCode() {
        return (Float.floatToIntBits(-1.0f) + (Float.floatToIntBits(-1.0f) * 31) + (this.animationSpec.hashCode() * 31)) * 31;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void update(Modifier.Node node) {
        ((SizeAnimationModifierNode) node).animationSpec = this.animationSpec;
    }
}
