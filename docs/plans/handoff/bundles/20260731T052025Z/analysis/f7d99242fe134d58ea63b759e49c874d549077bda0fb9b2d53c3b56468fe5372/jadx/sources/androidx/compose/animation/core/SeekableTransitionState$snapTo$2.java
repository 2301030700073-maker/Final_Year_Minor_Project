package androidx.compose.animation.core;

import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.navigation.compose.NavHostKt$NavHost$25$1;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.JobKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SeekableTransitionState$snapTo$2 extends SuspendLambda implements Function1 {
    public final /* synthetic */ int $r8$classId = 0;
    public final /* synthetic */ Object $targetState;
    public final /* synthetic */ Transition $transition;
    public int label;
    public final /* synthetic */ SeekableTransitionState this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SeekableTransitionState$snapTo$2(SeekableTransitionState seekableTransitionState, Object obj, Transition transition, Continuation continuation) {
        super(1, continuation);
        this.this$0 = seekableTransitionState;
        this.$targetState = obj;
        this.$transition = transition;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        int i = this.$r8$classId;
        Object obj = this.$targetState;
        SeekableTransitionState seekableTransitionState = this.this$0;
        Transition transition = this.$transition;
        switch (i) {
            case 0:
                return new SeekableTransitionState$snapTo$2(seekableTransitionState, obj, transition, continuation);
            default:
                return new SeekableTransitionState$snapTo$2(transition, seekableTransitionState, obj, continuation);
        }
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Continuation continuation = (Continuation) obj;
        switch (i) {
        }
        return ((SeekableTransitionState$snapTo$2) create(continuation)).invokeSuspend(unit);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj2 = this.$targetState;
        SeekableTransitionState seekableTransitionState = this.this$0;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        Transition transition = this.$transition;
        switch (i) {
            case 0:
                int i2 = this.label;
                if (i2 == 0) {
                    ResultKt.throwOnFailure(obj);
                    seekableTransitionState.endAllAnimations();
                    ParcelableSnapshotMutableState parcelableSnapshotMutableState = seekableTransitionState.targetState$delegate;
                    seekableTransitionState.lastFrameTimeNanos = Long.MIN_VALUE;
                    seekableTransitionState.setFraction(0.0f);
                    float f = obj2.equals(seekableTransitionState.currentState$delegate.getValue()) ? -4.0f : obj2.equals(parcelableSnapshotMutableState.getValue()) ? -5.0f : -3.0f;
                    transition.updateTarget$animation_core(obj2);
                    transition.setPlayTimeNanos(0L);
                    parcelableSnapshotMutableState.setValue(obj2);
                    seekableTransitionState.setFraction(0.0f);
                    seekableTransitionState.setCurrentState$animation_core(obj2);
                    transition.resetAnimationFraction$animation_core(f);
                    if (f == -3.0f) {
                        this.label = 1;
                        if (SeekableTransitionState.access$waitForCompositionAfterTargetStateChange(seekableTransitionState, this) == coroutineSingletons) {
                            break;
                        }
                    }
                } else if (i2 != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                    break;
                } else {
                    ResultKt.throwOnFailure(obj);
                }
                transition.onTransitionEnd$animation_core();
                break;
            default:
                int i3 = this.label;
                if (i3 == 0) {
                    ResultKt.throwOnFailure(obj);
                    NavHostKt$NavHost$25$1 navHostKt$NavHost$25$1 = new NavHostKt$NavHost$25$1(seekableTransitionState, obj2, transition, (Continuation) null);
                    this.label = 1;
                    if (JobKt.coroutineScope(navHostKt$NavHost$25$1, this) == coroutineSingletons) {
                        break;
                    }
                } else if (i3 != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                    break;
                } else {
                    ResultKt.throwOnFailure(obj);
                }
                transition.onTransitionEnd$animation_core();
                break;
        }
        return unit;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SeekableTransitionState$snapTo$2(Transition transition, SeekableTransitionState seekableTransitionState, Object obj, Continuation continuation) {
        super(1, continuation);
        this.$transition = transition;
        this.this$0 = seekableTransitionState;
        this.$targetState = obj;
    }
}
