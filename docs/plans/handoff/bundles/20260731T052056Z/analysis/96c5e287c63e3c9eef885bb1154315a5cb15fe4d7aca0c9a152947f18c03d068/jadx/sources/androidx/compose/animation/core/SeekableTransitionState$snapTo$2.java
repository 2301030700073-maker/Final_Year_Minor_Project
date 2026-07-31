package androidx.compose.animation.core;

import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.recyclerview.widget.RecyclerView;
import coil3.RealImageLoader$execute$result$1;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.AwaitKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj2 = this.$targetState;
        SeekableTransitionState seekableTransitionState = this.this$0;
        Transition transition = this.$transition;
        Continuation continuation = (Continuation) obj;
        switch (i) {
            case 0:
                return new SeekableTransitionState$snapTo$2(seekableTransitionState, obj2, transition, continuation).invokeSuspend(unit);
            default:
                return new SeekableTransitionState$snapTo$2(transition, seekableTransitionState, obj2, continuation).invokeSuspend(unit);
        }
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i2 = this.label;
                Transition transition = this.$transition;
                if (i2 == 0) {
                    ResultKt.throwOnFailure(obj);
                    SeekableTransitionState seekableTransitionState = this.this$0;
                    seekableTransitionState.endAllAnimations();
                    ParcelableSnapshotMutableState parcelableSnapshotMutableState = seekableTransitionState.targetState$delegate;
                    seekableTransitionState.lastFrameTimeNanos = Long.MIN_VALUE;
                    seekableTransitionState.setFraction(RecyclerView.DECELERATION_RATE);
                    Object value = seekableTransitionState.currentState$delegate.getValue();
                    Object obj2 = this.$targetState;
                    float f = obj2.equals(value) ? -4.0f : obj2.equals(parcelableSnapshotMutableState.getValue()) ? -5.0f : -3.0f;
                    transition.updateTarget$animation_core(obj2);
                    transition.setPlayTimeNanos(0L);
                    parcelableSnapshotMutableState.setValue(obj2);
                    seekableTransitionState.setFraction(RecyclerView.DECELERATION_RATE);
                    seekableTransitionState.setCurrentState$animation_core(obj2);
                    transition.resetAnimationFraction$animation_core(f);
                    if (f == -3.0f) {
                        this.label = 1;
                        if (seekableTransitionState.waitForCompositionAfterTargetStateChange(this) == coroutineSingletons) {
                            break;
                        }
                    }
                } else if (i2 != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                    break;
                } else {
                    ResultKt.throwOnFailure(obj);
                }
                transition.onTransitionEnd$animation_core();
                break;
            default:
                CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i3 = this.label;
                Transition transition2 = this.$transition;
                if (i3 == 0) {
                    ResultKt.throwOnFailure(obj);
                    RealImageLoader$execute$result$1 realImageLoader$execute$result$1 = new RealImageLoader$execute$result$1(this.this$0, this.$targetState, transition2, null, 1);
                    this.label = 1;
                    if (AwaitKt.coroutineScope(realImageLoader$execute$result$1, this) == coroutineSingletons2) {
                        break;
                    }
                } else if (i3 != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                    break;
                } else {
                    ResultKt.throwOnFailure(obj);
                }
                transition2.onTransitionEnd$animation_core();
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
