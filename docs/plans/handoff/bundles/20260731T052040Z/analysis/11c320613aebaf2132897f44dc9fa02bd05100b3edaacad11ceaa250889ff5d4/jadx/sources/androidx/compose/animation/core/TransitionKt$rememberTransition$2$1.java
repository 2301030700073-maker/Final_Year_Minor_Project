package androidx.compose.animation.core;

import androidx.preference.PreferenceManager;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexImpl;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class TransitionKt$rememberTransition$2$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ TransitionState $transitionState;
    Object L$0;
    Object L$1;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TransitionKt$rememberTransition$2$1(TransitionState transitionState, Continuation continuation) {
        super(2, continuation);
        this.$transitionState = transitionState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new TransitionKt$rememberTransition$2$1(this.$transitionState, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((TransitionKt$rememberTransition$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        TransitionState transitionState;
        Mutex mutex;
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            SeekableTransitionState seekableTransitionState = (SeekableTransitionState) this.$transitionState;
            PreferenceManager preferenceManager = seekableTransitionState.snapshotStateObserver;
            if (preferenceManager != null) {
                preferenceManager.observeReads(seekableTransitionState, ArcSplineKt.SeekableTransitionStateTotalDurationChanged, seekableTransitionState.recalculateTotalDurationNanos);
            }
            transitionState = this.$transitionState;
            MutexImpl mutexImpl = ((SeekableTransitionState) transitionState).compositionContinuationMutex;
            this.L$0 = mutexImpl;
            this.L$1 = transitionState;
            this.label = 1;
            Object lock = mutexImpl.lock(this);
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            if (lock == coroutineSingletons) {
                return coroutineSingletons;
            }
            mutex = mutexImpl;
        } else {
            if (i != 1) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            transitionState = (TransitionState) this.L$1;
            mutex = (Mutex) this.L$0;
            ResultKt.throwOnFailure(obj);
        }
        try {
            ((SeekableTransitionState) transitionState).composedTargetState = ((SeekableTransitionState) transitionState).targetState$delegate.getValue();
            CancellableContinuationImpl cancellableContinuationImpl = ((SeekableTransitionState) transitionState).compositionContinuation;
            if (cancellableContinuationImpl != null) {
                cancellableContinuationImpl.resumeWith(((SeekableTransitionState) transitionState).targetState$delegate.getValue());
            }
            ((SeekableTransitionState) transitionState).compositionContinuation = null;
            mutex.unlock(null);
            return Unit.INSTANCE;
        } catch (Throwable th) {
            mutex.unlock(null);
            throw th;
        }
    }
}
