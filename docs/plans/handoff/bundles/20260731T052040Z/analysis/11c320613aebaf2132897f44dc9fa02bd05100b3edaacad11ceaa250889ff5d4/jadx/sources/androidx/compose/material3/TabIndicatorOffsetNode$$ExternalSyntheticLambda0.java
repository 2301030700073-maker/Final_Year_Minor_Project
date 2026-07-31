package androidx.compose.material3;

import androidx.compose.animation.AnimatedContentTransitionScopeImpl;
import androidx.compose.animation.ContentTransform;
import androidx.compose.animation.core.Transition;
import androidx.compose.runtime.ParcelableSnapshotMutableLongState;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.Owner;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.math.MathKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class TabIndicatorOffsetNode$$ExternalSyntheticLambda0 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ float f$1;

    public /* synthetic */ TabIndicatorOffsetNode$$ExternalSyntheticLambda0(Object obj, float f, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = f;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        float f = this.f$1;
        Object obj2 = this.f$0;
        switch (i) {
            case 0:
                Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj;
                placementScope.getClass();
                placementScope.place((Placeable) obj2, Owner.CC.m357$default$roundToPx0680j_4(placementScope, f), 0, 0.0f);
                return unit;
            case 1:
                Transition transition = (Transition) obj2;
                long longValue = ((Long) obj).longValue();
                boolean isSeeking = transition.isSeeking();
                ParcelableSnapshotMutableLongState parcelableSnapshotMutableLongState = transition.startTimeNanos$delegate;
                if (!isSeeking) {
                    if (parcelableSnapshotMutableLongState.getLongValue() == Long.MIN_VALUE) {
                        parcelableSnapshotMutableLongState.setLongValue(longValue);
                        transition.transitionState.isRunning$delegate.setValue(Boolean.TRUE);
                    }
                    long longValue2 = longValue - parcelableSnapshotMutableLongState.getLongValue();
                    if (f != 0.0f) {
                        longValue2 = MathKt.roundToLong(longValue2 / f);
                    }
                    transition.setPlayTimeNanos(longValue2);
                    transition.onFrame$animation_core(longValue2, f == 0.0f);
                }
                return unit;
            default:
                Function1 function1 = (Function1) obj2;
                AnimatedContentTransitionScopeImpl animatedContentTransitionScopeImpl = (AnimatedContentTransitionScopeImpl) obj;
                return new ContentTransform(((ContentTransform) function1.invoke(animatedContentTransitionScopeImpl)).targetContentEnter, ((ContentTransform) function1.invoke(animatedContentTransitionScopeImpl)).initialContentExit, f, null);
        }
    }
}
