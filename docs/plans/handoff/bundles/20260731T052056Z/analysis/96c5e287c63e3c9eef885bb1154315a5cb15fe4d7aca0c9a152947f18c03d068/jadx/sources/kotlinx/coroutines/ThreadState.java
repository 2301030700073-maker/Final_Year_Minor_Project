package kotlinx.coroutines;

import _COROUTINE.ArtificialStackFramesUnsafe;
import sun.misc.Unsafe;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ThreadState extends JobNode {
    public static final /* synthetic */ long _state$volatile$FU$offset = ArtificialStackFramesUnsafe.unsafe.objectFieldOffset(ThreadState.class.getDeclaredField("_state$volatile"));
    private volatile /* synthetic */ int _state$volatile;
    public DisposableHandle cancelHandle;
    public final Thread targetThread = Thread.currentThread();

    public static void invalidState(int i) {
        throw new IllegalStateException(("Illegal state " + i).toString());
    }

    public final void clearInterrupt() {
        ThreadState threadState;
        while (true) {
            Unsafe unsafe = ArtificialStackFramesUnsafe.unsafe;
            long j = _state$volatile$FU$offset;
            int intVolatile = unsafe.getIntVolatile(this, j);
            if (intVolatile == 0) {
                threadState = this;
                if (unsafe.compareAndSwapInt(threadState, j, intVolatile, 1)) {
                    DisposableHandle disposableHandle = threadState.cancelHandle;
                    if (disposableHandle != null) {
                        disposableHandle.dispose();
                        return;
                    }
                    return;
                }
            } else {
                if (intVolatile != 2) {
                    if (intVolatile == 3) {
                        Thread.interrupted();
                        return;
                    } else {
                        invalidState(intVolatile);
                        throw null;
                    }
                }
                threadState = this;
            }
            this = threadState;
        }
    }

    @Override // kotlinx.coroutines.JobNode
    public final boolean getOnCancelling() {
        return true;
    }

    @Override // kotlinx.coroutines.JobNode
    public final void invoke(Throwable th) {
        while (true) {
            Unsafe unsafe = ArtificialStackFramesUnsafe.unsafe;
            long j = _state$volatile$FU$offset;
            int intVolatile = unsafe.getIntVolatile(this, j);
            if (intVolatile != 0) {
                if (intVolatile == 1 || intVolatile == 2 || intVolatile == 3) {
                    return;
                }
                invalidState(intVolatile);
                throw null;
            }
            ThreadState threadState = this;
            if (unsafe.compareAndSwapInt(threadState, _state$volatile$FU$offset, intVolatile, 2)) {
                threadState.targetThread.interrupt();
                unsafe.putIntVolatile(threadState, j, 3);
                return;
            }
            this = threadState;
        }
    }
}
