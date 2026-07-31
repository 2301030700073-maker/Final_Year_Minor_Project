package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.node.ModifierNodeElement;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class WithAlignmentLineElement extends ModifierNodeElement {
    public final AlignmentLine alignmentLine;

    public WithAlignmentLineElement(AlignmentLine alignmentLine) {
        this.alignmentLine = alignmentLine;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node create() {
        SiblingsAlignedNode$WithAlignmentLineNode siblingsAlignedNode$WithAlignmentLineNode = new SiblingsAlignedNode$WithAlignmentLineNode();
        siblingsAlignedNode$WithAlignmentLineNode.alignmentLine = this.alignmentLine;
        return siblingsAlignedNode$WithAlignmentLineNode;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        WithAlignmentLineElement withAlignmentLineElement = obj instanceof WithAlignmentLineElement ? (WithAlignmentLineElement) obj : null;
        if (withAlignmentLineElement == null) {
            return false;
        }
        return Intrinsics.areEqual(this.alignmentLine, withAlignmentLineElement.alignmentLine);
    }

    public final int hashCode() {
        return this.alignmentLine.hashCode();
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void update(Modifier.Node node) {
        ((SiblingsAlignedNode$WithAlignmentLineNode) node).alignmentLine = this.alignmentLine;
    }
}
