package kotlinx.coroutines.internal;

import com.google.common.base.Joiner;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CancellableContinuationImplAtomicFieldUpdaterHelper;
import kotlinx.coroutines.CompletedExceptionally;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.DispatchedTask;
import kotlinx.coroutines.EventLoop;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.ThreadLocalEventLoop;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import sun.misc.Unsafe;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class DispatchedContinuation extends DispatchedTask implements CoroutineStackFrame, Continuation {
    public static final /* synthetic */ AtomicReferenceFieldUpdater _reusableCancellableContinuation$volatile$FU = AtomicReferenceFieldUpdater.newUpdater(DispatchedContinuation.class, Object.class, "_reusableCancellableContinuation$volatile");
    public static final /* synthetic */ long _reusableCancellableContinuation$volatile$FU$offset = CancellableContinuationImplAtomicFieldUpdaterHelper.unsafe.objectFieldOffset(DispatchedContinuation.class.getDeclaredField("_reusableCancellableContinuation$volatile"));
    private volatile /* synthetic */ Object _reusableCancellableContinuation$volatile;
    public Object _state;
    public final ContinuationImpl continuation;
    public final Object countOrElement;
    public final CoroutineDispatcher dispatcher;

    public DispatchedContinuation(CoroutineDispatcher coroutineDispatcher, ContinuationImpl continuationImpl) {
        super(-1);
        this.dispatcher = coroutineDispatcher;
        this.continuation = continuationImpl;
        this._state = InlineList.UNDEFINED;
        this.countOrElement = InlineList.threadContextElements(continuationImpl.getContext());
    }

    public final void awaitReusability$kotlinx_coroutines_core() {
        do {
            _reusableCancellableContinuation$volatile$FU.getClass();
        } while (CancellableContinuationImplAtomicFieldUpdaterHelper.unsafe.getObjectVolatile(this, _reusableCancellableContinuation$volatile$FU$offset) == InlineList.REUSABLE_CLAIMED);
    }

    public final CancellableContinuationImpl claimReusableCancellableContinuation$kotlinx_coroutines_core() {
        DispatchedContinuation dispatchedContinuation;
        Joiner joiner = InlineList.REUSABLE_CLAIMED;
        while (true) {
            _reusableCancellableContinuation$volatile$FU.getClass();
            Unsafe unsafe = CancellableContinuationImplAtomicFieldUpdaterHelper.unsafe;
            long j = _reusableCancellableContinuation$volatile$FU$offset;
            Object objectVolatile = unsafe.getObjectVolatile(this, j);
            if (objectVolatile == null) {
                unsafe.putObjectVolatile(this, j, joiner);
                return null;
            }
            if (objectVolatile instanceof CancellableContinuationImpl) {
                while (true) {
                    Unsafe unsafe2 = CancellableContinuationImplAtomicFieldUpdaterHelper.unsafe;
                    DispatchedContinuation dispatchedContinuation2 = this;
                    boolean compareAndSwapObject = unsafe2.compareAndSwapObject(dispatchedContinuation2, _reusableCancellableContinuation$volatile$FU$offset, objectVolatile, joiner);
                    dispatchedContinuation = dispatchedContinuation2;
                    if (compareAndSwapObject) {
                        return (CancellableContinuationImpl) objectVolatile;
                    }
                    if (unsafe2.getObjectVolatile(dispatchedContinuation, j) != objectVolatile) {
                        break;
                    }
                    this = dispatchedContinuation;
                }
            } else {
                dispatchedContinuation = this;
                if (objectVolatile != joiner && !(objectVolatile instanceof Throwable)) {
                    CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$1(objectVolatile, "Inconsistent state ");
                    return null;
                }
            }
            this = dispatchedContinuation;
        }
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    public final CoroutineStackFrame getCallerFrame() {
        return this.continuation;
    }

    @Override // kotlin.coroutines.Continuation
    public final CoroutineContext getContext() {
        return this.continuation.getContext();
    }

    public final CancellableContinuationImpl getReusableCancellableContinuation() {
        _reusableCancellableContinuation$volatile$FU.getClass();
        Object objectVolatile = CancellableContinuationImplAtomicFieldUpdaterHelper.unsafe.getObjectVolatile(this, _reusableCancellableContinuation$volatile$FU$offset);
        if (objectVolatile instanceof CancellableContinuationImpl) {
            return (CancellableContinuationImpl) objectVolatile;
        }
        return null;
    }

    public final boolean isReusable$kotlinx_coroutines_core() {
        _reusableCancellableContinuation$volatile$FU.getClass();
        return CancellableContinuationImplAtomicFieldUpdaterHelper.unsafe.getObjectVolatile(this, _reusableCancellableContinuation$volatile$FU$offset) != null;
    }

    public final boolean postponeCancellation$kotlinx_coroutines_core(Throwable th) {
        DispatchedContinuation dispatchedContinuation;
        Throwable th2;
        Unsafe unsafe;
        while (true) {
            _reusableCancellableContinuation$volatile$FU.getClass();
            Unsafe unsafe2 = CancellableContinuationImplAtomicFieldUpdaterHelper.unsafe;
            long j = _reusableCancellableContinuation$volatile$FU$offset;
            Object objectVolatile = unsafe2.getObjectVolatile(this, j);
            Joiner joiner = InlineList.REUSABLE_CLAIMED;
            if (Intrinsics.areEqual(objectVolatile, joiner)) {
                while (true) {
                    Unsafe unsafe3 = CancellableContinuationImplAtomicFieldUpdaterHelper.unsafe;
                    DispatchedContinuation dispatchedContinuation2 = this;
                    th2 = th;
                    dispatchedContinuation = dispatchedContinuation2;
                    if (unsafe3.compareAndSwapObject(dispatchedContinuation2, _reusableCancellableContinuation$volatile$FU$offset, joiner, th2)) {
                        return true;
                    }
                    if (unsafe3.getObjectVolatile(dispatchedContinuation, j) != joiner) {
                        break;
                    }
                    this = dispatchedContinuation;
                    th = th2;
                }
            } else {
                dispatchedContinuation = this;
                th2 = th;
                if (objectVolatile instanceof Throwable) {
                    return true;
                }
                do {
                    unsafe = CancellableContinuationImplAtomicFieldUpdaterHelper.unsafe;
                    if (unsafe.compareAndSwapObject(dispatchedContinuation, _reusableCancellableContinuation$volatile$FU$offset, objectVolatile, (Object) null)) {
                        return false;
                    }
                } while (unsafe.getObjectVolatile(dispatchedContinuation, j) == objectVolatile);
            }
            this = dispatchedContinuation;
            th = th2;
        }
    }

    @Override // kotlin.coroutines.Continuation
    public final void resumeWith(Object obj) {
        Throwable m656exceptionOrNullimpl = Result.m656exceptionOrNullimpl(obj);
        Object completedExceptionally = m656exceptionOrNullimpl == null ? obj : new CompletedExceptionally(m656exceptionOrNullimpl, false);
        ContinuationImpl continuationImpl = this.continuation;
        CoroutineContext context = continuationImpl.getContext();
        CoroutineDispatcher coroutineDispatcher = this.dispatcher;
        if (InlineList.safeIsDispatchNeeded(coroutineDispatcher, context)) {
            this._state = completedExceptionally;
            this.resumeMode = 0;
            InlineList.safeDispatch(coroutineDispatcher, continuationImpl.getContext(), this);
            return;
        }
        EventLoop eventLoop$kotlinx_coroutines_core = ThreadLocalEventLoop.getEventLoop$kotlinx_coroutines_core();
        if (eventLoop$kotlinx_coroutines_core.useCount >= 4294967296L) {
            this._state = completedExceptionally;
            this.resumeMode = 0;
            eventLoop$kotlinx_coroutines_core.dispatchUnconfined(this);
            return;
        }
        eventLoop$kotlinx_coroutines_core.incrementUseCount(true);
        try {
            CoroutineContext context2 = continuationImpl.getContext();
            Object updateThreadContext = InlineList.updateThreadContext(context2, this.countOrElement);
            try {
                continuationImpl.resumeWith(obj);
                while (eventLoop$kotlinx_coroutines_core.processUnconfinedEvent()) {
                }
            } finally {
                InlineList.restoreThreadContext(context2, updateThreadContext);
            }
        } finally {
            try {
            } finally {
            }
        }
    }

    @Override // kotlinx.coroutines.DispatchedTask
    public final Object takeState$kotlinx_coroutines_core() {
        Object obj = this._state;
        this._state = InlineList.UNDEFINED;
        return obj;
    }

    public final String toString() {
        return "DispatchedContinuation[" + this.dispatcher + ", " + JobKt.toDebugString(this.continuation) + ']';
    }

    public final Throwable tryReleaseClaimedContinuation$kotlinx_coroutines_core(CancellableContinuationImpl cancellableContinuationImpl) {
        Unsafe unsafe;
        DispatchedContinuation dispatchedContinuation;
        CancellableContinuationImpl cancellableContinuationImpl2;
        while (true) {
            _reusableCancellableContinuation$volatile$FU.getClass();
            Unsafe unsafe2 = CancellableContinuationImplAtomicFieldUpdaterHelper.unsafe;
            long j = _reusableCancellableContinuation$volatile$FU$offset;
            Object objectVolatile = unsafe2.getObjectVolatile(this, j);
            Joiner joiner = InlineList.REUSABLE_CLAIMED;
            if (objectVolatile != joiner) {
                DispatchedContinuation dispatchedContinuation2 = this;
                if (!(objectVolatile instanceof Throwable)) {
                    CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$1(objectVolatile, "Inconsistent state ");
                    return null;
                }
                do {
                    unsafe = CancellableContinuationImplAtomicFieldUpdaterHelper.unsafe;
                    if (unsafe.compareAndSwapObject(dispatchedContinuation2, _reusableCancellableContinuation$volatile$FU$offset, objectVolatile, (Object) null)) {
                        return (Throwable) objectVolatile;
                    }
                } while (unsafe.getObjectVolatile(dispatchedContinuation2, j) == objectVolatile);
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Failed requirement.");
                return null;
            }
            while (true) {
                Unsafe unsafe3 = CancellableContinuationImplAtomicFieldUpdaterHelper.unsafe;
                dispatchedContinuation = this;
                cancellableContinuationImpl2 = cancellableContinuationImpl;
                if (unsafe3.compareAndSwapObject(dispatchedContinuation, _reusableCancellableContinuation$volatile$FU$offset, joiner, cancellableContinuationImpl2)) {
                    return null;
                }
                if (unsafe3.getObjectVolatile(dispatchedContinuation, j) != joiner) {
                    break;
                }
                this = dispatchedContinuation;
                cancellableContinuationImpl = cancellableContinuationImpl2;
            }
            this = dispatchedContinuation;
            cancellableContinuationImpl = cancellableContinuationImpl2;
        }
    }

    @Override // kotlinx.coroutines.DispatchedTask
    public final Continuation getDelegate$kotlinx_coroutines_core() {
        return this;
    }
}
