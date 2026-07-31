package androidx.compose.animation.core;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
            case 1:
                return Long.valueOf(transition.calculateTotalDurationNanos());
            default:
                return Boolean.valueOf(transition.startTimeNanos$delegate.getLongValue() != Long.MIN_VALUE);
        }
    }
}
