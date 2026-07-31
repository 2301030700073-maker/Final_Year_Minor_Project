package kotlinx.coroutines;

import androidx.compose.ui.input.pointer.PointerInputResetException;
import androidx.compose.ui.text.SaversKt$$ExternalSyntheticLambda3;
import androidx.room.coroutines.Pool$acquireWithTimeout$1;
import androidx.room.coroutines.Pool$acquireWithTimeout$2;
import coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0;
import coil3.network.NetworkFetcher$fetch$2;
import com.google.common.base.Joiner;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor$Key;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.UStringsKt;
import kotlin.time.Duration;
import kotlin.time.DurationUnit;
import kotlin.time.InstantKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.internal.ContextScope;
import kotlinx.coroutines.internal.DispatchedContinuation;
import kotlinx.coroutines.internal.InlineList;
import kotlinx.coroutines.internal.ScopeCoroutine;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okio.ByteString;
import okio.Options;

/* loaded from: classes.dex */
public abstract class JobKt {
    public static final Joiner CLOSED_EMPTY;
    public static final Joiner COMPLETING_ALREADY;
    public static final Joiner COMPLETING_RETRY;
    public static final Joiner COMPLETING_WAITING_CHILDREN;
    public static final Joiner DISPOSED_TASK;
    public static final Joiner RESUME_TOKEN;
    public static final Joiner SEALED;
    public static final Joiner TOO_LATE_TO_CANCEL;
    public static final Empty EMPTY_NEW = new Empty(false);
    public static final Empty EMPTY_ACTIVE = new Empty(true);

    static {
        int i = 2;
        RESUME_TOKEN = new Joiner("RESUME_TOKEN", i);
        DISPOSED_TASK = new Joiner("REMOVED_TASK", i);
        CLOSED_EMPTY = new Joiner("CLOSED_EMPTY", i);
        COMPLETING_ALREADY = new Joiner("COMPLETING_ALREADY", i);
        COMPLETING_WAITING_CHILDREN = new Joiner("COMPLETING_WAITING_CHILDREN", i);
        COMPLETING_RETRY = new Joiner("COMPLETING_RETRY", i);
        TOO_LATE_TO_CANCEL = new Joiner("TOO_LATE_TO_CANCEL", i);
        SEALED = new Joiner("SEALED", i);
    }

    public static final ContextScope CoroutineScope(CoroutineContext coroutineContext) {
        if (coroutineContext.get(Job.Key.$$INSTANCE) == null) {
            coroutineContext = coroutineContext.plus(Job$default());
        }
        return new ContextScope(coroutineContext);
    }

    public static JobImpl Job$default() {
        return new JobImpl(null);
    }

    public static SupervisorJobImpl SupervisorJob$default() {
        return new SupervisorJobImpl(null);
    }

    public static DeferredCoroutine async$default(CoroutineScope coroutineScope, CoroutineContext coroutineContext, Function2 function2, int i) {
        if ((i & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.INSTANCE;
        }
        int i2 = i & 2;
        CoroutineStart coroutineStart = CoroutineStart.LAZY;
        CoroutineStart coroutineStart2 = i2 != 0 ? CoroutineStart.DEFAULT : coroutineStart;
        CoroutineContext newCoroutineContext = newCoroutineContext(coroutineScope, coroutineContext);
        DeferredCoroutine lazyDeferredCoroutine = coroutineStart2 == coroutineStart ? new LazyDeferredCoroutine(newCoroutineContext, function2) : new DeferredCoroutine(newCoroutineContext, true, true);
        lazyDeferredCoroutine.start(coroutineStart2, lazyDeferredCoroutine, function2);
        return lazyDeferredCoroutine;
    }

    public static final void cancel(CoroutineScope coroutineScope, PointerInputResetException pointerInputResetException) {
        Job job = (Job) coroutineScope.getCoroutineContext().get(Job.Key.$$INSTANCE);
        if (job != null) {
            job.cancel(pointerInputResetException);
        } else {
            CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$1(coroutineScope, "Scope cannot be cancelled because it does not have a job: ");
        }
    }

    public static final Object coroutineScope(Function2 function2, Continuation continuation) {
        ScopeCoroutine scopeCoroutine = new ScopeCoroutine(continuation, continuation.getContext());
        return Options.Companion.startUndispatched(scopeCoroutine, true, scopeCoroutine, function2);
    }

    public static final Object delay(long j, Continuation continuation) {
        if (j > 0) {
            CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(1, UStringsKt.intercepted(continuation));
            cancellableContinuationImpl.initCancellability();
            if (j < Long.MAX_VALUE) {
                getDelay(cancellableContinuationImpl.context).scheduleResumeAfterDelay(j, cancellableContinuationImpl);
            }
            Object result = cancellableContinuationImpl.getResult();
            if (result == CoroutineSingletons.COROUTINE_SUSPENDED) {
                return result;
            }
        }
        return Unit.INSTANCE;
    }

    public static final void ensureActive(CoroutineContext coroutineContext) {
        Job job = (Job) coroutineContext.get(Job.Key.$$INSTANCE);
        if (job != null && !job.isActive()) {
            throw job.getCancellationException();
        }
    }

    public static final CoroutineContext foldCopies(CoroutineContext coroutineContext, CoroutineContext coroutineContext2, boolean z) {
        Boolean bool = Boolean.FALSE;
        int i = 26;
        boolean booleanValue = ((Boolean) coroutineContext.fold(bool, new SaversKt$$ExternalSyntheticLambda3(i))).booleanValue();
        boolean booleanValue2 = ((Boolean) coroutineContext2.fold(bool, new SaversKt$$ExternalSyntheticLambda3(i))).booleanValue();
        if (!booleanValue && !booleanValue2) {
            return coroutineContext.plus(coroutineContext2);
        }
        SaversKt$$ExternalSyntheticLambda3 saversKt$$ExternalSyntheticLambda3 = new SaversKt$$ExternalSyntheticLambda3(24);
        EmptyCoroutineContext emptyCoroutineContext = EmptyCoroutineContext.INSTANCE;
        CoroutineContext coroutineContext3 = (CoroutineContext) coroutineContext.fold(emptyCoroutineContext, saversKt$$ExternalSyntheticLambda3);
        Object obj = coroutineContext2;
        if (booleanValue2) {
            obj = coroutineContext2.fold(emptyCoroutineContext, new SaversKt$$ExternalSyntheticLambda3(25));
        }
        return coroutineContext3.plus((CoroutineContext) obj);
    }

    public static final CoroutineDispatcher from(Executor executor) {
        return new ExecutorCoroutineDispatcherImpl(executor);
    }

    public static final Delay getDelay(CoroutineContext coroutineContext) {
        CoroutineContext.Element element = coroutineContext.get(ContinuationInterceptor$Key.$$INSTANCE);
        Delay delay = element instanceof Delay ? (Delay) element : null;
        return delay == null ? DefaultExecutorKt.DefaultDelay : delay;
    }

    public static final String getHexAddress(Object obj) {
        return Integer.toHexString(System.identityHashCode(obj));
    }

    public static final Job getJob(CoroutineContext coroutineContext) {
        Job job = (Job) coroutineContext.get(Job.Key.$$INSTANCE);
        if (job != null) {
            return job;
        }
        CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$1(coroutineContext, "Current context doesn't contain Job in it: ");
        return null;
    }

    public static final CancellableContinuationImpl getOrCreateCancellableContinuation(Continuation continuation) {
        if (!(continuation instanceof DispatchedContinuation)) {
            return new CancellableContinuationImpl(1, continuation);
        }
        CancellableContinuationImpl claimReusableCancellableContinuation$kotlinx_coroutines_core = ((DispatchedContinuation) continuation).claimReusableCancellableContinuation$kotlinx_coroutines_core();
        if (claimReusableCancellableContinuation$kotlinx_coroutines_core != null) {
            if (!claimReusableCancellableContinuation$kotlinx_coroutines_core.resetStateReusable()) {
                claimReusableCancellableContinuation$kotlinx_coroutines_core = null;
            }
            if (claimReusableCancellableContinuation$kotlinx_coroutines_core != null) {
                return claimReusableCancellableContinuation$kotlinx_coroutines_core;
            }
        }
        return new CancellableContinuationImpl(2, continuation);
    }

    public static final void handleCoroutineException(Throwable th, CoroutineContext coroutineContext) {
        if (th instanceof DispatchException) {
            th = ((DispatchException) th).getCause();
        }
        try {
            CoroutineExceptionHandler coroutineExceptionHandler = (CoroutineExceptionHandler) coroutineContext.get(Job.Key.$$INSTANCE$1);
            if (coroutineExceptionHandler != null) {
                coroutineExceptionHandler.handleException(th, coroutineContext);
            } else {
                InlineList.handleUncaughtCoroutineException(th, coroutineContext);
            }
        } catch (Throwable th2) {
            if (th != th2) {
                RuntimeException runtimeException = new RuntimeException("Exception while trying to handle coroutine exception", th2);
                ResultKt.addSuppressed(runtimeException, th);
                th = runtimeException;
            }
            InlineList.handleUncaughtCoroutineException(th, coroutineContext);
        }
    }

    public static final DisposableHandle invokeOnCompletion(Job job, boolean z, JobNode jobNode) {
        if (job instanceof JobSupport) {
            return ((JobSupport) job).invokeOnCompletionInternal$kotlinx_coroutines_core(z, jobNode);
        }
        return job.invokeOnCompletion(jobNode.getOnCancelling(), z, new NetworkFetcher$fetch$2(1, jobNode, JobNode.class, "invoke", "invoke(Ljava/lang/Throwable;)V", 0, 3));
    }

    public static final boolean isActive(CoroutineScope coroutineScope) {
        Job job = (Job) coroutineScope.getCoroutineContext().get(Job.Key.$$INSTANCE);
        if (job != null) {
            return job.isActive();
        }
        return true;
    }

    public static final StandaloneCoroutine launch(CoroutineScope coroutineScope, CoroutineContext coroutineContext, CoroutineStart coroutineStart, Function2 function2) {
        CoroutineContext newCoroutineContext = newCoroutineContext(coroutineScope, coroutineContext);
        coroutineStart.getClass();
        StandaloneCoroutine lazyStandaloneCoroutine = coroutineStart == CoroutineStart.LAZY ? new LazyStandaloneCoroutine(newCoroutineContext, function2) : new StandaloneCoroutine(newCoroutineContext, true, true);
        lazyStandaloneCoroutine.start(coroutineStart, lazyStandaloneCoroutine, function2);
        return lazyStandaloneCoroutine;
    }

    public static /* synthetic */ StandaloneCoroutine launch$default(CoroutineScope coroutineScope, CoroutineContext coroutineContext, CoroutineStart coroutineStart, Function2 function2, int i) {
        if ((i & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.INSTANCE;
        }
        if ((i & 2) != 0) {
            coroutineStart = CoroutineStart.DEFAULT;
        }
        return launch(coroutineScope, coroutineContext, coroutineStart, function2);
    }

    public static final CoroutineContext newCoroutineContext(CoroutineScope coroutineScope, CoroutineContext coroutineContext) {
        CoroutineContext foldCopies = foldCopies(coroutineScope.getCoroutineContext(), coroutineContext, true);
        DefaultScheduler defaultScheduler = Dispatchers.Default;
        return (foldCopies == defaultScheduler || foldCopies.get(ContinuationInterceptor$Key.$$INSTANCE) != null) ? foldCopies : foldCopies.plus(defaultScheduler);
    }

    public static final Object recoverResult(Object obj) {
        return obj instanceof CompletedExceptionally ? ResultKt.createFailure(((CompletedExceptionally) obj).cause) : obj;
    }

    public static final void resume(CancellableContinuationImpl cancellableContinuationImpl, Continuation continuation, boolean z) {
        Object state$kotlinx_coroutines_core = cancellableContinuationImpl.getState$kotlinx_coroutines_core();
        Throwable exceptionalResult$kotlinx_coroutines_core = cancellableContinuationImpl.getExceptionalResult$kotlinx_coroutines_core(state$kotlinx_coroutines_core);
        Object failure = exceptionalResult$kotlinx_coroutines_core != null ? new Result.Failure(exceptionalResult$kotlinx_coroutines_core) : cancellableContinuationImpl.getSuccessfulResult$kotlinx_coroutines_core(state$kotlinx_coroutines_core);
        if (!z) {
            continuation.resumeWith(failure);
            return;
        }
        continuation.getClass();
        DispatchedContinuation dispatchedContinuation = (DispatchedContinuation) continuation;
        ContinuationImpl continuationImpl = dispatchedContinuation.continuation;
        Object obj = dispatchedContinuation.countOrElement;
        CoroutineContext context = continuationImpl.getContext();
        Object updateThreadContext = InlineList.updateThreadContext(context, obj);
        UndispatchedCoroutine updateUndispatchedCompletion = updateThreadContext != InlineList.NO_THREAD_ELEMENTS ? updateUndispatchedCompletion(continuationImpl, context, updateThreadContext) : null;
        try {
            continuationImpl.resumeWith(failure);
            if (updateUndispatchedCompletion == null || updateUndispatchedCompletion.clearThreadContext()) {
                InlineList.restoreThreadContext(context, updateThreadContext);
            }
        } catch (Throwable th) {
            if (updateUndispatchedCompletion == null || updateUndispatchedCompletion.clearThreadContext()) {
                InlineList.restoreThreadContext(context, updateThreadContext);
            }
            throw th;
        }
    }

    public static final Object runBlocking(CoroutineContext coroutineContext, Function2 function2) {
        EventLoop eventLoop;
        CoroutineContext foldCopies;
        long processNextEvent;
        CoroutineContext.Key key = ContinuationInterceptor$Key.$$INSTANCE;
        CoroutineDispatcher coroutineDispatcher = (CoroutineDispatcher) coroutineContext.get(key);
        EmptyCoroutineContext emptyCoroutineContext = EmptyCoroutineContext.INSTANCE;
        if (coroutineDispatcher == null) {
            eventLoop = ThreadLocalEventLoop.getEventLoop$kotlinx_coroutines_core();
            foldCopies = foldCopies(emptyCoroutineContext, coroutineContext.plus(eventLoop), true);
            DefaultScheduler defaultScheduler = Dispatchers.Default;
            if (foldCopies != defaultScheduler && foldCopies.get(key) == null) {
                foldCopies = foldCopies.plus(defaultScheduler);
            }
        } else {
            eventLoop = (EventLoop) ThreadLocalEventLoop.ref.get();
            foldCopies = foldCopies(emptyCoroutineContext, coroutineContext, true);
            DefaultScheduler defaultScheduler2 = Dispatchers.Default;
            if (foldCopies != defaultScheduler2 && foldCopies.get(key) == null) {
                foldCopies = foldCopies.plus(defaultScheduler2);
            }
        }
        BlockingCoroutine blockingCoroutine = new BlockingCoroutine(foldCopies, Thread.currentThread(), eventLoop);
        blockingCoroutine.start(CoroutineStart.DEFAULT, blockingCoroutine, function2);
        EventLoop eventLoop2 = blockingCoroutine.eventLoop;
        if (eventLoop2 != null) {
            int i = EventLoop.$r8$clinit;
            eventLoop2.incrementUseCount(false);
        }
        while (true) {
            if (eventLoop2 != null) {
                try {
                    processNextEvent = eventLoop2.processNextEvent();
                } catch (Throwable th) {
                    if (eventLoop2 != null) {
                        int i2 = EventLoop.$r8$clinit;
                        eventLoop2.decrementUseCount(false);
                    }
                    throw th;
                }
            } else {
                processNextEvent = Long.MAX_VALUE;
            }
            if (!(blockingCoroutine.getState$kotlinx_coroutines_core() instanceof Incomplete)) {
                break;
            }
            LockSupport.parkNanos(blockingCoroutine, processNextEvent);
            if (Thread.interrupted()) {
                blockingCoroutine.cancelImpl$kotlinx_coroutines_core(new InterruptedException());
            }
        }
        if (eventLoop2 != null) {
            int i3 = EventLoop.$r8$clinit;
            eventLoop2.decrementUseCount(false);
        }
        Object unboxState = unboxState(blockingCoroutine.getState$kotlinx_coroutines_core());
        CompletedExceptionally completedExceptionally = unboxState instanceof CompletedExceptionally ? (CompletedExceptionally) unboxState : null;
        if (completedExceptionally == null) {
            return unboxState;
        }
        throw completedExceptionally.cause;
    }

    public static final Object setupTimeout(TimeoutCoroutine timeoutCoroutine, Function2 function2) {
        invokeOnCompletion(timeoutCoroutine, true, new DisposeOnCompletion(getDelay(timeoutCoroutine.uCont.getContext()).invokeOnTimeout(timeoutCoroutine.time, timeoutCoroutine, timeoutCoroutine.context)));
        return Options.Companion.startUndispatched(timeoutCoroutine, false, timeoutCoroutine, function2);
    }

    public static final String toDebugString(Continuation continuation) {
        Object failure;
        if (continuation instanceof DispatchedContinuation) {
            return ((DispatchedContinuation) continuation).toString();
        }
        try {
            failure = continuation + '@' + getHexAddress(continuation);
        } catch (Throwable th) {
            failure = new Result.Failure(th);
        }
        if (Result.m656exceptionOrNullimpl(failure) != null) {
            failure = continuation.getClass().getName() + '@' + getHexAddress(continuation);
        }
        return (String) failure;
    }

    public static final Object unboxState(Object obj) {
        Incomplete incomplete;
        IncompleteStateBox incompleteStateBox = obj instanceof IncompleteStateBox ? (IncompleteStateBox) obj : null;
        return (incompleteStateBox == null || (incomplete = incompleteStateBox.state) == null) ? obj : incomplete;
    }

    public static final UndispatchedCoroutine updateUndispatchedCompletion(Continuation continuation, CoroutineContext coroutineContext, Object obj) {
        UndispatchedCoroutine undispatchedCoroutine = null;
        if ((continuation instanceof CoroutineStackFrame) && coroutineContext.get(UndispatchedMarker.INSTANCE) != null) {
            CoroutineStackFrame coroutineStackFrame = (CoroutineStackFrame) continuation;
            while (true) {
                if ((coroutineStackFrame instanceof DispatchedCoroutine) || (coroutineStackFrame = coroutineStackFrame.getCallerFrame()) == null) {
                    break;
                }
                if (coroutineStackFrame instanceof UndispatchedCoroutine) {
                    undispatchedCoroutine = (UndispatchedCoroutine) coroutineStackFrame;
                    break;
                }
            }
            if (undispatchedCoroutine != null) {
                undispatchedCoroutine.saveThreadContext(coroutineContext, obj);
            }
        }
        return undispatchedCoroutine;
    }

    public static final Object withContext(CoroutineContext coroutineContext, Function2 function2, Continuation continuation) {
        CoroutineContext context = continuation.getContext();
        CoroutineContext plus = !((Boolean) coroutineContext.fold(Boolean.FALSE, new SaversKt$$ExternalSyntheticLambda3(26))).booleanValue() ? context.plus(coroutineContext) : foldCopies(context, coroutineContext, false);
        ensureActive(plus);
        if (plus == context) {
            ScopeCoroutine scopeCoroutine = new ScopeCoroutine(continuation, plus);
            return Options.Companion.startUndispatched(scopeCoroutine, true, scopeCoroutine, function2);
        }
        ContinuationInterceptor$Key continuationInterceptor$Key = ContinuationInterceptor$Key.$$INSTANCE;
        if (Intrinsics.areEqual(plus.get(continuationInterceptor$Key), context.get(continuationInterceptor$Key))) {
            UndispatchedCoroutine undispatchedCoroutine = new UndispatchedCoroutine(continuation, plus);
            CoroutineContext coroutineContext2 = undispatchedCoroutine.context;
            Object updateThreadContext = InlineList.updateThreadContext(coroutineContext2, null);
            try {
                return Options.Companion.startUndispatched(undispatchedCoroutine, true, undispatchedCoroutine, function2);
            } finally {
                InlineList.restoreThreadContext(coroutineContext2, updateThreadContext);
            }
        }
        DispatchedCoroutine dispatchedCoroutine = new DispatchedCoroutine(continuation, plus);
        try {
            InlineList.resumeCancellableWithInternal(Unit.INSTANCE, UStringsKt.intercepted(UStringsKt.createCoroutineUnintercepted(dispatchedCoroutine, dispatchedCoroutine, function2)));
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = DispatchedCoroutine._decision$volatile$FU;
            do {
                int i = atomicIntegerFieldUpdater.get(dispatchedCoroutine);
                if (i != 0) {
                    if (i != 2) {
                        _UtilJvmKt$$ExternalSyntheticLambda1.m$2("Already suspended");
                        return null;
                    }
                    Object unboxState = unboxState(dispatchedCoroutine.getState$kotlinx_coroutines_core());
                    if (unboxState instanceof CompletedExceptionally) {
                        throw ((CompletedExceptionally) unboxState).cause;
                    }
                    return unboxState;
                }
            } while (!atomicIntegerFieldUpdater.compareAndSet(dispatchedCoroutine, 0, 1));
            return CoroutineSingletons.COROUTINE_SUSPENDED;
        } catch (Throwable th) {
            th = th;
            if (th instanceof DispatchException) {
                th = ((DispatchException) th).getCause();
            }
            dispatchedCoroutine.resumeWith(ResultKt.createFailure(th));
            throw th;
        }
    }

    /* renamed from: withTimeout-KLykuaI, reason: not valid java name */
    public static final Object m686withTimeoutKLykuaI(long j, Pool$acquireWithTimeout$2 pool$acquireWithTimeout$2, Pool$acquireWithTimeout$1 pool$acquireWithTimeout$1) {
        long j2;
        ByteString.Companion companion = Duration.Companion;
        boolean z = j > 0;
        if (z) {
            long m682plusLRDsOJo = Duration.m682plusLRDsOJo(j, InstantKt.toDuration(999999L, DurationUnit.NANOSECONDS));
            j2 = ((((int) m682plusLRDsOJo) & 1) != 1 || Duration.m681isInfiniteimpl(m682plusLRDsOJo)) ? Duration.m683toLongimpl(m682plusLRDsOJo, DurationUnit.MILLISECONDS) : m682plusLRDsOJo >> 1;
        } else {
            if (z) {
                DecodeUtils$$ExternalSyntheticBUOutline0.m();
                return null;
            }
            j2 = 0;
        }
        if (j2 > 0) {
            return setupTimeout(new TimeoutCoroutine(j2, pool$acquireWithTimeout$1), pool$acquireWithTimeout$2);
        }
        throw new TimeoutCancellationException("Timed out immediately", null);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0020  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object withTimeoutOrNull(long r6, kotlin.jvm.functions.Function2 r8, kotlin.coroutines.jvm.internal.ContinuationImpl r9) {
        /*
            boolean r0 = r9 instanceof kotlinx.coroutines.TimeoutKt$withTimeoutOrNull$1
            if (r0 == 0) goto L13
            r0 = r9
            kotlinx.coroutines.TimeoutKt$withTimeoutOrNull$1 r0 = (kotlinx.coroutines.TimeoutKt$withTimeoutOrNull$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            kotlinx.coroutines.TimeoutKt$withTimeoutOrNull$1 r0 = new kotlinx.coroutines.TimeoutKt$withTimeoutOrNull$1
            r0.<init>(r9)
        L18:
            java.lang.Object r9 = r0.result
            int r1 = r0.label
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L36
            if (r1 != r3) goto L30
            java.lang.Object r6 = r0.L$1
            kotlin.jvm.internal.Ref$ObjectRef r6 = (kotlin.jvm.internal.Ref$ObjectRef) r6
            java.lang.Object r7 = r0.L$0
            kotlin.jvm.functions.Function2 r7 = (kotlin.jvm.functions.Function2) r7
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L2e
            return r9
        L2e:
            r7 = move-exception
            goto L60
        L30:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r6)
            return r2
        L36:
            kotlin.ResultKt.throwOnFailure(r9)
            r4 = 0
            int r9 = (r6 > r4 ? 1 : (r6 == r4 ? 0 : -1))
            if (r9 > 0) goto L40
            goto L66
        L40:
            kotlin.jvm.internal.Ref$ObjectRef r9 = new kotlin.jvm.internal.Ref$ObjectRef
            r9.<init>()
            r0.L$0 = r8     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L5e
            r0.L$1 = r9     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L5e
            r0.J$0 = r6     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L5e
            r0.label = r3     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L5e
            kotlinx.coroutines.TimeoutCoroutine r1 = new kotlinx.coroutines.TimeoutCoroutine     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L5e
            r1.<init>(r6, r0)     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L5e
            r9.element = r1     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L5e
            java.lang.Object r6 = setupTimeout(r1, r8)     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L5e
            kotlin.coroutines.intrinsics.CoroutineSingletons r7 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r6 != r7) goto L5d
            return r7
        L5d:
            return r6
        L5e:
            r7 = move-exception
            r6 = r9
        L60:
            kotlinx.coroutines.Job r8 = r7.coroutine
            java.lang.Object r6 = r6.element
            if (r8 != r6) goto L67
        L66:
            return r2
        L67:
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.JobKt.withTimeoutOrNull(long, kotlin.jvm.functions.Function2, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public static final boolean isActive(CoroutineContext coroutineContext) {
        Job job = (Job) coroutineContext.get(Job.Key.$$INSTANCE);
        if (job != null) {
            return job.isActive();
        }
        return true;
    }

    public static final void cancel(CoroutineContext coroutineContext, CancellationException cancellationException) {
        Job job = (Job) coroutineContext.get(Job.Key.$$INSTANCE);
        if (job != null) {
            job.cancel(cancellationException);
        }
    }
}
