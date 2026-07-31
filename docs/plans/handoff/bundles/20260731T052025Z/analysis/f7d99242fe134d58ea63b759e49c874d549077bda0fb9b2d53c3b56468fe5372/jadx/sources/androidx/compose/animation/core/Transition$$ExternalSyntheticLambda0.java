package androidx.compose.animation.core;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class Transition$$ExternalSyntheticLambda0 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Transition f$0;

    public /* synthetic */ Transition$$ExternalSyntheticLambda0(Transition transition, int i) {
        this.$r8$classId = i;
        this.f$0 = transition;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        Transition transition = this.f$0;
        switch (i) {
            case 0:
                return Boolean.valueOf((Intrinsics.areEqual(transition.targetState$delegate.getValue(), transition.transitionState.getCurrentState()) && transition.startTimeNanos$delegate.getLongValue() == Long.MIN_VALUE && !((Boolean) transition.updateChildrenNeeded$delegate.getValue()).booleanValue()) ? false : true);
            default:
                return Long.valueOf(transition.calculateTotalDurationNanos());
        }
    }
}
