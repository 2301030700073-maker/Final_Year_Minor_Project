package androidx.compose.foundation.layout;

import androidx.compose.animation.core.Animation;
import androidx.compose.foundation.text.BasicTextKt$$ExternalSyntheticLambda3;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.InlineClassHelperKt;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.EmptyMap;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$IntRef;
import org.wikipedia.feed.didyouknow.DidYouKnowActivityKt$$ExternalSyntheticLambda3;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class BoxMeasurePolicy implements MeasurePolicy {
    public final Alignment alignment;
    public final boolean propagateMinConstraints;

    public BoxMeasurePolicy(Alignment alignment, boolean z) {
        this.alignment = alignment;
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
        return Intrinsics.areEqual(this.alignment, boxMeasurePolicy.alignment) && this.propagateMinConstraints == boxMeasurePolicy.propagateMinConstraints;
    }

    public final int hashCode() {
        return (this.alignment.hashCode() * 31) + (this.propagateMinConstraints ? 1231 : 1237);
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final /* synthetic */ int maxIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        return Modifier.CC.$default$maxIntrinsicHeight(this, intrinsicMeasureScope, list, i);
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final /* synthetic */ int maxIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        return Modifier.CC.$default$maxIntrinsicWidth(this, intrinsicMeasureScope, list, i);
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    /* renamed from: measure-3p2s80s */
    public final MeasureResult mo15measure3p2s80s(final MeasureScope measureScope, List list, long j) {
        int m683getMinWidthimpl;
        int m682getMinHeightimpl;
        Placeable mo512measureBRTryo0;
        boolean isEmpty = list.isEmpty();
        EmptyMap emptyMap = EmptyMap.INSTANCE;
        if (isEmpty) {
            return measureScope.layout(Constraints.m683getMinWidthimpl(j), Constraints.m682getMinHeightimpl(j), emptyMap, new BasicTextKt$$ExternalSyntheticLambda3(4));
        }
        long j2 = this.propagateMinConstraints ? j : j & (-8589934589L);
        if (list.size() == 1) {
            final Measurable measurable = (Measurable) list.get(0);
            Object parentData = measurable.getParentData();
            BoxChildDataNode boxChildDataNode = parentData instanceof BoxChildDataNode ? (BoxChildDataNode) parentData : null;
            if (boxChildDataNode != null ? boxChildDataNode.matchParentSize : false) {
                m683getMinWidthimpl = Constraints.m683getMinWidthimpl(j);
                m682getMinHeightimpl = Constraints.m682getMinHeightimpl(j);
                int m683getMinWidthimpl2 = Constraints.m683getMinWidthimpl(j);
                int m682getMinHeightimpl2 = Constraints.m682getMinHeightimpl(j);
                if (!((m682getMinHeightimpl2 >= 0) & (m683getMinWidthimpl2 >= 0))) {
                    InlineClassHelperKt.throwIllegalArgumentException("width and height must be >= 0");
                }
                mo512measureBRTryo0 = measurable.mo512measureBRTryo0(ConstraintsKt.createConstraints(m683getMinWidthimpl2, m683getMinWidthimpl2, m682getMinHeightimpl2, m682getMinHeightimpl2));
            } else {
                mo512measureBRTryo0 = measurable.mo512measureBRTryo0(j2);
                m683getMinWidthimpl = Math.max(Constraints.m683getMinWidthimpl(j), mo512measureBRTryo0.width);
                m682getMinHeightimpl = Math.max(Constraints.m682getMinHeightimpl(j), mo512measureBRTryo0.height);
            }
            final int i = m682getMinHeightimpl;
            final int i2 = m683getMinWidthimpl;
            final Placeable placeable = mo512measureBRTryo0;
            return measureScope.layout(i2, i, emptyMap, new Function1() { // from class: androidx.compose.foundation.layout.BoxMeasurePolicy$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    BoxKt.placeInBox((Placeable.PlacementScope) obj, Placeable.this, measurable, measureScope.getLayoutDirection(), i2, i, this.alignment);
                    return Unit.INSTANCE;
                }
            });
        }
        Placeable[] placeableArr = new Placeable[list.size()];
        Ref$IntRef ref$IntRef = new Ref$IntRef();
        ref$IntRef.element = Constraints.m683getMinWidthimpl(j);
        Ref$IntRef ref$IntRef2 = new Ref$IntRef();
        ref$IntRef2.element = Constraints.m682getMinHeightimpl(j);
        int size = list.size();
        boolean z = false;
        for (int i3 = 0; i3 < size; i3++) {
            Measurable measurable2 = (Measurable) list.get(i3);
            Object parentData2 = measurable2.getParentData();
            BoxChildDataNode boxChildDataNode2 = parentData2 instanceof BoxChildDataNode ? (BoxChildDataNode) parentData2 : null;
            if (boxChildDataNode2 != null ? boxChildDataNode2.matchParentSize : false) {
                z = true;
            } else {
                Placeable mo512measureBRTryo02 = measurable2.mo512measureBRTryo0(j2);
                placeableArr[i3] = mo512measureBRTryo02;
                ref$IntRef.element = Math.max(ref$IntRef.element, mo512measureBRTryo02.width);
                ref$IntRef2.element = Math.max(ref$IntRef2.element, mo512measureBRTryo02.height);
            }
        }
        if (z) {
            int i4 = ref$IntRef.element;
            int i5 = i4 != Integer.MAX_VALUE ? i4 : 0;
            int i6 = ref$IntRef2.element;
            long Constraints = ConstraintsKt.Constraints(i5, i4, i6 != Integer.MAX_VALUE ? i6 : 0, i6);
            int size2 = list.size();
            for (int i7 = 0; i7 < size2; i7++) {
                Measurable measurable3 = (Measurable) list.get(i7);
                Object parentData3 = measurable3.getParentData();
                BoxChildDataNode boxChildDataNode3 = parentData3 instanceof BoxChildDataNode ? (BoxChildDataNode) parentData3 : null;
                if (boxChildDataNode3 != null ? boxChildDataNode3.matchParentSize : false) {
                    placeableArr[i7] = measurable3.mo512measureBRTryo0(Constraints);
                }
            }
        }
        return measureScope.layout(ref$IntRef.element, ref$IntRef2.element, emptyMap, new DidYouKnowActivityKt$$ExternalSyntheticLambda3(placeableArr, list, measureScope, ref$IntRef, ref$IntRef2, this));
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final /* synthetic */ int minIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        return Modifier.CC.$default$minIntrinsicHeight(this, intrinsicMeasureScope, list, i);
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final /* synthetic */ int minIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        return Modifier.CC.$default$minIntrinsicWidth(this, intrinsicMeasureScope, list, i);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("BoxMeasurePolicy(alignment=");
        sb.append(this.alignment);
        sb.append(", propagateMinConstraints=");
        return Animation.CC.m(sb, this.propagateMinConstraints, ')');
    }
}
