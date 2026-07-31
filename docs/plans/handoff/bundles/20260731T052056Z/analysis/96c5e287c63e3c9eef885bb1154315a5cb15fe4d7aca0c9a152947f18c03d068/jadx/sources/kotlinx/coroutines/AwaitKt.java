package kotlinx.coroutines;

import _COROUTINE.ArtificialStackFramesUnsafe;
import androidx.room.InvalidationTracker$implementation$1;
import androidx.work.OperationKt;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.util.List;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;
import java.util.concurrent.locks.LockSupport;
import kotlin.ExceptionsKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor$Key;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlin.time.DurationUnit;
import kotlin.time.InstantKt;
import kotlinx.coroutines.AwaitAll;
import kotlinx.coroutines.AwaitAll.AwaitAllNode;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.internal.ContextScope;
import kotlinx.coroutines.internal.DispatchedContinuation;
import kotlinx.coroutines.internal.InlineList;
import kotlinx.coroutines.internal.MainDispatcherLoader;
import kotlinx.coroutines.internal.ScopeCoroutine;
import kotlinx.coroutines.internal.Symbol;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Path;
import sun.misc.Unsafe;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class AwaitKt {
    public static final Symbol CLOSED_EMPTY;
    public static final Symbol COMPLETING_ALREADY;
    public static final Symbol COMPLETING_RETRY;
    public static final Symbol COMPLETING_WAITING_CHILDREN;
    public static final Symbol DISPOSED_TASK;
    public static final Symbol RESUME_TOKEN;
    public static final Symbol SEALED;
    public static final Symbol TOO_LATE_TO_CANCEL;
    public static final Empty EMPTY_NEW = new Empty(false);
    public static final Empty EMPTY_ACTIVE = new Empty(true);

    static {
        int i = 0;
        RESUME_TOKEN = new Symbol(i, "RESUME_TOKEN");
        DISPOSED_TASK = new Symbol(i, "REMOVED_TASK");
        CLOSED_EMPTY = new Symbol(i, "CLOSED_EMPTY");
        COMPLETING_ALREADY = new Symbol(i, "COMPLETING_ALREADY");
        COMPLETING_WAITING_CHILDREN = new Symbol(i, "COMPLETING_WAITING_CHILDREN");
        COMPLETING_RETRY = new Symbol(i, "COMPLETING_RETRY");
        TOO_LATE_TO_CANCEL = new Symbol(i, "TOO_LATE_TO_CANCEL");
        SEALED = new Symbol(i, "SEALED");
    }

    public static final CancellationException CancellationException(String str, Throwable th) {
        CancellationException cancellationException = new CancellationException(str);
        cancellationException.initCause(th);
        return cancellationException;
    }

    public static CompletableDeferredImpl CompletableDeferred$default() {
        CompletableDeferredImpl completableDeferredImpl = new CompletableDeferredImpl(true);
        completableDeferredImpl.initParentJob(null);
        return completableDeferredImpl;
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

    public static final ContextScope MainScope() {
        SupervisorJobImpl SupervisorJob$default = SupervisorJob$default();
        DefaultScheduler defaultScheduler = Dispatchers.Default;
        return new ContextScope(OperationKt.plus(SupervisorJob$default, MainDispatcherLoader.dispatcher));
    }

    public static SupervisorJobImpl SupervisorJob$default() {
        return new SupervisorJobImpl(null);
    }

    public static DeferredCoroutine async$default(CoroutineScope coroutineScope, CoroutineContext coroutineContext, Function2 function2, int i) {
        if ((i & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.INSTANCE;
        }
        CoroutineStart coroutineStart = CoroutineStart.DEFAULT;
        CoroutineContext newCoroutineContext = newCoroutineContext(coroutineScope, coroutineContext);
        coroutineStart.getClass();
        DeferredCoroutine lazyDeferredCoroutine = coroutineStart == CoroutineStart.LAZY ? new LazyDeferredCoroutine(newCoroutineContext, function2) : new DeferredCoroutine(newCoroutineContext, true);
        lazyDeferredCoroutine.start(coroutineStart, lazyDeferredCoroutine, function2);
        return lazyDeferredCoroutine;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final Object awaitAll(List list, SuspendLambda suspendLambda) {
        if (list.isEmpty()) {
            return EmptyList.INSTANCE;
        }
        Deferred[] deferredArr = (Deferred[]) list.toArray(new Deferred[0]);
        AwaitAll awaitAll = new AwaitAll(deferredArr);
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(1, ExceptionsKt.intercepted(suspendLambda));
        cancellableContinuationImpl.initCancellability();
        int length = deferredArr.length;
        AwaitAll.AwaitAllNode[] awaitAllNodeArr = new AwaitAll.AwaitAllNode[length];
        for (int i = 0; i < length; i++) {
            LazyStandaloneCoroutine lazyStandaloneCoroutine = deferredArr[i];
            lazyStandaloneCoroutine.start();
            AwaitAll.AwaitAllNode awaitAllNode = awaitAll.new AwaitAllNode(cancellableContinuationImpl);
            awaitAllNode.handle = invokeOnCompletion(lazyStandaloneCoroutine, true, awaitAllNode);
            awaitAllNodeArr[i] = awaitAllNode;
        }
        AwaitAll.DisposeHandlersOnCancel disposeHandlersOnCancel = new AwaitAll.DisposeHandlersOnCancel(awaitAllNodeArr);
        for (int i2 = 0; i2 < length; i2++) {
            AwaitAll.AwaitAllNode awaitAllNode2 = awaitAllNodeArr[i2];
            awaitAllNode2.getClass();
            ArtificialStackFramesUnsafe.unsafe.putObjectVolatile(awaitAllNode2, AwaitAll.AwaitAllNode._disposer$volatile$FU$offset, disposeHandlersOnCancel);
        }
        if (cancellableContinuationImpl.isCompleted()) {
            disposeHandlersOnCancel.disposeAll();
        } else {
            cancellableContinuationImpl.invokeOnCancellationImpl(disposeHandlersOnCancel);
        }
        return cancellableContinuationImpl.getResult();
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final kotlin.coroutines.intrinsics.CoroutineSingletons awaitCancellation(kotlin.coroutines.jvm.internal.ContinuationImpl r5) {
        /*
            boolean r0 = r5 instanceof kotlinx.coroutines.DelayKt$awaitCancellation$1
            if (r0 == 0) goto L13
            r0 = r5
            kotlinx.coroutines.DelayKt$awaitCancellation$1 r0 = (kotlinx.coroutines.DelayKt$awaitCancellation$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            kotlinx.coroutines.DelayKt$awaitCancellation$1 r0 = new kotlinx.coroutines.DelayKt$awaitCancellation$1
            r0.<init>(r5)
        L18:
            java.lang.Object r5 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L2e
            if (r2 == r4) goto L2a
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r5)
            return r3
        L2a:
            kotlin.ResultKt.throwOnFailure(r5)
            goto L46
        L2e:
            kotlin.ResultKt.throwOnFailure(r5)
            r0.label = r4
            kotlinx.coroutines.CancellableContinuationImpl r5 = new kotlinx.coroutines.CancellableContinuationImpl
            kotlin.coroutines.Continuation r0 = kotlin.ExceptionsKt.intercepted(r0)
            r5.<init>(r4, r0)
            r5.initCancellability()
            java.lang.Object r5 = r5.getResult()
            if (r5 != r1) goto L46
            return r1
        L46:
            com.google.gson.Gson$$ExternalSyntheticBUOutline0.m$1()
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.AwaitKt.awaitCancellation(kotlin.coroutines.jvm.internal.ContinuationImpl):kotlin.coroutines.intrinsics.CoroutineSingletons");
    }

    public static final void cancel(CoroutineScope coroutineScope, CancellationException cancellationException) {
        Job job = (Job) coroutineScope.getCoroutineContext().get(Job.Key.$$INSTANCE);
        if (job != null) {
            job.cancel(cancellationException);
        } else {
            Gson$$ExternalSyntheticBUOutline0.m$8("Scope cannot be cancelled because it does not have a job: ", coroutineScope);
        }
    }

    public static final Object coroutineScope(Function2 function2, Continuation continuation) {
        ScopeCoroutine scopeCoroutine = new ScopeCoroutine(continuation, continuation.getContext());
        return ExceptionsKt.startUndspatched(scopeCoroutine, true, scopeCoroutine, function2);
    }

    public static final Object delay(long j, Continuation continuation) {
        if (j > 0) {
            CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(1, ExceptionsKt.intercepted(continuation));
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
        int i = 0;
        boolean booleanValue = ((Boolean) coroutineContext.fold(bool, new CoroutineContextKt$$ExternalSyntheticLambda0(i))).booleanValue();
        boolean booleanValue2 = ((Boolean) coroutineContext2.fold(bool, new CoroutineContextKt$$ExternalSyntheticLambda0(i))).booleanValue();
        if (!booleanValue && !booleanValue2) {
            return coroutineContext.plus(coroutineContext2);
        }
        CoroutineContextKt$$ExternalSyntheticLambda0 coroutineContextKt$$ExternalSyntheticLambda0 = new CoroutineContextKt$$ExternalSyntheticLambda0(1);
        EmptyCoroutineContext emptyCoroutineContext = EmptyCoroutineContext.INSTANCE;
        CoroutineContext coroutineContext3 = (CoroutineContext) coroutineContext.fold(emptyCoroutineContext, coroutineContextKt$$ExternalSyntheticLambda0);
        Object obj = coroutineContext2;
        if (booleanValue2) {
            obj = coroutineContext2.fold(emptyCoroutineContext, new CoroutineContextKt$$ExternalSyntheticLambda0(2));
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
        Gson$$ExternalSyntheticBUOutline0.m$8("Current context doesn't contain Job in it: ", coroutineContext);
        return null;
    }

    public static final CancellableContinuationImpl getOrCreateCancellableContinuation(Continuation continuation) {
        Unsafe unsafe;
        CancellableContinuationImpl cancellableContinuationImpl;
        CancellableContinuationImpl cancellableContinuationImpl2;
        if (!(continuation instanceof DispatchedContinuation)) {
            return new CancellableContinuationImpl(1, continuation);
        }
        DispatchedContinuation dispatchedContinuation = (DispatchedContinuation) continuation;
        Symbol symbol = InlineList.REUSABLE_CLAIMED;
        long j = DispatchedContinuation._reusableCancellableContinuation$volatile$FU$offset;
        loop0: while (true) {
            unsafe = ArtificialStackFramesUnsafe.unsafe;
            Object objectVolatile = unsafe.getObjectVolatile(dispatchedContinuation, j);
            cancellableContinuationImpl = null;
            if (objectVolatile == null) {
                unsafe.putObjectVolatile(dispatchedContinuation, j, symbol);
                cancellableContinuationImpl2 = null;
                break;
            }
            if (objectVolatile instanceof CancellableContinuationImpl) {
                do {
                    unsafe = ArtificialStackFramesUnsafe.unsafe;
                    if (unsafe.compareAndSwapObject(dispatchedContinuation, DispatchedContinuation._reusableCancellableContinuation$volatile$FU$offset, objectVolatile, symbol)) {
                        cancellableContinuationImpl2 = (CancellableContinuationImpl) objectVolatile;
                        break loop0;
                    }
                } while (unsafe.getObjectVolatile(dispatchedContinuation, j) == objectVolatile);
            } else if (objectVolatile != symbol && !(objectVolatile instanceof Throwable)) {
                Gson$$ExternalSyntheticBUOutline0.m$8("Inconsistent state ", objectVolatile);
                return null;
            }
        }
        if (cancellableContinuationImpl2 != null) {
            long j2 = CancellableContinuationImpl._state$volatile$FU$offset;
            Object objectVolatile2 = unsafe.getObjectVolatile(cancellableContinuationImpl2, j2);
            if (!(objectVolatile2 instanceof CompletedContinuation) || ((CompletedContinuation) objectVolatile2).idempotentResume == null) {
                unsafe.putIntVolatile(cancellableContinuationImpl2, CancellableContinuationImpl._decisionAndIndex$volatile$FU$offset, 536870911);
                unsafe.putObjectVolatile(cancellableContinuationImpl2, j2, Active.INSTANCE);
                cancellableContinuationImpl = cancellableContinuationImpl2;
            } else {
                cancellableContinuationImpl2.detachChild$kotlinx_coroutines_core();
            }
            if (cancellableContinuationImpl != null) {
                return cancellableContinuationImpl;
            }
        }
        return new CancellableContinuationImpl(2, continuation);
    }

    public static final void handleCoroutineException(Throwable th, CoroutineContext coroutineContext) {
        if (th instanceof DispatchException) {
            th = ((DispatchException) th).cause;
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
                ExceptionsKt.addSuppressed(runtimeException, th);
                th = runtimeException;
            }
            InlineList.handleUncaughtCoroutineException(th, coroutineContext);
        }
    }

    public static final DisposableHandle invokeOnCompletion(Job job, boolean z, JobNode jobNode) {
        if (job instanceof JobSupport) {
            return ((JobSupport) job).invokeOnCompletionInternal$kotlinx_coroutines_core(z, jobNode);
        }
        return job.invokeOnCompletion(jobNode.getOnCancelling(), z, new InvalidationTracker$implementation$1(1, jobNode, JobNode.class, "invoke", "invoke(Ljava/lang/Throwable;)V", 0, 5));
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
        StandaloneCoroutine lazyStandaloneCoroutine = coroutineStart == CoroutineStart.LAZY ? new LazyStandaloneCoroutine(newCoroutineContext, function2) : new StandaloneCoroutine(newCoroutineContext, true);
        lazyStandaloneCoroutine.start(coroutineStart, lazyStandaloneCoroutine, function2);
        return lazyStandaloneCoroutine;
    }

    public static StandaloneCoroutine launch$default(CoroutineScope coroutineScope, CoroutineContext coroutineContext, CoroutineStart coroutineStart, Function2 function2, int i) {
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
        Thread currentThread = Thread.currentThread();
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
        BlockingCoroutine blockingCoroutine = new BlockingCoroutine(foldCopies, currentThread, eventLoop);
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
        return ExceptionsKt.startUndspatched(timeoutCoroutine, false, timeoutCoroutine, function2);
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
        if (Result.m815exceptionOrNullimpl(failure) != null) {
            failure = continuation.getClass().getName() + '@' + getHexAddress(continuation);
        }
        return (String) failure;
    }

    /* renamed from: toDelayMillis-LRDsOJo, reason: not valid java name */
    public static final long m860toDelayMillisLRDsOJo(long j) {
        Path.Companion companion = Duration.Companion;
        boolean z = j > 0;
        if (z) {
            return Duration.m850getInWholeMillisecondsimpl(Duration.m853plusLRDsOJo(j, InstantKt.toDuration(999999L, DurationUnit.NANOSECONDS)));
        }
        if (!z) {
            return 0L;
        }
        ContextsKt$$ExternalSyntheticBUOutline0.m();
        return 0L;
    }

    public static final Object unboxState(Object obj) {
        IncompleteStateBox incompleteStateBox = obj instanceof IncompleteStateBox ? (IncompleteStateBox) obj : null;
        return incompleteStateBox != null ? incompleteStateBox.state : obj;
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
        Unsafe unsafe;
        long j;
        CoroutineContext context = continuation.getContext();
        CoroutineContext plus = !((Boolean) coroutineContext.fold(Boolean.FALSE, new CoroutineContextKt$$ExternalSyntheticLambda0(0))).booleanValue() ? context.plus(coroutineContext) : foldCopies(context, coroutineContext, false);
        ensureActive(plus);
        if (plus == context) {
            ScopeCoroutine scopeCoroutine = new ScopeCoroutine(continuation, plus);
            return ExceptionsKt.startUndspatched(scopeCoroutine, true, scopeCoroutine, function2);
        }
        ContinuationInterceptor$Key continuationInterceptor$Key = ContinuationInterceptor$Key.$$INSTANCE;
        if (Intrinsics.areEqual(plus.get(continuationInterceptor$Key), context.get(continuationInterceptor$Key))) {
            UndispatchedCoroutine undispatchedCoroutine = new UndispatchedCoroutine(continuation, plus);
            CoroutineContext coroutineContext2 = undispatchedCoroutine.context;
            Object updateThreadContext = InlineList.updateThreadContext(coroutineContext2, null);
            try {
                return ExceptionsKt.startUndspatched(undispatchedCoroutine, true, undispatchedCoroutine, function2);
            } finally {
                InlineList.restoreThreadContext(coroutineContext2, updateThreadContext);
            }
        }
        DispatchedCoroutine dispatchedCoroutine = new DispatchedCoroutine(continuation, plus);
        try {
            InlineList.resumeCancellableWith(Unit.INSTANCE, ExceptionsKt.intercepted(ExceptionsKt.createCoroutineUnintercepted(dispatchedCoroutine, dispatchedCoroutine, function2)));
            do {
                unsafe = ArtificialStackFramesUnsafe.unsafe;
                j = DispatchedCoroutine._decision$volatile$FU$offset;
                int intVolatile = unsafe.getIntVolatile(dispatchedCoroutine, j);
                if (intVolatile != 0) {
                    if (intVolatile != 2) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Already suspended");
                        return null;
                    }
                    Object unboxState = unboxState(dispatchedCoroutine.getState$kotlinx_coroutines_core());
                    if (unboxState instanceof CompletedExceptionally) {
                        throw ((CompletedExceptionally) unboxState).cause;
                    }
                    return unboxState;
                }
            } while (!unsafe.compareAndSwapInt(dispatchedCoroutine, j, 0, 1));
            return CoroutineSingletons.COROUTINE_SUSPENDED;
        } catch (Throwable th) {
            Throwable th2 = th;
            if (th2 instanceof DispatchException) {
                th2 = ((DispatchException) th2).cause;
            }
            dispatchedCoroutine.resumeWith(new Result.Failure(th2));
            throw th2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object withTimeoutOrNull(long r7, kotlin.jvm.functions.Function2 r9, kotlin.coroutines.jvm.internal.ContinuationImpl r10) {
        /*
            boolean r0 = r10 instanceof kotlinx.coroutines.TimeoutKt$withTimeoutOrNull$1
            if (r0 == 0) goto L13
            r0 = r10
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
            r0.<init>(r10)
        L18:
            java.lang.Object r10 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L32
            if (r2 != r4) goto L2c
            kotlin.jvm.internal.Ref$ObjectRef r7 = r0.L$1
            kotlin.ResultKt.throwOnFailure(r10)     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L2a
            return r10
        L2a:
            r8 = move-exception
            goto L56
        L2c:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r7)
            return r3
        L32:
            kotlin.ResultKt.throwOnFailure(r10)
            r5 = 0
            int r10 = (r7 > r5 ? 1 : (r7 == r5 ? 0 : -1))
            if (r10 > 0) goto L3c
            goto L5c
        L3c:
            kotlin.jvm.internal.Ref$ObjectRef r10 = new kotlin.jvm.internal.Ref$ObjectRef
            r10.<init>()
            r0.L$1 = r10     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L54
            r0.label = r4     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L54
            kotlinx.coroutines.TimeoutCoroutine r2 = new kotlinx.coroutines.TimeoutCoroutine     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L54
            r2.<init>(r7, r0)     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L54
            r10.element = r2     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L54
            java.lang.Object r7 = setupTimeout(r2, r9)     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L54
            if (r7 != r1) goto L53
            return r1
        L53:
            return r7
        L54:
            r8 = move-exception
            r7 = r10
        L56:
            kotlinx.coroutines.Job r9 = r8.coroutine
            java.lang.Object r7 = r7.element
            if (r9 != r7) goto L5d
        L5c:
            return r3
        L5d:
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.AwaitKt.withTimeoutOrNull(long, kotlin.jvm.functions.Function2, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0088 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0087 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object yield(kotlin.coroutines.jvm.internal.ContinuationImpl r7) {
        /*
            kotlin.coroutines.CoroutineContext r0 = r7.getContext()
            ensureActive(r0)
            kotlin.coroutines.Continuation r7 = kotlin.ExceptionsKt.intercepted(r7)
            boolean r1 = r7 instanceof kotlinx.coroutines.internal.DispatchedContinuation
            if (r1 == 0) goto L12
            kotlinx.coroutines.internal.DispatchedContinuation r7 = (kotlinx.coroutines.internal.DispatchedContinuation) r7
            goto L13
        L12:
            r7 = 0
        L13:
            kotlin.Unit r1 = kotlin.Unit.INSTANCE
            if (r7 != 0) goto L1a
        L17:
            r7 = r1
            goto L83
        L1a:
            kotlinx.coroutines.CoroutineDispatcher r2 = r7.dispatcher
            boolean r3 = kotlinx.coroutines.internal.InlineList.safeIsDispatchNeeded(r2, r0)
            r4 = 1
            if (r3 == 0) goto L2b
            r7._state = r1
            r7.resumeMode = r4
            r2.dispatchYield(r0, r7)
            goto L81
        L2b:
            kotlinx.coroutines.YieldContext r3 = new kotlinx.coroutines.YieldContext
            kotlinx.coroutines.Job$Key r5 = kotlinx.coroutines.YieldContext.Key
            r3.<init>(r5)
            kotlin.coroutines.CoroutineContext r0 = r0.plus(r3)
            r7._state = r1
            r7.resumeMode = r4
            r2.dispatchYield(r0, r7)
            boolean r0 = r3.dispatcherWasUnconfined
            if (r0 == 0) goto L81
            kotlinx.coroutines.EventLoop r0 = kotlinx.coroutines.ThreadLocalEventLoop.getEventLoop$kotlinx_coroutines_core()
            kotlin.collections.ArrayDeque r2 = r0.unconfinedQueue
            if (r2 == 0) goto L4e
            boolean r2 = r2.isEmpty()
            goto L4f
        L4e:
            r2 = r4
        L4f:
            if (r2 == 0) goto L52
            goto L17
        L52:
            long r2 = r0.useCount
            r5 = 4294967296(0x100000000, double:2.121995791E-314)
            int r2 = (r2 > r5 ? 1 : (r2 == r5 ? 0 : -1))
            if (r2 < 0) goto L67
            r7._state = r1
            r7.resumeMode = r4
            r0.dispatchUnconfined(r7)
            kotlin.coroutines.intrinsics.CoroutineSingletons r7 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            goto L83
        L67:
            r0.incrementUseCount(r4)
            r7.run()     // Catch: java.lang.Throwable -> L77
        L6d:
            boolean r2 = r0.processUnconfinedEvent()     // Catch: java.lang.Throwable -> L77
            if (r2 != 0) goto L6d
        L73:
            r0.decrementUseCount(r4)
            goto L17
        L77:
            r2 = move-exception
            r7.handleFatalException$kotlinx_coroutines_core(r2)     // Catch: java.lang.Throwable -> L7c
            goto L73
        L7c:
            r7 = move-exception
            r0.decrementUseCount(r4)
            throw r7
        L81:
            kotlin.coroutines.intrinsics.CoroutineSingletons r7 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
        L83:
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r7 != r0) goto L88
            return r7
        L88:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.AwaitKt.yield(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
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
