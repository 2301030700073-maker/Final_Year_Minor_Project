package androidx.compose.ui.layout;

import androidx.compose.ui.node.NodeMeasuringIntrinsics$IntrinsicMinMax;
import androidx.compose.ui.node.NodeMeasuringIntrinsics$IntrinsicWidthHeight;
import androidx.compose.ui.unit.Constraints;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DefaultIntrinsicMeasurable implements Measurable {
    public final /* synthetic */ int $r8$classId;
    public final Measurable measurable;
    public final Enum minMax;
    public final Enum widthHeight;

    public /* synthetic */ DefaultIntrinsicMeasurable(Measurable measurable, Enum r2, Enum r3, int i) {
        this.$r8$classId = i;
        this.measurable = measurable;
        this.minMax = r2;
        this.widthHeight = r3;
    }

    @Override // androidx.compose.ui.layout.Measurable
    public final Object getParentData() {
        switch (this.$r8$classId) {
        }
        return this.measurable.getParentData();
    }

    @Override // androidx.compose.ui.layout.Measurable
    public final int maxIntrinsicHeight(int i) {
        switch (this.$r8$classId) {
        }
        return this.measurable.maxIntrinsicHeight(i);
    }

    @Override // androidx.compose.ui.layout.Measurable
    public final int maxIntrinsicWidth(int i) {
        switch (this.$r8$classId) {
        }
        return this.measurable.maxIntrinsicWidth(i);
    }

    @Override // androidx.compose.ui.layout.Measurable
    /* renamed from: measure-BRTryo0, reason: not valid java name */
    public final Placeable mo512measureBRTryo0(long j) {
        switch (this.$r8$classId) {
            case 0:
                IntrinsicWidthHeight intrinsicWidthHeight = (IntrinsicWidthHeight) this.widthHeight;
                IntrinsicWidthHeight intrinsicWidthHeight2 = IntrinsicWidthHeight.Width;
                IntrinsicMinMax intrinsicMinMax = (IntrinsicMinMax) this.minMax;
                Measurable measurable = this.measurable;
                if (intrinsicWidthHeight == intrinsicWidthHeight2) {
                    return new FixedSizeIntrinsicsPlaceable(intrinsicMinMax == IntrinsicMinMax.Max ? measurable.maxIntrinsicWidth(Constraints.m680getMaxHeightimpl(j)) : measurable.minIntrinsicWidth(Constraints.m680getMaxHeightimpl(j)), Constraints.m676getHasBoundedHeightimpl(j) ? Constraints.m680getMaxHeightimpl(j) : 32767, 0);
                }
                return new FixedSizeIntrinsicsPlaceable(Constraints.m677getHasBoundedWidthimpl(j) ? Constraints.m681getMaxWidthimpl(j) : 32767, intrinsicMinMax == IntrinsicMinMax.Max ? measurable.maxIntrinsicHeight(Constraints.m681getMaxWidthimpl(j)) : measurable.minIntrinsicHeight(Constraints.m681getMaxWidthimpl(j)), 0);
            case 1:
                MeasuringIntrinsics$IntrinsicWidthHeight measuringIntrinsics$IntrinsicWidthHeight = (MeasuringIntrinsics$IntrinsicWidthHeight) this.widthHeight;
                MeasuringIntrinsics$IntrinsicWidthHeight measuringIntrinsics$IntrinsicWidthHeight2 = MeasuringIntrinsics$IntrinsicWidthHeight.Width;
                MeasuringIntrinsics$IntrinsicMinMax measuringIntrinsics$IntrinsicMinMax = (MeasuringIntrinsics$IntrinsicMinMax) this.minMax;
                Measurable measurable2 = this.measurable;
                if (measuringIntrinsics$IntrinsicWidthHeight == measuringIntrinsics$IntrinsicWidthHeight2) {
                    return new FixedSizeIntrinsicsPlaceable(measuringIntrinsics$IntrinsicMinMax == MeasuringIntrinsics$IntrinsicMinMax.Max ? measurable2.maxIntrinsicWidth(Constraints.m680getMaxHeightimpl(j)) : measurable2.minIntrinsicWidth(Constraints.m680getMaxHeightimpl(j)), Constraints.m676getHasBoundedHeightimpl(j) ? Constraints.m680getMaxHeightimpl(j) : 32767, 1);
                }
                return new FixedSizeIntrinsicsPlaceable(Constraints.m677getHasBoundedWidthimpl(j) ? Constraints.m681getMaxWidthimpl(j) : 32767, measuringIntrinsics$IntrinsicMinMax == MeasuringIntrinsics$IntrinsicMinMax.Max ? measurable2.maxIntrinsicHeight(Constraints.m681getMaxWidthimpl(j)) : measurable2.minIntrinsicHeight(Constraints.m681getMaxWidthimpl(j)), 1);
            default:
                NodeMeasuringIntrinsics$IntrinsicWidthHeight nodeMeasuringIntrinsics$IntrinsicWidthHeight = (NodeMeasuringIntrinsics$IntrinsicWidthHeight) this.widthHeight;
                NodeMeasuringIntrinsics$IntrinsicWidthHeight nodeMeasuringIntrinsics$IntrinsicWidthHeight2 = NodeMeasuringIntrinsics$IntrinsicWidthHeight.Width;
                NodeMeasuringIntrinsics$IntrinsicMinMax nodeMeasuringIntrinsics$IntrinsicMinMax = (NodeMeasuringIntrinsics$IntrinsicMinMax) this.minMax;
                Measurable measurable3 = this.measurable;
                if (nodeMeasuringIntrinsics$IntrinsicWidthHeight == nodeMeasuringIntrinsics$IntrinsicWidthHeight2) {
                    return new FixedSizeIntrinsicsPlaceable(nodeMeasuringIntrinsics$IntrinsicMinMax == NodeMeasuringIntrinsics$IntrinsicMinMax.Max ? measurable3.maxIntrinsicWidth(Constraints.m680getMaxHeightimpl(j)) : measurable3.minIntrinsicWidth(Constraints.m680getMaxHeightimpl(j)), Constraints.m676getHasBoundedHeightimpl(j) ? Constraints.m680getMaxHeightimpl(j) : 32767, 2);
                }
                return new FixedSizeIntrinsicsPlaceable(Constraints.m677getHasBoundedWidthimpl(j) ? Constraints.m681getMaxWidthimpl(j) : 32767, nodeMeasuringIntrinsics$IntrinsicMinMax == NodeMeasuringIntrinsics$IntrinsicMinMax.Max ? measurable3.maxIntrinsicHeight(Constraints.m681getMaxWidthimpl(j)) : measurable3.minIntrinsicHeight(Constraints.m681getMaxWidthimpl(j)), 2);
        }
    }

    @Override // androidx.compose.ui.layout.Measurable
    public final int minIntrinsicHeight(int i) {
        switch (this.$r8$classId) {
        }
        return this.measurable.minIntrinsicHeight(i);
    }

    @Override // androidx.compose.ui.layout.Measurable
    public final int minIntrinsicWidth(int i) {
        switch (this.$r8$classId) {
        }
        return this.measurable.minIntrinsicWidth(i);
    }
}
