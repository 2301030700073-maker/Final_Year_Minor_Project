package androidx.compose.animation.core;

import androidx.compose.material3.ThumbNode$onAttach$1;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.JobKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SeekableTransitionState$seekTo$3 extends SuspendLambda implements Function1 {
    public final /* synthetic */ float $fraction;
    public final /* synthetic */ Object $oldTargetState;
    public final /* synthetic */ Object $targetState;
    public final /* synthetic */ Transition $transition;
    public int label;
    public final /* synthetic */ SeekableTransitionState this$0;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: androidx.compose.animation.core.SeekableTransitionState$seekTo$3$1, reason: invalid class name */
    public final class AnonymousClass1 extends SuspendLambda implements Function2 {
        public final /* synthetic */ float $fraction;
        public final /* synthetic */ Object $oldTargetState;
        public final /* synthetic */ Object $targetState;
        public final /* synthetic */ Transition $transition;
        public /* synthetic */ Object L$0;
        public int label;
        public final /* synthetic */ SeekableTransitionState this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Object obj, Object obj2, SeekableTransitionState seekableTransitionState, Transition transition, float f, Continuation continuation) {
            super(2, continuation);
            this.$targetState = obj;
            this.$oldTargetState = obj2;
            this.this$0 = seekableTransitionState;
            this.$transition = transition;
            this.$fraction = f;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$targetState, this.$oldTargetState, this.this$0, this.$transition, this.$fraction, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            int i = this.label;
            Unit unit = Unit.INSTANCE;
            SeekableTransitionState seekableTransitionState = this.this$0;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                CoroutineScope coroutineScope = (CoroutineScope) this.L$0;
                Object obj2 = this.$targetState;
                Object obj3 = this.$oldTargetState;
                if (Intrinsics.areEqual(obj2, obj3)) {
                    seekableTransitionState.currentAnimation = null;
                    if (Intrinsics.areEqual(seekableTransitionState.currentState$delegate.getValue(), obj2)) {
                        return unit;
                    }
                } else {
                    SeekableTransitionState.access$moveAnimationToInitialState(seekableTransitionState);
                }
                boolean areEqual = Intrinsics.areEqual(obj2, obj3);
                float f = this.$fraction;
                if (!areEqual) {
                    Transition transition = this.$transition;
                    transition.updateTarget$animation_core(obj2);
                    transition.setPlayTimeNanos(0L);
                    seekableTransitionState.targetState$delegate.setValue(obj2);
                    transition.resetAnimationFraction$animation_core(f);
                }
                seekableTransitionState.setFraction(f);
                if (seekableTransitionState.initialValueAnimations.isNotEmpty()) {
                    JobKt.launch$default(coroutineScope, null, null, new ThumbNode$onAttach$1(seekableTransitionState, (Continuation) null, 13), 3);
                } else {
                    seekableTransitionState.lastFrameTimeNanos = Long.MIN_VALUE;
                }
                this.label = 1;
                Object access$waitForCompositionAfterTargetStateChange = SeekableTransitionState.access$waitForCompositionAfterTargetStateChange(seekableTransitionState, this);
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                if (access$waitForCompositionAfterTargetStateChange == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
            }
            seekableTransitionState.seekToFraction();
            return unit;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SeekableTransitionState$seekTo$3(Object obj, Object obj2, SeekableTransitionState seekableTransitionState, Transition transition, float f, Continuation continuation) {
        super(1, continuation);
        this.$targetState = obj;
        this.$oldTargetState = obj2;
        this.this$0 = seekableTransitionState;
        this.$transition = transition;
        this.$fraction = f;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new SeekableTransitionState$seekTo$3(this.$targetState, this.$oldTargetState, this.this$0, this.$transition, this.$fraction, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return ((SeekableTransitionState$seekTo$3) create((Continuation) obj)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$targetState, this.$oldTargetState, this.this$0, this.$transition, this.$fraction, null);
            this.label = 1;
            Object coroutineScope = JobKt.coroutineScope(anonymousClass1, this);
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            if (coroutineScope == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i != 1) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(obj);
        }
        return Unit.INSTANCE;
    }
}
