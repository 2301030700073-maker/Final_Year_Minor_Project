package androidx.compose.ui.layout;

import androidx.compose.ui.node.NodeMeasuringIntrinsics$IntrinsicMinMax;
import androidx.compose.ui.node.NodeMeasuringIntrinsics$IntrinsicWidthHeight;
import androidx.compose.ui.unit.Constraints;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
    public final Placeable mo292measureBRTryo0(long j) {
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
                    return new FixedSizeIntrinsicsPlaceable(intrinsicMinMax == intrinsicMinMax2 ? measurable.maxIntrinsicWidth(Constraints.m433getMaxHeightimpl(j)) : measurable.minIntrinsicWidth(Constraints.m433getMaxHeightimpl(j)), Constraints.m429getHasBoundedHeightimpl(j) ? Constraints.m433getMaxHeightimpl(j) : 32767, 0);
                }
                return new FixedSizeIntrinsicsPlaceable(Constraints.m430getHasBoundedWidthimpl(j) ? Constraints.m434getMaxWidthimpl(j) : 32767, intrinsicMinMax == intrinsicMinMax2 ? measurable.maxIntrinsicHeight(Constraints.m434getMaxWidthimpl(j)) : measurable.minIntrinsicHeight(Constraints.m434getMaxWidthimpl(j)), 0);
            default:
                NodeMeasuringIntrinsics$IntrinsicWidthHeight nodeMeasuringIntrinsics$IntrinsicWidthHeight = (NodeMeasuringIntrinsics$IntrinsicWidthHeight) r2;
                NodeMeasuringIntrinsics$IntrinsicMinMax nodeMeasuringIntrinsics$IntrinsicMinMax = (NodeMeasuringIntrinsics$IntrinsicMinMax) r1;
                NodeMeasuringIntrinsics$IntrinsicMinMax nodeMeasuringIntrinsics$IntrinsicMinMax2 = NodeMeasuringIntrinsics$IntrinsicMinMax.Max;
                if (nodeMeasuringIntrinsics$IntrinsicWidthHeight == NodeMeasuringIntrinsics$IntrinsicWidthHeight.Width) {
                    return new FixedSizeIntrinsicsPlaceable(nodeMeasuringIntrinsics$IntrinsicMinMax == nodeMeasuringIntrinsics$IntrinsicMinMax2 ? measurable.maxIntrinsicWidth(Constraints.m433getMaxHeightimpl(j)) : measurable.minIntrinsicWidth(Constraints.m433getMaxHeightimpl(j)), Constraints.m429getHasBoundedHeightimpl(j) ? Constraints.m433getMaxHeightimpl(j) : 32767, 1);
                }
                return new FixedSizeIntrinsicsPlaceable(Constraints.m430getHasBoundedWidthimpl(j) ? Constraints.m434getMaxWidthimpl(j) : 32767, nodeMeasuringIntrinsics$IntrinsicMinMax == nodeMeasuringIntrinsics$IntrinsicMinMax2 ? measurable.maxIntrinsicHeight(Constraints.m434getMaxWidthimpl(j)) : measurable.minIntrinsicHeight(Constraints.m434getMaxWidthimpl(j)), 1);
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
