package net.thunderbird.core.ui.compose.designsystem.molecule.swipe;

import androidx.compose.animation.AnimatedContentTransitionScopeImpl;
import androidx.compose.animation.CrossfadeKt;
import androidx.compose.animation.EnterTransitionImpl;
import androidx.compose.animation.ExitTransitionImpl;
import androidx.compose.runtime.ParcelableSnapshotMutableFloatState;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import androidx.room.util.DBUtil;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.math.MathKt;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.StandaloneCoroutine;
import net.thunderbird.core.ui.compose.designsystem.molecule.swipe.SwipeBehaviour;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class SwipeableRowKt$$ExternalSyntheticLambda2 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ SwipeableRowState f$0;

    public /* synthetic */ SwipeableRowKt$$ExternalSyntheticLambda2(SwipeableRowState swipeableRowState, int i) {
        this.$r8$classId = i;
        this.f$0 = swipeableRowState;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        ExitTransitionImpl exitTransitionImpl;
        float f;
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object[] objArr = 0;
        SwipeableRowState swipeableRowState = this.f$0;
        switch (i) {
            case 0:
                ((AnimatedContentTransitionScopeImpl) obj).getClass();
                EnterTransitionImpl enterTransitionImpl = EnterTransitionImpl.None;
                SwipeBehaviour activeBehaviour$tfa_core_ui_compose_designsystem = swipeableRowState.getActiveBehaviour$tfa_core_ui_compose_designsystem();
                SwipeBehaviour.Dismiss dismiss = activeBehaviour$tfa_core_ui_compose_designsystem instanceof SwipeBehaviour.Dismiss ? (SwipeBehaviour.Dismiss) activeBehaviour$tfa_core_ui_compose_designsystem : null;
                if (dismiss == null || (exitTransitionImpl = dismiss.dismissTransition) == null) {
                    exitTransitionImpl = ExitTransitionImpl.None;
                }
                return CrossfadeKt.togetherWith(enterTransitionImpl, exitTransitionImpl);
            case 1:
                swipeableRowState.layoutWidth$delegate.setFloatValue((int) (((IntSize) obj).packedValue >> 32));
                return unit;
            case 2:
                ((Density) obj).getClass();
                return new IntOffset(MathKt.roundToInt(((Number) swipeableRowState.getAnimatedOffset().getValue()).floatValue()) << 32);
            default:
                ParcelableSnapshotMutableFloatState parcelableSnapshotMutableFloatState = swipeableRowState.pendingOffset$delegate;
                ParcelableSnapshotMutableFloatState parcelableSnapshotMutableFloatState2 = swipeableRowState.layoutWidth$delegate;
                SwipeBehaviour swipeBehaviour = swipeableRowState.endToStartBehaviour;
                SwipeBehaviour swipeBehaviour2 = swipeableRowState.startToEndBehaviour;
                float floatValue = ((Float) obj).floatValue();
                SwipeState swipeState$tfa_core_ui_compose_designsystem = swipeableRowState.getSwipeState$tfa_core_ui_compose_designsystem();
                SwipeState swipeState = SwipeState.Swiping;
                SwipeState swipeState2 = SwipeState.Revealed;
                if (swipeState$tfa_core_ui_compose_designsystem != swipeState && swipeableRowState.getSwipeState$tfa_core_ui_compose_designsystem() != swipeState2) {
                    return unit;
                }
                if (swipeableRowState.getSwipeState$tfa_core_ui_compose_designsystem() == swipeState2 && (swipeableRowState.getActiveBehaviour$tfa_core_ui_compose_designsystem() instanceof SwipeBehaviour.Action) && !swipeableRowState.isClosingGesture(floatValue)) {
                    return unit;
                }
                float floatValue2 = ((Number) swipeableRowState.getAnimatedOffset().getValue()).floatValue();
                float f2 = floatValue2 + floatValue;
                float f3 = 0.0f;
                SwipeBehaviour swipeBehaviour3 = f2 >= 0.0f ? swipeBehaviour2 : swipeBehaviour;
                if (swipeBehaviour3 instanceof SwipeBehaviour.Dismiss) {
                    f = parcelableSnapshotMutableFloatState2.getFloatValue();
                } else if (swipeBehaviour3 instanceof SwipeBehaviour.Action) {
                    f = (parcelableSnapshotMutableFloatState2.getFloatValue() * swipeableRowState.getPercentageThreshold(swipeBehaviour3)) + 10.0f;
                } else {
                    if (!(swipeBehaviour3 instanceof SwipeBehaviour.Disabled)) {
                        UriKt$$ExternalSyntheticBUOutline0.m857m();
                        return null;
                    }
                    f = 0.0f;
                }
                if (f2 != 0.0f && ((f2 <= 0.0f || (swipeBehaviour2 instanceof SwipeBehaviour.Disabled)) && (f2 >= 0.0f || (swipeBehaviour instanceof SwipeBehaviour.Disabled)))) {
                    return unit;
                }
                float abs = Math.abs(floatValue2);
                if (f > 0.0f) {
                    float f4 = 0.7f * f;
                    f3 = 0.1f;
                    if (abs < f) {
                        f3 = abs >= f4 ? DBUtil.lerp(1.0f, 0.1f, (abs - f4) / (f - f4)) : 1.0f;
                    }
                }
                parcelableSnapshotMutableFloatState.setFloatValue(parcelableSnapshotMutableFloatState.getFloatValue() + (floatValue * f3));
                StandaloneCoroutine standaloneCoroutine = swipeableRowState.dragAnimationJob;
                if (standaloneCoroutine != null) {
                    standaloneCoroutine.cancel(null);
                }
                swipeableRowState.dragAnimationJob = JobKt.launch$default(swipeableRowState.coroutineScope, null, null, new SwipeableRowState$onDragStopped$1(swipeableRowState, objArr == true ? 1 : 0, 1), 3);
                return unit;
        }
    }
}
