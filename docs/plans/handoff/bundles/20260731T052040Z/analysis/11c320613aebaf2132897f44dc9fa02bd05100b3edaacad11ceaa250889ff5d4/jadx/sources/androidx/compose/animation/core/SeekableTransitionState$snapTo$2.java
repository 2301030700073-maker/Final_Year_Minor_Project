package androidx.compose.animation.core;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SeekableTransitionState$snapTo$2 extends SuspendLambda implements Function1 {
    final /* synthetic */ Object $targetState;
    final /* synthetic */ Transition $transition;
    int label;
    final /* synthetic */ SeekableTransitionState this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SeekableTransitionState$snapTo$2(SeekableTransitionState seekableTransitionState, Object obj, Transition transition, Continuation continuation) {
        super(1, continuation);
        this.this$0 = seekableTransitionState;
        this.$targetState = obj;
        this.$transition = transition;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return new SeekableTransitionState$snapTo$2(this.this$0, this.$targetState, this.$transition, (Continuation) obj).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            this.this$0.endAllAnimations();
            SeekableTransitionState seekableTransitionState = this.this$0;
            seekableTransitionState.lastFrameTimeNanos = Long.MIN_VALUE;
            seekableTransitionState.setFraction(0.0f);
            Object obj2 = this.$targetState;
            float f = Intrinsics.areEqual(obj2, this.this$0.currentState$delegate.getValue()) ? -4.0f : Intrinsics.areEqual(obj2, this.this$0.targetState$delegate.getValue()) ? -5.0f : -3.0f;
            this.$transition.updateTarget$animation_core(this.$targetState);
            this.$transition.setPlayTimeNanos(0L);
            this.this$0.targetState$delegate.setValue(this.$targetState);
            this.this$0.setFraction(0.0f);
            this.this$0.setCurrentState$animation_core(this.$targetState);
            this.$transition.resetAnimationFraction$animation_core(f);
            if (f == -3.0f) {
                SeekableTransitionState seekableTransitionState2 = this.this$0;
                this.label = 1;
                Object access$waitForCompositionAfterTargetStateChange = SeekableTransitionState.access$waitForCompositionAfterTargetStateChange(seekableTransitionState2, this);
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                if (access$waitForCompositionAfterTargetStateChange == coroutineSingletons) {
                    return coroutineSingletons;
                }
            }
        } else {
            if (i != 1) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(obj);
        }
        this.$transition.onTransitionEnd$animation_core();
        return Unit.INSTANCE;
    }
}
