package kotlinx.coroutines;

import androidx.room.InvalidationTracker$implementation$1;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.mailstore.LocalStore;
import com.fsck.k9.view.KoinModuleKt$$ExternalSyntheticLambda1;
import java.util.Iterator;
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
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlin.time.DurationUnit;
import kotlin.time.InstantKt;
import kotlin.uuid.UuidKt;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.coroutines.CoroutineExceptionHandler;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.internal.ContextScope;
import kotlinx.coroutines.internal.DispatchedContinuation;
import kotlinx.coroutines.internal.InlineList;
import kotlinx.coroutines.internal.MainDispatcherLoader;
import kotlinx.coroutines.internal.ScopeCoroutine;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.minidns.util.Base64;

/* loaded from: classes.dex */
public abstract class JobKt {
    public static final LocalStore.AnonymousClass8 CLOSED_EMPTY;
    public static final LocalStore.AnonymousClass8 COMPLETING_ALREADY;
    public static final LocalStore.AnonymousClass8 COMPLETING_RETRY;
    public static final LocalStore.AnonymousClass8 COMPLETING_WAITING_CHILDREN;
    public static final LocalStore.AnonymousClass8 DISPOSED_TASK;
    public static final LocalStore.AnonymousClass8 RESUME_TOKEN;
    public static final LocalStore.AnonymousClass8 SEALED;
    public static final LocalStore.AnonymousClass8 TOO_LATE_TO_CANCEL;
    public static final Empty EMPTY_NEW = new Empty(false);
    public static final Empty EMPTY_ACTIVE = new Empty(true);

    static {
        int i = 4;
        boolean z = false;
        RESUME_TOKEN = new LocalStore.AnonymousClass8(i, "RESUME_TOKEN", z);
        DISPOSED_TASK = new LocalStore.AnonymousClass8(i, "REMOVED_TASK", z);
        CLOSED_EMPTY = new LocalStore.AnonymousClass8(i, "CLOSED_EMPTY", z);
        COMPLETING_ALREADY = new LocalStore.AnonymousClass8(i, "COMPLETING_ALREADY", z);
        COMPLETING_WAITING_CHILDREN = new LocalStore.AnonymousClass8(i, "COMPLETING_WAITING_CHILDREN", z);
        COMPLETING_RETRY = new LocalStore.AnonymousClass8(i, "COMPLETING_RETRY", z);
        TOO_LATE_TO_CANCEL = new LocalStore.AnonymousClass8(i, "TOO_LATE_TO_CANCEL", z);
        SEALED = new LocalStore.AnonymousClass8(i, "SEALED", z);
    }

    public static final CancellationException CancellationException(String str, Throwable th) {
        CancellationException cancellationException = new CancellationException(str);
        cancellationException.initCause(th);
        return cancellationException;
    }

    public static final CompletableDeferredImpl CompletableDeferred(Object obj) {
        CompletableDeferredImpl completableDeferredImpl = new CompletableDeferredImpl();
        completableDeferredImpl.makeCompleting$kotlinx_coroutines_core(obj);
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
        return new ContextScope(UuidKt.plus(SupervisorJob$default, MainDispatcherLoader.dispatcher));
    }

    public static SupervisorJobImpl SupervisorJob$default() {
        return new SupervisorJobImpl(null);
    }

    public static final DeferredCoroutine async(CoroutineScope coroutineScope, CoroutineContext coroutineContext, CoroutineStart coroutineStart, Function2 function2) {
        CoroutineContext newCoroutineContext = newCoroutineContext(coroutineScope, coroutineContext);
        coroutineStart.getClass();
        DeferredCoroutine lazyDeferredCoroutine = coroutineStart == CoroutineStart.LAZY ? new LazyDeferredCoroutine(newCoroutineContext, function2) : new DeferredCoroutine(newCoroutineContext, true);
        lazyDeferredCoroutine.start(coroutineStart, lazyDeferredCoroutine, function2);
        return lazyDeferredCoroutine;
    }

    public static /* synthetic */ DeferredCoroutine async$default(CoroutineScope coroutineScope, CoroutineContext coroutineContext, CoroutineStart coroutineStart, Function2 function2, int i) {
        if ((i & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.INSTANCE;
        }
        if ((i & 2) != 0) {
            coroutineStart = CoroutineStart.DEFAULT;
        }
        return async(coroutineScope, coroutineContext, coroutineStart, function2);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002b  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x001f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void awaitCancellation(kotlin.coroutines.jvm.internal.ContinuationImpl r4) {
        /*
            boolean r0 = r4 instanceof kotlinx.coroutines.DelayKt$awaitCancellation$1
            if (r0 == 0) goto L13
            r0 = r4
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
            r0.<init>(r4)
        L18:
            java.lang.Object r4 = r0.result
            int r1 = r0.label
            r2 = 1
            if (r1 == 0) goto L2b
            if (r1 == r2) goto L27
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r4)
            return
        L27:
            kotlin.ResultKt.throwOnFailure(r4)
            goto L45
        L2b:
            kotlin.ResultKt.throwOnFailure(r4)
            r0.label = r2
            kotlinx.coroutines.CancellableContinuationImpl r4 = new kotlinx.coroutines.CancellableContinuationImpl
            kotlin.coroutines.Continuation r0 = kotlinx.atomicfu.AtomicFU.intercepted(r0)
            r4.<init>(r2, r0)
            r4.initCancellability()
            java.lang.Object r4 = r4.getResult()
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r4 != r0) goto L45
            return
        L45:
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.JobKt.awaitCancellation(kotlin.coroutines.jvm.internal.ContinuationImpl):void");
    }

    public static final void cancel(CoroutineScope coroutineScope, CancellationException cancellationException) {
        Job job = (Job) coroutineScope.getCoroutineContext().get(Job.Key.$$INSTANCE);
        if (job != null) {
            job.cancel(cancellationException);
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) coroutineScope, "Scope cannot be cancelled because it does not have a job: ");
        }
    }

    public static final Object cancelAndJoin(Job job, SuspendLambda suspendLambda) {
        job.cancel(null);
        Object join = job.join(suspendLambda);
        return join == CoroutineSingletons.COROUTINE_SUSPENDED ? join : Unit.INSTANCE;
    }

    public static void cancelChildren$default(CoroutineContext coroutineContext) {
        Job job = (Job) coroutineContext.get(Job.Key.$$INSTANCE);
        if (job != null) {
            Iterator it = job.getChildren().iterator();
            while (it.hasNext()) {
                ((Job) it.next()).cancel(null);
            }
        }
    }

    public static final Object coroutineScope(Function2 function2, Continuation continuation) {
        ScopeCoroutine scopeCoroutine = new ScopeCoroutine(continuation, continuation.getContext());
        return Base64.startUndispatched(scopeCoroutine, true, scopeCoroutine, function2);
    }

    public static final Object delay(long j, Continuation continuation) {
        if (j > 0) {
            CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(1, AtomicFU.intercepted(continuation));
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

    /* renamed from: delay-VtjQ1oo, reason: not valid java name */
    public static final Object m1010delayVtjQ1oo(long j, ContinuationImpl continuationImpl) {
        Object delay = delay(m1011toDelayMillisLRDsOJo(j), continuationImpl);
        return delay == CoroutineSingletons.COROUTINE_SUSPENDED ? delay : Unit.INSTANCE;
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
        boolean booleanValue = ((Boolean) coroutineContext.fold(bool, new KoinModuleKt$$ExternalSyntheticLambda1(i))).booleanValue();
        boolean booleanValue2 = ((Boolean) coroutineContext2.fold(bool, new KoinModuleKt$$ExternalSyntheticLambda1(i))).booleanValue();
        if (!booleanValue && !booleanValue2) {
            return coroutineContext.plus(coroutineContext2);
        }
        KoinModuleKt$$ExternalSyntheticLambda1 koinModuleKt$$ExternalSyntheticLambda1 = new KoinModuleKt$$ExternalSyntheticLambda1(27);
        EmptyCoroutineContext emptyCoroutineContext = EmptyCoroutineContext.INSTANCE;
        CoroutineContext coroutineContext3 = (CoroutineContext) coroutineContext.fold(emptyCoroutineContext, koinModuleKt$$ExternalSyntheticLambda1);
        Object obj = coroutineContext2;
        if (booleanValue2) {
            obj = coroutineContext2.fold(emptyCoroutineContext, new KoinModuleKt$$ExternalSyntheticLambda1(28));
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
        _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) coroutineContext, "Current context doesn't contain Job in it: ");
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

    public static final void handleCoroutineException(CoroutineContext coroutineContext, Throwable th) {
        if (th instanceof DispatchException) {
            th = ((DispatchException) th).cause;
        }
        try {
            CoroutineExceptionHandler coroutineExceptionHandler = (CoroutineExceptionHandler) coroutineContext.get(CoroutineExceptionHandler.Key.$$INSTANCE);
            if (coroutineExceptionHandler != null) {
                coroutineExceptionHandler.handleException(coroutineContext, th);
            } else {
                InlineList.handleUncaughtCoroutineException(coroutineContext, th);
            }
        } catch (Throwable th2) {
            if (th != th2) {
                RuntimeException runtimeException = new RuntimeException("Exception while trying to handle coroutine exception", th2);
                ResultKt.addSuppressed(runtimeException, th);
                th = runtimeException;
            }
            InlineList.handleUncaughtCoroutineException(coroutineContext, th);
        }
    }

    public static final DisposableHandle invokeOnCompletion(Job job, boolean z, JobNode jobNode) {
        if (job instanceof JobSupport) {
            return ((JobSupport) job).invokeOnCompletionInternal$kotlinx_coroutines_core(z, jobNode);
        }
        return job.invokeOnCompletion(jobNode.getOnCancelling(), z, new InvalidationTracker$implementation$1(1, jobNode, JobNode.class, "invoke", "invoke(Ljava/lang/Throwable;)V", 0, 14));
    }

    public static final boolean isActive(CoroutineScope coroutineScope) {
        Job job = (Job) coroutineScope.getCoroutineContext().get(Job.Key.$$INSTANCE);
        if (job != null) {
            return job.isActive();
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x001f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object joinAll(java.util.Collection r4, kotlin.coroutines.Continuation r5) {
        /*
            boolean r0 = r5 instanceof kotlinx.coroutines.AwaitKt$joinAll$3
            if (r0 == 0) goto L13
            r0 = r5
            kotlinx.coroutines.AwaitKt$joinAll$3 r0 = (kotlinx.coroutines.AwaitKt$joinAll$3) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            kotlinx.coroutines.AwaitKt$joinAll$3 r0 = new kotlinx.coroutines.AwaitKt$joinAll$3
            r0.<init>(r5)
        L18:
            java.lang.Object r5 = r0.result
            int r1 = r0.label
            r2 = 1
            if (r1 == 0) goto L30
            if (r1 != r2) goto L29
            int r4 = r0.I$0
            java.util.Iterator r1 = r0.L$2
            kotlin.ResultKt.throwOnFailure(r5)
            goto L3c
        L29:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r4)
            r4 = 0
            return r4
        L30:
            kotlin.ResultKt.throwOnFailure(r5)
            java.lang.Iterable r4 = (java.lang.Iterable) r4
            java.util.Iterator r4 = r4.iterator()
            r5 = 0
            r1 = r4
            r4 = r5
        L3c:
            boolean r5 = r1.hasNext()
            if (r5 == 0) goto L57
            java.lang.Object r5 = r1.next()
            kotlinx.coroutines.Job r5 = (kotlinx.coroutines.Job) r5
            r0.L$2 = r1
            r0.I$0 = r4
            r0.label = r2
            java.lang.Object r5 = r5.join(r0)
            kotlin.coroutines.intrinsics.CoroutineSingletons r3 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r5 != r3) goto L3c
            return r3
        L57:
            kotlin.Unit r4 = kotlin.Unit.INSTANCE
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.JobKt.joinAll(java.util.Collection, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static final StandaloneCoroutine launch(CoroutineScope coroutineScope, CoroutineContext coroutineContext, CoroutineStart coroutineStart, Function2 function2) {
        CoroutineContext newCoroutineContext = newCoroutineContext(coroutineScope, coroutineContext);
        coroutineStart.getClass();
        StandaloneCoroutine lazyStandaloneCoroutine = coroutineStart == CoroutineStart.LAZY ? new LazyStandaloneCoroutine(newCoroutineContext, function2) : new StandaloneCoroutine(newCoroutineContext, true);
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

    public static final Object runBlockingK(CoroutineContext coroutineContext, Function2 function2) {
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
            if (blockingCoroutine.isCompleted()) {
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
        return Base64.startUndispatched(timeoutCoroutine, false, timeoutCoroutine, function2);
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
        if (Result.m979exceptionOrNullimpl(failure) != null) {
            failure = continuation.getClass().getName() + '@' + getHexAddress(continuation);
        }
        return (String) failure;
    }

    /* renamed from: toDelayMillis-LRDsOJo, reason: not valid java name */
    public static final long m1011toDelayMillisLRDsOJo(long j) {
        Duration.Companion companion = Duration.Companion;
        boolean z = j > 0;
        if (z) {
            return Duration.m996getInWholeMillisecondsimpl(Duration.m1000plusLRDsOJo(j, InstantKt.toDuration(999999L, DurationUnit.NANOSECONDS)));
        }
        if (!z) {
            return 0L;
        }
        UriKt$$ExternalSyntheticBUOutline0.m857m();
        return 0L;
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
        CoroutineContext plus = !((Boolean) coroutineContext.fold(Boolean.FALSE, new KoinModuleKt$$ExternalSyntheticLambda1(26))).booleanValue() ? context.plus(coroutineContext) : foldCopies(context, coroutineContext, false);
        ensureActive(plus);
        if (plus == context) {
            ScopeCoroutine scopeCoroutine = new ScopeCoroutine(continuation, plus);
            return Base64.startUndispatched(scopeCoroutine, true, scopeCoroutine, function2);
        }
        ContinuationInterceptor$Key continuationInterceptor$Key = ContinuationInterceptor$Key.$$INSTANCE;
        if (Intrinsics.areEqual(plus.get(continuationInterceptor$Key), context.get(continuationInterceptor$Key))) {
            UndispatchedCoroutine undispatchedCoroutine = new UndispatchedCoroutine(continuation, plus);
            CoroutineContext coroutineContext2 = undispatchedCoroutine.context;
            Object updateThreadContext = InlineList.updateThreadContext(coroutineContext2, null);
            try {
                return Base64.startUndispatched(undispatchedCoroutine, true, undispatchedCoroutine, function2);
            } finally {
                InlineList.restoreThreadContext(coroutineContext2, updateThreadContext);
            }
        }
        DispatchedCoroutine dispatchedCoroutine = new DispatchedCoroutine(continuation, plus);
        try {
            InlineList.resumeCancellableWithInternal(Unit.INSTANCE, AtomicFU.intercepted(AtomicFU.createCoroutineUnintercepted(dispatchedCoroutine, dispatchedCoroutine, function2)));
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = DispatchedCoroutine._decision$volatile$FU;
            do {
                int i = atomicIntegerFieldUpdater.get(dispatchedCoroutine);
                if (i != 0) {
                    if (i != 2) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Already suspended");
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
                th = ((DispatchException) th).cause;
            }
            dispatchedCoroutine.resumeWith(ResultKt.createFailure(th));
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0030  */
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
            if (r1 == 0) goto L30
            if (r1 != r3) goto L2a
            kotlin.jvm.internal.Ref$ObjectRef r6 = r0.L$1
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L28
            return r9
        L28:
            r7 = move-exception
            goto L56
        L2a:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r6)
            return r2
        L30:
            kotlin.ResultKt.throwOnFailure(r9)
            r4 = 0
            int r9 = (r6 > r4 ? 1 : (r6 == r4 ? 0 : -1))
            if (r9 > 0) goto L3a
            goto L5c
        L3a:
            kotlin.jvm.internal.Ref$ObjectRef r9 = new kotlin.jvm.internal.Ref$ObjectRef
            r9.<init>()
            r0.L$1 = r9     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L54
            r0.label = r3     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L54
            kotlinx.coroutines.TimeoutCoroutine r1 = new kotlinx.coroutines.TimeoutCoroutine     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L54
            r1.<init>(r6, r0)     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L54
            r9.element = r1     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L54
            java.lang.Object r6 = setupTimeout(r1, r8)     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L54
            kotlin.coroutines.intrinsics.CoroutineSingletons r7 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r6 != r7) goto L53
            return r7
        L53:
            return r6
        L54:
            r7 = move-exception
            r6 = r9
        L56:
            kotlinx.coroutines.Job r8 = r7.coroutine
            java.lang.Object r6 = r6.element
            if (r8 != r6) goto L5d
        L5c:
            return r2
        L5d:
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.JobKt.withTimeoutOrNull(long, kotlin.jvm.functions.Function2, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0084 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0083 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object yield(kotlin.coroutines.jvm.internal.ContinuationImpl r8) {
        /*
            kotlin.coroutines.CoroutineContext r0 = r8.getContext()
            ensureActive(r0)
            kotlin.coroutines.Continuation r8 = kotlinx.atomicfu.AtomicFU.intercepted(r8)
            boolean r1 = r8 instanceof kotlinx.coroutines.internal.DispatchedContinuation
            if (r1 == 0) goto L12
            kotlinx.coroutines.internal.DispatchedContinuation r8 = (kotlinx.coroutines.internal.DispatchedContinuation) r8
            goto L13
        L12:
            r8 = 0
        L13:
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            kotlin.Unit r2 = kotlin.Unit.INSTANCE
            if (r8 != 0) goto L1b
        L19:
            r8 = r2
            goto L81
        L1b:
            kotlinx.coroutines.CoroutineDispatcher r3 = r8.dispatcher
            boolean r4 = kotlinx.coroutines.internal.InlineList.safeIsDispatchNeeded(r3, r0)
            r5 = 1
            if (r4 == 0) goto L2c
            r8._state = r2
            r8.resumeMode = r5
            r3.dispatchYield(r0, r8)
            goto L65
        L2c:
            kotlinx.coroutines.YieldContext r4 = new kotlinx.coroutines.YieldContext
            kotlinx.coroutines.Job$Key r6 = kotlinx.coroutines.YieldContext.Key
            r4.<init>(r6)
            kotlin.coroutines.CoroutineContext r0 = r0.plus(r4)
            r8._state = r2
            r8.resumeMode = r5
            r3.dispatchYield(r0, r8)
            boolean r0 = r4.dispatcherWasUnconfined
            if (r0 == 0) goto L65
            kotlinx.coroutines.EventLoop r0 = kotlinx.coroutines.ThreadLocalEventLoop.getEventLoop$kotlinx_coroutines_core()
            kotlin.collections.ArrayDeque r3 = r0.unconfinedQueue
            if (r3 == 0) goto L4f
            boolean r3 = r3.isEmpty()
            goto L50
        L4f:
            r3 = r5
        L50:
            if (r3 == 0) goto L53
            goto L19
        L53:
            long r3 = r0.useCount
            r6 = 4294967296(0x100000000, double:2.121995791E-314)
            int r3 = (r3 > r6 ? 1 : (r3 == r6 ? 0 : -1))
            if (r3 < 0) goto L67
            r8._state = r2
            r8.resumeMode = r5
            r0.dispatchUnconfined(r8)
        L65:
            r8 = r1
            goto L81
        L67:
            r0.incrementUseCount(r5)
            r8.run()     // Catch: java.lang.Throwable -> L77
        L6d:
            boolean r3 = r0.processUnconfinedEvent()     // Catch: java.lang.Throwable -> L77
            if (r3 != 0) goto L6d
        L73:
            r0.decrementUseCount(r5)
            goto L19
        L77:
            r3 = move-exception
            r8.handleFatalException$kotlinx_coroutines_core(r3)     // Catch: java.lang.Throwable -> L7c
            goto L73
        L7c:
            r8 = move-exception
            r0.decrementUseCount(r5)
            throw r8
        L81:
            if (r8 != r1) goto L84
            return r8
        L84:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.JobKt.yield(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
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
