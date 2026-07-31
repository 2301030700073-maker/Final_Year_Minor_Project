package androidx.compose.ui.semantics;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AppendedSemanticsElement extends ModifierNodeElement implements SemanticsModifier {
    public final boolean mergeDescendants;
    public final Function1 properties;

    public AppendedSemanticsElement(Function1 function1, boolean z) {
        this.mergeDescendants = z;
        this.properties = function1;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node create() {
        return new CoreSemanticsModifierNode(this.mergeDescendants, false, this.properties);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AppendedSemanticsElement)) {
            return false;
        }
        AppendedSemanticsElement appendedSemanticsElement = (AppendedSemanticsElement) obj;
        return this.mergeDescendants == appendedSemanticsElement.mergeDescendants && this.properties == appendedSemanticsElement.properties;
    }

    @Override // androidx.compose.ui.semantics.SemanticsModifier
    public final SemanticsConfiguration getSemanticsConfiguration() {
        SemanticsConfiguration semanticsConfiguration = new SemanticsConfiguration();
        semanticsConfiguration.isMergingSemanticsOfDescendants = this.mergeDescendants;
        this.properties.invoke(semanticsConfiguration);
        return semanticsConfiguration;
    }

    public final int hashCode() {
        return this.properties.hashCode() + ((this.mergeDescendants ? 1231 : 1237) * 31);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void update(Modifier.Node node) {
        CoreSemanticsModifierNode coreSemanticsModifierNode = (CoreSemanticsModifierNode) node;
        coreSemanticsModifierNode.mergeDescendants = this.mergeDescendants;
        coreSemanticsModifierNode.properties = this.properties;
    }
}
