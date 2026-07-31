package net.thunderbird.core.ui.compose.designsystem.molecule.swipe;

import androidx.compose.runtime.ParcelableSnapshotMutableFloatState;
import kotlin.jvm.functions.Function0;
import kotlin.ranges.RangesKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class SwipeableRowState$$ExternalSyntheticLambda0 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ SwipeableRowState f$0;

    public /* synthetic */ SwipeableRowState$$ExternalSyntheticLambda0(SwipeableRowState swipeableRowState, int i) {
        this.$r8$classId = i;
        this.f$0 = swipeableRowState;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        SwipeableRowState swipeableRowState = this.f$0;
        switch (i) {
            case 0:
                ParcelableSnapshotMutableFloatState parcelableSnapshotMutableFloatState = swipeableRowState.pendingOffset$delegate;
                return (parcelableSnapshotMutableFloatState.getFloatValue() == 0.0f || Float.isNaN(parcelableSnapshotMutableFloatState.getFloatValue())) ? SwipeDirection.Settled : parcelableSnapshotMutableFloatState.getFloatValue() > 0.0f ? SwipeDirection.StartToEnd : SwipeDirection.EndToStart;
            case 1:
                return (SwipeDirection) swipeableRowState.swipeDirection$delegate.getValue();
            default:
                ParcelableSnapshotMutableFloatState parcelableSnapshotMutableFloatState2 = swipeableRowState.layoutWidth$delegate;
                return Float.valueOf(parcelableSnapshotMutableFloatState2.getFloatValue() != 0.0f ? RangesKt.coerceIn(Math.abs(((Number) swipeableRowState.getAnimatedOffset().getValue()).floatValue()) / (parcelableSnapshotMutableFloatState2.getFloatValue() * swipeableRowState.getPercentageThreshold(swipeableRowState.getActiveBehaviour$tfa_core_ui_compose_designsystem())), 0.0f, 1.0f) : 0.0f);
        }
    }
}
