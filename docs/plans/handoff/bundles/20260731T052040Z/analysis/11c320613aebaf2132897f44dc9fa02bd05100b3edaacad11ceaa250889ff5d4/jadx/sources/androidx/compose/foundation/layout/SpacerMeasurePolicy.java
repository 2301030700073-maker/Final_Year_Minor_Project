package androidx.compose.foundation.layout;

import androidx.compose.foundation.ImageKt$$ExternalSyntheticLambda0;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.node.Owner;
import androidx.compose.ui.unit.Constraints;
import java.util.List;
import kotlin.collections.EmptyMap;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SpacerMeasurePolicy implements MeasurePolicy {
    public final /* synthetic */ int $r8$classId;
    public static final SpacerMeasurePolicy INSTANCE$1 = new SpacerMeasurePolicy(1);
    public static final SpacerMeasurePolicy INSTANCE = new SpacerMeasurePolicy(0);

    public /* synthetic */ SpacerMeasurePolicy(int i) {
        this.$r8$classId = i;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final /* synthetic */ int maxIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        int i2 = this.$r8$classId;
        return Owner.CC.$default$maxIntrinsicHeight(this, intrinsicMeasureScope, list, i);
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final /* synthetic */ int maxIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        int i2 = this.$r8$classId;
        return Owner.CC.$default$maxIntrinsicWidth(this, intrinsicMeasureScope, list, i);
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    /* renamed from: measure-3p2s80s */
    public final MeasureResult mo8measure3p2s80s(MeasureScope measureScope, List list, long j) {
        int i = this.$r8$classId;
        EmptyMap emptyMap = EmptyMap.INSTANCE;
        int i2 = 22;
        switch (i) {
            case 0:
                return measureScope.layout(Constraints.m432getHasFixedWidthimpl(j) ? Constraints.m434getMaxWidthimpl(j) : 0, Constraints.m431getHasFixedHeightimpl(j) ? Constraints.m433getMaxHeightimpl(j) : 0, emptyMap, new ImageKt$$ExternalSyntheticLambda0(i2));
            default:
                return measureScope.layout(Constraints.m436getMinWidthimpl(j), Constraints.m435getMinHeightimpl(j), emptyMap, new ImageKt$$ExternalSyntheticLambda0(i2));
        }
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final /* synthetic */ int minIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        int i2 = this.$r8$classId;
        return Owner.CC.$default$minIntrinsicHeight(this, intrinsicMeasureScope, list, i);
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final /* synthetic */ int minIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        int i2 = this.$r8$classId;
        return Owner.CC.$default$minIntrinsicWidth(this, intrinsicMeasureScope, list, i);
    }
}
