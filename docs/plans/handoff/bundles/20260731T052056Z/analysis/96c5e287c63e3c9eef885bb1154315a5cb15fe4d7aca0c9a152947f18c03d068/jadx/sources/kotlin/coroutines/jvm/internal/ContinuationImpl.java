package kotlin.coroutines.jvm.internal;

import _COROUTINE.ArtificialStackFramesUnsafe;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor$Key;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.internal.DispatchedContinuation;
import kotlinx.coroutines.internal.InlineList;
import sun.misc.Unsafe;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class ContinuationImpl extends BaseContinuationImpl {
    public final CoroutineContext _context;
    public transient Continuation intercepted;

    public ContinuationImpl(Continuation continuation) {
        this(continuation, continuation != null ? continuation.getContext() : null);
    }

    @Override // kotlin.coroutines.Continuation
    public CoroutineContext getContext() {
        CoroutineContext coroutineContext = this._context;
        coroutineContext.getClass();
        return coroutineContext;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public void releaseIntercepted() {
        Unsafe unsafe;
        long j;
        Continuation continuation = this.intercepted;
        if (continuation != null && continuation != this) {
            CoroutineContext.Element element = getContext().get(ContinuationInterceptor$Key.$$INSTANCE);
            element.getClass();
            DispatchedContinuation dispatchedContinuation = (DispatchedContinuation) continuation;
            do {
                unsafe = ArtificialStackFramesUnsafe.unsafe;
                j = DispatchedContinuation._reusableCancellableContinuation$volatile$FU$offset;
            } while (unsafe.getObjectVolatile(dispatchedContinuation, j) == InlineList.REUSABLE_CLAIMED);
            Object objectVolatile = unsafe.getObjectVolatile(dispatchedContinuation, j);
            CancellableContinuationImpl cancellableContinuationImpl = objectVolatile instanceof CancellableContinuationImpl ? (CancellableContinuationImpl) objectVolatile : null;
            if (cancellableContinuationImpl != null) {
                cancellableContinuationImpl.detachChild$kotlinx_coroutines_core();
            }
        }
        this.intercepted = CompletedContinuation.INSTANCE;
    }

    public ContinuationImpl(Continuation continuation, CoroutineContext coroutineContext) {
        super(continuation);
        this._context = coroutineContext;
    }
}
