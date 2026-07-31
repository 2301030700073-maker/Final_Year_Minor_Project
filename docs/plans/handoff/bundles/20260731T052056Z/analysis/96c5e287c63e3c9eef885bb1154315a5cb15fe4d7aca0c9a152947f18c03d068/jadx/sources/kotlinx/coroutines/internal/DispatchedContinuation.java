package kotlinx.coroutines.internal;

import _COROUTINE.ArtificialStackFramesUnsafe;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CompletedExceptionally;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.DispatchedTask;
import kotlinx.coroutines.EventLoop;
import kotlinx.coroutines.ThreadLocalEventLoop;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DispatchedContinuation extends DispatchedTask implements CoroutineStackFrame, Continuation {
    public static final /* synthetic */ long _reusableCancellableContinuation$volatile$FU$offset = ArtificialStackFramesUnsafe.unsafe.objectFieldOffset(DispatchedContinuation.class.getDeclaredField("_reusableCancellableContinuation$volatile"));
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

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    public final CoroutineStackFrame getCallerFrame() {
        return this.continuation;
    }

    @Override // kotlin.coroutines.Continuation
    public final CoroutineContext getContext() {
        return this.continuation.getContext();
    }

    @Override // kotlin.coroutines.Continuation
    public final void resumeWith(Object obj) {
        Throwable m815exceptionOrNullimpl = Result.m815exceptionOrNullimpl(obj);
        Object completedExceptionally = m815exceptionOrNullimpl == null ? obj : new CompletedExceptionally(m815exceptionOrNullimpl, false);
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
        return "DispatchedContinuation[" + this.dispatcher + ", " + AwaitKt.toDebugString(this.continuation) + ']';
    }

    @Override // kotlinx.coroutines.DispatchedTask
    public final Continuation getDelegate$kotlinx_coroutines_core() {
        return this;
    }
}
