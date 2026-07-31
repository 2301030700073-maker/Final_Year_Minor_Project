package androidx.compose.ui.layout;

import androidx.compose.ui.node.NodeMeasuringIntrinsics$IntrinsicMinMax;
import androidx.compose.ui.node.NodeMeasuringIntrinsics$IntrinsicWidthHeight;
import androidx.compose.ui.unit.Constraints;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
    public final Placeable mo571measureBRTryo0(long j) {
        int i = this.$r8$classId;
        Enum r1 = this.minMax;
        Enum r2 = this.widthHeight;
        Measurable measurable = this.measurable;
        switch (i) {
            case 0:
                IntrinsicWidthHeight intrinsicWidthHeight = (IntrinsicWidthHeight) r2;
                IntrinsicMinMax intrinsicMinMax = (IntrinsicMinMax) r1;
                IntrinsicMinMax intrinsicMinMax2 = IntrinsicMinMax.Max;
                if (intrinsicWidthHeight == IntrinsicWidthHeight.Width) {
                    return new FixedSizeIntrinsicsPlaceable(intrinsicMinMax == intrinsicMinMax2 ? measurable.maxIntrinsicWidth(Constraints.m733getMaxHeightimpl(j)) : measurable.minIntrinsicWidth(Constraints.m733getMaxHeightimpl(j)), Constraints.m729getHasBoundedHeightimpl(j) ? Constraints.m733getMaxHeightimpl(j) : 32767, 0);
                }
                return new FixedSizeIntrinsicsPlaceable(Constraints.m730getHasBoundedWidthimpl(j) ? Constraints.m734getMaxWidthimpl(j) : 32767, intrinsicMinMax == intrinsicMinMax2 ? measurable.maxIntrinsicHeight(Constraints.m734getMaxWidthimpl(j)) : measurable.minIntrinsicHeight(Constraints.m734getMaxWidthimpl(j)), 0);
            case 1:
                MeasuringIntrinsics$IntrinsicWidthHeight measuringIntrinsics$IntrinsicWidthHeight = (MeasuringIntrinsics$IntrinsicWidthHeight) r2;
                MeasuringIntrinsics$IntrinsicMinMax measuringIntrinsics$IntrinsicMinMax = (MeasuringIntrinsics$IntrinsicMinMax) r1;
                MeasuringIntrinsics$IntrinsicMinMax measuringIntrinsics$IntrinsicMinMax2 = MeasuringIntrinsics$IntrinsicMinMax.Max;
                if (measuringIntrinsics$IntrinsicWidthHeight == MeasuringIntrinsics$IntrinsicWidthHeight.Width) {
                    return new FixedSizeIntrinsicsPlaceable(measuringIntrinsics$IntrinsicMinMax == measuringIntrinsics$IntrinsicMinMax2 ? measurable.maxIntrinsicWidth(Constraints.m733getMaxHeightimpl(j)) : measurable.minIntrinsicWidth(Constraints.m733getMaxHeightimpl(j)), Constraints.m729getHasBoundedHeightimpl(j) ? Constraints.m733getMaxHeightimpl(j) : 32767, 1);
                }
                return new FixedSizeIntrinsicsPlaceable(Constraints.m730getHasBoundedWidthimpl(j) ? Constraints.m734getMaxWidthimpl(j) : 32767, measuringIntrinsics$IntrinsicMinMax == measuringIntrinsics$IntrinsicMinMax2 ? measurable.maxIntrinsicHeight(Constraints.m734getMaxWidthimpl(j)) : measurable.minIntrinsicHeight(Constraints.m734getMaxWidthimpl(j)), 1);
            default:
                NodeMeasuringIntrinsics$IntrinsicWidthHeight nodeMeasuringIntrinsics$IntrinsicWidthHeight = (NodeMeasuringIntrinsics$IntrinsicWidthHeight) r2;
                NodeMeasuringIntrinsics$IntrinsicMinMax nodeMeasuringIntrinsics$IntrinsicMinMax = (NodeMeasuringIntrinsics$IntrinsicMinMax) r1;
                NodeMeasuringIntrinsics$IntrinsicMinMax nodeMeasuringIntrinsics$IntrinsicMinMax2 = NodeMeasuringIntrinsics$IntrinsicMinMax.Max;
                if (nodeMeasuringIntrinsics$IntrinsicWidthHeight == NodeMeasuringIntrinsics$IntrinsicWidthHeight.Width) {
                    return new FixedSizeIntrinsicsPlaceable(nodeMeasuringIntrinsics$IntrinsicMinMax == nodeMeasuringIntrinsics$IntrinsicMinMax2 ? measurable.maxIntrinsicWidth(Constraints.m733getMaxHeightimpl(j)) : measurable.minIntrinsicWidth(Constraints.m733getMaxHeightimpl(j)), Constraints.m729getHasBoundedHeightimpl(j) ? Constraints.m733getMaxHeightimpl(j) : 32767, 2);
                }
                return new FixedSizeIntrinsicsPlaceable(Constraints.m730getHasBoundedWidthimpl(j) ? Constraints.m734getMaxWidthimpl(j) : 32767, nodeMeasuringIntrinsics$IntrinsicMinMax == nodeMeasuringIntrinsics$IntrinsicMinMax2 ? measurable.maxIntrinsicHeight(Constraints.m734getMaxWidthimpl(j)) : measurable.minIntrinsicHeight(Constraints.m734getMaxWidthimpl(j)), 2);
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
