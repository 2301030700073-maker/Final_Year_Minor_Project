package androidx.compose.foundation.layout;

import androidx.compose.material3.AppBarKt$$ExternalSyntheticLambda12;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.node.LookaheadCapablePlaceable;
import androidx.compose.ui.unit.ConstraintsKt;
import kotlin.collections.EmptyMap;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class IntrinsicSizeModifier extends Modifier.Node implements LayoutModifierNode {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ IntrinsicSizeModifier(int i) {
        this.$r8$classId = i;
    }

    /* renamed from: calculateContentConstraints-l58MMJ0 */
    public abstract long mo124calculateContentConstraintsl58MMJ0(Measurable measurable, long j);

    public abstract boolean getEnforceIncoming();

    public int maxIntrinsicHeight(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        switch (this.$r8$classId) {
        }
        return measurable.maxIntrinsicHeight(i);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int maxIntrinsicWidth(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        switch (this.$r8$classId) {
        }
        return measurable.maxIntrinsicWidth(i);
    }

    /* renamed from: measure-3p2s80s */
    public MeasureResult mo16measure3p2s80s(MeasureScope measureScope, Measurable measurable, long j) {
        long mo124calculateContentConstraintsl58MMJ0 = mo124calculateContentConstraintsl58MMJ0(measurable, j);
        if (getEnforceIncoming()) {
            mo124calculateContentConstraintsl58MMJ0 = ConstraintsKt.m687constrainN9IONVI(j, mo124calculateContentConstraintsl58MMJ0);
        }
        Placeable mo512measureBRTryo0 = measurable.mo512measureBRTryo0(mo124calculateContentConstraintsl58MMJ0);
        return measureScope.layout(mo512measureBRTryo0.width, mo512measureBRTryo0.height, EmptyMap.INSTANCE, new AppBarKt$$ExternalSyntheticLambda12(mo512measureBRTryo0, 3));
    }

    public int minIntrinsicHeight(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        switch (this.$r8$classId) {
        }
        return measurable.minIntrinsicHeight(i);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int minIntrinsicWidth(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        switch (this.$r8$classId) {
        }
        return measurable.minIntrinsicWidth(i);
    }
}
