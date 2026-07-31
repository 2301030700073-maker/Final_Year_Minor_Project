package kotlinx.coroutines;

import _COROUTINE.ArtificialStackFramesUnsafe;
import coil3.network.HttpException;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.util.concurrent.CancellationException;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.internal.DispatchedContinuation;
import kotlinx.coroutines.internal.InlineList;
import kotlinx.coroutines.internal.Segment;
import kotlinx.coroutines.internal.Symbol;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import sun.misc.Unsafe;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class CancellableContinuationImpl extends DispatchedTask implements CancellableContinuation, CoroutineStackFrame, Waiter {
    public static final /* synthetic */ long _decisionAndIndex$volatile$FU$offset;
    public static final /* synthetic */ long _parentHandle$volatile$FU$offset;
    public static final /* synthetic */ long _state$volatile$FU$offset;
    private volatile /* synthetic */ int _decisionAndIndex$volatile;
    private volatile /* synthetic */ Object _parentHandle$volatile;
    private volatile /* synthetic */ Object _state$volatile;
    public final CoroutineContext context;
    public final Continuation delegate;

    static {
        Unsafe unsafe = ArtificialStackFramesUnsafe.unsafe;
        _decisionAndIndex$volatile$FU$offset = unsafe.objectFieldOffset(CancellableContinuationImpl.class.getDeclaredField("_decisionAndIndex$volatile"));
        _state$volatile$FU$offset = unsafe.objectFieldOffset(CancellableContinuationImpl.class.getDeclaredField("_state$volatile"));
        _parentHandle$volatile$FU$offset = unsafe.objectFieldOffset(CancellableContinuationImpl.class.getDeclaredField("_parentHandle$volatile"));
    }

    public CancellableContinuationImpl(int i, Continuation continuation) {
        super(i);
        this.delegate = continuation;
        this.context = continuation.getContext();
        this._decisionAndIndex$volatile = 536870911;
        this._state$volatile = Active.INSTANCE;
    }

    public static void multipleHandlersError(NotCompleted notCompleted, Object obj) {
        throw new IllegalStateException(("It's prohibited to register multiple handlers, tried to register " + notCompleted + ", already has " + obj).toString());
    }

    public static Object resumedState(NotCompleted notCompleted, Object obj, int i, Function3 function3) {
        if (obj instanceof CompletedExceptionally) {
            return obj;
        }
        if (i != 1 && i != 2) {
            return obj;
        }
        if (function3 != null || (notCompleted instanceof CancelHandler)) {
            return new CompletedContinuation(obj, notCompleted instanceof CancelHandler ? (CancelHandler) notCompleted : null, function3, (Throwable) null, 16);
        }
        return obj;
    }

    public final void callCancelHandler(CancelHandler cancelHandler, Throwable th) {
        try {
            cancelHandler.invoke(th);
        } catch (Throwable th2) {
            AwaitKt.handleCoroutineException(new HttpException("Exception in invokeOnCancellation handler for " + this, th2), this.context);
        }
    }

    public final void callOnCancellation(Function3 function3, Throwable th, Object obj) {
        CoroutineContext coroutineContext = this.context;
        try {
            function3.invoke(th, obj, coroutineContext);
        } catch (Throwable th2) {
            AwaitKt.handleCoroutineException(new HttpException("Exception in resume onCancellation handler for " + this, th2), coroutineContext);
        }
    }

    public final void callSegmentOnCancellation(Segment segment, Throwable th) {
        CoroutineContext coroutineContext = this.context;
        int intVolatile = ArtificialStackFramesUnsafe.unsafe.getIntVolatile(this, _decisionAndIndex$volatile$FU$offset) & 536870911;
        if (intVolatile == 536870911) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("The index for Segment.onCancellation(..) is broken");
            return;
        }
        try {
            segment.onCancellation(intVolatile, coroutineContext);
        } catch (Throwable th2) {
            AwaitKt.handleCoroutineException(new HttpException("Exception in invokeOnCancellation handler for " + this, th2), coroutineContext);
        }
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    public final boolean cancel(Throwable th) {
        Throwable th2;
        CancellableContinuationImpl cancellableContinuationImpl;
        while (true) {
            Unsafe unsafe = ArtificialStackFramesUnsafe.unsafe;
            long j = _state$volatile$FU$offset;
            Object objectVolatile = unsafe.getObjectVolatile(this, j);
            if (!(objectVolatile instanceof NotCompleted)) {
                return false;
            }
            boolean z = (objectVolatile instanceof CancelHandler) || (objectVolatile instanceof Segment);
            if (th == null) {
                th2 = new CancellationException("Continuation " + this + " was cancelled normally");
            } else {
                th2 = th;
            }
            CancelledContinuation cancelledContinuation = new CancelledContinuation(th2, z);
            while (true) {
                Unsafe unsafe2 = ArtificialStackFramesUnsafe.unsafe;
                cancellableContinuationImpl = this;
                if (unsafe2.compareAndSwapObject(cancellableContinuationImpl, _state$volatile$FU$offset, objectVolatile, cancelledContinuation)) {
                    NotCompleted notCompleted = (NotCompleted) objectVolatile;
                    if (notCompleted instanceof CancelHandler) {
                        cancellableContinuationImpl.callCancelHandler((CancelHandler) objectVolatile, th);
                    } else if (notCompleted instanceof Segment) {
                        cancellableContinuationImpl.callSegmentOnCancellation((Segment) objectVolatile, th);
                    }
                    if (!cancellableContinuationImpl.isReusable()) {
                        cancellableContinuationImpl.detachChild$kotlinx_coroutines_core();
                    }
                    cancellableContinuationImpl.dispatchResume(cancellableContinuationImpl.resumeMode);
                    return true;
                }
                if (unsafe2.getObjectVolatile(cancellableContinuationImpl, j) != objectVolatile) {
                    break;
                }
                this = cancellableContinuationImpl;
            }
            this = cancellableContinuationImpl;
        }
    }

    @Override // kotlinx.coroutines.DispatchedTask
    public final void cancelCompletedResult$kotlinx_coroutines_core(CancellationException cancellationException) {
        CancellationException cancellationException2;
        CancellableContinuationImpl cancellableContinuationImpl;
        while (true) {
            Unsafe unsafe = ArtificialStackFramesUnsafe.unsafe;
            long j = _state$volatile$FU$offset;
            Object objectVolatile = unsafe.getObjectVolatile(this, j);
            if (objectVolatile instanceof NotCompleted) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Not completed");
                return;
            }
            if (objectVolatile instanceof CompletedExceptionally) {
                return;
            }
            if (objectVolatile instanceof CompletedContinuation) {
                CompletedContinuation completedContinuation = (CompletedContinuation) objectVolatile;
                if (completedContinuation.cancelCause != null) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Must be called at most once");
                    return;
                }
                CompletedContinuation copy$default = CompletedContinuation.copy$default(completedContinuation, null, cancellationException, 15);
                while (true) {
                    Unsafe unsafe2 = ArtificialStackFramesUnsafe.unsafe;
                    CancellableContinuationImpl cancellableContinuationImpl2 = this;
                    if (unsafe2.compareAndSwapObject(cancellableContinuationImpl2, _state$volatile$FU$offset, objectVolatile, copy$default)) {
                        CancelHandler cancelHandler = completedContinuation.cancelHandler;
                        if (cancelHandler != null) {
                            cancellableContinuationImpl2.callCancelHandler(cancelHandler, cancellationException);
                        }
                        Function3 function3 = completedContinuation.onCancellation;
                        if (function3 != null) {
                            cancellableContinuationImpl2.callOnCancellation(function3, cancellationException, completedContinuation.result);
                            return;
                        }
                        return;
                    }
                    if (unsafe2.getObjectVolatile(cancellableContinuationImpl2, j) != objectVolatile) {
                        cancellationException2 = cancellationException;
                        cancellableContinuationImpl = cancellableContinuationImpl2;
                        break;
                    }
                    this = cancellableContinuationImpl2;
                }
            } else {
                CancellableContinuationImpl cancellableContinuationImpl3 = this;
                CancellationException cancellationException3 = cancellationException;
                CompletedContinuation completedContinuation2 = new CompletedContinuation(objectVolatile, (CancelHandler) null, (Function3) null, cancellationException3, 14);
                cancellationException2 = cancellationException3;
                while (true) {
                    CompletedContinuation completedContinuation3 = completedContinuation2;
                    Unsafe unsafe3 = ArtificialStackFramesUnsafe.unsafe;
                    cancellableContinuationImpl = cancellableContinuationImpl3;
                    boolean compareAndSwapObject = unsafe3.compareAndSwapObject(cancellableContinuationImpl, _state$volatile$FU$offset, objectVolatile, completedContinuation3);
                    completedContinuation2 = completedContinuation3;
                    if (compareAndSwapObject) {
                        return;
                    }
                    if (unsafe3.getObjectVolatile(cancellableContinuationImpl, j) != objectVolatile) {
                        break;
                    } else {
                        cancellableContinuationImpl3 = cancellableContinuationImpl;
                    }
                }
            }
            cancellationException = cancellationException2;
            this = cancellableContinuationImpl;
        }
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    public final void completeResume(Object obj) {
        dispatchResume(this.resumeMode);
    }

    public final void detachChild$kotlinx_coroutines_core() {
        Unsafe unsafe = ArtificialStackFramesUnsafe.unsafe;
        long j = _parentHandle$volatile$FU$offset;
        DisposableHandle disposableHandle = (DisposableHandle) unsafe.getObjectVolatile(this, j);
        if (disposableHandle == null) {
            return;
        }
        disposableHandle.dispose();
        unsafe.putObjectVolatile(this, j, NonDisposableHandle.INSTANCE);
    }

    public final void dispatchResume(int i) {
        while (true) {
            Unsafe unsafe = ArtificialStackFramesUnsafe.unsafe;
            long j = _decisionAndIndex$volatile$FU$offset;
            int intVolatile = unsafe.getIntVolatile(this, j);
            int i2 = intVolatile >> 29;
            if (i2 != 0) {
                if (i2 != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Already resumed");
                    return;
                }
                boolean z = i == 4;
                Continuation continuation = this.delegate;
                if (!z && (continuation instanceof DispatchedContinuation)) {
                    boolean z2 = i == 1 || i == 2;
                    int i3 = this.resumeMode;
                    if (z2 == (i3 == 1 || i3 == 2)) {
                        DispatchedContinuation dispatchedContinuation = (DispatchedContinuation) continuation;
                        CoroutineDispatcher coroutineDispatcher = dispatchedContinuation.dispatcher;
                        CoroutineContext context = dispatchedContinuation.continuation.getContext();
                        if (InlineList.safeIsDispatchNeeded(coroutineDispatcher, context)) {
                            InlineList.safeDispatch(coroutineDispatcher, context, this);
                            return;
                        }
                        EventLoop eventLoop$kotlinx_coroutines_core = ThreadLocalEventLoop.getEventLoop$kotlinx_coroutines_core();
                        if (eventLoop$kotlinx_coroutines_core.useCount >= 4294967296L) {
                            eventLoop$kotlinx_coroutines_core.dispatchUnconfined(this);
                            return;
                        }
                        eventLoop$kotlinx_coroutines_core.incrementUseCount(true);
                        try {
                            AwaitKt.resume(this, continuation, true);
                            do {
                            } while (eventLoop$kotlinx_coroutines_core.processUnconfinedEvent());
                        } finally {
                            try {
                                return;
                            } finally {
                            }
                        }
                        return;
                    }
                }
                AwaitKt.resume(this, continuation, z);
                return;
            }
            CancellableContinuationImpl cancellableContinuationImpl = this;
            if (unsafe.compareAndSwapInt(cancellableContinuationImpl, j, intVolatile, 1073741824 + (536870911 & intVolatile))) {
                return;
            } else {
                this = cancellableContinuationImpl;
            }
        }
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    public final CoroutineStackFrame getCallerFrame() {
        Continuation continuation = this.delegate;
        if (continuation instanceof CoroutineStackFrame) {
            return (CoroutineStackFrame) continuation;
        }
        return null;
    }

    @Override // kotlin.coroutines.Continuation
    public final CoroutineContext getContext() {
        return this.context;
    }

    public Throwable getContinuationCancellationCause(JobSupport jobSupport) {
        return jobSupport.getCancellationException();
    }

    @Override // kotlinx.coroutines.DispatchedTask
    public final Continuation getDelegate$kotlinx_coroutines_core() {
        return this.delegate;
    }

    @Override // kotlinx.coroutines.DispatchedTask
    public final Throwable getExceptionalResult$kotlinx_coroutines_core(Object obj) {
        Throwable exceptionalResult$kotlinx_coroutines_core = super.getExceptionalResult$kotlinx_coroutines_core(obj);
        if (exceptionalResult$kotlinx_coroutines_core != null) {
            return exceptionalResult$kotlinx_coroutines_core;
        }
        return null;
    }

    public final Object getResult() {
        Job job;
        boolean isReusable = isReusable();
        while (true) {
            Unsafe unsafe = ArtificialStackFramesUnsafe.unsafe;
            long j = _decisionAndIndex$volatile$FU$offset;
            int intVolatile = unsafe.getIntVolatile(this, j);
            int i = intVolatile >> 29;
            if (i != 0) {
                if (i != 2) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Already suspended");
                    return null;
                }
                if (isReusable) {
                    this.releaseClaimedReusableContinuation$kotlinx_coroutines_core();
                }
                Object state$kotlinx_coroutines_core = this.getState$kotlinx_coroutines_core();
                if (state$kotlinx_coroutines_core instanceof CompletedExceptionally) {
                    throw ((CompletedExceptionally) state$kotlinx_coroutines_core).cause;
                }
                int i2 = this.resumeMode;
                if ((i2 != 1 && i2 != 2) || (job = (Job) this.context.get(Job.Key.$$INSTANCE)) == null || job.isActive()) {
                    return this.getSuccessfulResult$kotlinx_coroutines_core(state$kotlinx_coroutines_core);
                }
                CancellationException cancellationException = job.getCancellationException();
                this.cancelCompletedResult$kotlinx_coroutines_core(cancellationException);
                throw cancellationException;
            }
            CancellableContinuationImpl cancellableContinuationImpl = this;
            if (unsafe.compareAndSwapInt(cancellableContinuationImpl, j, intVolatile, 536870912 + (536870911 & intVolatile))) {
                if (((DisposableHandle) unsafe.getObjectVolatile(cancellableContinuationImpl, _parentHandle$volatile$FU$offset)) == null) {
                    cancellableContinuationImpl.installParentHandle();
                }
                if (isReusable) {
                    cancellableContinuationImpl.releaseClaimedReusableContinuation$kotlinx_coroutines_core();
                }
                return CoroutineSingletons.COROUTINE_SUSPENDED;
            }
            this = cancellableContinuationImpl;
        }
    }

    public final Object getState$kotlinx_coroutines_core() {
        return ArtificialStackFramesUnsafe.unsafe.getObjectVolatile(this, _state$volatile$FU$offset);
    }

    @Override // kotlinx.coroutines.DispatchedTask
    public final Object getSuccessfulResult$kotlinx_coroutines_core(Object obj) {
        return obj instanceof CompletedContinuation ? ((CompletedContinuation) obj).result : obj;
    }

    public final void initCancellability() {
        DisposableHandle installParentHandle = installParentHandle();
        if (installParentHandle != null && isCompleted()) {
            installParentHandle.dispose();
            ArtificialStackFramesUnsafe.unsafe.putObjectVolatile(this, _parentHandle$volatile$FU$offset, NonDisposableHandle.INSTANCE);
        }
    }

    public final DisposableHandle installParentHandle() {
        Job job = (Job) this.context.get(Job.Key.$$INSTANCE);
        if (job == null) {
            return null;
        }
        DisposableHandle invokeOnCompletion = AwaitKt.invokeOnCompletion(job, true, new ChildContinuation(this));
        while (true) {
            Unsafe unsafe = ArtificialStackFramesUnsafe.unsafe;
            long j = _parentHandle$volatile$FU$offset;
            CancellableContinuationImpl cancellableContinuationImpl = this;
            if (!unsafe.compareAndSwapObject(cancellableContinuationImpl, j, (Object) null, invokeOnCompletion) && unsafe.getObjectVolatile(cancellableContinuationImpl, j) == null) {
                this = cancellableContinuationImpl;
            }
        }
        return invokeOnCompletion;
    }

    @Override // kotlinx.coroutines.Waiter
    public final void invokeOnCancellation(Segment segment, int i) {
        while (true) {
            Unsafe unsafe = ArtificialStackFramesUnsafe.unsafe;
            long j = _decisionAndIndex$volatile$FU$offset;
            int intVolatile = unsafe.getIntVolatile(this, j);
            if ((intVolatile & 536870911) != 536870911) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("invokeOnCancellation should be called at most once");
                return;
            }
            CancellableContinuationImpl cancellableContinuationImpl = this;
            if (unsafe.compareAndSwapInt(cancellableContinuationImpl, j, intVolatile, ((intVolatile >> 29) << 29) + i)) {
                cancellableContinuationImpl.invokeOnCancellationImpl(segment);
                return;
            }
            this = cancellableContinuationImpl;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:74:0x00c6, code lost:
    
        multipleHandlersError(r9, r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x00c9, code lost:
    
        throw null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void invokeOnCancellationImpl(kotlinx.coroutines.NotCompleted r11) {
        /*
            Method dump skipped, instructions count: 202
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.CancellableContinuationImpl.invokeOnCancellationImpl(kotlinx.coroutines.NotCompleted):void");
    }

    public final boolean isCompleted() {
        return !(getState$kotlinx_coroutines_core() instanceof NotCompleted);
    }

    public final boolean isReusable() {
        if (this.resumeMode == 2) {
            return ArtificialStackFramesUnsafe.unsafe.getObjectVolatile((DispatchedContinuation) this.delegate, DispatchedContinuation._reusableCancellableContinuation$volatile$FU$offset) != null;
        }
        return false;
    }

    public String nameString() {
        return "CancellableContinuation";
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0046, code lost:
    
        if (r2 != null) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0049, code lost:
    
        r9.detachChild$kotlinx_coroutines_core();
        r9.cancel(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x004f, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:?, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void releaseClaimedReusableContinuation$kotlinx_coroutines_core() {
        /*
            r10 = this;
            kotlin.coroutines.Continuation r0 = r10.delegate
            boolean r1 = r0 instanceof kotlinx.coroutines.internal.DispatchedContinuation
            r2 = 0
            if (r1 == 0) goto Lb
            kotlinx.coroutines.internal.DispatchedContinuation r0 = (kotlinx.coroutines.internal.DispatchedContinuation) r0
            r4 = r0
            goto Lc
        Lb:
            r4 = r2
        Lc:
            if (r4 == 0) goto L63
            long r0 = kotlinx.coroutines.internal.DispatchedContinuation._reusableCancellableContinuation$volatile$FU$offset
        L10:
            sun.misc.Unsafe r3 = _COROUTINE.ArtificialStackFramesUnsafe.unsafe
            java.lang.Object r7 = r3.getObjectVolatile(r4, r0)
            r3 = r7
            kotlinx.coroutines.internal.Symbol r7 = kotlinx.coroutines.internal.InlineList.REUSABLE_CLAIMED
            if (r3 != r7) goto L32
        L1b:
            sun.misc.Unsafe r3 = _COROUTINE.ArtificialStackFramesUnsafe.unsafe
            long r5 = kotlinx.coroutines.internal.DispatchedContinuation._reusableCancellableContinuation$volatile$FU$offset
            r8 = r10
            boolean r10 = r3.compareAndSwapObject(r4, r5, r7, r8)
            r9 = r8
            if (r10 == 0) goto L28
            goto L46
        L28:
            java.lang.Object r10 = r3.getObjectVolatile(r4, r0)
            if (r10 == r7) goto L30
            r10 = r9
            goto L10
        L30:
            r10 = r9
            goto L1b
        L32:
            r9 = r10
            boolean r10 = r3 instanceof java.lang.Throwable
            if (r10 == 0) goto L5d
            r7 = r3
        L38:
            sun.misc.Unsafe r3 = _COROUTINE.ArtificialStackFramesUnsafe.unsafe
            long r5 = kotlinx.coroutines.internal.DispatchedContinuation._reusableCancellableContinuation$volatile$FU$offset
            r8 = 0
            boolean r10 = r3.compareAndSwapObject(r4, r5, r7, r8)
            if (r10 == 0) goto L50
            r2 = r7
            java.lang.Throwable r2 = (java.lang.Throwable) r2
        L46:
            if (r2 != 0) goto L49
            goto L63
        L49:
            r9.detachChild$kotlinx_coroutines_core()
            r9.cancel(r2)
            return
        L50:
            java.lang.Object r10 = r3.getObjectVolatile(r4, r0)
            if (r10 != r7) goto L57
            goto L38
        L57:
            java.lang.String r10 = "Failed requirement."
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m(r10)
            return
        L5d:
            r7 = r3
            java.lang.String r10 = "Inconsistent state "
            com.google.gson.Gson$$ExternalSyntheticBUOutline0.m$8(r10, r7)
        L63:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.CancellableContinuationImpl.releaseClaimedReusableContinuation$kotlinx_coroutines_core():void");
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    public final void resume(Object obj, Function3 function3) {
        resumeImpl$kotlinx_coroutines_core(obj, this.resumeMode, function3);
    }

    public final void resumeImpl$kotlinx_coroutines_core(Object obj, int i, Function3 function3) {
        CancellableContinuationImpl cancellableContinuationImpl;
        while (true) {
            Unsafe unsafe = ArtificialStackFramesUnsafe.unsafe;
            long j = _state$volatile$FU$offset;
            Object objectVolatile = unsafe.getObjectVolatile(this, j);
            if (!(objectVolatile instanceof NotCompleted)) {
                CancellableContinuationImpl cancellableContinuationImpl2 = this;
                if (objectVolatile instanceof CancelledContinuation) {
                    CancelledContinuation cancelledContinuation = (CancelledContinuation) objectVolatile;
                    if (unsafe.compareAndSwapInt(cancelledContinuation, CancelledContinuation._resumed$volatile$FU$offset, 0, 1)) {
                        if (function3 != null) {
                            cancellableContinuationImpl2.callOnCancellation(function3, cancelledContinuation.cause, obj);
                            return;
                        }
                        return;
                    }
                }
                Gson$$ExternalSyntheticBUOutline0.m$8("Already resumed, but proposed with update ", obj);
                return;
            }
            Object resumedState = resumedState((NotCompleted) objectVolatile, obj, i, function3);
            while (true) {
                Unsafe unsafe2 = ArtificialStackFramesUnsafe.unsafe;
                cancellableContinuationImpl = this;
                if (unsafe2.compareAndSwapObject(cancellableContinuationImpl, _state$volatile$FU$offset, objectVolatile, resumedState)) {
                    if (!cancellableContinuationImpl.isReusable()) {
                        cancellableContinuationImpl.detachChild$kotlinx_coroutines_core();
                    }
                    cancellableContinuationImpl.dispatchResume(i);
                    return;
                } else if (unsafe2.getObjectVolatile(cancellableContinuationImpl, j) != objectVolatile) {
                    break;
                } else {
                    this = cancellableContinuationImpl;
                }
            }
            this = cancellableContinuationImpl;
        }
    }

    public final void resumeUndispatched(CoroutineDispatcher coroutineDispatcher) {
        Continuation continuation = this.delegate;
        DispatchedContinuation dispatchedContinuation = continuation instanceof DispatchedContinuation ? (DispatchedContinuation) continuation : null;
        resumeImpl$kotlinx_coroutines_core(Unit.INSTANCE, (dispatchedContinuation != null ? dispatchedContinuation.dispatcher : null) == coroutineDispatcher ? 4 : this.resumeMode, null);
    }

    @Override // kotlin.coroutines.Continuation
    public final void resumeWith(Object obj) {
        Throwable m815exceptionOrNullimpl = Result.m815exceptionOrNullimpl(obj);
        if (m815exceptionOrNullimpl != null) {
            obj = new CompletedExceptionally(m815exceptionOrNullimpl, false);
        }
        resumeImpl$kotlinx_coroutines_core(obj, this.resumeMode, null);
    }

    @Override // kotlinx.coroutines.DispatchedTask
    public final Object takeState$kotlinx_coroutines_core() {
        return getState$kotlinx_coroutines_core();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(nameString());
        sb.append('(');
        sb.append(AwaitKt.toDebugString(this.delegate));
        sb.append("){");
        Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
        sb.append(state$kotlinx_coroutines_core instanceof NotCompleted ? "Active" : state$kotlinx_coroutines_core instanceof CancelledContinuation ? "Cancelled" : "Completed");
        sb.append("}@");
        sb.append(AwaitKt.getHexAddress(this));
        return sb.toString();
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    public final Symbol tryResume(Object obj, Function3 function3) {
        return tryResumeImpl(obj, function3);
    }

    public final Symbol tryResumeImpl(Object obj, Function3 function3) {
        CancellableContinuationImpl cancellableContinuationImpl;
        Symbol symbol = AwaitKt.RESUME_TOKEN;
        while (true) {
            Unsafe unsafe = ArtificialStackFramesUnsafe.unsafe;
            long j = _state$volatile$FU$offset;
            Object objectVolatile = unsafe.getObjectVolatile(this, j);
            if (!(objectVolatile instanceof NotCompleted)) {
                return null;
            }
            Object resumedState = resumedState((NotCompleted) objectVolatile, obj, this.resumeMode, function3);
            while (true) {
                Unsafe unsafe2 = ArtificialStackFramesUnsafe.unsafe;
                cancellableContinuationImpl = this;
                if (unsafe2.compareAndSwapObject(cancellableContinuationImpl, _state$volatile$FU$offset, objectVolatile, resumedState)) {
                    if (!cancellableContinuationImpl.isReusable()) {
                        cancellableContinuationImpl.detachChild$kotlinx_coroutines_core();
                    }
                    return symbol;
                }
                if (unsafe2.getObjectVolatile(cancellableContinuationImpl, j) != objectVolatile) {
                    break;
                }
                this = cancellableContinuationImpl;
            }
            this = cancellableContinuationImpl;
        }
    }

    public final void invokeOnCancellation(Function1 function1) {
        invokeOnCancellationImpl(new DisposeOnCancel(2, function1));
    }
}
