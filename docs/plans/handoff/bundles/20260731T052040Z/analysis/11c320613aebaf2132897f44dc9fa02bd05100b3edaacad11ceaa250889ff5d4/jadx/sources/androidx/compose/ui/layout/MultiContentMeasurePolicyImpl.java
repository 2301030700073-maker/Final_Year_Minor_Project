package androidx.compose.ui.layout;

import androidx.compose.ui.node.HitTestResultKt;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class MultiContentMeasurePolicyImpl implements MeasurePolicy {
    public final MultiContentMeasurePolicy measurePolicy;

    public MultiContentMeasurePolicyImpl(MultiContentMeasurePolicy multiContentMeasurePolicy) {
        this.measurePolicy = multiContentMeasurePolicy;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof MultiContentMeasurePolicyImpl) && Intrinsics.areEqual(this.measurePolicy, ((MultiContentMeasurePolicyImpl) obj).measurePolicy);
    }

    public final int hashCode() {
        return this.measurePolicy.hashCode();
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final int maxIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        return this.measurePolicy.maxIntrinsicHeight(intrinsicMeasureScope, HitTestResultKt.getChildrenOfVirtualChildren(intrinsicMeasureScope), i);
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final int maxIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        return this.measurePolicy.maxIntrinsicWidth(intrinsicMeasureScope, HitTestResultKt.getChildrenOfVirtualChildren(intrinsicMeasureScope), i);
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    /* renamed from: measure-3p2s80s */
    public final MeasureResult mo8measure3p2s80s(MeasureScope measureScope, List list, long j) {
        return this.measurePolicy.mo82measure3p2s80s(measureScope, HitTestResultKt.getChildrenOfVirtualChildren(measureScope), j);
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final int minIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        return this.measurePolicy.minIntrinsicHeight(intrinsicMeasureScope, HitTestResultKt.getChildrenOfVirtualChildren(intrinsicMeasureScope), i);
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final int minIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        return this.measurePolicy.minIntrinsicWidth(intrinsicMeasureScope, HitTestResultKt.getChildrenOfVirtualChildren(intrinsicMeasureScope), i);
    }

    public final String toString() {
        return "MultiContentMeasurePolicyImpl(measurePolicy=" + this.measurePolicy + ')';
    }
}
