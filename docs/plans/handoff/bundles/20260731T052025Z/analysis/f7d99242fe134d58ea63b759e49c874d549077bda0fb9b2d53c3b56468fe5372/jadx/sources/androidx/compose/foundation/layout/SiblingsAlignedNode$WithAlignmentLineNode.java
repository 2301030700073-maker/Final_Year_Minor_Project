package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.ParentDataModifierNode;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SiblingsAlignedNode$WithAlignmentLineNode extends Modifier.Node implements ParentDataModifierNode {
    public AlignmentLine alignmentLine;

    @Override // androidx.compose.ui.node.ParentDataModifierNode
    public final Object modifyParentData(Density density, Object obj) {
        RowColumnParentData rowColumnParentData = obj instanceof RowColumnParentData ? (RowColumnParentData) obj : null;
        if (rowColumnParentData == null) {
            rowColumnParentData = new RowColumnParentData();
        }
        rowColumnParentData.crossAxisAlignment = new OffsetKt(new AlignmentLineProvider$Value(this.alignmentLine)) { // from class: androidx.compose.foundation.layout.CrossAxisAlignment$AlignmentLineCrossAxisAlignment
            public final AlignmentLineProvider$Value alignmentLineProvider;

            {
                this.alignmentLineProvider = r1;
            }

            @Override // androidx.compose.foundation.layout.OffsetKt
            public final int align$foundation_layout(int i, int i2, LayoutDirection layoutDirection, Placeable placeable, int i3) {
                int i4 = placeable.get(this.alignmentLineProvider.alignmentLine);
                if (i4 == Integer.MIN_VALUE) {
                    return 0;
                }
                int i5 = i3 - i4;
                return layoutDirection == LayoutDirection.Rtl ? (i - i2) - i5 : i5;
            }

            @Override // androidx.compose.foundation.layout.OffsetKt
            public final Integer calculateAlignmentLinePosition$foundation_layout(Placeable placeable) {
                return Integer.valueOf(placeable.get(this.alignmentLineProvider.alignmentLine));
            }
        };
        return rowColumnParentData;
    }
}
