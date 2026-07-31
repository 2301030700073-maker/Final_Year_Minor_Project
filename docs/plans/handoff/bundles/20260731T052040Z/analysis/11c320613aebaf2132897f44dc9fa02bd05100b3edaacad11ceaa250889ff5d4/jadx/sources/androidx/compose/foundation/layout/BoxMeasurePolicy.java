package androidx.compose.foundation.layout;

import androidx.compose.foundation.ImageKt$$ExternalSyntheticLambda0;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.Owner;
import androidx.compose.ui.unit.Constraints;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.EmptyMap;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref$IntRef;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class BoxMeasurePolicy implements MeasurePolicy {
    public final BiasAlignment alignment;
    public final boolean propagateMinConstraints;

    public BoxMeasurePolicy(BiasAlignment biasAlignment, boolean z) {
        this.alignment = biasAlignment;
        this.propagateMinConstraints = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BoxMeasurePolicy)) {
            return false;
        }
        BoxMeasurePolicy boxMeasurePolicy = (BoxMeasurePolicy) obj;
        return this.alignment.equals(boxMeasurePolicy.alignment) && this.propagateMinConstraints == boxMeasurePolicy.propagateMinConstraints;
    }

    public final int hashCode() {
        return (this.alignment.hashCode() * 31) + (this.propagateMinConstraints ? 1231 : 1237);
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final /* synthetic */ int maxIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        return Owner.CC.$default$maxIntrinsicHeight(this, intrinsicMeasureScope, list, i);
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final /* synthetic */ int maxIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        return Owner.CC.$default$maxIntrinsicWidth(this, intrinsicMeasureScope, list, i);
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    /* renamed from: measure-3p2s80s */
    public final MeasureResult mo8measure3p2s80s(final MeasureScope measureScope, final List list, long j) {
        boolean isEmpty = list.isEmpty();
        EmptyMap emptyMap = EmptyMap.INSTANCE;
        if (isEmpty) {
            return measureScope.layout(Constraints.m436getMinWidthimpl(j), Constraints.m435getMinHeightimpl(j), emptyMap, new ImageKt$$ExternalSyntheticLambda0(22));
        }
        long j2 = this.propagateMinConstraints ? j : j & (-8589934589L);
        if (list.size() == 1) {
            final Measurable measurable = (Measurable) list.get(0);
            measurable.getParentData();
            final Placeable mo292measureBRTryo0 = measurable.mo292measureBRTryo0(j2);
            final int max = Math.max(Constraints.m436getMinWidthimpl(j), mo292measureBRTryo0.width);
            final int max2 = Math.max(Constraints.m435getMinHeightimpl(j), mo292measureBRTryo0.height);
            return measureScope.layout(max, max2, emptyMap, new Function1() { // from class: androidx.compose.foundation.layout.BoxMeasurePolicy$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    BoxKt.access$placeInBox((Placeable.PlacementScope) obj, Placeable.this, measurable, measureScope.getLayoutDirection(), max, max2, this.alignment);
                    return Unit.INSTANCE;
                }
            });
        }
        final Placeable[] placeableArr = new Placeable[list.size()];
        final Ref$IntRef ref$IntRef = new Ref$IntRef();
        ref$IntRef.element = Constraints.m436getMinWidthimpl(j);
        final Ref$IntRef ref$IntRef2 = new Ref$IntRef();
        ref$IntRef2.element = Constraints.m435getMinHeightimpl(j);
        int size = list.size();
        for (int i = 0; i < size; i++) {
            Measurable measurable2 = (Measurable) list.get(i);
            measurable2.getParentData();
            Placeable mo292measureBRTryo02 = measurable2.mo292measureBRTryo0(j2);
            placeableArr[i] = mo292measureBRTryo02;
            ref$IntRef.element = Math.max(ref$IntRef.element, mo292measureBRTryo02.width);
            ref$IntRef2.element = Math.max(ref$IntRef2.element, mo292measureBRTryo02.height);
        }
        return measureScope.layout(ref$IntRef.element, ref$IntRef2.element, emptyMap, new Function1() { // from class: androidx.compose.foundation.layout.BoxMeasurePolicy$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj;
                Placeable[] placeableArr2 = placeableArr;
                int length = placeableArr2.length;
                int i2 = 0;
                int i3 = 0;
                while (i3 < length) {
                    int i4 = i2;
                    Placeable placeable = placeableArr2[i3];
                    placeable.getClass();
                    BoxKt.access$placeInBox(placementScope, placeable, (Measurable) list.get(i4), measureScope.getLayoutDirection(), ref$IntRef.element, ref$IntRef2.element, this.alignment);
                    i3++;
                    i2 = i4 + 1;
                }
                return Unit.INSTANCE;
            }
        });
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final /* synthetic */ int minIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        return Owner.CC.$default$minIntrinsicHeight(this, intrinsicMeasureScope, list, i);
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final /* synthetic */ int minIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        return Owner.CC.$default$minIntrinsicWidth(this, intrinsicMeasureScope, list, i);
    }

    public final String toString() {
        return "BoxMeasurePolicy(alignment=" + this.alignment + ", propagateMinConstraints=" + this.propagateMinConstraints + ')';
    }
}
