package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.node.LookaheadCapablePlaceable;
import androidx.compose.ui.unit.ConstraintsKt;
import kotlin.collections.EmptyMap;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class IntrinsicSizeModifier extends Modifier.Node implements LayoutModifierNode {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ IntrinsicSizeModifier(int i) {
        this.$r8$classId = i;
    }

    /* renamed from: calculateContentConstraints-l58MMJ0 */
    public abstract long mo212calculateContentConstraintsl58MMJ0(Measurable measurable, long j);

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
    public MeasureResult mo109measure3p2s80s(MeasureScope measureScope, Measurable measurable, long j) {
        long mo212calculateContentConstraintsl58MMJ0 = mo212calculateContentConstraintsl58MMJ0(measurable, j);
        if (getEnforceIncoming()) {
            mo212calculateContentConstraintsl58MMJ0 = ConstraintsKt.m739constrainN9IONVI(j, mo212calculateContentConstraintsl58MMJ0);
        }
        Placeable mo571measureBRTryo0 = measurable.mo571measureBRTryo0(mo212calculateContentConstraintsl58MMJ0);
        return measureScope.layout(mo571measureBRTryo0.width, mo571measureBRTryo0.height, EmptyMap.INSTANCE, new FillNode$$ExternalSyntheticLambda0(mo571measureBRTryo0, 1));
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
