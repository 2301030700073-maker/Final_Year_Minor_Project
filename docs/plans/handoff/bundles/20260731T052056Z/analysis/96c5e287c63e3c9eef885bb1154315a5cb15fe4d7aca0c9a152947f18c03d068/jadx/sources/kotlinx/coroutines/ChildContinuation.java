package kotlinx.coroutines;

import _COROUTINE.ArtificialStackFramesUnsafe;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.internal.DispatchedContinuation;
import kotlinx.coroutines.internal.InlineList;
import kotlinx.coroutines.internal.Symbol;
import sun.misc.Unsafe;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ChildContinuation extends JobNode {
    public final CancellableContinuationImpl child;

    public ChildContinuation(CancellableContinuationImpl cancellableContinuationImpl) {
        this.child = cancellableContinuationImpl;
    }

    @Override // kotlinx.coroutines.JobNode
    public final boolean getOnCancelling() {
        return true;
    }

    @Override // kotlinx.coroutines.JobNode
    public final void invoke(Throwable th) {
        Unsafe unsafe;
        Unsafe unsafe2;
        JobSupport job = getJob();
        CancellableContinuationImpl cancellableContinuationImpl = this.child;
        Throwable continuationCancellationCause = cancellableContinuationImpl.getContinuationCancellationCause(job);
        if (cancellableContinuationImpl.isReusable()) {
            DispatchedContinuation dispatchedContinuation = (DispatchedContinuation) cancellableContinuationImpl.delegate;
            long j = DispatchedContinuation._reusableCancellableContinuation$volatile$FU$offset;
            loop0: while (true) {
                Object objectVolatile = ArtificialStackFramesUnsafe.unsafe.getObjectVolatile(dispatchedContinuation, j);
                Symbol symbol = InlineList.REUSABLE_CLAIMED;
                if (Intrinsics.areEqual(objectVolatile, symbol)) {
                    do {
                        unsafe = ArtificialStackFramesUnsafe.unsafe;
                        if (unsafe.compareAndSwapObject(dispatchedContinuation, DispatchedContinuation._reusableCancellableContinuation$volatile$FU$offset, symbol, continuationCancellationCause)) {
                            return;
                        }
                    } while (unsafe.getObjectVolatile(dispatchedContinuation, j) == symbol);
                } else {
                    if (objectVolatile instanceof Throwable) {
                        return;
                    }
                    do {
                        unsafe2 = ArtificialStackFramesUnsafe.unsafe;
                        if (unsafe2.compareAndSwapObject(dispatchedContinuation, DispatchedContinuation._reusableCancellableContinuation$volatile$FU$offset, objectVolatile, (Object) null)) {
                            break loop0;
                        }
                    } while (unsafe2.getObjectVolatile(dispatchedContinuation, j) == objectVolatile);
                }
            }
        }
        cancellableContinuationImpl.cancel(continuationCancellationCause);
        if (cancellableContinuationImpl.isReusable()) {
            return;
        }
        cancellableContinuationImpl.detachChild$kotlinx_coroutines_core();
    }
}
