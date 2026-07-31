package androidx.compose.animation.core;

import java.util.concurrent.CancellationException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref$BooleanRef;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.settings.AboutActivityKt$$ExternalSyntheticLambda7;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Animatable$runAnimation$2 extends SuspendLambda implements Function1 {
    public final /* synthetic */ TargetBasedAnimation $animation;
    public final /* synthetic */ Function1 $block;
    public final /* synthetic */ Object $initialVelocity;
    public final /* synthetic */ long $startTime;
    public AnimationState L$0;
    public Ref$BooleanRef L$1;
    public int label;
    public final /* synthetic */ Animatable this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Animatable$runAnimation$2(Animatable animatable, Object obj, TargetBasedAnimation targetBasedAnimation, long j, Function1 function1, Continuation continuation) {
        super(1, continuation);
        this.this$0 = animatable;
        this.$initialVelocity = obj;
        this.$animation = targetBasedAnimation;
        this.$startTime = j;
        this.$block = function1;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        long j = this.$startTime;
        Function1 function1 = this.$block;
        return new Animatable$runAnimation$2(this.this$0, this.$initialVelocity, this.$animation, j, function1, (Continuation) obj).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        AnimationState animationState;
        Ref$BooleanRef ref$BooleanRef;
        TargetBasedAnimation targetBasedAnimation = this.$animation;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i = this.label;
        Animatable animatable = this.this$0;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                animatable.internalState.velocityVector = (AnimationVector) animatable.typeConverter.convertToVector.invoke(this.$initialVelocity);
                animatable.targetValue$delegate.setValue(targetBasedAnimation.mutableTargetValue);
                animatable.isRunning$delegate.setValue(Boolean.TRUE);
                AnimationState animationState2 = animatable.internalState;
                AnimationState animationState3 = new AnimationState(animationState2.typeConverter, animationState2.value$delegate.getValue(), ArcSplineKt.copy(animationState2.velocityVector), animationState2.lastFrameTimeNanos, Long.MIN_VALUE, animationState2.isRunning);
                Ref$BooleanRef ref$BooleanRef2 = new Ref$BooleanRef();
                long j = this.$startTime;
                AboutActivityKt$$ExternalSyntheticLambda7 aboutActivityKt$$ExternalSyntheticLambda7 = new AboutActivityKt$$ExternalSyntheticLambda7(animatable, animationState3, this.$block, ref$BooleanRef2, 1);
                this.L$0 = animationState3;
                this.L$1 = ref$BooleanRef2;
                this.label = 1;
                if (ArcSplineKt.animate(animationState3, targetBasedAnimation, j, aboutActivityKt$$ExternalSyntheticLambda7, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
                animationState = animationState3;
                ref$BooleanRef = ref$BooleanRef2;
            } else {
                if (i != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ref$BooleanRef = this.L$1;
                animationState = this.L$0;
                ResultKt.throwOnFailure(obj);
            }
            AnimationEndReason animationEndReason = ref$BooleanRef.element ? AnimationEndReason.BoundReached : AnimationEndReason.Finished;
            animatable.endAnimation();
            return new AnimationResult(animationState, animationEndReason);
        } catch (CancellationException e) {
            animatable.endAnimation();
            throw e;
        }
    }
}
