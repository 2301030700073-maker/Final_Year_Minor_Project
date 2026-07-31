package androidx.compose.foundation.layout;

import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ParentDataModifierNode;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class HorizontalAlignNode extends Modifier.Node implements ParentDataModifierNode {
    public BiasAlignment.Horizontal horizontal;

    @Override // androidx.compose.ui.node.ParentDataModifierNode
    public final Object modifyParentData(Density density, Object obj) {
        RowColumnParentData rowColumnParentData = obj instanceof RowColumnParentData ? (RowColumnParentData) obj : null;
        if (rowColumnParentData == null) {
            rowColumnParentData = new RowColumnParentData();
        }
        final BiasAlignment.Horizontal horizontal = this.horizontal;
        rowColumnParentData.crossAxisAlignment = new OffsetKt(horizontal) { // from class: androidx.compose.foundation.layout.CrossAxisAlignment$HorizontalCrossAxisAlignment
            public final Alignment.Horizontal horizontal;

            {
                this.horizontal = horizontal;
            }

            @Override // androidx.compose.foundation.layout.OffsetKt
            public final int align$foundation_layout(int i, int i2, LayoutDirection layoutDirection) {
                return this.horizontal.align(i2, i, layoutDirection);
            }

            public final boolean equals(Object obj2) {
                if (this == obj2) {
                    return true;
                }
                return (obj2 instanceof CrossAxisAlignment$HorizontalCrossAxisAlignment) && Intrinsics.areEqual(this.horizontal, ((CrossAxisAlignment$HorizontalCrossAxisAlignment) obj2).horizontal);
            }

            public final int hashCode() {
                return this.horizontal.hashCode();
            }

            public final String toString() {
                return "HorizontalCrossAxisAlignment(horizontal=" + this.horizontal + ')';
            }
        };
        return rowColumnParentData;
    }
}
