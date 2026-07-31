package androidx.compose.animation.core;

import androidx.navigation3.runtime.DecoratedNavEntriesKt$$ExternalSyntheticLambda3;
import java.util.concurrent.CancellationException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref$BooleanRef;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class Animatable$runAnimation$2 extends SuspendLambda implements Function1 {
    final /* synthetic */ Animation $animation;
    final /* synthetic */ Function1 $block;
    final /* synthetic */ Object $initialVelocity;
    final /* synthetic */ long $startTime;
    Object L$0;
    Object L$1;
    int label;
    final /* synthetic */ Animatable this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Animatable$runAnimation$2(Animatable animatable, Object obj, Animation animation, long j, Function1 function1, Continuation continuation) {
        super(1, continuation);
        this.this$0 = animatable;
        this.$initialVelocity = obj;
        this.$animation = animation;
        this.$startTime = j;
        this.$block = function1;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return new Animatable$runAnimation$2(this.this$0, this.$initialVelocity, this.$animation, this.$startTime, this.$block, (Continuation) obj).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        AnimationState animationState;
        Ref$BooleanRef ref$BooleanRef;
        int i = this.label;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                Animatable animatable = this.this$0;
                animatable.internalState.velocityVector = (AnimationVector) animatable.typeConverter.convertToVector.invoke(this.$initialVelocity);
                this.this$0.targetValue$delegate.setValue(this.$animation.getTargetValue());
                this.this$0.isRunning$delegate.setValue(Boolean.TRUE);
                AnimationState animationState2 = this.this$0.internalState;
                AnimationState animationState3 = new AnimationState(animationState2.typeConverter, animationState2.value$delegate.getValue(), ArcSplineKt.copy(animationState2.velocityVector), animationState2.lastFrameTimeNanos, Long.MIN_VALUE, animationState2.isRunning);
                Ref$BooleanRef ref$BooleanRef2 = new Ref$BooleanRef();
                Animation animation = this.$animation;
                long j = this.$startTime;
                DecoratedNavEntriesKt$$ExternalSyntheticLambda3 decoratedNavEntriesKt$$ExternalSyntheticLambda3 = new DecoratedNavEntriesKt$$ExternalSyntheticLambda3(this.this$0, animationState3, this.$block, ref$BooleanRef2, 1);
                this.L$0 = animationState3;
                this.L$1 = ref$BooleanRef2;
                this.label = 1;
                Object animate = ArcSplineKt.animate(animationState3, animation, j, decoratedNavEntriesKt$$ExternalSyntheticLambda3, this);
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                if (animate == coroutineSingletons) {
                    return coroutineSingletons;
                }
                animationState = animationState3;
                ref$BooleanRef = ref$BooleanRef2;
            } else {
                if (i != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda1.m$2("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ref$BooleanRef = (Ref$BooleanRef) this.L$1;
                animationState = (AnimationState) this.L$0;
                ResultKt.throwOnFailure(obj);
            }
            AnimationEndReason animationEndReason = ref$BooleanRef.element ? AnimationEndReason.BoundReached : AnimationEndReason.Finished;
            Animatable.access$endAnimation(this.this$0);
            return new AnimationResult(animationState, animationEndReason);
        } catch (CancellationException e) {
            Animatable.access$endAnimation(this.this$0);
            throw e;
        }
    }
}
