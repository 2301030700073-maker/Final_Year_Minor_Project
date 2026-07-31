package androidx.compose.foundation.layout;

import androidx.compose.foundation.BorderKt$$ExternalSyntheticLambda1;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.unit.Constraints;
import java.util.List;
import kotlin.collections.EmptyMap;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
        return Modifier.CC.$default$maxIntrinsicHeight(this, intrinsicMeasureScope, list, i);
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final /* synthetic */ int maxIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        int i2 = this.$r8$classId;
        return Modifier.CC.$default$maxIntrinsicWidth(this, intrinsicMeasureScope, list, i);
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    /* renamed from: measure-3p2s80s */
    public final MeasureResult mo108measure3p2s80s(MeasureScope measureScope, List list, long j) {
        int i = this.$r8$classId;
        EmptyMap emptyMap = EmptyMap.INSTANCE;
        switch (i) {
            case 0:
                return measureScope.layout(Constraints.m732getHasFixedWidthimpl(j) ? Constraints.m734getMaxWidthimpl(j) : 0, Constraints.m731getHasFixedHeightimpl(j) ? Constraints.m733getMaxHeightimpl(j) : 0, emptyMap, new BorderKt$$ExternalSyntheticLambda1(29));
            default:
                return measureScope.layout(Constraints.m736getMinWidthimpl(j), Constraints.m735getMinHeightimpl(j), emptyMap, new BorderKt$$ExternalSyntheticLambda1(29));
        }
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final /* synthetic */ int minIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        int i2 = this.$r8$classId;
        return Modifier.CC.$default$minIntrinsicHeight(this, intrinsicMeasureScope, list, i);
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final /* synthetic */ int minIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        int i2 = this.$r8$classId;
        return Modifier.CC.$default$minIntrinsicWidth(this, intrinsicMeasureScope, list, i);
    }
}
