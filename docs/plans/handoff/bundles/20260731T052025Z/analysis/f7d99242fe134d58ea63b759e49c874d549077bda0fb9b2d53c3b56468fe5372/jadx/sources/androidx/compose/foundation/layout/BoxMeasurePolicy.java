package androidx.compose.foundation.layout;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.foundation.BorderKt$$ExternalSyntheticLambda1;
import androidx.compose.ui.BiasAlignment;
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
import kotlin.collections.EmptyMap;
import kotlin.jvm.internal.Ref$IntRef;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
        return Modifier.CC.$default$maxIntrinsicHeight(this, intrinsicMeasureScope, list, i);
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final /* synthetic */ int maxIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        return Modifier.CC.$default$maxIntrinsicWidth(this, intrinsicMeasureScope, list, i);
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    /* renamed from: measure-3p2s80s */
    public final MeasureResult mo108measure3p2s80s(MeasureScope measureScope, List list, long j) {
        int m736getMinWidthimpl;
        int m735getMinHeightimpl;
        Placeable mo571measureBRTryo0;
        boolean isEmpty = list.isEmpty();
        EmptyMap emptyMap = EmptyMap.INSTANCE;
        if (isEmpty) {
            return measureScope.layout(Constraints.m736getMinWidthimpl(j), Constraints.m735getMinHeightimpl(j), emptyMap, new BorderKt$$ExternalSyntheticLambda1(29));
        }
        long j2 = this.propagateMinConstraints ? j : j & (-8589934589L);
        if (list.size() == 1) {
            Measurable measurable = (Measurable) list.get(0);
            Object parentData = measurable.getParentData();
            BoxChildDataNode boxChildDataNode = parentData instanceof BoxChildDataNode ? (BoxChildDataNode) parentData : null;
            if (boxChildDataNode != null ? boxChildDataNode.matchParentSize : false) {
                m736getMinWidthimpl = Constraints.m736getMinWidthimpl(j);
                m735getMinHeightimpl = Constraints.m735getMinHeightimpl(j);
                int m736getMinWidthimpl2 = Constraints.m736getMinWidthimpl(j);
                int m735getMinHeightimpl2 = Constraints.m735getMinHeightimpl(j);
                if (!((m735getMinHeightimpl2 >= 0) & (m736getMinWidthimpl2 >= 0))) {
                    InlineClassHelperKt.throwIllegalArgumentException("width and height must be >= 0");
                }
                mo571measureBRTryo0 = measurable.mo571measureBRTryo0(ConstraintsKt.createConstraints(m736getMinWidthimpl2, m736getMinWidthimpl2, m735getMinHeightimpl2, m735getMinHeightimpl2));
            } else {
                mo571measureBRTryo0 = measurable.mo571measureBRTryo0(j2);
                m736getMinWidthimpl = Math.max(Constraints.m736getMinWidthimpl(j), mo571measureBRTryo0.width);
                m735getMinHeightimpl = Math.max(Constraints.m735getMinHeightimpl(j), mo571measureBRTryo0.height);
            }
            int i = m735getMinHeightimpl;
            int i2 = m736getMinWidthimpl;
            return measureScope.layout(i2, i, emptyMap, new BoxMeasurePolicy$$ExternalSyntheticLambda0(mo571measureBRTryo0, measurable, measureScope, i2, i, this));
        }
        Placeable[] placeableArr = new Placeable[list.size()];
        Ref$IntRef ref$IntRef = new Ref$IntRef();
        ref$IntRef.element = Constraints.m736getMinWidthimpl(j);
        Ref$IntRef ref$IntRef2 = new Ref$IntRef();
        ref$IntRef2.element = Constraints.m735getMinHeightimpl(j);
        int size = list.size();
        boolean z = false;
        for (int i3 = 0; i3 < size; i3++) {
            Measurable measurable2 = (Measurable) list.get(i3);
            Object parentData2 = measurable2.getParentData();
            BoxChildDataNode boxChildDataNode2 = parentData2 instanceof BoxChildDataNode ? (BoxChildDataNode) parentData2 : null;
            if (boxChildDataNode2 != null ? boxChildDataNode2.matchParentSize : false) {
                z = true;
            } else {
                Placeable mo571measureBRTryo02 = measurable2.mo571measureBRTryo0(j2);
                placeableArr[i3] = mo571measureBRTryo02;
                ref$IntRef.element = Math.max(ref$IntRef.element, mo571measureBRTryo02.width);
                ref$IntRef2.element = Math.max(ref$IntRef2.element, mo571measureBRTryo02.height);
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
                    placeableArr[i7] = measurable3.mo571measureBRTryo0(Constraints);
                }
            }
        }
        return measureScope.layout(ref$IntRef.element, ref$IntRef2.element, emptyMap, new BoxMeasurePolicy$$ExternalSyntheticLambda1(placeableArr, list, measureScope, ref$IntRef, ref$IntRef2, this, 0));
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
        return CameraDevices$CC.m(sb, this.propagateMinConstraints, ')');
    }
}
