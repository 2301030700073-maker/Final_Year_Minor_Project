package androidx.compose.animation.core;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class SuspendAnimationKt$$ExternalSyntheticLambda2 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ AnimationState f$0;

    public /* synthetic */ SuspendAnimationKt$$ExternalSyntheticLambda2(AnimationState animationState, int i) {
        this.$r8$classId = i;
        this.f$0 = animationState;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        AnimationState animationState = this.f$0;
        switch (i) {
            case 0:
                animationState.isRunning = false;
                break;
            default:
                animationState.isRunning = false;
                break;
        }
        return unit;
    }
}
